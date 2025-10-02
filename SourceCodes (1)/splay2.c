; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/09-vor/splay2.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHsplay_node* @CHfind(%struct.CHsplay_node* noundef %0, %struct.key* noundef byval(%struct.key) align 8 %1) #0 {
  %3 = alloca %struct.CHsplay_node*, align 8
  %4 = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node* %0, %struct.CHsplay_node** %4, align 8
  %5 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %6 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = fcmp olt double %9, %11
  br i1 %12, label %58, label %13

13:                                               ; preds = %2
  %14 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %15 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.key, %struct.key* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = fcmp oeq double %18, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %24 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.key, %struct.key* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = fcmp ogt double %27, %29
  br i1 %30, label %58, label %31

31:                                               ; preds = %22, %13
  %32 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %33 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.key, %struct.key* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = fcmp oeq double %36, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %31
  %41 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %42 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.key, %struct.key* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 1
  %47 = load double, double* %46, align 8
  %48 = fcmp oeq double %45, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %40
  %50 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %51 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.key, %struct.key* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %49, %22, %2
  %59 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %60 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %59, i32 0, i32 3
  %61 = load %struct.CHsplay_node*, %struct.CHsplay_node** %60, align 8
  %62 = icmp ne %struct.CHsplay_node* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %65 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %64, i32 0, i32 3
  %66 = load %struct.CHsplay_node*, %struct.CHsplay_node** %65, align 8
  %67 = call %struct.CHsplay_node* @CHfind(%struct.CHsplay_node* noundef %66, %struct.key* noundef byval(%struct.key) align 8 %1)
  store %struct.CHsplay_node* %67, %struct.CHsplay_node** %3, align 8
  br label %134

68:                                               ; preds = %58, %49, %40, %31
  %69 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %70 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.key, %struct.key* %71, i32 0, i32 0
  %73 = load double, double* %72, align 8
  %74 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 0
  %75 = load double, double* %74, align 8
  %76 = fcmp ogt double %73, %75
  br i1 %76, label %122, label %77

77:                                               ; preds = %68
  %78 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %79 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.key, %struct.key* %80, i32 0, i32 0
  %82 = load double, double* %81, align 8
  %83 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 0
  %84 = load double, double* %83, align 8
  %85 = fcmp oeq double %82, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %77
  %87 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %88 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.key, %struct.key* %89, i32 0, i32 1
  %91 = load double, double* %90, align 8
  %92 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 1
  %93 = load double, double* %92, align 8
  %94 = fcmp olt double %91, %93
  br i1 %94, label %122, label %95

95:                                               ; preds = %86, %77
  %96 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %97 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.key, %struct.key* %98, i32 0, i32 0
  %100 = load double, double* %99, align 8
  %101 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 0
  %102 = load double, double* %101, align 8
  %103 = fcmp oeq double %100, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %95
  %105 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %106 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.key, %struct.key* %107, i32 0, i32 1
  %109 = load double, double* %108, align 8
  %110 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 1
  %111 = load double, double* %110, align 8
  %112 = fcmp oeq double %109, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %104
  %114 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %115 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.key, %struct.key* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp sgt i32 %118, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %113, %86, %68
  %123 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %124 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %123, i32 0, i32 2
  %125 = load %struct.CHsplay_node*, %struct.CHsplay_node** %124, align 8
  %126 = icmp ne %struct.CHsplay_node* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %129 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %128, i32 0, i32 2
  %130 = load %struct.CHsplay_node*, %struct.CHsplay_node** %129, align 8
  %131 = call %struct.CHsplay_node* @CHfind(%struct.CHsplay_node* noundef %130, %struct.key* noundef byval(%struct.key) align 8 %1)
  store %struct.CHsplay_node* %131, %struct.CHsplay_node** %3, align 8
  br label %134

132:                                              ; preds = %122, %113, %104, %95
  %133 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  store %struct.CHsplay_node* %133, %struct.CHsplay_node** %3, align 8
  br label %134

