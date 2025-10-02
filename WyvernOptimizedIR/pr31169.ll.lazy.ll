; ModuleID = './pr31169.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr31169.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_type = type { i16, [2 x i8] }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @sign_bit_p(%struct.tree_type* nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr %struct.tree_type, %struct.tree_type* %0, i64 0, i32 0
  %5 = load i16, i16* %4, align 4
  %6 = and i16 %5, 511
  %7 = icmp ugt i16 %6, 64
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = zext i16 %6 to i64
  %10 = add nsw i64 %9, -65
  %11 = shl i64 1, %10
  %12 = zext i16 %6 to i64
  %13 = sub nsw i64 128, %12
  %14 = lshr i64 -1, %13
  br label %23

15:                                               ; preds = %3
  %16 = zext i16 %6 to i64
  %17 = add nuw nsw i64 %16, 4294967295
  %18 = and i64 %17, 4294967295
  %19 = shl i64 1, %18
  %20 = zext i16 %6 to i64
  %21 = sub nsw i64 64, %20
  %22 = lshr i64 -1, %21
  br label %23

23:                                               ; preds = %15, %8
  %.04 = phi i64 [ -1, %8 ], [ %22, %15 ]
  %.03 = phi i64 [ 0, %8 ], [ %19, %15 ]
  %.02 = phi i64 [ %14, %8 ], [ 0, %15 ]
  %.01 = phi i64 [ %11, %8 ], [ 0, %15 ]
  %24 = and i64 %.02, %1
  %25 = icmp eq i64 %24, %.01
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = and i64 %.04, %2
  %28 = icmp eq i64 %27, %.03
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %31

30:                                               ; preds = %26, %23
  br label %31

31:                                               ; preds = %30, %29
  %.0 = phi i32 [ 1, %29 ], [ 0, %30 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.tree_type, align 4
  %2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1, i64 0, i32 0
  %3 = load i16, i16* %2, align 4
  %4 = and i16 %3, -512
  %5 = or i16 %4, 1
  store i16 %5, i16* %2, align 4
  %6 = call i32 @sign_bit_p(%struct.tree_type* noundef nonnull %1, i64 noundef 0, i64 noundef -1)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #3
  unreachable

8:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
