; ModuleID = './20061031-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20061031-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nunmap = dso_local constant [3 x i8] c"\11\FF\01", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ff(i32 noundef %0) #0 {
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i16 noundef signext %0) #0 {
  br label %2

2:                                                ; preds = %13, %1
  %.01 = phi i32 [ 2, %1 ], [ %7, %13 ]
  %.0 = phi i16 [ 0, %1 ], [ %14, %13 ]
  %3 = icmp slt i16 %.0, 2
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = sext i16 %0 to i32
  %sext = shl i32 %.01, 16
  %6 = ashr exact i32 %sext, 16
  %7 = add nsw i32 %6, %5
  %8 = sext i16 %.0 to i32
  call void @ff(i32 noundef %8)
  %9 = and i32 %7, 65535
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !5
  br label %12

12:                                               ; preds = %11, %4
  br label %13

13:                                               ; preds = %12
  %14 = add i16 %.0, 1
  br label %2, !llvm.loop !6

15:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @f(i16 noundef signext -1)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 186}
!5 = !{i64 388}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
