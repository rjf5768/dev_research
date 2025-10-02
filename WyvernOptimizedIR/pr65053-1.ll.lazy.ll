; ModuleID = './pr65053-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65053-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @foo() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  store i32 -1, i32* %1, align 4
  br i1 true, label %2, label %7

2:                                                ; preds = %0
  %3 = call i32 @foo()
  %.not2 = icmp eq i32 %3, 0
  br i1 %.not2, label %6, label %4

4:                                                ; preds = %2
  %5 = add i32 %3, -1
  store i32 %5, i32* %1, align 4
  br label %6

6:                                                ; preds = %4, %2
  br label %7

7:                                                ; preds = %6, %0
  br label %8

8:                                                ; preds = %10, %7
  %9 = load i32, i32* %1, align 4
  %.not = icmp eq i32 %9, -1
  br i1 %.not, label %12, label %10

10:                                               ; preds = %8
  %11 = load i32, i32* %1, align 4
  call void asm "", "=*imr,0,~{dirflag},~{fpsr},~{flags}"(i32* nonnull elementtype(i32) %1, i32 %11) #3, !srcloc !4
  store i32 -1, i32* %1, align 4
  store i32 1, i32* @i, align 4
  br label %8, !llvm.loop !5

12:                                               ; preds = %8
  %13 = load i32, i32* @i, align 4
  %.not1 = icmp eq i32 %13, 0
  br i1 %.not1, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #4
  unreachable

15:                                               ; preds = %12
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 281}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
