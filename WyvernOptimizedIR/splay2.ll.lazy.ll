; ModuleID = './splay2.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/09-vor/splay2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHsplay_node = type { %struct.CHsplay_element, %struct.CHsplay_node*, %struct.CHsplay_node*, %struct.CHsplay_node* }
%struct.CHsplay_element = type { %struct.key, %struct.CHpoints* }
%struct.key = type { double, double, i32 }
%struct.CHpoints = type { i32, %struct.point, i32, %struct.CHpoints*, %struct.CHpoints* }
%struct.point = type { i32, i32 }
%struct.dpoint = type { double, double }

@.str = private unnamed_addr constant [26 x i8] c"(%d,%d)  key: (%f,%f,%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Can't create node\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"No elements in tree! [CHdelete_max]\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"No elements in tree! [CHdelete]\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"Can't create node\00", align 1
@str.1 = private unnamed_addr constant [36 x i8] c"No elements in tree! [CHdelete_max]\00", align 1
@str.2 = private unnamed_addr constant [32 x i8] c"No elements in tree! [CHdelete]\00", align 1

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local %struct.CHsplay_node* @CHfind(%struct.CHsplay_node* noundef readonly %0, %struct.key* noundef readonly byval(%struct.key) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 0, i32 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = getelementptr inbounds %struct.key, %struct.key* %1, i64 0, i32 0
  %6 = load double, double* %5, align 8
  %7 = fcmp olt double %4, %6
  br i1 %7, label %38, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 0, i32 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds %struct.key, %struct.key* %1, i64 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = fcmp oeq double %10, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 0, i32 0, i32 1
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds %struct.key, %struct.key* %1, i64 0, i32 1
  %18 = load double, double* %17, align 8
  %19 = fcmp ogt double %16, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %14, %8
  %21 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 0, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = getelementptr inbounds %struct.key, %struct.key* %1, i64 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = fcmp oeq double %22, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 0, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = getelementptr inbounds %struct.key, %struct.key* %1, i64 0, i32 1
  %30 = load double, double* %29, align 8
  %31 = fcmp oeq double %28, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 0, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.key, %struct.key* %1, i64 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32, %14, %2
  %39 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 3
  %40 = load %struct.CHsplay_node*, %struct.CHsplay_node** %39, align 8
  %.not1 = icmp eq %struct.CHsplay_node* %40, null
  br i1 %.not1, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 3
  %43 = load %struct.CHsplay_node*, %struct.CHsplay_node** %42, align 8
  %44 = call %struct.CHsplay_node* @CHfind(%struct.CHsplay_node* noundef %43, %struct.key* noundef nonnull byval(%struct.key) align 8 %1)
  br label %89

45:                                               ; preds = %38, %32, %26, %20
  %46 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 0, i32 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = getelementptr inbounds %struct.key, %struct.key* %1, i64 0, i32 0
  %49 = load double, double* %48, align 8
  %50 = fcmp ogt double %47, %49
  br i1 %50, label %81, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 0, i32 0, i32 0
  %53 = load double, double* %52, align 8
  %54 = getelementptr inbounds %struct.key, %struct.key* %1, i64 0, i32 0
  %55 = load double, double* %54, align 8
  %56 = fcmp oeq double %53, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 0, i32 0, i32 1
  %59 = load double, double* %58, align 8
  %60 = getelementptr inbounds %struct.key, %struct.key* %1, i64 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = fcmp olt double %59, %61
  br i1 %62, label %81, label %63

63:                                               ; preds = %57, %51
  %64 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 0, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = getelementptr inbounds %struct.key, %struct.key* %1, i64 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = fcmp oeq double %65, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 0, i32 0, i32 1
  %71 = load double, double* %70, align 8
  %72 = getelementptr inbounds %struct.key, %struct.key* %1, i64 0, i32 1
  %73 = load double, double* %72, align 8
  %74 = fcmp oeq double %71, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 0, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.key, %struct.key* %1, i64 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75, %57, %45
  %82 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 2
  %83 = load %struct.CHsplay_node*, %struct.CHsplay_node** %82, align 8
  %.not = icmp eq %struct.CHsplay_node* %83, null
  br i1 %.not, label %88, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 2
  %86 = load %struct.CHsplay_node*, %struct.CHsplay_node** %85, align 8
  %87 = call %struct.CHsplay_node* @CHfind(%struct.CHsplay_node* noundef %86, %struct.key* noundef nonnull byval(%struct.key) align 8 %1)
  br label %89

88:                                               ; preds = %81, %75, %69, %63
  br label %89

89:                                               ; preds = %88, %84, %41
  %.0 = phi %struct.CHsplay_node* [ %44, %41 ], [ %87, %84 ], [ %0, %88 ]
  ret %struct.CHsplay_node* %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* noundef returned %0) #1 {
  %2 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 1
  %3 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %4 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i64 0, i32 2
  %5 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %6 = icmp eq %struct.CHsplay_node* %5, %0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 3
  %9 = load %struct.CHsplay_node*, %struct.CHsplay_node** %8, align 8
  %10 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 1
  %11 = load %struct.CHsplay_node*, %struct.CHsplay_node** %10, align 8
  %12 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %11, i64 0, i32 2
  store %struct.CHsplay_node* %9, %struct.CHsplay_node** %12, align 8
  %13 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 3
  %14 = load %struct.CHsplay_node*, %struct.CHsplay_node** %13, align 8
  %.not2 = icmp eq %struct.CHsplay_node* %14, null
  br i1 %.not2, label %21, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 1
  %17 = load %struct.CHsplay_node*, %struct.CHsplay_node** %16, align 8
  %18 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 3
  %19 = load %struct.CHsplay_node*, %struct.CHsplay_node** %18, align 8
  %20 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %19, i64 0, i32 1
  store %struct.CHsplay_node* %17, %struct.CHsplay_node** %20, align 8
  br label %21

