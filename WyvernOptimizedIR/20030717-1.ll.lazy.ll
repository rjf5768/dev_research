; ModuleID = './20030717-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030717-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.C = type { [1 x %struct.B], i32, i32 }
%struct.B = type { i32, i32, i32, i32, i32 }
%struct.A = type { i16, i64 }

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @bar(%struct.C* nocapture noundef %0, %struct.A* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.C, %struct.C* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0
  %6 = load i16, i16* %5, align 8
  %7 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = sext i32 %4 to i64
  %10 = getelementptr inbounds %struct.C, %struct.C* %0, i64 0, i32 0, i64 %9, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = trunc i64 %8 to i32
  %13 = sub i32 %12, %11
  %14 = call i32 @foo(i32 noundef %13)
  %15 = getelementptr inbounds %struct.C, %struct.C* %0, i64 0, i32 2
  br label %16

16:                                               ; preds = %32, %2
  %.01 = phi i32 [ %4, %2 ], [ %.12, %32 ]
  %.0 = phi i32 [ %4, %2 ], [ %22, %32 ]
  %17 = icmp slt i32 %.0, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.C, %struct.C* %0, i64 0, i32 1
  %20 = load i32, i32* %19, align 4
  br label %21

21:                                               ; preds = %18, %16
  %.1 = phi i32 [ %20, %18 ], [ %.0, %16 ]
  %22 = add nsw i32 %.1, -1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.C, %struct.C* %0, i64 0, i32 0, i64 %23, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = trunc i64 %8 to i32
  %27 = sub i32 %26, %25
  %28 = call i32 @foo(i32 noundef %27)
  %29 = icmp ult i32 %28, %14
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %21
  %.12 = phi i32 [ %22, %30 ], [ %.01, %21 ]
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %15, align 4
  %.not = icmp eq i32 %22, %33
  br i1 %.not, label %34, label %16, !llvm.loop !4

34:                                               ; preds = %32
  %35 = lshr i16 %6, 9
  %36 = zext i16 %35 to i64
  %37 = add i64 %8, %36
  %38 = trunc i64 %37 to i32
  %39 = sext i32 %.12 to i64
  %40 = getelementptr inbounds %struct.C, %struct.C* %0, i64 0, i32 0, i64 %39, i32 3
  store i32 %38, i32* %40, align 4
  ret i32 %.12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @foo(i32 noundef %0) #1 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = sub nsw i32 0, %0
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i32 [ %4, %3 ], [ %0, %5 ]
  ret i32 %7
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.A, align 8
  %2 = alloca %struct.C, align 4
  %3 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0
  store i16 512, i16* %3, align 8
  %4 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1
  store i64 4242, i64* %4, align 8
  %5 = bitcast %struct.C* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  %6 = getelementptr inbounds %struct.C, %struct.C* %2, i64 0, i32 0, i64 0, i32 2
  store i32 424242, i32* %6, align 4
  %7 = getelementptr inbounds %struct.C, %struct.C* %2, i64 0, i32 1
  store i32 1, i32* %7, align 4
  %8 = call i32 @bar(%struct.C* noundef nonnull %2, %struct.A* noundef nonnull %1)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
