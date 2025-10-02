; ModuleID = './20060420-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20060420-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.0 = type { float* (%_wyvern_thunk_type.0*)*, float*, i1 }

@buffer = dso_local global [64 x float] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo(float* noundef %0, float** nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  br label %5

5:                                                ; preds = %35, %4
  %.05 = phi i32 [ 0, %4 ], [ %36, %35 ]
  %6 = icmp slt i32 %.05, %3
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  %8 = ptrtoint float* %0 to i64
  %9 = zext i32 %.05 to i64
  %10 = add i64 %8, %9
  %11 = and i64 %10, 15
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %7, %5
  %14 = phi i1 [ false, %5 ], [ %12, %7 ]
  br i1 %14, label %15, label %37

15:                                               ; preds = %13
  %16 = load float*, float** %1, align 8
  %17 = zext i32 %.05 to i64
  %18 = getelementptr inbounds float, float* %16, i64 %17
  %19 = load float, float* %18, align 4
  br label %20

20:                                               ; preds = %23, %15
  %.09 = phi float [ %19, %15 ], [ %30, %23 ]
  %.04 = phi i32 [ 1, %15 ], [ %31, %23 ]
  %21 = icmp slt i32 %.04, %2
  br i1 %21, label %22, label %32

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22
  %24 = zext i32 %.04 to i64
  %25 = getelementptr inbounds float*, float** %1, i64 %24
  %26 = load float*, float** %25, align 8
  %27 = zext i32 %.05 to i64
  %28 = getelementptr inbounds float, float* %26, i64 %27
  %29 = load float, float* %28, align 4
  %30 = fadd float %.09, %29
  %31 = add nuw nsw i32 %.04, 1
  br label %20, !llvm.loop !4

32:                                               ; preds = %20
  %33 = zext i32 %.05 to i64
  %34 = getelementptr inbounds float, float* %0, i64 %33
  store float %.09, float* %34, align 4
  br label %35

35:                                               ; preds = %32
  %36 = add nuw nsw i32 %.05, 1
  br label %5, !llvm.loop !6

37:                                               ; preds = %13
  br label %38

38:                                               ; preds = %119, %37
  %.16 = phi i32 [ %.05, %37 ], [ %120, %119 ]
  %39 = add nsw i32 %3, -15
  %40 = icmp slt i32 %.16, %39
  br i1 %40, label %41, label %121

41:                                               ; preds = %38
  %42 = load float*, float** %1, align 8
  %43 = zext i32 %.16 to i64
  %44 = getelementptr inbounds float, float* %42, i64 %43
  %45 = bitcast float* %44 to <4 x float>*
  %46 = load <4 x float>, <4 x float>* %45, align 16
  %47 = zext i32 %.16 to i64
  %48 = getelementptr inbounds float, float* %42, i64 4
  %49 = getelementptr inbounds float, float* %48, i64 %47
  %50 = bitcast float* %49 to <4 x float>*
  %51 = load <4 x float>, <4 x float>* %50, align 16
  %52 = load float*, float** %1, align 8
  %53 = zext i32 %.16 to i64
  %54 = getelementptr inbounds float, float* %52, i64 8
  %55 = getelementptr inbounds float, float* %54, i64 %53
  %56 = bitcast float* %55 to <4 x float>*
  %57 = load <4 x float>, <4 x float>* %56, align 16
  %58 = zext i32 %.16 to i64
  %59 = getelementptr inbounds float, float* %52, i64 12
  %60 = getelementptr inbounds float, float* %59, i64 %58
  %61 = bitcast float* %60 to <4 x float>*
  %62 = load <4 x float>, <4 x float>* %61, align 16
  br label %63

63:                                               ; preds = %66, %41
  %.08 = phi <4 x float> [ %46, %41 ], [ %101, %66 ]
  %.1 = phi i32 [ 1, %41 ], [ %102, %66 ]
  %.03 = phi <4 x float> [ %51, %41 ], [ %93, %66 ]
  %.02 = phi <4 x float> [ %57, %41 ], [ %84, %66 ]
  %.01 = phi <4 x float> [ %62, %41 ], [ %75, %66 ]
  %64 = icmp slt i32 %.1, %2
  br i1 %64, label %65, label %103

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65
  %67 = zext i32 %.1 to i64
  %68 = getelementptr inbounds float*, float** %1, i64 %67
  %69 = load float*, float** %68, align 8
  %70 = getelementptr inbounds float, float* %69, i64 12
  %71 = zext i32 %.16 to i64
  %72 = getelementptr inbounds float, float* %70, i64 %71
  %73 = bitcast float* %72 to <4 x float>*
  %74 = load <4 x float>, <4 x float>* %73, align 16
  %75 = fadd <4 x float> %.01, %74
  %76 = zext i32 %.1 to i64
  %77 = getelementptr inbounds float*, float** %1, i64 %76
  %78 = load float*, float** %77, align 8
  %79 = getelementptr inbounds float, float* %78, i64 8
  %80 = zext i32 %.16 to i64
  %81 = getelementptr inbounds float, float* %79, i64 %80
  %82 = bitcast float* %81 to <4 x float>*
  %83 = load <4 x float>, <4 x float>* %82, align 16
  %84 = fadd <4 x float> %.02, %83
  %85 = zext i32 %.1 to i64
  %86 = getelementptr inbounds float*, float** %1, i64 %85
  %87 = load float*, float** %86, align 8
  %88 = getelementptr inbounds float, float* %87, i64 4
  %89 = zext i32 %.16 to i64
  %90 = getelementptr inbounds float, float* %88, i64 %89
  %91 = bitcast float* %90 to <4 x float>*
  %92 = load <4 x float>, <4 x float>* %91, align 16
  %93 = fadd <4 x float> %.03, %92
  %94 = zext i32 %.1 to i64
  %95 = getelementptr inbounds float*, float** %1, i64 %94
  %96 = load float*, float** %95, align 8
  %97 = zext i32 %.16 to i64
  %98 = getelementptr inbounds float, float* %96, i64 %97
  %99 = bitcast float* %98 to <4 x float>*
  %100 = load <4 x float>, <4 x float>* %99, align 16
  %101 = fadd <4 x float> %.08, %100
  %102 = add nuw nsw i32 %.1, 1
  br label %63, !llvm.loop !7

103:                                              ; preds = %63
  %104 = zext i32 %.16 to i64
  %105 = getelementptr inbounds float, float* %0, i64 %104
  %106 = bitcast float* %105 to <4 x float>*
  store <4 x float> %.08, <4 x float>* %106, align 16
  %107 = zext i32 %.16 to i64
  %108 = getelementptr inbounds float, float* %0, i64 4
  %109 = getelementptr inbounds float, float* %108, i64 %107
  %110 = bitcast float* %109 to <4 x float>*
  store <4 x float> %.03, <4 x float>* %110, align 16
  %111 = zext i32 %.16 to i64
  %112 = getelementptr inbounds float, float* %0, i64 8
  %113 = getelementptr inbounds float, float* %112, i64 %111
  %114 = bitcast float* %113 to <4 x float>*
  store <4 x float> %.02, <4 x float>* %114, align 16
  %115 = zext i32 %.16 to i64
  %116 = getelementptr inbounds float, float* %0, i64 12
  %117 = getelementptr inbounds float, float* %116, i64 %115
  %118 = bitcast float* %117 to <4 x float>*
  store <4 x float> %.01, <4 x float>* %118, align 16
  br label %119

119:                                              ; preds = %103
  %120 = add nuw nsw i32 %.16, 16
  br label %38, !llvm.loop !8

121:                                              ; preds = %38
  br label %122

122:                                              ; preds = %144, %121
  %.27 = phi i32 [ %.16, %121 ], [ %145, %144 ]
  %123 = icmp slt i32 %.27, %3
  br i1 %123, label %124, label %146

124:                                              ; preds = %122
  %125 = load float*, float** %1, align 8
  %126 = zext i32 %.27 to i64
  %127 = getelementptr inbounds float, float* %125, i64 %126
  %128 = load float, float* %127, align 4
  br label %129

129:                                              ; preds = %132, %124
  %.2 = phi i32 [ 1, %124 ], [ %140, %132 ]
  %.0 = phi float [ %128, %124 ], [ %139, %132 ]
  %130 = icmp slt i32 %.2, %2
  br i1 %130, label %131, label %141

131:                                              ; preds = %129
  br label %132

132:                                              ; preds = %131
  %133 = zext i32 %.2 to i64
  %134 = getelementptr inbounds float*, float** %1, i64 %133
  %135 = load float*, float** %134, align 8
  %136 = zext i32 %.27 to i64
  %137 = getelementptr inbounds float, float* %135, i64 %136
  %138 = load float, float* %137, align 4
  %139 = fadd float %.0, %138
  %140 = add nuw nsw i32 %.2, 1
  br label %129, !llvm.loop !9

141:                                              ; preds = %129
  %142 = zext i32 %.27 to i64
  %143 = getelementptr inbounds float, float* %0, i64 %142
  store float %.0, float* %143, align 4
  br label %144

144:                                              ; preds = %141
  %145 = add nuw nsw i32 %.27, 1
  br label %122, !llvm.loop !10

146:                                              ; preds = %122
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %1 = alloca [2 x float*], align 16
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store float* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_main_662094385, float* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunkcall = call float* @_wyvern_slice_memo_main_662094385(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %2 = getelementptr inbounds float, float* %_wyvern_thunkcall, i64 16
  %3 = getelementptr inbounds [2 x float*], [2 x float*]* %1, i64 0, i64 0
  store float* %2, float** %3, align 16
  %_wyvern_thunkcall1 = call float* @_wyvern_slice_memo_main_662094385(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %4 = getelementptr inbounds float, float* %_wyvern_thunkcall1, i64 32
  %5 = getelementptr inbounds [2 x float*], [2 x float*]* %1, i64 0, i64 1
  store float* %4, float** %5, align 8
  br label %6

6:                                                ; preds = %23, %0
  %.0 = phi i32 [ 0, %0 ], [ %24, %23 ]
  %7 = icmp ult i32 %.0, 16
  br i1 %7, label %8, label %25

8:                                                ; preds = %6
  %9 = sitofp i32 %.0 to float
  %10 = sitofp i32 %.0 to float
  %11 = call float @llvm.fmuladd.f32(float %10, float 1.100000e+01, float %9)
  %12 = getelementptr inbounds [2 x float*], [2 x float*]* %1, i64 0, i64 0
  %13 = load float*, float** %12, align 16
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds float, float* %13, i64 %14
  store float %11, float* %15, align 4
  %16 = sitofp i32 %.0 to float
  %17 = sitofp i32 %.0 to float
  %18 = call float @llvm.fmuladd.f32(float %17, float 1.200000e+01, float %16)
  %19 = getelementptr inbounds [2 x float*], [2 x float*]* %1, i64 0, i64 1
  %20 = load float*, float** %19, align 8
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds float, float* %20, i64 %21
  store float %18, float* %22, align 4
  br label %23

23:                                               ; preds = %8
  %24 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !11

25:                                               ; preds = %6
  %26 = getelementptr inbounds [2 x float*], [2 x float*]* %1, i64 0, i64 0
  call void @_wyvern_calleeclone_foo_0227065573(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, float** noundef nonnull %26, i32 noundef 2, i32 noundef 16)
  br label %27

27:                                               ; preds = %43, %25
  %.1 = phi i32 [ 0, %25 ], [ %44, %43 ]
  %28 = icmp ult i32 %.1, 16
  br i1 %28, label %29, label %45

29:                                               ; preds = %27
  %30 = sitofp i32 %.1 to float
  %31 = sitofp i32 %.1 to float
  %32 = call float @llvm.fmuladd.f32(float %31, float 1.100000e+01, float %30)
  %33 = sitofp i32 %.1 to float
  %34 = fadd float %32, %33
  %35 = sitofp i32 %.1 to float
  %36 = call float @llvm.fmuladd.f32(float %35, float 1.200000e+01, float %34)
  %37 = zext i32 %.1 to i64
  %_wyvern_thunkcall2 = call float* @_wyvern_slice_memo_main_662094385(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %38 = getelementptr inbounds float, float* %_wyvern_thunkcall2, i64 %37
  %39 = load float, float* %38, align 4
  %40 = fcmp une float %39, %36
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  call void @abort() #5
  unreachable

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42
  %44 = add nuw nsw i32 %.1, 1
  br label %27, !llvm.loop !12

45:                                               ; preds = %27
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: nounwind readonly willreturn
define float* @_wyvern_slice_memo_main_662094385(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load float*, float** %_wyvern_memo_val_addr, align 8
  ret float* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store float* bitcast (i8* getelementptr inbounds (i8, i8* bitcast ([64 x float]* @buffer to i8*), i64 and (i64 sub (i64 0, i64 ptrtoint ([64 x float]* @buffer to i64)), i64 63)) to float*), float** %_wyvern_memo_val_addr, align 8
  ret float* bitcast (i8* getelementptr inbounds (i8, i8* bitcast ([64 x float]* @buffer to i8*), i64 and (i64 sub (i64 0, i64 ptrtoint ([64 x float]* @buffer to i64)), i64 63)) to float*)
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_wyvern_calleeclone_foo_0227065573(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, float** nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %34, %3
  %.05 = phi i32 [ 0, %3 ], [ %35, %34 ]
  %5 = icmp slt i32 %.05, %2
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %_wyvern_thunk_fptr_addr16 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr17 = load float* (%_wyvern_thunk_type.0*)*, float* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr16, align 8
  %_wyvern_thunkcall18 = call float* %_wyvern_thunkfptr17(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6
  %7 = ptrtoint float* %_wyvern_thunkcall18 to i64
  %8 = zext i32 %.05 to i64
  %9 = add i64 %7, %8
  %10 = and i64 %9, 15
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %6, %4
  %13 = phi i1 [ false, %4 ], [ %11, %6 ]
  br i1 %13, label %14, label %36

14:                                               ; preds = %12
  %15 = load float*, float** %0, align 8
  %16 = zext i32 %.05 to i64
  %17 = getelementptr inbounds float, float* %15, i64 %16
  %18 = load float, float* %17, align 4
  br label %19

19:                                               ; preds = %22, %14
  %.09 = phi float [ %18, %14 ], [ %29, %22 ]
  %.04 = phi i32 [ 1, %14 ], [ %30, %22 ]
  %20 = icmp slt i32 %.04, %1
  br i1 %20, label %21, label %31

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21
  %23 = zext i32 %.04 to i64
  %24 = getelementptr inbounds float*, float** %0, i64 %23
  %25 = load float*, float** %24, align 8
  %26 = zext i32 %.05 to i64
  %27 = getelementptr inbounds float, float* %25, i64 %26
  %28 = load float, float* %27, align 4
  %29 = fadd float %.09, %28
  %30 = add nuw nsw i32 %.04, 1
  br label %19, !llvm.loop !4

31:                                               ; preds = %19
  %32 = zext i32 %.05 to i64
  %_wyvern_thunk_fptr_addr13 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr14 = load float* (%_wyvern_thunk_type.0*)*, float* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr13, align 8
  %_wyvern_thunkcall15 = call float* %_wyvern_thunkfptr14(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6
  %33 = getelementptr inbounds float, float* %_wyvern_thunkcall15, i64 %32
  store float %.09, float* %33, align 4
  br label %34

34:                                               ; preds = %31
  %35 = add nuw nsw i32 %.05, 1
  br label %4, !llvm.loop !6

36:                                               ; preds = %12
  br label %37

37:                                               ; preds = %118, %36
  %.16 = phi i32 [ %.05, %36 ], [ %119, %118 ]
  %38 = add nsw i32 %2, -15
  %39 = icmp slt i32 %.16, %38
  br i1 %39, label %40, label %120

40:                                               ; preds = %37
  %41 = load float*, float** %0, align 8
  %42 = zext i32 %.16 to i64
  %43 = getelementptr inbounds float, float* %41, i64 %42
  %44 = bitcast float* %43 to <4 x float>*
  %45 = load <4 x float>, <4 x float>* %44, align 16
  %46 = zext i32 %.16 to i64
  %47 = getelementptr inbounds float, float* %41, i64 4
  %48 = getelementptr inbounds float, float* %47, i64 %46
  %49 = bitcast float* %48 to <4 x float>*
  %50 = load <4 x float>, <4 x float>* %49, align 16
  %51 = load float*, float** %0, align 8
  %52 = zext i32 %.16 to i64
  %53 = getelementptr inbounds float, float* %51, i64 8
  %54 = getelementptr inbounds float, float* %53, i64 %52
  %55 = bitcast float* %54 to <4 x float>*
  %56 = load <4 x float>, <4 x float>* %55, align 16
  %57 = zext i32 %.16 to i64
  %58 = getelementptr inbounds float, float* %51, i64 12
  %59 = getelementptr inbounds float, float* %58, i64 %57
  %60 = bitcast float* %59 to <4 x float>*
  %61 = load <4 x float>, <4 x float>* %60, align 16
  br label %62

62:                                               ; preds = %65, %40
  %.08 = phi <4 x float> [ %45, %40 ], [ %100, %65 ]
  %.1 = phi i32 [ 1, %40 ], [ %101, %65 ]
  %.03 = phi <4 x float> [ %50, %40 ], [ %92, %65 ]
  %.02 = phi <4 x float> [ %56, %40 ], [ %83, %65 ]
  %.01 = phi <4 x float> [ %61, %40 ], [ %74, %65 ]
  %63 = icmp slt i32 %.1, %1
  br i1 %63, label %64, label %102

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64
  %66 = zext i32 %.1 to i64
  %67 = getelementptr inbounds float*, float** %0, i64 %66
  %68 = load float*, float** %67, align 8
  %69 = getelementptr inbounds float, float* %68, i64 12
  %70 = zext i32 %.16 to i64
  %71 = getelementptr inbounds float, float* %69, i64 %70
  %72 = bitcast float* %71 to <4 x float>*
  %73 = load <4 x float>, <4 x float>* %72, align 16
  %74 = fadd <4 x float> %.01, %73
  %75 = zext i32 %.1 to i64
  %76 = getelementptr inbounds float*, float** %0, i64 %75
  %77 = load float*, float** %76, align 8
  %78 = getelementptr inbounds float, float* %77, i64 8
  %79 = zext i32 %.16 to i64
  %80 = getelementptr inbounds float, float* %78, i64 %79
  %81 = bitcast float* %80 to <4 x float>*
  %82 = load <4 x float>, <4 x float>* %81, align 16
  %83 = fadd <4 x float> %.02, %82
  %84 = zext i32 %.1 to i64
  %85 = getelementptr inbounds float*, float** %0, i64 %84
  %86 = load float*, float** %85, align 8
  %87 = getelementptr inbounds float, float* %86, i64 4
  %88 = zext i32 %.16 to i64
  %89 = getelementptr inbounds float, float* %87, i64 %88
  %90 = bitcast float* %89 to <4 x float>*
  %91 = load <4 x float>, <4 x float>* %90, align 16
  %92 = fadd <4 x float> %.03, %91
  %93 = zext i32 %.1 to i64
  %94 = getelementptr inbounds float*, float** %0, i64 %93
  %95 = load float*, float** %94, align 8
  %96 = zext i32 %.16 to i64
  %97 = getelementptr inbounds float, float* %95, i64 %96
  %98 = bitcast float* %97 to <4 x float>*
  %99 = load <4 x float>, <4 x float>* %98, align 16
  %100 = fadd <4 x float> %.08, %99
  %101 = add nuw nsw i32 %.1, 1
  br label %62, !llvm.loop !7

102:                                              ; preds = %62
  %103 = zext i32 %.16 to i64
  %_wyvern_thunk_fptr_addr10 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr11 = load float* (%_wyvern_thunk_type.0*)*, float* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr10, align 8
  %_wyvern_thunkcall12 = call float* %_wyvern_thunkfptr11(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6
  %104 = getelementptr inbounds float, float* %_wyvern_thunkcall12, i64 %103
  %105 = bitcast float* %104 to <4 x float>*
  store <4 x float> %.08, <4 x float>* %105, align 16
  %106 = zext i32 %.16 to i64
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load float* (%_wyvern_thunk_type.0*)*, float* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call float* %_wyvern_thunkfptr8(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6
  %107 = getelementptr inbounds float, float* %_wyvern_thunkcall9, i64 4
  %108 = getelementptr inbounds float, float* %107, i64 %106
  %109 = bitcast float* %108 to <4 x float>*
  store <4 x float> %.03, <4 x float>* %109, align 16
  %110 = zext i32 %.16 to i64
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load float* (%_wyvern_thunk_type.0*)*, float* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call float* %_wyvern_thunkfptr5(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6
  %111 = getelementptr inbounds float, float* %_wyvern_thunkcall6, i64 8
  %112 = getelementptr inbounds float, float* %111, i64 %110
  %113 = bitcast float* %112 to <4 x float>*
  store <4 x float> %.02, <4 x float>* %113, align 16
  %114 = zext i32 %.16 to i64
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load float* (%_wyvern_thunk_type.0*)*, float* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call float* %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6
  %115 = getelementptr inbounds float, float* %_wyvern_thunkcall3, i64 12
  %116 = getelementptr inbounds float, float* %115, i64 %114
  %117 = bitcast float* %116 to <4 x float>*
  store <4 x float> %.01, <4 x float>* %117, align 16
  br label %118

118:                                              ; preds = %102
  %119 = add nuw nsw i32 %.16, 16
  br label %37, !llvm.loop !8

120:                                              ; preds = %37
  br label %121

121:                                              ; preds = %143, %120
  %.27 = phi i32 [ %.16, %120 ], [ %144, %143 ]
  %122 = icmp slt i32 %.27, %2
  br i1 %122, label %123, label %145

123:                                              ; preds = %121
  %124 = load float*, float** %0, align 8
  %125 = zext i32 %.27 to i64
  %126 = getelementptr inbounds float, float* %124, i64 %125
  %127 = load float, float* %126, align 4
  br label %128

128:                                              ; preds = %131, %123
  %.2 = phi i32 [ 1, %123 ], [ %139, %131 ]
  %.0 = phi float [ %127, %123 ], [ %138, %131 ]
  %129 = icmp slt i32 %.2, %1
  br i1 %129, label %130, label %140

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %130
  %132 = zext i32 %.2 to i64
  %133 = getelementptr inbounds float*, float** %0, i64 %132
  %134 = load float*, float** %133, align 8
  %135 = zext i32 %.27 to i64
  %136 = getelementptr inbounds float, float* %134, i64 %135
  %137 = load float, float* %136, align 4
  %138 = fadd float %.0, %137
  %139 = add nuw nsw i32 %.2, 1
  br label %128, !llvm.loop !9

140:                                              ; preds = %128
  %141 = zext i32 %.27 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load float* (%_wyvern_thunk_type.0*)*, float* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call float* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6
  %142 = getelementptr inbounds float, float* %_wyvern_thunkcall, i64 %141
  store float %.0, float* %142, align 4
  br label %143

143:                                              ; preds = %140
  %144 = add nuw nsw i32 %.27, 1
  br label %121, !llvm.loop !10

145:                                              ; preds = %121
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { noreturn nounwind }
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