134:                                              ; preds = %132, %127, %63
  %135 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  ret %struct.CHsplay_node* %135
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* noundef %0) #0 {
  %2 = alloca %struct.CHsplay_node*, align 8
  %3 = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node* %0, %struct.CHsplay_node** %2, align 8
  %4 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %5 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %4, i32 0, i32 1
  %6 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %7 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %6, i32 0, i32 2
  %8 = load %struct.CHsplay_node*, %struct.CHsplay_node** %7, align 8
  %9 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %10 = icmp eq %struct.CHsplay_node* %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  %12 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %13 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %12, i32 0, i32 3
  %14 = load %struct.CHsplay_node*, %struct.CHsplay_node** %13, align 8
  %15 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %16 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %15, i32 0, i32 1
  %17 = load %struct.CHsplay_node*, %struct.CHsplay_node** %16, align 8
  %18 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %17, i32 0, i32 2
  store %struct.CHsplay_node* %14, %struct.CHsplay_node** %18, align 8
  %19 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %20 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %19, i32 0, i32 3
  %21 = load %struct.CHsplay_node*, %struct.CHsplay_node** %20, align 8
  %22 = icmp ne %struct.CHsplay_node* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %25 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %24, i32 0, i32 1
  %26 = load %struct.CHsplay_node*, %struct.CHsplay_node** %25, align 8
  %27 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %28 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %27, i32 0, i32 3
  %29 = load %struct.CHsplay_node*, %struct.CHsplay_node** %28, align 8
  %30 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %29, i32 0, i32 1
  store %struct.CHsplay_node* %26, %struct.CHsplay_node** %30, align 8
  br label %31

31:                                               ; preds = %23, %11
  %32 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %33 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %32, i32 0, i32 1
  %34 = load %struct.CHsplay_node*, %struct.CHsplay_node** %33, align 8
  %35 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %36 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %35, i32 0, i32 3
  store %struct.CHsplay_node* %34, %struct.CHsplay_node** %36, align 8
  br label %63

37:                                               ; preds = %1
  %38 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %39 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %38, i32 0, i32 2
  %40 = load %struct.CHsplay_node*, %struct.CHsplay_node** %39, align 8
  %41 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %42 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %41, i32 0, i32 1
  %43 = load %struct.CHsplay_node*, %struct.CHsplay_node** %42, align 8
  %44 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %43, i32 0, i32 3
  store %struct.CHsplay_node* %40, %struct.CHsplay_node** %44, align 8
  %45 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %46 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %45, i32 0, i32 2
  %47 = load %struct.CHsplay_node*, %struct.CHsplay_node** %46, align 8
  %48 = icmp ne %struct.CHsplay_node* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %37
  %50 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %51 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %50, i32 0, i32 1
  %52 = load %struct.CHsplay_node*, %struct.CHsplay_node** %51, align 8
  %53 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %54 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %53, i32 0, i32 2
  %55 = load %struct.CHsplay_node*, %struct.CHsplay_node** %54, align 8
  %56 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %55, i32 0, i32 1
  store %struct.CHsplay_node* %52, %struct.CHsplay_node** %56, align 8
  br label %57

57:                                               ; preds = %49, %37
  %58 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %59 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %58, i32 0, i32 1
  %60 = load %struct.CHsplay_node*, %struct.CHsplay_node** %59, align 8
  %61 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %62 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %61, i32 0, i32 2
  store %struct.CHsplay_node* %60, %struct.CHsplay_node** %62, align 8
  br label %63

63:                                               ; preds = %57, %31
  %64 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %65 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %64, i32 0, i32 1
  %66 = load %struct.CHsplay_node*, %struct.CHsplay_node** %65, align 8
  %67 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %66, i32 0, i32 1
  %68 = load %struct.CHsplay_node*, %struct.CHsplay_node** %67, align 8
  store %struct.CHsplay_node* %68, %struct.CHsplay_node** %3, align 8
  %69 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %70 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %71 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %70, i32 0, i32 1
  %72 = load %struct.CHsplay_node*, %struct.CHsplay_node** %71, align 8
  %73 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %72, i32 0, i32 1
  store %struct.CHsplay_node* %69, %struct.CHsplay_node** %73, align 8
  %74 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %75 = icmp ne %struct.CHsplay_node* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %63
  %77 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %78 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %77, i32 0, i32 2
  %79 = load %struct.CHsplay_node*, %struct.CHsplay_node** %78, align 8
  %80 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %81 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %80, i32 0, i32 1
  %82 = load %struct.CHsplay_node*, %struct.CHsplay_node** %81, align 8
  %83 = icmp eq %struct.CHsplay_node* %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %86 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %87 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %86, i32 0, i32 2
  store %struct.CHsplay_node* %85, %struct.CHsplay_node** %87, align 8
  br label %92