21:                                               ; preds = %15, %7
  %22 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 1
  %23 = load %struct.CHsplay_node*, %struct.CHsplay_node** %22, align 8
  %24 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 3
  store %struct.CHsplay_node* %23, %struct.CHsplay_node** %24, align 8
  br label %43

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 2
  %27 = load %struct.CHsplay_node*, %struct.CHsplay_node** %26, align 8
  %28 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 1
  %29 = load %struct.CHsplay_node*, %struct.CHsplay_node** %28, align 8
  %30 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %29, i64 0, i32 3
  store %struct.CHsplay_node* %27, %struct.CHsplay_node** %30, align 8
  %31 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 2
  %32 = load %struct.CHsplay_node*, %struct.CHsplay_node** %31, align 8
  %.not = icmp eq %struct.CHsplay_node* %32, null
  br i1 %.not, label %39, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 1
  %35 = load %struct.CHsplay_node*, %struct.CHsplay_node** %34, align 8
  %36 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 2
  %37 = load %struct.CHsplay_node*, %struct.CHsplay_node** %36, align 8
  %38 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %37, i64 0, i32 1
  store %struct.CHsplay_node* %35, %struct.CHsplay_node** %38, align 8
  br label %39

39:                                               ; preds = %33, %25
  %40 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 1
  %41 = load %struct.CHsplay_node*, %struct.CHsplay_node** %40, align 8
  %42 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 2
  store %struct.CHsplay_node* %41, %struct.CHsplay_node** %42, align 8
  br label %43

