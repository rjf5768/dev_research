; ModuleID = './pr43438.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43438.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_2 = internal global i8 1, align 1
@l_8 = internal global i32* @g_9, align 8
@g_9 = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i8, i8* @g_2, align 1
  %2 = zext i8 %1 to i32
  %3 = load i32*, i32** @l_8, align 8
  %4 = load i32, i32* %3, align 4
  %5 = or i32 %4, %2
  store i32 %5, i32* %3, align 4
  %6 = load i32*, i32** @l_8, align 8
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 1
  %9 = or i32 %8, 254
  call void @func_12(i32 noundef %9)
  %10 = load i32, i32* @g_9, align 4
  %.not = icmp eq i32 %10, 1
  br i1 %.not, label %12, label %11

11:                                               ; preds = %0
  call void @abort() #3
  unreachable

12:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @func_12(i32 noundef %0) #1 {
  %2 = icmp sgt i32 %0, 0
  %3 = zext i1 %2 to i32
  %4 = load i32, i32* @g_9, align 4
  %5 = and i32 %4, %3
  store i32 %5, i32* @g_9, align 4
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
