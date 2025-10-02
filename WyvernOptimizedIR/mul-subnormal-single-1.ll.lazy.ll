; ModuleID = './mul-subnormal-single-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/mul-subnormal-single-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32 }

@ok = dso_local global i32 1, align 4
@expected = dso_local global [3 x %struct.anon] [%struct.anon { i32 4095, i32 1065354240, i32 4095 }, %struct.anon { i32 15, i32 1070106760, i32 23 }, %struct.anon { i32 15, i32 1065632836, i32 15 }], align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %22, %0
  %.0 = phi i32 [ 0, %0 ], [ %23, %22 ]
  %2 = icmp ult i32 %.0, 3
  br i1 %2, label %3, label %24

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @expected, i64 0, i64 %4, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @expected, i64 0, i64 %7, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @expected, i64 0, i64 %10, i32 2
  %12 = load i32, i32* %11, align 4
  call void @tstmul(i32 noundef %6, i32 noundef %9, i32 noundef %12)
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @expected, i64 0, i64 %13, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @expected, i64 0, i64 %16, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @expected, i64 0, i64 %19, i32 2
  %21 = load i32, i32* %20, align 4
  call void @tstmul(i32 noundef %15, i32 noundef %18, i32 noundef %21)
  br label %22

22:                                               ; preds = %3
  %23 = add i32 %.0, 1
  br label %1, !llvm.loop !4

24:                                               ; preds = %1
  %25 = load i32, i32* @ok, align 4
  %.not = icmp eq i32 %25, 0
  br i1 %.not, label %26, label %27

26:                                               ; preds = %24
  call void @abort() #4
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %24
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %27, %26
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @tstmul(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = call float @u2f(i32 noundef %0)
  %5 = call float @u2f(i32 noundef %1)
  %6 = fmul float %4, %5
  %7 = call i32 @f2u(float noundef %6)
  %.not = icmp eq i32 %7, %2
  br i1 %.not, label %9, label %8

8:                                                ; preds = %3
  store i32 0, i32* @ok, align 4
  br label %9

9:                                                ; preds = %8, %3
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal float @u2f(i32 noundef %0) #3 {
  %.cast = bitcast i32 %0 to float
  ret float %.cast
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @f2u(float noundef %0) #3 {
  %.cast = bitcast float %0 to i32
  ret i32 %.cast
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