43:                                               ; preds = %39, %21
  %44 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 1
  %45 = load %struct.CHsplay_node*, %struct.CHsplay_node** %44, align 8
  %46 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %45, i64 0, i32 1
  %47 = load %struct.CHsplay_node*, %struct.CHsplay_node** %46, align 8
  %48 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %45, i64 0, i32 1
  store %struct.CHsplay_node* %0, %struct.CHsplay_node** %48, align 8
  %.not1 = icmp eq %struct.CHsplay_node* %47, null
  br i1 %.not1, label %60, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %47, i64 0, i32 2
  %51 = load %struct.CHsplay_node*, %struct.CHsplay_node** %50, align 8
  %52 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 1
  %53 = load %struct.CHsplay_node*, %struct.CHsplay_node** %52, align 8
  %54 = icmp eq %struct.CHsplay_node* %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %47, i64 0, i32 2
  store %struct.CHsplay_node* %0, %struct.CHsplay_node** %56, align 8
  br label %59

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %47, i64 0, i32 3
  store %struct.CHsplay_node* %0, %struct.CHsplay_node** %58, align 8
  br label %59

59:                                               ; preds = %57, %55
  br label %60

60:                                               ; preds = %59, %43
  %61 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 1
  store %struct.CHsplay_node* %47, %struct.CHsplay_node** %61, align 8
  ret %struct.CHsplay_node* %0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local noalias i8* @CHsplay(%struct.CHsplay_node** nocapture noundef %0, %struct.key* noundef byval(%struct.key) align 8 %1) #2 {
  %3 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %4 = call %struct.CHsplay_node* @CHfind(%struct.CHsplay_node* noundef %3, %struct.key* noundef nonnull byval(%struct.key) align 8 %1)
  br label %5

5:                                                ; preds = %59, %2
  %6 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %4, i64 0, i32 1
  %7 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %.not = icmp eq %struct.CHsplay_node* %7, null
  br i1 %.not, label %60, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %4, i64 0, i32 1
  %10 = load %struct.CHsplay_node*, %struct.CHsplay_node** %9, align 8
  %11 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %10, i64 0, i32 1
  %12 = load %struct.CHsplay_node*, %struct.CHsplay_node** %11, align 8
  %13 = icmp eq %struct.CHsplay_node* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* noundef %4)
  br label %59

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %4, i64 0, i32 1
  %18 = load %struct.CHsplay_node*, %struct.CHsplay_node** %17, align 8
  %19 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %18, i64 0, i32 2
  %20 = load %struct.CHsplay_node*, %struct.CHsplay_node** %19, align 8
  %21 = icmp eq %struct.CHsplay_node* %20, %4
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %4, i64 0, i32 1
  %24 = load %struct.CHsplay_node*, %struct.CHsplay_node** %23, align 8
  %25 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %24, i64 0, i32 1
  %26 = load %struct.CHsplay_node*, %struct.CHsplay_node** %25, align 8
  %27 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %26, i64 0, i32 2
  %28 = load %struct.CHsplay_node*, %struct.CHsplay_node** %27, align 8
  %29 = icmp eq %struct.CHsplay_node* %28, %24
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %4, i64 0, i32 1
  %32 = load %struct.CHsplay_node*, %struct.CHsplay_node** %31, align 8
  %33 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* noundef %32)
  %34 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* noundef %4)
  br label %58

35:                                               ; preds = %22, %16
  %36 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %4, i64 0, i32 1
  %37 = load %struct.CHsplay_node*, %struct.CHsplay_node** %36, align 8
  %38 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %37, i64 0, i32 3
  %39 = load %struct.CHsplay_node*, %struct.CHsplay_node** %38, align 8
  %40 = icmp eq %struct.CHsplay_node* %39, %4
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %4, i64 0, i32 1
  %43 = load %struct.CHsplay_node*, %struct.CHsplay_node** %42, align 8
  %44 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %43, i64 0, i32 1
  %45 = load %struct.CHsplay_node*, %struct.CHsplay_node** %44, align 8
  %46 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %45, i64 0, i32 3
  %47 = load %struct.CHsplay_node*, %struct.CHsplay_node** %46, align 8
  %48 = icmp eq %struct.CHsplay_node* %47, %43
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %4, i64 0, i32 1
  %51 = load %struct.CHsplay_node*, %struct.CHsplay_node** %50, align 8
  %52 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* noundef %51)
  %53 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* noundef %4)
  br label %57