88:                                               ; preds = %76
  %89 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %90 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %91 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %90, i32 0, i32 3
  store %struct.CHsplay_node* %89, %struct.CHsplay_node** %91, align 8
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %63
  %94 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %95 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %96 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %95, i32 0, i32 1
  store %struct.CHsplay_node* %94, %struct.CHsplay_node** %96, align 8
  %97 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  ret %struct.CHsplay_node* %97
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @CHsplay(%struct.CHsplay_node** noundef %0, %struct.key* noundef byval(%struct.key) align 8 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.CHsplay_node**, align 8
  %5 = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node** %0, %struct.CHsplay_node*** %4, align 8
  %6 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %7 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %8 = call %struct.CHsplay_node* @CHfind(%struct.CHsplay_node* noundef %7, %struct.key* noundef byval(%struct.key) align 8 %1)
  store %struct.CHsplay_node* %8, %struct.CHsplay_node** %5, align 8
  br label %9

9:                                                ; preds = %85, %2
  %10 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %11 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %10, i32 0, i32 1
  %12 = load %struct.CHsplay_node*, %struct.CHsplay_node** %11, align 8
  %13 = icmp ne %struct.CHsplay_node* %12, null
  br i1 %13, label %14, label %86

14:                                               ; preds = %9
  %15 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %16 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %15, i32 0, i32 1
  %17 = load %struct.CHsplay_node*, %struct.CHsplay_node** %16, align 8
  %18 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %17, i32 0, i32 1
  %19 = load %struct.CHsplay_node*, %struct.CHsplay_node** %18, align 8
  %20 = icmp eq %struct.CHsplay_node* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %23 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* noundef %22)
  store %struct.CHsplay_node* %23, %struct.CHsplay_node** %5, align 8
  br label %85

24:                                               ; preds = %14
  %25 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %26 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %25, i32 0, i32 1
  %27 = load %struct.CHsplay_node*, %struct.CHsplay_node** %26, align 8
  %28 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %27, i32 0, i32 2
  %29 = load %struct.CHsplay_node*, %struct.CHsplay_node** %28, align 8
  %30 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %31 = icmp eq %struct.CHsplay_node* %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %24
  %33 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %34 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %33, i32 0, i32 1
  %35 = load %struct.CHsplay_node*, %struct.CHsplay_node** %34, align 8
  %36 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %35, i32 0, i32 1
  %37 = load %struct.CHsplay_node*, %struct.CHsplay_node** %36, align 8
  %38 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %37, i32 0, i32 2
  %39 = load %struct.CHsplay_node*, %struct.CHsplay_node** %38, align 8
  %40 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %41 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %40, i32 0, i32 1
  %42 = load %struct.CHsplay_node*, %struct.CHsplay_node** %41, align 8
  %43 = icmp eq %struct.CHsplay_node* %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %32
  %45 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %46 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %45, i32 0, i32 1
  %47 = load %struct.CHsplay_node*, %struct.CHsplay_node** %46, align 8
  %48 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* noundef %47)
  %49 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %50 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* noundef %49)
  store %struct.CHsplay_node* %50, %struct.CHsplay_node** %5, align 8
  br label %84

51:                                               ; preds = %32, %24
  %52 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %53 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %52, i32 0, i32 1
  %54 = load %struct.CHsplay_node*, %struct.CHsplay_node** %53, align 8
  %55 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %54, i32 0, i32 3
  %56 = load %struct.CHsplay_node*, %struct.CHsplay_node** %55, align 8
  %57 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %58 = icmp eq %struct.CHsplay_node* %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %51
  %60 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %61 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %60, i32 0, i32 1
  %62 = load %struct.CHsplay_node*, %struct.CHsplay_node** %61, align 8
  %63 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %62, i32 0, i32 1
  %64 = load %struct.CHsplay_node*, %struct.CHsplay_node** %63, align 8
  %65 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %64, i32 0, i32 3
  %66 = load %struct.CHsplay_node*, %struct.CHsplay_node** %65, align 8
  %67 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %68 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %67, i32 0, i32 1
  %69 = load %struct.CHsplay_node*, %struct.CHsplay_node** %68, align 8
  %70 = icmp eq %struct.CHsplay_node* %66, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %59
  %72 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %73 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %72, i32 0, i32 1
  %74 = load %struct.CHsplay_node*, %struct.CHsplay_node** %73, align 8
  %75 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* noundef %74)
  %76 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %77 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* noundef %76)
  store %struct.CHsplay_node* %77, %struct.CHsplay_node** %5, align 8
  br label %83

