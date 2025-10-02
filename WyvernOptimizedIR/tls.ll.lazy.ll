; ModuleID = './tls.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Threads/tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@f.i = internal thread_local global i64 1, align 8
@.str = private unnamed_addr constant [14 x i8] c"Thread 1: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Thread 2: %d\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i8* @f(i8* nocapture noundef readnone %0) #0 {
  %2 = load i64, i64* @f.i, align 8
  %3 = add nsw i64 %2, 1
  store i64 %3, i64* @f.i, align 8
  %4 = inttoptr i64 %3 to i8*
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i32 @pthread_create(i64* noundef nonnull %1, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @f, i8* noundef null) #4
  %4 = load i64, i64* %1, align 8
  %5 = bitcast i64* %2 to i8**
  %6 = call i32 @pthread_join(i64 noundef %4, i8** noundef nonnull %5) #4
  %7 = load i64, i64* %2, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef %8) #4
  %10 = call i32 @pthread_create(i64* noundef nonnull %1, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @f, i8* noundef null) #4
  %11 = load i64, i64* %1, align 8
  %12 = bitcast i64* %2 to i8**
  %13 = call i32 @pthread_join(i64 noundef %11, i8** noundef nonnull %12) #4
  %14 = load i64, i64* %2, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef %15) #4
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) #2

declare dso_local i32 @pthread_join(i64 noundef, i8** noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