54:                                               ; preds = %41, %35
  %55 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* noundef %4)
  %56 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* noundef %4)
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %30
  br label %59

59:                                               ; preds = %58, %14
  br label %5, !llvm.loop !4

60:                                               ; preds = %5
  store %struct.CHsplay_node* %4, %struct.CHsplay_node** %0, align 8
  ret i8* undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CHtraverse(%struct.CHsplay_node* noundef readonly %0) #3 {
  %.not = icmp eq %struct.CHsplay_node* %0, null
  br i1 %.not, label %20, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 2
  %4 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  call void @CHtraverse(%struct.CHsplay_node* noundef %4)
  %5 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 0, i32 1
  %6 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %7 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %6, i64 0, i32 1, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %6, i64 0, i32 1, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 0, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 0, i32 0, i32 1
  %14 = load double, double* %13, align 8
  %15 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 0, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %8, i32 noundef %10, double noundef %12, double noundef %14, i32 noundef %16) #10
  %18 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 3
  %19 = load %struct.CHsplay_node*, %struct.CHsplay_node** %18, align 8
  call void @CHtraverse(%struct.CHsplay_node* noundef %19)
  br label %20

20:                                               ; preds = %2, %1
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @CHfree_tree(%struct.CHsplay_node* noundef %0) #3 {
  %.not = icmp eq %struct.CHsplay_node* %0, null
  br i1 %.not, label %8, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 2
  %4 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  call void @CHfree_tree(%struct.CHsplay_node* noundef %4)
  %5 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %0, i64 0, i32 3
  %6 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  call void @CHfree_tree(%struct.CHsplay_node* noundef %6)
  %7 = bitcast %struct.CHsplay_node* %0 to i8*
  call void @free(i8* noundef %7) #10
  br label %8

8:                                                ; preds = %2, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.CHsplay_node* @CHcreate_node(%struct.CHpoints* noundef %0) #3 {
  %2 = alloca %struct.dpoint, align 8
  %3 = alloca %struct.key, align 8
  %4 = alloca %struct.dpoint, align 8
  %5 = call noalias dereferenceable_or_null(56) i8* @malloc(i64 noundef 56) #10
  %6 = bitcast i8* %5 to %struct.CHsplay_node*
  %.not = icmp eq i8* %5, null
  br i1 %.not, label %7, label %8

7:                                                ; preds = %1
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 noundef 0) #11
  unreachable

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %6, i64 0, i32 2
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %9, align 8
  %10 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %6, i64 0, i32 3
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %10, align 8
  %11 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %6, i64 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %11, align 8
  %12 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %0) #10
  %13 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %12, i64 0, i32 1
  %14 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 1
  %15 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %0) #10
  %16 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %15, i64 0, i32 1
  %17 = bitcast %struct.point* %13 to i64*
  %18 = load i64, i64* %17, align 4
  %19 = bitcast %struct.point* %14 to i64*
  %20 = load i64, i64* %19, align 4
  %21 = bitcast %struct.point* %16 to i64*
  %22 = load i64, i64* %21, align 4
  %23 = call { double, double } @centre(i64 %18, i64 %20, i64 %22) #10
  %24 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %4, i64 0, i32 0
  %25 = extractvalue { double, double } %23, 0
  store double %25, double* %24, align 8
  %26 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %4, i64 0, i32 1
  %27 = extractvalue { double, double } %23, 1
  store double %27, double* %26, align 8
  %28 = bitcast %struct.dpoint* %2 to i8*
  %29 = bitcast %struct.dpoint* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %28, i8* noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false)
  %30 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 1
  %31 = bitcast %struct.point* %30 to i64*
  %32 = load i64, i64* %31, align 4
  %33 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %2, i64 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %2, i64 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = call double @radius2(i64 %32, double %34, double %36) #10
  %38 = getelementptr inbounds %struct.key, %struct.key* %3, i64 0, i32 0
  store double %37, double* %38, align 8
  %39 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %0) #10
  %40 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %0) #10
  %41 = call double @angle(%struct.CHpoints* noundef %39, %struct.CHpoints* noundef %0, %struct.CHpoints* noundef %40) #10
  %42 = getelementptr inbounds %struct.key, %struct.key* %3, i64 0, i32 1
  store double %41, double* %42, align 8
  %43 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i64 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.key, %struct.key* %3, i64 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = bitcast %struct.key* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %5, i8* noundef nonnull align 8 dereferenceable(24) %46, i64 24, i1 false)
  %47 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %6, i64 0, i32 0, i32 1
  store %struct.CHpoints* %0, %struct.CHpoints** %47, align 8
  ret %struct.CHsplay_node* %6
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #6

