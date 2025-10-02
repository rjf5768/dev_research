; ModuleID = './zorder.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/zorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@index_to_bit.B = internal constant [5 x i64] [i64 1431655765, i64 858993459, i64 252645135, i64 16711935, i64 65535], align 16
@index_to_bit.S = internal constant [5 x i64] [i64 1, i64 2, i64 4, i64 8, i64 16], align 16
@.str = private unnamed_addr constant [9 x i8] c"00000000\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @calc_zorder(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32* nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i32* noundef %7) #0 {
  br label %9

9:                                                ; preds = %40, %8
  %.0 = phi i32 [ 0, %8 ], [ %41, %40 ]
  %10 = icmp slt i32 %.0, %0
  br i1 %10, label %11, label %42

11:                                               ; preds = %9
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds i32, i32* %3, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %40

17:                                               ; preds = %11
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds i32, i32* %1, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = zext i32 %.0 to i64
  %23 = getelementptr inbounds i32, i32* %3, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @index_to_bit(i64 noundef %21, i32 noundef %24, i32 noundef %4, i32 noundef %5)
  %26 = zext i32 %.0 to i64
  %27 = getelementptr inbounds i32, i32* %2, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = zext i32 %.0 to i64
  %31 = getelementptr inbounds i32, i32* %3, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @index_to_bit(i64 noundef %29, i32 noundef %32, i32 noundef %4, i32 noundef %5)
  %34 = call i64 @twobit_to_index(i64 noundef %25, i64 noundef %33)
  %35 = trunc i64 %34 to i32
  %36 = zext i32 %.0 to i64
  %37 = getelementptr inbounds i32, i32* %6, i64 %36
  store i32 %35, i32* %37, align 4
  %38 = zext i32 %.0 to i64
  %39 = getelementptr inbounds i32, i32* %7, i64 %38
  store i32 %.0, i32* %39, align 4
  br label %40

40:                                               ; preds = %17, %16
  %41 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !4

42:                                               ; preds = %9
  %43 = bitcast i32* %6 to i8*
  call void @S7_Index_Sort(i8* noundef %43, i32 noundef %0, i32 noundef 4, i32* noundef %7) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @index_to_bit(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = sext i32 %3 to i64
  %6 = sub i64 %0, %5
  %7 = icmp sgt i32 %2, %1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = uitofp i64 %6 to double
  %10 = sub nsw i32 %2, %1
  %ldexp = call double @ldexp(double 1.000000e+00, i32 %10) #6
  %11 = fmul double %ldexp, %9
  %12 = fptoui double %11 to i64
  br label %13

13:                                               ; preds = %8, %4
  %.0 = phi i64 [ %12, %8 ], [ %6, %4 ]
  %14 = shl i64 %.0, 8
  %15 = or i64 %.0, %14
  %16 = and i64 %15, 16711935
  %17 = shl nuw nsw i64 %16, 4
  %18 = or i64 %16, %17
  %19 = and i64 %18, 252645135
  %20 = shl nuw nsw i64 %19, 2
  %21 = or i64 %19, %20
  %22 = and i64 %21, 858993459
  %23 = shl nuw nsw i64 %22, 1
  %24 = or i64 %22, %23
  %25 = and i64 %24, 1431655765
  ret i64 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @twobit_to_index(i64 noundef %0, i64 noundef %1) #1 {
  %3 = shl i64 %1, 1
  %4 = or i64 %3, %0
  ret i64 %4
}

declare dso_local void @S7_Index_Sort(i8* noundef, i32 noundef, i32 noundef, i32* noundef) #2

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printbits(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #6
  br label %14

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %7, %5
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %8, label %7

7:                                                ; preds = %6
  br label %6, !llvm.loop !6

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %13, %8
  br i1 false, label %10, label %.loopexit

10:                                               ; preds = %9
  br i1 undef, label %12, label %11

11:                                               ; preds = %10
  br label %13

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12, %11
  br label %9, !llvm.loop !7

.loopexit:                                        ; preds = %9
  br label %14

14:                                               ; preds = %.loopexit, %3
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree willreturn
declare double @ldexp(double, i32 signext) #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree willreturn }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
