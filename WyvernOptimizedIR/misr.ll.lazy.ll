; ModuleID = './misr.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/McGill/misr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cells = type { i32, i32, %struct.cells* }

@reg_len = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Register too long; Max. = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Prob. out of range 0=<Prob>=1\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Structure does not match Register length:\0A\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"reg_len\09#_vect\09prob      #_tms\09struct\09seed1\09seed2\09seed3\09Prob same output\0A \00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%d\09%d\09%.3e %d\09%s\09%d\09%d\09%d\09%.8e\0A\00", align 1
@str = private unnamed_addr constant [42 x i8] c"Structure does not match Register length:\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.cells, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca [3 x i16], align 2
  store i32 10, i32* @reg_len, align 4
  %6 = icmp sgt i32 %0, 6
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %9 = getelementptr inbounds i8*, i8** %1, i64 6
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @strcpy(i8* noundef nonnull %8, i8* noundef nonnull dereferenceable(1) %10) #7
  br label %26

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %19, %12
  %.01 = phi i32 [ 1, %12 ], [ %20, %19 ]
  %14 = load i32, i32* @reg_len, align 4
  %15 = icmp slt i32 %.01, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = zext i32 %.01 to i64
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 %17
  store i8 48, i8* %18, align 1
  br label %19

19:                                               ; preds = %16
  %20 = add nuw nsw i32 %.01, 1
  br label %13, !llvm.loop !4

21:                                               ; preds = %13
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8 49, i8* %22, align 16
  %23 = load i32, i32* @reg_len, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 %24
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %21, %7
  %27 = icmp sgt i32 %0, 7
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = getelementptr inbounds i8*, i8** %1, i64 7
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 0
  %32 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %30, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i16* noundef nonnull %31) #7
  br label %35

33:                                               ; preds = %26
  %34 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 0
  store i16 1, i16* %34, align 2
  br label %35

35:                                               ; preds = %33, %28
  %36 = icmp sgt i32 %0, 8
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = getelementptr inbounds i8*, i8** %1, i64 8
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 1
  %41 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i16* noundef nonnull %40) #7
  br label %44

42:                                               ; preds = %35
  %43 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 1
  store i16 0, i16* %43, align 2
  br label %44

44:                                               ; preds = %42, %37
  %45 = icmp sgt i32 %0, 9
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = getelementptr inbounds i8*, i8** %1, i64 9
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 2
  %50 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %48, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i16* noundef nonnull %49) #7
  br label %53

51:                                               ; preds = %44
  %52 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 2
  store i16 0, i16* %52, align 2
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i32, i32* @reg_len, align 4
  %55 = icmp sgt i32 %54, 100
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 100) #7
  br label %102

58:                                               ; preds = %53
  br i1 false, label %60, label %59

59:                                               ; preds = %58
  br i1 false, label %60, label %61

60:                                               ; preds = %59, %58
  br label %102

61:                                               ; preds = %59
  %62 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %63 = call i64 @strlen(i8* noundef nonnull %62) #8
  %64 = load i32, i32* @reg_len, align 4
  %65 = sext i32 %64 to i64
  %.not = icmp eq i64 %63, %65
  br i1 %.not, label %67, label %66

66:                                               ; preds = %61
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str, i64 0, i64 0))
  br label %102

67:                                               ; preds = %61
  %68 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 0
  %69 = call i16* @seed48(i16* noundef nonnull %68) #7
  call void @create_link_list(%struct.cells* noundef nonnull %3)
  br i1 true, label %70, label %80

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %76, %70
  %.02 = phi i32 [ 0, %70 ], [ %77, %76 ]
  %.1 = phi i32 [ 0, %70 ], [ %78, %76 ]
  %72 = icmp ult i32 %.1, 100000
  br i1 %72, label %73, label %79

73:                                               ; preds = %71
  call void @init(%struct.cells* noundef nonnull %3)
  %74 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %75 = call i32 @simulate(i32 noundef 10, %struct.cells* noundef nonnull %3, double noundef 2.500000e-01, i8* noundef nonnull %74)
  br label %76

76:                                               ; preds = %73
  %77 = add nsw i32 %.02, %75
  %78 = add nuw nsw i32 %.1, 1
  br label %71, !llvm.loop !6