declare dso_local { double, double } @centre(i64, i64, i64) #4

declare dso_local %struct.CHpoints* @before(%struct.CHpoints* noundef) #4

declare dso_local %struct.CHpoints* @next(%struct.CHpoints* noundef) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

declare dso_local double @radius2(i64, double, double) #4

declare dso_local double @angle(%struct.CHpoints* noundef, %struct.CHpoints* noundef, %struct.CHpoints* noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias %struct.CHsplay_node* @CHinit() #8 {
  ret %struct.CHsplay_node* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @CHinsert(%struct.CHsplay_node** nocapture noundef %0, %struct.CHpoints* noundef %1) #3 {
  %3 = call %struct.CHsplay_node* @CHcreate_node(%struct.CHpoints* noundef %1)
  %4 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %.not = icmp eq %struct.CHsplay_node* %4, null
  br i1 %.not, label %78, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i64 0, i32 0, i32 0
  %7 = call i8* @CHsplay(%struct.CHsplay_node** noundef nonnull %0, %struct.key* noundef byval(%struct.key) align 8 %6)
  %8 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %9 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %8, i64 0, i32 0, i32 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i64 0, i32 0, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = fcmp ogt double %10, %12
  br i1 %13, label %49, label %14

14:                                               ; preds = %5
  %15 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %16 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %15, i64 0, i32 0, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i64 0, i32 0, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = fcmp oeq double %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %23 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %22, i64 0, i32 0, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i64 0, i32 0, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = fcmp olt double %24, %26
  br i1 %27, label %49, label %28

28:                                               ; preds = %21, %14
  %29 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %30 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %29, i64 0, i32 0, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i64 0, i32 0, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = fcmp oeq double %31, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %28
  %36 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %37 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %36, i64 0, i32 0, i32 0, i32 1
  %38 = load double, double* %37, align 8
  %39 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i64 0, i32 0, i32 0, i32 1
  %40 = load double, double* %39, align 8
  %41 = fcmp oeq double %38, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %35
  %43 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %44 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %43, i64 0, i32 0, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i64 0, i32 0, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %45, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %42, %21, %5
  %50 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %51 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %50, i64 0, i32 2
  %52 = load %struct.CHsplay_node*, %struct.CHsplay_node** %51, align 8
  %53 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i64 0, i32 2
  store %struct.CHsplay_node* %52, %struct.CHsplay_node** %53, align 8
  %.not2 = icmp eq %struct.CHsplay_node* %52, null
  br i1 %.not2, label %58, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i64 0, i32 2
  %56 = load %struct.CHsplay_node*, %struct.CHsplay_node** %55, align 8
  %57 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %56, i64 0, i32 1
  store %struct.CHsplay_node* %3, %struct.CHsplay_node** %57, align 8
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %60 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i64 0, i32 3
  store %struct.CHsplay_node* %59, %struct.CHsplay_node** %60, align 8
  %61 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %59, i64 0, i32 2
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %61, align 8
  br label %75

62:                                               ; preds = %42, %35, %28
  %63 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %64 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %63, i64 0, i32 3
  %65 = load %struct.CHsplay_node*, %struct.CHsplay_node** %64, align 8
  %66 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i64 0, i32 3
  store %struct.CHsplay_node* %65, %struct.CHsplay_node** %66, align 8
  %.not1 = icmp eq %struct.CHsplay_node* %65, null
  br i1 %.not1, label %71, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i64 0, i32 3
  %69 = load %struct.CHsplay_node*, %struct.CHsplay_node** %68, align 8
  %70 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %69, i64 0, i32 1
  store %struct.CHsplay_node* %3, %struct.CHsplay_node** %70, align 8
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %73 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %3, i64 0, i32 2
  store %struct.CHsplay_node* %72, %struct.CHsplay_node** %73, align 8
  %74 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %72, i64 0, i32 3
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %74, align 8
  br label %75

75:                                               ; preds = %71, %58
  %76 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %77 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %76, i64 0, i32 1
  store %struct.CHsplay_node* %3, %struct.CHsplay_node** %77, align 8
  br label %78

78:                                               ; preds = %75, %2
  store %struct.CHsplay_node* %3, %struct.CHsplay_node** %0, align 8
  ret i8* undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @CHdelete_max(%struct.CHsplay_node** nocapture noundef %0) #3 {
  %2 = alloca %struct.CHsplay_element, align 8
  %3 = alloca %struct.key, align 8
  %4 = getelementptr inbounds %struct.key, %struct.key* %3, i64 0, i32 0
  store double 0x47EFFFFFE0000000, double* %4, align 8
  %5 = getelementptr inbounds %struct.key, %struct.key* %3, i64 0, i32 1
  store double 1.000000e+03, double* %5, align 8
  %6 = getelementptr inbounds %struct.key, %struct.key* %3, i64 0, i32 2
  store i32 1000, i32* %6, align 8
  %7 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %.not = icmp eq %struct.CHsplay_node* %7, null
  br i1 %.not, label %20, label %8

8:                                                ; preds = %1
  %9 = call i8* @CHsplay(%struct.CHsplay_node** noundef nonnull %0, %struct.key* noundef nonnull byval(%struct.key) align 8 %3)
  %10 = bitcast %struct.CHsplay_node** %0 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast %struct.CHsplay_element* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %12, i8* noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %13 = getelementptr inbounds i8, i8* %11, i64 40
  %14 = bitcast i8* %13 to %struct.CHsplay_node**
  %15 = load %struct.CHsplay_node*, %struct.CHsplay_node** %14, align 8
  store %struct.CHsplay_node* %15, %struct.CHsplay_node** %0, align 8
  %.not1 = icmp eq %struct.CHsplay_node* %15, null
  br i1 %.not1, label %19, label %16

16:                                               ; preds = %8
  %17 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %18 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %17, i64 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %18, align 8
  br label %19

19:                                               ; preds = %16, %8
  call void @free(i8* noundef %11) #10
  br label %21

20:                                               ; preds = %1
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @str.1, i64 0, i64 0))
  br label %24

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %2, i64 0, i32 1
  %23 = load %struct.CHpoints*, %struct.CHpoints** %22, align 8
  br label %24

