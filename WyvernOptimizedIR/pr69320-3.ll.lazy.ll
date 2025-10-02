; ModuleID = './pr69320-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69320-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 5, align 4
@b = dso_local global i16 0, align 2
@a = internal global <{ i32, i32, i32, i32, i32, i32, i32, [33 x i32] }> <{ i32 7, i32 5, i32 3, i32 3, i32 0, i32 0, i32 3, [33 x i32] zeroinitializer }>, align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %15, %0
  %storemerge = phi i16 [ 0, %0 ], [ %17, %15 ]
  store i16 %storemerge, i16* @b, align 2
  %2 = icmp slt i16 %storemerge, 4
  br i1 %2, label %3, label %.loopexit

3:                                                ; preds = %1
  %4 = load i16, i16* @b, align 2
  %5 = sext i16 %4 to i64
  %6 = add nsw i64 %5, 6
  %7 = getelementptr inbounds [40 x i32], [40 x i32]* bitcast (<{ i32, i32, i32, i32, i32, i32, i32, [33 x i32] }>* @a to [40 x i32]*), i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @c, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %.not1 = icmp eq i32 %8, %11
  br i1 %.not1, label %13, label %12

12:                                               ; preds = %3
  br label %14

13:                                               ; preds = %3
  br label %18

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14
  %16 = load i16, i16* @b, align 2
  %17 = add i16 %16, 1
  br label %1, !llvm.loop !4

.loopexit:                                        ; preds = %1
  br label %18

18:                                               ; preds = %.loopexit, %13
  %19 = load i16, i16* @b, align 2
  %.not = icmp eq i16 %19, 4
  br i1 %.not, label %21, label %20

20:                                               ; preds = %18
  call void @abort() #2
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %18
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %21, %20
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