78:                                               ; preds = %59, %51
  %79 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %80 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* noundef %79)
  store %struct.CHsplay_node* %80, %struct.CHsplay_node** %5, align 8
  %81 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %82 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* noundef %81)
  store %struct.CHsplay_node* %82, %struct.CHsplay_node** %5, align 8
  br label %83

83:                                               ; preds = %78, %71
  br label %84

84:                                               ; preds = %83, %44
  br label %85

85:                                               ; preds = %84, %21
  br label %9, !llvm.loop !4

86:                                               ; preds = %9
  %87 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %88 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  store %struct.CHsplay_node* %87, %struct.CHsplay_node** %88, align 8
  %89 = load i8*, i8** %3, align 8
  ret i8* %89
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CHtraverse(%struct.CHsplay_node* noundef %0) #0 {
  %2 = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node* %0, %struct.CHsplay_node** %2, align 8
  %3 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %4 = icmp ne %struct.CHsplay_node* %3, null
  br i1 %4, label %5, label %42

5:                                                ; preds = %1
  %6 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %7 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %6, i32 0, i32 2
  %8 = load %struct.CHsplay_node*, %struct.CHsplay_node** %7, align 8
  call void @CHtraverse(%struct.CHsplay_node* noundef %8)
  %9 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %10 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %10, i32 0, i32 1
  %12 = load %struct.CHpoints*, %struct.CHpoints** %11, align 8
  %13 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.point, %struct.point* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %17 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %17, i32 0, i32 1
  %19 = load %struct.CHpoints*, %struct.CHpoints** %18, align 8
  %20 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.point, %struct.point* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %24 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.key, %struct.key* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %29 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.key, %struct.key* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %34 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.key, %struct.key* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %15, i32 noundef %22, double noundef %27, double noundef %32, i32 noundef %37)
  %39 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %40 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %39, i32 0, i32 3
  %41 = load %struct.CHsplay_node*, %struct.CHsplay_node** %40, align 8
  call void @CHtraverse(%struct.CHsplay_node* noundef %41)
  br label %42

42:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @CHfree_tree(%struct.CHsplay_node* noundef %0) #0 {
  %2 = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node* %0, %struct.CHsplay_node** %2, align 8
  %3 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %4 = icmp ne %struct.CHsplay_node* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %7 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %6, i32 0, i32 2
  %8 = load %struct.CHsplay_node*, %struct.CHsplay_node** %7, align 8
  call void @CHfree_tree(%struct.CHsplay_node* noundef %8)
  %9 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %10 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %9, i32 0, i32 3
  %11 = load %struct.CHsplay_node*, %struct.CHsplay_node** %10, align 8
  call void @CHfree_tree(%struct.CHsplay_node* noundef %11)
  %12 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %13 = bitcast %struct.CHsplay_node* %12 to i8*
  call void @free(i8* noundef %13) #5
  br label %14

14:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHsplay_node* @CHcreate_node(%struct.CHpoints* noundef %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  %3 = alloca %struct.CHsplay_node*, align 8
  %4 = alloca %struct.dpoint, align 8
  %5 = alloca %struct.key, align 8
  %6 = alloca %struct.dpoint, align 8
  store %struct.CHpoints* %0, %struct.CHpoints** %2, align 8
  %7 = call noalias i8* @malloc(i64 noundef 56) #5
  %8 = bitcast i8* %7 to %struct.CHsplay_node*
  store %struct.CHsplay_node* %8, %struct.CHsplay_node** %3, align 8
  %9 = icmp ne %struct.CHsplay_node* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

12:                                               ; preds = %1
  %13 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %14 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %13, i32 0, i32 2
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %14, align 8
  %15 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %16 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %15, i32 0, i32 3
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %16, align 8
  %17 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %18 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %17, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %18, align 8
  %19 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %20 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %19)
  %21 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %20, i32 0, i32 1
  %22 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %23 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %22, i32 0, i32 1
  %24 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %25 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %24)
  %26 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %25, i32 0, i32 1
  %27 = bitcast %struct.point* %21 to i64*
  %28 = load i64, i64* %27, align 4
  %29 = bitcast %struct.point* %23 to i64*
  %30 = load i64, i64* %29, align 4
  %31 = bitcast %struct.point* %26 to i64*
  %32 = load i64, i64* %31, align 4
  %33 = call { double, double } @centre(i64 %28, i64 %30, i64 %32)
  %34 = bitcast %struct.dpoint* %6 to { double, double }*
  %35 = getelementptr inbounds { double, double }, { double, double }* %34, i32 0, i32 0
  %36 = extractvalue { double, double } %33, 0
  store double %36, double* %35, align 8
  %37 = getelementptr inbounds { double, double }, { double, double }* %34, i32 0, i32 1
  %38 = extractvalue { double, double } %33, 1
  store double %38, double* %37, align 8
  %39 = bitcast %struct.dpoint* %4 to i8*
  %40 = bitcast %struct.dpoint* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %42 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %41, i32 0, i32 1
  %43 = bitcast %struct.point* %42 to i64*
  %44 = load i64, i64* %43, align 4
  %45 = bitcast %struct.dpoint* %4 to { double, double }*
  %46 = getelementptr inbounds { double, double }, { double, double }* %45, i32 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = getelementptr inbounds { double, double }, { double, double }* %45, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = call double @radius2(i64 %44, double %47, double %49)
  %51 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 0
  store double %50, double* %51, align 8
  %52 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %53 = call %struct.CHpoints* @before(%struct.CHpoints* noundef %52)
  %54 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %55 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %56 = call %struct.CHpoints* @next(%struct.CHpoints* noundef %55)
  %57 = call double @angle(%struct.CHpoints* noundef %53, %struct.CHpoints* noundef %54, %struct.CHpoints* noundef %56)
  %58 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 1
  store double %57, double* %58, align 8
  %59 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %60 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  %63 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %64 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %64, i32 0, i32 0
  %66 = bitcast %struct.key* %65 to i8*
  %67 = bitcast %struct.key* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 24, i1 false)
  %68 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %69 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %70 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %70, i32 0, i32 1
  store %struct.CHpoints* %68, %struct.CHpoints** %71, align 8
  %72 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  ret %struct.CHsplay_node* %72
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local { double, double } @centre(i64, i64, i64) #1

declare dso_local %struct.CHpoints* @before(%struct.CHpoints* noundef) #1

