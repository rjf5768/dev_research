; ModuleID = './scrapnet.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/scrapnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@numcells = external dso_local global i32, align 4
@numnets = external dso_local global i32, align 4
@netarray = external dso_local global %struct.dimbox**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @scrapnet() #0 {
  %1 = load i32, i32* @numcells, align 4
  %2 = add nsw i32 %1, 1
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 2
  %5 = call noalias i8* @malloc(i64 noundef %4) #2
  %6 = bitcast i8* %5 to i32*
  %7 = sitofp i32 %1 to double
  %8 = fmul double %7, 0x3FE6666666666666
  %9 = fptosi double %8 to i32
  %10 = icmp sgt i32 %9, 8
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %13

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi i32 [ %9, %11 ], [ 8, %12 ]
  br label %15

15:                                               ; preds = %53, %13
  %.02 = phi i32 [ 1, %13 ], [ %54, %53 ]
  %16 = load i32, i32* @numnets, align 4
  %.not = icmp sgt i32 %.02, %16
  br i1 %.not, label %55, label %17

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %23, %17
  %.0 = phi i32 [ 1, %17 ], [ %24, %23 ]
  %19 = load i32, i32* @numcells, align 4
  %.not4 = icmp sgt i32 %.0, %19
  br i1 %.not4, label %25, label %20

20:                                               ; preds = %18
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds i32, i32* %6, i64 %21
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %20
  %24 = add nuw nsw i32 %.0, 1
  br label %18, !llvm.loop !4

25:                                               ; preds = %18
  %26 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %27 = zext i32 %.02 to i64
  %28 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %26, i64 %27
  %29 = load %struct.dimbox*, %struct.dimbox** %28, align 8
  %30 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %29, i64 0, i32 0
  br label %31

31:                                               ; preds = %47, %25
  %.03 = phi i32 [ 0, %25 ], [ %.2, %47 ]
  %.01.in = phi %struct.netbox** [ %30, %25 ], [ %48, %47 ]
  %.01 = load %struct.netbox*, %struct.netbox** %.01.in, align 8
  %.not5 = icmp eq %struct.netbox* %.01, null
  br i1 %.not5, label %49, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @numcells, align 4
  %.not7 = icmp sgt i32 %34, %35
  br i1 %.not7, label %46, label %36

36:                                               ; preds = %32
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds i32, i32* %6, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = sext i32 %34 to i64
  %43 = getelementptr inbounds i32, i32* %6, i64 %42
  store i32 1, i32* %43, align 4
  %44 = add nsw i32 %.03, 1
  br label %45

45:                                               ; preds = %41, %36
  %.1 = phi i32 [ %44, %41 ], [ %.03, %36 ]
  br label %46

46:                                               ; preds = %45, %32
  %.2 = phi i32 [ %.1, %45 ], [ %.03, %32 ]
  br label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 0
  br label %31, !llvm.loop !6

49:                                               ; preds = %31
  %.not6 = icmp slt i32 %.03, %14
  br i1 %.not6, label %52, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %29, i64 0, i32 1
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %50, %49
  br label %53

53:                                               ; preds = %52
  %54 = add nuw nsw i32 %.02, 1
  br label %15, !llvm.loop !7

55:                                               ; preds = %15
  call void @free(i8* noundef %5) #2
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
