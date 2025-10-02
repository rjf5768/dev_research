; ModuleID = './pr84339.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr84339.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, [1 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"abcdefg\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(%struct.S* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1, i64 0
  %3 = call i64 @strlen(i8* noundef nonnull %2) #4
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(%struct.S* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1, i64 0
  %3 = call i64 @strlen(i8* noundef nonnull %2) #4
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #4
  %2 = bitcast i8* %1 to %struct.S*
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %12, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0
  store i32 1, i32* %4, align 4
  %5 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 1, i64 0
  %6 = bitcast i8* %5 to i64*
  store i64 29104508263162465, i64* %6, align 1
  %7 = call i32 @foo(%struct.S* noundef nonnull %2)
  %.not1 = icmp eq i32 %7, 7
  br i1 %.not1, label %8, label %10

8:                                                ; preds = %3
  %9 = call i32 @bar(%struct.S* noundef nonnull %2)
  %.not2 = icmp eq i32 %9, 7
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %8, %3
  call void @abort() #5
  unreachable

11:                                               ; preds = %8
  call void @free(i8* noundef %1) #4
  br label %12

12:                                               ; preds = %11, %0
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
