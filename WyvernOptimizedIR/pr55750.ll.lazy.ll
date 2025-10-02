; ModuleID = './pr55750.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr55750.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, [3 x i8] }

@arr = dso_local global [2 x %struct.S] zeroinitializer, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* @arr, i64 0, i64 %2, i32 0
  %4 = load i8, i8* %3, align 4
  %5 = add i8 %4, 2
  store i8 %5, i8* %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  store i8 127, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i64 0, i64 0, i32 0), align 4
  store i8 -2, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i64 0, i64 1, i32 0), align 4
  call void @foo(i32 noundef 0)
  call void @foo(i32 noundef 1)
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i64 0, i64 0, i32 0), align 4
  %2 = and i8 %1, 1
  %.not.not = icmp eq i8 %2, 0
  br i1 %.not.not, label %10, label %3

3:                                                ; preds = %0
  %4 = load i8, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i64 0, i64 0, i32 0), align 4
  %.mask = and i8 %4, -2
  %.not = icmp eq i8 %.mask, -128
  br i1 %.not, label %5, label %10

5:                                                ; preds = %3
  %6 = load i8, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i64 0, i64 1, i32 0), align 4
  %7 = and i8 %6, 1
  %.not1 = icmp eq i8 %7, 0
  br i1 %.not1, label %8, label %10

8:                                                ; preds = %5
  %9 = load i8, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i64 0, i64 1, i32 0), align 4
  %.not2 = icmp ult i8 %9, 2
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %8, %5, %3, %0
  call void @abort() #3
  unreachable

11:                                               ; preds = %8
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
