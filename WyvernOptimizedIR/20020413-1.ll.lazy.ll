; ModuleID = './20020413-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020413-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(x86_fp80 noundef %0, i32* nocapture noundef writeonly %1) #0 {
  %3 = fcmp olt x86_fp80 %0, 0xK00000000000000000000
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = fneg x86_fp80 %0
  br label %6

6:                                                ; preds = %4, %2
  %.0 = phi x86_fp80 [ %5, %4 ], [ %0, %2 ]
  %7 = fcmp ult x86_fp80 %.0, 0xK3FFF8000000000000000
  br i1 %7, label %18, label %8

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %14, %8
  %.02 = phi x86_fp80 [ 0xK3FFF8000000000000000, %8 ], [ %16, %14 ]
  %.01 = phi i32 [ 0, %8 ], [ %15, %14 ]
  %10 = fcmp olt x86_fp80 %.02, %.0
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = icmp ugt i32 %.01, 9
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @abort() #3
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  %15 = add nuw nsw i32 %.01, 1
  %16 = fmul x86_fp80 %.02, 0xK40008000000000000000
  br label %9, !llvm.loop !4

17:                                               ; preds = %9
  br label %31

18:                                               ; preds = %6
  %19 = fcmp une x86_fp80 %.0, 0xK00000000000000000000
  br i1 %19, label %20, label %30

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %26, %20
  %.13 = phi x86_fp80 [ 0xK3FFF8000000000000000, %20 ], [ %28, %26 ]
  %.1 = phi i32 [ 0, %20 ], [ %27, %26 ]
  %22 = fcmp olt x86_fp80 %.0, %.13
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = icmp ugt i32 %.1, 9
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  call void @abort() #3
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %23
  %27 = add nuw nsw i32 %.1, 1
  %28 = fmul x86_fp80 %.13, 0xK3FFE8000000000000000
  br label %21, !llvm.loop !6

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %18
  %.2 = phi i32 [ %.1, %29 ], [ 0, %18 ]
  br label %31

31:                                               ; preds = %30, %17
  %.3 = phi i32 [ %.01, %17 ], [ %.2, %30 ]
  store i32 %.3, i32* %1, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %25, %13
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i32, align 4
  call void @test(x86_fp80 noundef 0xK4000C000000000000000, i32* noundef nonnull %1)
  call void @test(x86_fp80 noundef 0xK4000E000000000000000, i32* noundef nonnull %1)
  call void @test(x86_fp80 noundef 0xK40018000000000000000, i32* noundef nonnull %1)
  call void @test(x86_fp80 noundef 0xK4001A000000000000000, i32* noundef nonnull %1)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