declare dso_local %struct.CHpoints* @next(%struct.CHpoints* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local double @radius2(i64, double, double) #1

declare dso_local double @angle(%struct.CHpoints* noundef, %struct.CHpoints* noundef, %struct.CHpoints* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHsplay_node* @CHinit() #0 {
  ret %struct.CHsplay_node* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @CHinsert(%struct.CHsplay_node** noundef %0, %struct.CHpoints* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.CHsplay_node**, align 8
  %5 = alloca %struct.CHpoints*, align 8
  %6 = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node** %0, %struct.CHsplay_node*** %4, align 8
  store %struct.CHpoints* %1, %struct.CHpoints** %5, align 8
  %7 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %8 = call %struct.CHsplay_node* @CHcreate_node(%struct.CHpoints* noundef %7)
  store %struct.CHsplay_node* %8, %struct.CHsplay_node** %6, align 8
  %9 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %10 = load %struct.CHsplay_node*, %struct.CHsplay_node** %9, align 8
  %11 = icmp ne %struct.CHsplay_node* %10, null
  br i1 %11, label %12, label %150

12:                                               ; preds = %2
  %13 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %14 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %15 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %15, i32 0, i32 0
  %17 = call i8* @CHsplay(%struct.CHsplay_node** noundef %13, %struct.key* noundef byval(%struct.key) align 8 %16)
  %18 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %19 = load %struct.CHsplay_node*, %struct.CHsplay_node** %18, align 8
  %20 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.key, %struct.key* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %25 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.key, %struct.key* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = fcmp ogt double %23, %28
  br i1 %29, label %95, label %30

30:                                               ; preds = %12
  %31 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %32 = load %struct.CHsplay_node*, %struct.CHsplay_node** %31, align 8
  %33 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.key, %struct.key* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %38 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.key, %struct.key* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = fcmp oeq double %36, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %30
  %44 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %45 = load %struct.CHsplay_node*, %struct.CHsplay_node** %44, align 8
  %46 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.key, %struct.key* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %51 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.key, %struct.key* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = fcmp olt double %49, %54
  br i1 %55, label %95, label %56

56:                                               ; preds = %43, %30
  %57 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %58 = load %struct.CHsplay_node*, %struct.CHsplay_node** %57, align 8
  %59 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.key, %struct.key* %60, i32 0, i32 0
  %62 = load double, double* %61, align 8
  %63 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %64 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.key, %struct.key* %65, i32 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = fcmp oeq double %62, %67
  br i1 %68, label %69, label %120

69:                                               ; preds = %56
  %70 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %71 = load %struct.CHsplay_node*, %struct.CHsplay_node** %70, align 8
  %72 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.key, %struct.key* %73, i32 0, i32 1
  %75 = load double, double* %74, align 8
  %76 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %77 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.key, %struct.key* %78, i32 0, i32 1
  %80 = load double, double* %79, align 8
  %81 = fcmp oeq double %75, %80
  br i1 %81, label %82, label %120

82:                                               ; preds = %69
  %83 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %84 = load %struct.CHsplay_node*, %struct.CHsplay_node** %83, align 8
  %85 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.key, %struct.key* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %90 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.key, %struct.key* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %88, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %82, %43, %12
  %96 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %97 = load %struct.CHsplay_node*, %struct.CHsplay_node** %96, align 8
  %98 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %97, i32 0, i32 2
  %99 = load %struct.CHsplay_node*, %struct.CHsplay_node** %98, align 8
  %100 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %101 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %100, i32 0, i32 2
  store %struct.CHsplay_node* %99, %struct.CHsplay_node** %101, align 8
  %102 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %103 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %102, i32 0, i32 2
  %104 = load %struct.CHsplay_node*, %struct.CHsplay_node** %103, align 8
  %105 = icmp ne %struct.CHsplay_node* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %95
  %107 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %108 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %109 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %108, i32 0, i32 2
  %110 = load %struct.CHsplay_node*, %struct.CHsplay_node** %109, align 8
  %111 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %110, i32 0, i32 1
  store %struct.CHsplay_node* %107, %struct.CHsplay_node** %111, align 8
  br label %112

112:                                              ; preds = %106, %95
  %113 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %114 = load %struct.CHsplay_node*, %struct.CHsplay_node** %113, align 8
  %115 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %116 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %115, i32 0, i32 3
  store %struct.CHsplay_node* %114, %struct.CHsplay_node** %116, align 8
  %117 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %118 = load %struct.CHsplay_node*, %struct.CHsplay_node** %117, align 8
  %119 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %118, i32 0, i32 2
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %119, align 8
  br label %145

120:                                              ; preds = %82, %69, %56
  %121 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %122 = load %struct.CHsplay_node*, %struct.CHsplay_node** %121, align 8
  %123 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %122, i32 0, i32 3
  %124 = load %struct.CHsplay_node*, %struct.CHsplay_node** %123, align 8
  %125 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %126 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %125, i32 0, i32 3
  store %struct.CHsplay_node* %124, %struct.CHsplay_node** %126, align 8
  %127 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %128 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %127, i32 0, i32 3
  %129 = load %struct.CHsplay_node*, %struct.CHsplay_node** %128, align 8
  %130 = icmp ne %struct.CHsplay_node* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %120
  %132 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %133 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %134 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %133, i32 0, i32 3
  %135 = load %struct.CHsplay_node*, %struct.CHsplay_node** %134, align 8
  %136 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %135, i32 0, i32 1
  store %struct.CHsplay_node* %132, %struct.CHsplay_node** %136, align 8
  br label %137

137:                                              ; preds = %131, %120
  %138 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %139 = load %struct.CHsplay_node*, %struct.CHsplay_node** %138, align 8
  %140 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %141 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %140, i32 0, i32 2
  store %struct.CHsplay_node* %139, %struct.CHsplay_node** %141, align 8
  %142 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %143 = load %struct.CHsplay_node*, %struct.CHsplay_node** %142, align 8
  %144 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %143, i32 0, i32 3
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %144, align 8
  br label %145

145:                                              ; preds = %137, %112
  %146 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %147 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %148 = load %struct.CHsplay_node*, %struct.CHsplay_node** %147, align 8
  %149 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %148, i32 0, i32 1
  store %struct.CHsplay_node* %146, %struct.CHsplay_node** %149, align 8
  br label %150

150:                                              ; preds = %145, %2
  %151 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %152 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  store %struct.CHsplay_node* %151, %struct.CHsplay_node** %152, align 8
  %153 = load i8*, i8** %3, align 8
  ret i8* %153
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @CHdelete_max(%struct.CHsplay_node** noundef %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  %3 = alloca %struct.CHsplay_node**, align 8
  %4 = alloca %struct.CHsplay_element, align 8
  %5 = alloca %struct.CHsplay_node*, align 8
  %6 = alloca %struct.key, align 8
  store %struct.CHsplay_node** %0, %struct.CHsplay_node*** %3, align 8
  %7 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 0
  store double 0x47EFFFFFE0000000, double* %7, align 8
  %8 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 1
  store double 1.000000e+03, double* %8, align 8
  %9 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 2
  store i32 1000, i32* %9, align 8
  %10 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %11 = load %struct.CHsplay_node*, %struct.CHsplay_node** %10, align 8
  %12 = icmp ne %struct.CHsplay_node* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %15 = call i8* @CHsplay(%struct.CHsplay_node** noundef %14, %struct.key* noundef byval(%struct.key) align 8 %6)
  %16 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %17 = load %struct.CHsplay_node*, %struct.CHsplay_node** %16, align 8
  %18 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %17, i32 0, i32 0
  %19 = bitcast %struct.CHsplay_element* %4 to i8*
  %20 = bitcast %struct.CHsplay_element* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false)
  %21 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %22 = load %struct.CHsplay_node*, %struct.CHsplay_node** %21, align 8
  store %struct.CHsplay_node* %22, %struct.CHsplay_node** %5, align 8
  %23 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %24 = load %struct.CHsplay_node*, %struct.CHsplay_node** %23, align 8
  %25 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %24, i32 0, i32 2
  %26 = load %struct.CHsplay_node*, %struct.CHsplay_node** %25, align 8
  %27 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  store %struct.CHsplay_node* %26, %struct.CHsplay_node** %27, align 8
  %28 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %29 = load %struct.CHsplay_node*, %struct.CHsplay_node** %28, align 8
  %30 = icmp ne %struct.CHsplay_node* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %13
  %32 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %33 = load %struct.CHsplay_node*, %struct.CHsplay_node** %32, align 8
  %34 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %33, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %34, align 8
  br label %35

35:                                               ; preds = %31, %13
  %36 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %37 = bitcast %struct.CHsplay_node* %36 to i8*
  call void @free(i8* noundef %37) #5
  br label %40

38:                                               ; preds = %1
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store %struct.CHpoints* null, %struct.CHpoints** %2, align 8
  br label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %4, i32 0, i32 1
  %42 = load %struct.CHpoints*, %struct.CHpoints** %41, align 8
  store %struct.CHpoints* %42, %struct.CHpoints** %2, align 8
  br label %43

43:                                               ; preds = %40, %38
  %44 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  ret %struct.CHpoints* %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CHdelete(%struct.CHsplay_node** noundef %0, %struct.key* noundef byval(%struct.key) align 8 %1) #0 {
  %3 = alloca %struct.CHsplay_node**, align 8
  %4 = alloca %struct.CHsplay_node*, align 8
  %5 = alloca %struct.CHsplay_node*, align 8
  %6 = alloca %struct.CHsplay_node*, align 8
  %7 = alloca %struct.key, align 8
  store %struct.CHsplay_node** %0, %struct.CHsplay_node*** %3, align 8
  %8 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %9 = load %struct.CHsplay_node*, %struct.CHsplay_node** %8, align 8
  %10 = icmp ne %struct.CHsplay_node* %9, null
  br i1 %10, label %11, label %83

11:                                               ; preds = %2
  %12 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %13 = call i8* @CHsplay(%struct.CHsplay_node** noundef %12, %struct.key* noundef byval(%struct.key) align 8 %1)
  %14 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %15 = load %struct.CHsplay_node*, %struct.CHsplay_node** %14, align 8
  store %struct.CHsplay_node* %15, %struct.CHsplay_node** %4, align 8
  %16 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %17 = load %struct.CHsplay_node*, %struct.CHsplay_node** %16, align 8
  %18 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %17, i32 0, i32 2
  %19 = load %struct.CHsplay_node*, %struct.CHsplay_node** %18, align 8
  store %struct.CHsplay_node* %19, %struct.CHsplay_node** %5, align 8
  %20 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %21 = load %struct.CHsplay_node*, %struct.CHsplay_node** %20, align 8
  %22 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %21, i32 0, i32 3
  %23 = load %struct.CHsplay_node*, %struct.CHsplay_node** %22, align 8
  store %struct.CHsplay_node* %23, %struct.CHsplay_node** %6, align 8
  %24 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %25 = icmp eq %struct.CHsplay_node* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %11
  %27 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %28 = icmp eq %struct.CHsplay_node* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %30, align 8
  br label %80

31:                                               ; preds = %26, %11
  %32 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %33 = icmp eq %struct.CHsplay_node* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %36 = icmp ne %struct.CHsplay_node* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %39 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  store %struct.CHsplay_node* %38, %struct.CHsplay_node** %39, align 8
  %40 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %41 = load %struct.CHsplay_node*, %struct.CHsplay_node** %40, align 8
  %42 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %41, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %42, align 8
  br label %79

43:                                               ; preds = %34, %31
  %44 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %45 = icmp ne %struct.CHsplay_node* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %48 = icmp eq %struct.CHsplay_node* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %51 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  store %struct.CHsplay_node* %50, %struct.CHsplay_node** %51, align 8
  %52 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %53 = load %struct.CHsplay_node*, %struct.CHsplay_node** %52, align 8
  %54 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %53, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %54, align 8
  br label %78

55:                                               ; preds = %46, %43
  %56 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 0
  store double 0x47EFFFFFE0000000, double* %56, align 8
  %57 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 1
  store double 1.000000e+03, double* %57, align 8
  %58 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 2
  store i32 1000, i32* %58, align 8
  %59 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %60 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %59, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %60, align 8
  %61 = call i8* @CHsplay(%struct.CHsplay_node** noundef %5, %struct.key* noundef byval(%struct.key) align 8 %7)
  %62 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 0
  store double -1.000000e+00, double* %62, align 8
  %63 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 1
  store double -1.000000e+00, double* %63, align 8
  %64 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 2
  store i32 -1, i32* %64, align 8
  %65 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %66 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %65, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %66, align 8
  %67 = call i8* @CHsplay(%struct.CHsplay_node** noundef %6, %struct.key* noundef byval(%struct.key) align 8 %7)
  %68 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %69 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %70 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %69, i32 0, i32 3
  store %struct.CHsplay_node* %68, %struct.CHsplay_node** %70, align 8
  %71 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %72 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %73 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %72, i32 0, i32 3
  %74 = load %struct.CHsplay_node*, %struct.CHsplay_node** %73, align 8
  %75 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %74, i32 0, i32 1
  store %struct.CHsplay_node* %71, %struct.CHsplay_node** %75, align 8
  %76 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %77 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  store %struct.CHsplay_node* %76, %struct.CHsplay_node** %77, align 8
  br label %78

78:                                               ; preds = %55, %49
  br label %79

79:                                               ; preds = %78, %37
  br label %80

80:                                               ; preds = %79, %29
  %81 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %82 = bitcast %struct.CHsplay_node* %81 to i8*
  call void @free(i8* noundef %82) #5
  br label %85

83:                                               ; preds = %2
  %84 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %80
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