79:                                               ; preds = %71
  br label %85

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %83, %80
  br i1 undef, label %82, label %84

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  br label %81, !llvm.loop !7

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84, %79
  %.24 = phi i32 [ %.02, %79 ], [ undef, %84 ]
  %86 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0)) #7
  %87 = load i32, i32* @reg_len, align 4
  %88 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %89 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 0
  %90 = load i16, i16* %89, align 2
  %91 = zext i16 %90 to i32
  %92 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 1
  %93 = load i16, i16* %92, align 2
  %94 = zext i16 %93 to i32
  %95 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 2
  %96 = load i16, i16* %95, align 2
  %97 = zext i16 %96 to i32
  %98 = sub nsw i32 100000, %.24
  %99 = sitofp i32 %98 to double
  %100 = fdiv double %99, 1.000000e+05
  %101 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 noundef %87, i32 noundef 10, double noundef 2.500000e-01, i32 noundef 100000, i8* noundef nonnull %88, i32 noundef %91, i32 noundef %94, i32 noundef %97, double noundef %100) #7
  br label %102

102:                                              ; preds = %85, %66, %60, %56
  %.0 = phi i32 [ 2, %56 ], [ 3, %60 ], [ 4, %66 ], [ 0, %85 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i16* @seed48(i16* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @create_link_list(%struct.cells* nocapture noundef %0) #0 {
  %2 = bitcast %struct.cells* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %3

3:                                                ; preds = %13, %1
  %.01 = phi i32 [ 0, %1 ], [ %16, %13 ]
  %.0 = phi %struct.cells* [ %0, %1 ], [ %15, %13 ]
  %4 = load i32, i32* @reg_len, align 4
  %.not = icmp sgt i32 %.01, %4
  br i1 %.not, label %17, label %5

5:                                                ; preds = %3
  %6 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %7 = bitcast i8* %6 to %struct.cells*
  %8 = getelementptr inbounds %struct.cells, %struct.cells* %7, i64 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = getelementptr inbounds %struct.cells, %struct.cells* %7, i64 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.cells, %struct.cells* %7, i64 0, i32 2
  store %struct.cells* null, %struct.cells** %10, align 8
  %11 = getelementptr inbounds %struct.cells, %struct.cells* %.0, i64 0, i32 2
  %12 = bitcast %struct.cells** %11 to i8**
  store i8* %6, i8** %12, align 8
  br label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.cells, %struct.cells* %.0, i64 0, i32 2
  %15 = load %struct.cells*, %struct.cells** %14, align 8
  %16 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !8

17:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @init(%struct.cells* nocapture noundef %0) #4 {
  br label %2

2:                                                ; preds = %5, %1
  %.0 = phi %struct.cells* [ %0, %1 ], [ %10, %5 ]
  %3 = getelementptr inbounds %struct.cells, %struct.cells* %.0, i64 0, i32 2
  %4 = load %struct.cells*, %struct.cells** %3, align 8
  %.not = icmp eq %struct.cells* %4, null
  br i1 %.not, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cells, %struct.cells* %.0, i64 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %struct.cells, %struct.cells* %.0, i64 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.cells, %struct.cells* %.0, i64 0, i32 2
  %10 = load %struct.cells*, %struct.cells** %9, align 8
  br label %2, !llvm.loop !9

11:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @simulate(i32 noundef %0, %struct.cells* nocapture noundef %1, double noundef %2, i8* nocapture noundef readonly %3) #0 {
  %5 = load i32, i32* @reg_len, align 4
  %6 = add nsw i32 %5, -1
  %7 = sdiv i32 %6, 31
  %8 = add nsw i32 %5, -1
  %9 = srem i32 %8, 31
  br label %10

10:                                               ; preds = %146, %4
  %.023 = phi i32 [ 0, %4 ], [ %147, %146 ]
  %11 = icmp slt i32 %.023, %0
  br i1 %11, label %12, label %148

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %64, %12
  %.017 = phi i32 [ 0, %12 ], [ %.118, %64 ]
  %.012 = phi i32 [ 0, %12 ], [ %.113, %64 ]
  %.16 = phi %struct.cells* [ %1, %12 ], [ %.27, %64 ]
  %.03 = phi i32 [ 0, %12 ], [ %65, %64 ]
  %14 = icmp slt i32 %.03, %7
  br i1 %14, label %15, label %66

15:                                               ; preds = %13
  %16 = call i64 @lrand48() #7
  br label %17

17:                                               ; preds = %58, %15
  %.118 = phi i32 [ %.017, %15 ], [ %.219, %58 ]
  %.113 = phi i32 [ %.012, %15 ], [ %.214, %58 ]
  %.27 = phi %struct.cells* [ %.16, %15 ], [ %61, %58 ]
  %.01 = phi i32 [ 0, %15 ], [ %62, %58 ]
  %.0 = phi i64 [ %16, %15 ], [ %59, %58 ]
  %18 = icmp ult i32 %.01, 31
  br i1 %18, label %19, label %63

19:                                               ; preds = %17
  %20 = mul nsw i32 %.03, 31
  %21 = add nuw nsw i32 %20, %.01
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %3, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = icmp eq i8 %24, 49
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.cells, %struct.cells* %.27, i64 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %.113, %28
  %30 = getelementptr inbounds %struct.cells, %struct.cells* %.27, i64 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %.118, %31
  br label %33

33:                                               ; preds = %26, %19
  %.219 = phi i32 [ %32, %26 ], [ %.118, %19 ]
  %.214 = phi i32 [ %29, %26 ], [ %.113, %19 ]
  %34 = getelementptr inbounds %struct.cells, %struct.cells* %.27, i64 0, i32 2
  %35 = load %struct.cells*, %struct.cells** %34, align 8
  %36 = getelementptr inbounds %struct.cells, %struct.cells* %35, i64 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = trunc i64 %.0 to i32
  %39 = add i32 %37, %38
  %40 = and i32 %39, 1
  %41 = getelementptr inbounds %struct.cells, %struct.cells* %.27, i64 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = call i64 @lrand48() #7
  %43 = srem i64 %42, 1000
  %44 = sitofp i64 %43 to double
  %45 = fdiv double %44, 1.000000e+03
  %46 = fcmp olt double %45, %2
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = xor i64 %.0, 1
  br label %49

49:                                               ; preds = %47, %33
  %.1 = phi i64 [ %48, %47 ], [ %.0, %33 ]
  %50 = getelementptr inbounds %struct.cells, %struct.cells* %.27, i64 0, i32 2
  %51 = load %struct.cells*, %struct.cells** %50, align 8
  %52 = getelementptr inbounds %struct.cells, %struct.cells* %51, i64 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = trunc i64 %.1 to i32
  %55 = add i32 %53, %54
  %56 = and i32 %55, 1
  %57 = getelementptr inbounds %struct.cells, %struct.cells* %.27, i64 0, i32 1
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %49
  %59 = ashr i64 %.1, 1
  %60 = getelementptr inbounds %struct.cells, %struct.cells* %.27, i64 0, i32 2
  %61 = load %struct.cells*, %struct.cells** %60, align 8
  %62 = add nuw nsw i32 %.01, 1
  br label %17, !llvm.loop !10

63:                                               ; preds = %17
  br label %64

64:                                               ; preds = %63
  %65 = add nuw nsw i32 %.03, 1
  br label %13, !llvm.loop !11

66:                                               ; preds = %13
  %67 = call i64 @lrand48() #7
  br label %68

68:                                               ; preds = %109, %66
  %.320 = phi i32 [ %.017, %66 ], [ %.421, %109 ]
  %.315 = phi i32 [ %.012, %66 ], [ %.416, %109 ]
  %.38 = phi %struct.cells* [ %.16, %66 ], [ %112, %109 ]
  %.12 = phi i32 [ 0, %66 ], [ %113, %109 ]
  %.2 = phi i64 [ %67, %66 ], [ %110, %109 ]
  %69 = icmp slt i32 %.12, %9
  br i1 %69, label %70, label %114

70:                                               ; preds = %68
  %71 = mul nsw i32 %7, 31
  %72 = add nsw i32 %71, %.12
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %3, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = icmp eq i8 %75, 49
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.cells, %struct.cells* %.38, i64 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %.315, %79
  %81 = getelementptr inbounds %struct.cells, %struct.cells* %.38, i64 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %.320, %82
  br label %84

84:                                               ; preds = %77, %70
  %.421 = phi i32 [ %83, %77 ], [ %.320, %70 ]
  %.416 = phi i32 [ %80, %77 ], [ %.315, %70 ]
  %85 = getelementptr inbounds %struct.cells, %struct.cells* %.38, i64 0, i32 2
  %86 = load %struct.cells*, %struct.cells** %85, align 8
  %87 = getelementptr inbounds %struct.cells, %struct.cells* %86, i64 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = trunc i64 %.2 to i32
  %90 = add i32 %88, %89
  %91 = and i32 %90, 1
  %92 = getelementptr inbounds %struct.cells, %struct.cells* %.38, i64 0, i32 0
  store i32 %91, i32* %92, align 8
  %93 = call i64 @lrand48() #7
  %94 = srem i64 %93, 1000
  %95 = sitofp i64 %94 to double
  %96 = fdiv double %95, 1.000000e+03
  %97 = fcmp olt double %96, %2
  br i1 %97, label %98, label %100

98:                                               ; preds = %84
  %99 = xor i64 %.2, 1
  br label %100

100:                                              ; preds = %98, %84
  %.3 = phi i64 [ %99, %98 ], [ %.2, %84 ]
  %101 = getelementptr inbounds %struct.cells, %struct.cells* %.38, i64 0, i32 2
  %102 = load %struct.cells*, %struct.cells** %101, align 8
  %103 = getelementptr inbounds %struct.cells, %struct.cells* %102, i64 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = trunc i64 %.3 to i32
  %106 = add i32 %104, %105
  %107 = and i32 %106, 1
  %108 = getelementptr inbounds %struct.cells, %struct.cells* %.38, i64 0, i32 1
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %100
  %110 = ashr i64 %.3, 1
  %111 = getelementptr inbounds %struct.cells, %struct.cells* %.38, i64 0, i32 2
  %112 = load %struct.cells*, %struct.cells** %111, align 8
  %113 = add nuw nsw i32 %.12, 1
  br label %68, !llvm.loop !12

114:                                              ; preds = %68
  %115 = call i64 @lrand48() #7
  %116 = load i32, i32* @reg_len, align 4
  %117 = add nsw i32 %116, -1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %3, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = icmp eq i8 %120, 49
  br i1 %121, label %122, label %129

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.cells, %struct.cells* %.38, i64 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %.315, %124
  %126 = getelementptr inbounds %struct.cells, %struct.cells* %.38, i64 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %.320, %127
  br label %129

129:                                              ; preds = %122, %114
  %.522 = phi i32 [ %128, %122 ], [ %.320, %114 ]
  %.5 = phi i32 [ %125, %122 ], [ %.315, %114 ]
  %130 = trunc i64 %115 to i32
  %131 = add i32 %.5, %130
  %132 = and i32 %131, 1
  %133 = getelementptr inbounds %struct.cells, %struct.cells* %.38, i64 0, i32 0
  store i32 %132, i32* %133, align 8
  %134 = call i64 @lrand48() #7
  %135 = srem i64 %134, 10000
  %136 = sitofp i64 %135 to double
  %137 = fdiv double %136, 1.000000e+04
  %138 = fcmp olt double %137, %2
  br i1 %138, label %139, label %141

139:                                              ; preds = %129
  %140 = xor i64 %115, 1
  br label %141

141:                                              ; preds = %139, %129
  %.4 = phi i64 [ %140, %139 ], [ %115, %129 ]
  %142 = trunc i64 %.4 to i32
  %143 = add i32 %.522, %142
  %144 = and i32 %143, 1
  %145 = getelementptr inbounds %struct.cells, %struct.cells* %.38, i64 0, i32 1
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %141
  %147 = add nuw nsw i32 %.023, 1
  br label %10, !llvm.loop !13

148:                                              ; preds = %10
  br label %149

149:                                              ; preds = %159, %148
  %.010 = phi i32 [ 0, %148 ], [ %.111, %159 ]
  %.49 = phi %struct.cells* [ %1, %148 ], [ %161, %159 ]
  %.14 = phi i32 [ 0, %148 ], [ %162, %159 ]
  %150 = load i32, i32* @reg_len, align 4
  %151 = icmp slt i32 %.14, %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.cells, %struct.cells* %.49, i64 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds %struct.cells, %struct.cells* %.49, i64 0, i32 1
  %156 = load i32, i32* %155, align 4
  %.not = icmp eq i32 %154, %156
  br i1 %.not, label %158, label %157

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157, %152
  %.111 = phi i32 [ 1, %157 ], [ %.010, %152 ]
  br label %159

159:                                              ; preds = %158
  %160 = getelementptr inbounds %struct.cells, %struct.cells* %.49, i64 0, i32 2
  %161 = load %struct.cells*, %struct.cells** %160, align 8
  %162 = add nuw nsw i32 %.14, 1
  br label %149, !llvm.loop !14

163:                                              ; preds = %149
  ret i32 %.010
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @kill_list(%struct.cells* noundef %0) #0 {
  br label %2

2:                                                ; preds = %3, %1
  %.0 = phi %struct.cells* [ %0, %1 ], [ %5, %3 ]
  %.not = icmp eq %struct.cells* %.0, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.cells, %struct.cells* %.0, i64 0, i32 2
  %5 = load %struct.cells*, %struct.cells** %4, align 8
  %6 = bitcast %struct.cells* %.0 to i8*
  call void @free(i8* noundef %6) #7
  br label %2, !llvm.loop !15

7:                                                ; preds = %2
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @lrand48() #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