24:                                               ; preds = %21, %20
  %.0 = phi %struct.CHpoints* [ %23, %21 ], [ null, %20 ]
  ret %struct.CHpoints* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CHdelete(%struct.CHsplay_node** nocapture noundef %0, %struct.key* noundef byval(%struct.key) align 8 %1) #3 {
  %3 = alloca %struct.CHsplay_node*, align 8
  %4 = alloca %struct.CHsplay_node*, align 8
  %5 = alloca %struct.key, align 8
  %6 = load %struct.CHsplay_node*, %struct.CHsplay_node** %0, align 8
  %.not = icmp eq %struct.CHsplay_node* %6, null
  br i1 %.not, label %58, label %7

7:                                                ; preds = %2
  %8 = call i8* @CHsplay(%struct.CHsplay_node** noundef nonnull %0, %struct.key* noundef nonnull byval(%struct.key) align 8 %1)
  %9 = bitcast %struct.CHsplay_node** %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 40
  %12 = bitcast i8* %11 to %struct.CHsplay_node**
  %13 = load %struct.CHsplay_node*, %struct.CHsplay_node** %12, align 8
  store %struct.CHsplay_node* %13, %struct.CHsplay_node** %3, align 8
  %14 = getelementptr inbounds i8, i8* %10, i64 48
  %15 = bitcast i8* %14 to %struct.CHsplay_node**
  %16 = load %struct.CHsplay_node*, %struct.CHsplay_node** %15, align 8
  store %struct.CHsplay_node* %16, %struct.CHsplay_node** %4, align 8
  %17 = icmp eq %struct.CHsplay_node* %13, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %7
  %19 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %20 = icmp eq %struct.CHsplay_node* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %0, align 8
  br label %57

