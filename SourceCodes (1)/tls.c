; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Threads/tls.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Threads/tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@f.i = internal thread_local global i64 1, align 8
@.str = private unnamed_addr constant [14 x i8] c"Thread 1: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Thread 2: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @f(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @f.i, align 8
  %4 = add nsw i64 %3, 1
  store i64 %4, i64* @f.i, align 8
  %5 = load i64, i64* @f.i, align 8
  %6 = inttoptr i64 %5 to i8*
  ret i8* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %4 = call i32 @pthread_create(i64* noundef %2, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @f, i8* noundef null) #3
  %5 = load i64, i64* %2, align 8
  %6 = bitcast i64* %3 to i8**
  %7 = call i32 @pthread_join(i64 noundef %5, i8** noundef %6)
  %8 = load i64, i64* %3, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef %9)
  %11 = call i32 @pthread_create(i64* noundef %2, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @f, i8* noundef null) #3
  %12 = load i64, i64* %2, align 8
  %13 = bitcast i64* %3 to i8**
  %14 = call i32 @pthread_join(i64 noundef %12, i8** noundef %13)
  %15 = load i64, i64* %3, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef %16)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) #1

declare dso_local i32 @pthread_join(i64 noundef, i8** noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