22:                                               ; preds = %18, %7
  %23 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %24 = icmp eq %struct.CHsplay_node* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %.not2 = icmp eq %struct.CHsplay_node* %26, null
  br i1 %.not2, label %30, label %27

27:                                               ; preds = %25
  %28 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  store %struct.CHsplay_node* %28, %struct.CHsplay_node** %0, align 8
  %29 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %28, i64 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %29, align 8
  br label %56

30:                                               ; preds = %25, %22
  %31 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %.not1 = icmp eq %struct.CHsplay_node* %31, null
  br i1 %.not1, label %38, label %32

32:                                               ; preds = %30
  %33 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %34 = icmp eq %struct.CHsplay_node* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  store %struct.CHsplay_node* %36, %struct.CHsplay_node** %0, align 8
  %37 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %36, i64 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %37, align 8
  br label %55

38:                                               ; preds = %32, %30
  %39 = getelementptr inbounds %struct.key, %struct.key* %5, i64 0, i32 0
  store double 0x47EFFFFFE0000000, double* %39, align 8
  %40 = getelementptr inbounds %struct.key, %struct.key* %5, i64 0, i32 1
  store double 1.000000e+03, double* %40, align 8
  %41 = getelementptr inbounds %struct.key, %struct.key* %5, i64 0, i32 2
  store i32 1000, i32* %41, align 8
  %42 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %43 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %42, i64 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %43, align 8
  %44 = call i8* @CHsplay(%struct.CHsplay_node** noundef nonnull %3, %struct.key* noundef nonnull byval(%struct.key) align 8 %5)
  %45 = getelementptr inbounds %struct.key, %struct.key* %5, i64 0, i32 0
  store double -1.000000e+00, double* %45, align 8
  %46 = getelementptr inbounds %struct.key, %struct.key* %5, i64 0, i32 1
  store double -1.000000e+00, double* %46, align 8
  %47 = getelementptr inbounds %struct.key, %struct.key* %5, i64 0, i32 2
  store i32 -1, i32* %47, align 8
  %48 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %49 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %48, i64 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %49, align 8
  %50 = call i8* @CHsplay(%struct.CHsplay_node** noundef nonnull %4, %struct.key* noundef nonnull byval(%struct.key) align 8 %5)
  %51 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %52 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %53 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %52, i64 0, i32 3
  store %struct.CHsplay_node* %51, %struct.CHsplay_node** %53, align 8
  %54 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %51, i64 0, i32 1
  store %struct.CHsplay_node* %52, %struct.CHsplay_node** %54, align 8
  store %struct.CHsplay_node* %52, %struct.CHsplay_node** %0, align 8
  br label %55

55:                                               ; preds = %38, %35
  br label %56

56:                                               ; preds = %55, %27
  br label %57

57:                                               ; preds = %56, %21
  call void @free(i8* noundef %10) #10
  br label %59

58:                                               ; preds = %2
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %58, %57
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #9

attributes #0 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
