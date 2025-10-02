; ModuleID = './pr38051.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38051.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.2 = type { i64 (%_wyvern_thunk_type.2*)*, i64, i1, i8* }
%_wyvern_thunk_type.0 = type { i64 (%_wyvern_thunk_type.0*)*, i64, i1, i8* }
%union.anon = type { i64 }

@buf = dso_local global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [16 x i8] c"\017\82\A7UI\9D\BF\F8D\B6U\17\8E\F9\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\017\82\A7UI\D0\F3\B7*m#qIj\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @mymemcmp(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %_wyvern_thunk_alloca1 = alloca %_wyvern_thunk_type.2, align 8
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %_wyvern_thunk_fptr_gep2 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca1, i64 0, i32 0
  store i64 (%_wyvern_thunk_type.2*)* @_wyvern_slice_memo_mymemcmp_286579152, i64 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_gep2, align 8
  %_wyvern_thunk_flag_gep3 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca1, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep3, align 8
  %_wyvern_thunk_arg_gep_4 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca1, i64 0, i32 3
  store i8* %0, i8** %_wyvern_thunk_arg_gep_4, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i64 (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_mymemcmp_530971744, i64 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store i8* %1, i8** %_wyvern_thunk_arg_gep_, align 8
  %_wyvern_thunkcall5 = call i64 @_wyvern_slice_memo_mymemcmp_286579152(%_wyvern_thunk_type.2* nonnull %_wyvern_thunk_alloca1)
  %4 = and i64 %_wyvern_thunkcall5, 7
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = lshr i64 %2, 3
  %_wyvern_thunkcall = call i64 @_wyvern_slice_memo_mymemcmp_530971744(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %8 = call i32 @_wyvern_calleeclone_mymemcmp2_0642244604(%_wyvern_thunk_type.2* noundef nonnull %_wyvern_thunk_alloca1, i64 noundef %_wyvern_thunkcall, i64 noundef %7) #5
  br label %12

9:                                                ; preds = %3
  %10 = lshr i64 %2, 3
  %_wyvern_thunkcall6 = call i64 @_wyvern_slice_memo_mymemcmp_286579152(%_wyvern_thunk_type.2* nonnull %_wyvern_thunk_alloca1)
  %11 = call i32 @_wyvern_calleeclone_mymemcmp3_1174872614(i64 noundef %_wyvern_thunkcall6, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i64 noundef %10) #5
  br label %12

12:                                               ; preds = %9, %6
  %.0 = phi i32 [ %8, %6 ], [ %11, %9 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i32 @mymemcmp2(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = and i64 %2, 3
  switch i64 %4, label %5 [
    i64 2, label %6
    i64 3, label %12
    i64 0, label %18
    i64 1, label %22
  ]

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5, %3
  %7 = inttoptr i64 %0 to i64*
  %8 = inttoptr i64 %1 to i64*
  %9 = add i64 %0, -16
  %10 = add i64 %1, -16
  %11 = add i64 %2, 2
  br label %54

12:                                               ; preds = %3
  %13 = inttoptr i64 %0 to i64*
  %14 = inttoptr i64 %1 to i64*
  %15 = add i64 %0, -8
  %16 = add i64 %1, -8
  %17 = add i64 %2, 1
  br label %46

18:                                               ; preds = %3
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %73

21:                                               ; preds = %18
  br label %38

22:                                               ; preds = %3
  %23 = inttoptr i64 %0 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %1 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %0, 8
  %28 = add i64 %1, 8
  %29 = add i64 %2, -1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %69

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %65, %33
  %.017 = phi i64 [ %60, %65 ], [ %26, %33 ]
  %.012 = phi i64 [ %57, %65 ], [ %24, %33 ]
  %.06 = phi i64 [ %64, %65 ], [ %29, %33 ]
  %.02 = phi i64 [ %66, %65 ], [ %28, %33 ]
  %.01 = phi i64 [ %67, %65 ], [ %27, %33 ]
  %.not = icmp eq i64 %.012, %.017
  br i1 %.not, label %37, label %35

35:                                               ; preds = %34
  %36 = call i32 @mymemcmp1(i64 noundef %.012, i64 noundef %.017) #5
  br label %73

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %37, %21
  %.17 = phi i64 [ %.06, %37 ], [ %2, %21 ]
  %.13 = phi i64 [ %.02, %37 ], [ %1, %21 ]
  %.1 = phi i64 [ %.01, %37 ], [ %0, %21 ]
  %.015.in = inttoptr i64 %.13 to i64*
  %.010.in = inttoptr i64 %.1 to i64*
  %.010 = load i64, i64* %.010.in, align 8
  %.015 = load i64, i64* %.015.in, align 8
  %.not20 = icmp eq i64 %.010, %.015
  br i1 %.not20, label %41, label %39

39:                                               ; preds = %38
  %40 = call i32 @mymemcmp1(i64 noundef %.010, i64 noundef %.015) #5
  br label %73

41:                                               ; preds = %38
  %42 = inttoptr i64 %.13 to i64*
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = inttoptr i64 %.1 to i64*
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  br label %46

46:                                               ; preds = %41, %12
  %.118.in = phi i64* [ %43, %41 ], [ %14, %12 ]
  %.113.in = phi i64* [ %45, %41 ], [ %13, %12 ]
  %.28 = phi i64 [ %.17, %41 ], [ %17, %12 ]
  %.24 = phi i64 [ %.13, %41 ], [ %16, %12 ]
  %.2 = phi i64 [ %.1, %41 ], [ %15, %12 ]
  %.113 = load i64, i64* %.113.in, align 8
  %.118 = load i64, i64* %.118.in, align 8
  %.not21 = icmp eq i64 %.113, %.118
  br i1 %.not21, label %49, label %47

47:                                               ; preds = %46
  %48 = call i32 @mymemcmp1(i64 noundef %.113, i64 noundef %.118) #5
  br label %73

49:                                               ; preds = %46
  %50 = inttoptr i64 %.24 to i64*
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = inttoptr i64 %.2 to i64*
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  br label %54

54:                                               ; preds = %49, %6
  %.116.in = phi i64* [ %8, %6 ], [ %51, %49 ]
  %.111.in = phi i64* [ %7, %6 ], [ %53, %49 ]
  %.39 = phi i64 [ %11, %6 ], [ %.28, %49 ]
  %.35 = phi i64 [ %10, %6 ], [ %.24, %49 ]
  %.3 = phi i64 [ %9, %6 ], [ %.2, %49 ]
  %.111 = load i64, i64* %.111.in, align 8
  %.116 = load i64, i64* %.116.in, align 8
  %55 = inttoptr i64 %.3 to i64*
  %56 = getelementptr inbounds i64, i64* %55, i64 3
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %.35 to i64*
  %59 = getelementptr inbounds i64, i64* %58, i64 3
  %60 = load i64, i64* %59, align 8
  %.not22 = icmp eq i64 %.111, %.116
  br i1 %.not22, label %63, label %61

61:                                               ; preds = %54
  %62 = call i32 @mymemcmp1(i64 noundef %.111, i64 noundef %.116) #5
  br label %73

63:                                               ; preds = %54
  %64 = add i64 %.39, -4
  br label %65

65:                                               ; preds = %63
  %66 = add i64 %.35, 32
  %67 = add i64 %.3, 32
  %.not23 = icmp eq i64 %64, 0
  br i1 %.not23, label %68, label %34, !llvm.loop !4

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %68, %31
  %.219 = phi i64 [ %60, %68 ], [ %26, %31 ]
  %.214 = phi i64 [ %57, %68 ], [ %24, %31 ]
  %.not24 = icmp eq i64 %.214, %.219
  br i1 %.not24, label %72, label %70

70:                                               ; preds = %69
  %71 = call i32 @mymemcmp1(i64 noundef %.214, i64 noundef %.219) #5
  br label %73

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %72, %70, %61, %47, %39, %35, %20
  %.0 = phi i32 [ %62, %61 ], [ %36, %35 ], [ %40, %39 ], [ %48, %47 ], [ %71, %70 ], [ 0, %72 ], [ 0, %20 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i32 @mymemcmp3(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %.tr = trunc i64 %0 to i32
  %4 = shl i32 %.tr, 3
  %5 = and i32 %4, 56
  %narrow = sub nuw nsw i32 64, %5
  %6 = and i64 %0, -8
  %7 = and i64 %2, 3
  switch i64 %7, label %8 [
    i64 2, label %9
    i64 3, label %18
    i64 0, label %24
    i64 1, label %33
  ]

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8, %3
  %10 = inttoptr i64 %6 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %6 to i64*
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = inttoptr i64 %1 to i64*
  %15 = add i64 %6, -8
  %16 = add i64 %1, -16
  %17 = add i64 %2, 2
  br label %82

18:                                               ; preds = %3
  %19 = inttoptr i64 %6 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %1 to i64*
  %22 = add i64 %1, -8
  %23 = add i64 %2, 1
  br label %69

24:                                               ; preds = %3
  %25 = icmp eq i64 %2, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  br label %111

27:                                               ; preds = %24
  %28 = inttoptr i64 %6 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %6 to i64*
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = add i64 %6, 8
  br label %58

33:                                               ; preds = %3
  %34 = inttoptr i64 %6 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %6 to i64*
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %1 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %6, 16
  %42 = add i64 %1, 8
  %43 = add i64 %2, -1
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %102

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %98, %47
  %.023 = phi i64 [ %88, %98 ], [ %40, %47 ]
  %.017 = phi i64 [ %85, %98 ], [ %38, %47 ]
  %.014 = phi i64 [ %.115, %98 ], [ %35, %47 ]
  %.06 = phi i64 [ %97, %98 ], [ %43, %47 ]
  %.02 = phi i64 [ %99, %98 ], [ %42, %47 ]
  %.01 = phi i64 [ %100, %98 ], [ %41, %47 ]
  %49 = zext i32 %5 to i64
  %50 = lshr i64 %.014, %49
  %51 = zext i32 %narrow to i64
  %52 = shl i64 %.017, %51
  %53 = or i64 %50, %52
  %.not = icmp eq i64 %53, %.023
  br i1 %.not, label %56, label %54

54:                                               ; preds = %48
  %55 = call i32 @mymemcmp1(i64 noundef %53, i64 noundef %.023) #5
  br label %111

56:                                               ; preds = %48
  %57 = inttoptr i64 %.01 to i64*
  br label %58

58:                                               ; preds = %56, %27
  %.118 = phi i64 [ %.017, %56 ], [ %29, %27 ]
  %.010.in = phi i64* [ %57, %56 ], [ %31, %27 ]
  %.17 = phi i64 [ %.06, %56 ], [ %2, %27 ]
  %.13 = phi i64 [ %.02, %56 ], [ %1, %27 ]
  %.1 = phi i64 [ %.01, %56 ], [ %32, %27 ]
  %.020.in = inttoptr i64 %.13 to i64*
  %.010 = load i64, i64* %.010.in, align 8
  %.020 = load i64, i64* %.020.in, align 8
  %59 = zext i32 %5 to i64
  %60 = lshr i64 %.118, %59
  %61 = zext i32 %narrow to i64
  %62 = shl i64 %.010, %61
  %63 = or i64 %60, %62
  %.not25 = icmp eq i64 %63, %.020
  br i1 %.not25, label %66, label %64

64:                                               ; preds = %58
  %65 = call i32 @mymemcmp1(i64 noundef %63, i64 noundef %.020) #5
  br label %111

66:                                               ; preds = %58
  %67 = inttoptr i64 %.13 to i64*
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  br label %69

69:                                               ; preds = %66, %18
  %.021.in = phi i64* [ %68, %66 ], [ %21, %18 ]
  %.111 = phi i64 [ %.010, %66 ], [ %20, %18 ]
  %.28 = phi i64 [ %.17, %66 ], [ %23, %18 ]
  %.24 = phi i64 [ %.13, %66 ], [ %22, %18 ]
  %.2 = phi i64 [ %.1, %66 ], [ %6, %18 ]
  %.pn = inttoptr i64 %.2 to i64*
  %.012.in = getelementptr inbounds i64, i64* %.pn, i64 1
  %.012 = load i64, i64* %.012.in, align 8
  %.021 = load i64, i64* %.021.in, align 8
  %70 = zext i32 %5 to i64
  %71 = lshr i64 %.111, %70
  %72 = zext i32 %narrow to i64
  %73 = shl i64 %.012, %72
  %74 = or i64 %71, %73
  %.not26 = icmp eq i64 %74, %.021
  br i1 %.not26, label %77, label %75

75:                                               ; preds = %69
  %76 = call i32 @mymemcmp1(i64 noundef %74, i64 noundef %.021) #5
  br label %111

77:                                               ; preds = %69
  %78 = inttoptr i64 %.24 to i64*
  %79 = getelementptr inbounds i64, i64* %78, i64 2
  %80 = inttoptr i64 %.2 to i64*
  %81 = getelementptr inbounds i64, i64* %80, i64 2
  br label %82

82:                                               ; preds = %77, %9
  %.022.in = phi i64* [ %14, %9 ], [ %79, %77 ]
  %.115.in = phi i64* [ %13, %9 ], [ %81, %77 ]
  %.113 = phi i64 [ %11, %9 ], [ %.012, %77 ]
  %.39 = phi i64 [ %17, %9 ], [ %.28, %77 ]
  %.35 = phi i64 [ %16, %9 ], [ %.24, %77 ]
  %.3 = phi i64 [ %15, %9 ], [ %.2, %77 ]
  %.115 = load i64, i64* %.115.in, align 8
  %.022 = load i64, i64* %.022.in, align 8
  %83 = inttoptr i64 %.3 to i64*
  %84 = getelementptr inbounds i64, i64* %83, i64 3
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %.35 to i64*
  %87 = getelementptr inbounds i64, i64* %86, i64 3
  %88 = load i64, i64* %87, align 8
  %89 = zext i32 %5 to i64
  %90 = lshr i64 %.113, %89
  %91 = zext i32 %narrow to i64
  %92 = shl i64 %.115, %91
  %93 = or i64 %90, %92
  %.not27 = icmp eq i64 %93, %.022
  br i1 %.not27, label %96, label %94

94:                                               ; preds = %82
  %95 = call i32 @mymemcmp1(i64 noundef %93, i64 noundef %.022) #5
  br label %111

96:                                               ; preds = %82
  %97 = add i64 %.39, -4
  br label %98

98:                                               ; preds = %96
  %99 = add i64 %.35, 32
  %100 = add i64 %.3, 32
  %.not28 = icmp eq i64 %97, 0
  br i1 %.not28, label %101, label %48, !llvm.loop !6

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %101, %45
  %.124 = phi i64 [ %88, %101 ], [ %40, %45 ]
  %.219 = phi i64 [ %85, %101 ], [ %38, %45 ]
  %.216 = phi i64 [ %.115, %101 ], [ %35, %45 ]
  %103 = zext i32 %5 to i64
  %104 = lshr i64 %.216, %103
  %105 = zext i32 %narrow to i64
  %106 = shl i64 %.219, %105
  %107 = or i64 %104, %106
  %.not29 = icmp eq i64 %107, %.124
  br i1 %.not29, label %110, label %108

108:                                              ; preds = %102
  %109 = call i32 @mymemcmp1(i64 noundef %107, i64 noundef %.124) #5
  br label %111

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %108, %94, %75, %64, %54, %26
  %.0 = phi i32 [ %95, %94 ], [ %55, %54 ], [ %65, %64 ], [ %76, %75 ], [ %109, %108 ], [ 0, %110 ], [ 0, %26 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %union.anon, align 8
  %2 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0
  store i64 305419896, i64* %2, align 8
  br i1 false, label %15, label %3

3:                                                ; preds = %0
  %4 = bitcast %union.anon* %1 to [8 x i8]*
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 1
  %6 = load i8, i8* %5, align 1
  %.not = icmp eq i8 %6, 86
  br i1 %.not, label %7, label %15

7:                                                ; preds = %3
  %8 = bitcast %union.anon* %1 to [8 x i8]*
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 2
  %10 = load i8, i8* %9, align 2
  %.not1 = icmp eq i8 %10, 52
  br i1 %.not1, label %11, label %15

11:                                               ; preds = %7
  %12 = bitcast %union.anon* %1 to [8 x i8]*
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 3
  %14 = load i8, i8* %13, align 1
  %.not2 = icmp eq i8 %14, 18
  br i1 %.not2, label %16, label %15

15:                                               ; preds = %11, %7, %3, %0
  br label %20

16:                                               ; preds = %11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(15) getelementptr inbounds ([256 x i8], [256 x i8]* @buf, i64 0, i64 25), i8* noundef nonnull align 1 dereferenceable(15) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 15, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(15) getelementptr inbounds ([256 x i8], [256 x i8]* @buf, i64 0, i64 168), i8* noundef nonnull align 1 dereferenceable(15) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 15, i1 false)
  %17 = call i32 @mymemcmp(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @buf, i64 0, i64 25), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @buf, i64 0, i64 168), i64 noundef 33)
  %.not3 = icmp eq i32 %17, -51
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %16
  call void @abort() #6
  unreachable

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %19, %15
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i32 @mymemcmp1(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = ptrtoint i64* %3 to i64
  %6 = ptrtoint i64* %4 to i64
  br label %7

7:                                                ; preds = %12, %2
  %.01 = phi i64 [ %6, %2 ], [ %13, %12 ]
  %.0 = phi i64 [ %5, %2 ], [ %14, %12 ]
  %8 = inttoptr i64 %.0 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = inttoptr i64 %.01 to i8*
  %11 = load i8, i8* %10, align 1
  br label %12

12:                                               ; preds = %7
  %13 = add nsw i64 %.01, 1
  %14 = add nsw i64 %.0, 1
  %15 = icmp eq i8 %9, %11
  br i1 %15, label %7, label %16, !llvm.loop !7

16:                                               ; preds = %12
  %17 = zext i8 %11 to i32
  %18 = zext i8 %9 to i32
  %19 = sub nsw i32 %18, %17
  ret i32 %19
}

; Function Attrs: nounwind readonly willreturn
define i64 @_wyvern_slice_memo_mymemcmp_530971744(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i64, i64* %_wyvern_memo_val_addr, align 8
  ret i64 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i8*, i8** %_wyvern_arg_addr_, align 8
  %0 = ptrtoint i8* %_wyvern_arg_ to i64
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i64 %0, i64* %_wyvern_memo_val_addr, align 8
  ret i64 %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @_wyvern_calleeclone_mymemcmp3_1174872614(i64 noundef %0, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i64 noundef %1) #0 {
  %.tr = trunc i64 %0 to i32
  %3 = shl i32 %.tr, 3
  %4 = and i32 %3, 56
  %narrow = sub nuw nsw i32 64, %4
  %5 = and i64 %0, -8
  %6 = and i64 %1, 3
  switch i64 %6, label %7 [
    i64 2, label %8
    i64 3, label %19
    i64 0, label %29
    i64 1, label %41
  ]

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %2
  %9 = inttoptr i64 %5 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %5 to i64*
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  %13 = load i64, i64* %12, align 8
  %_wyvern_thunk_fptr_addr19 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr20 = load i64 (%_wyvern_thunk_type.0*)*, i64 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr19, align 8
  %_wyvern_thunkcall21 = call i64 %_wyvern_thunkfptr20(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %14 = inttoptr i64 %_wyvern_thunkcall21 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %5, -8
  %_wyvern_thunk_fptr_addr16 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr17 = load i64 (%_wyvern_thunk_type.0*)*, i64 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr16, align 8
  %_wyvern_thunkcall18 = call i64 %_wyvern_thunkfptr17(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %17 = add i64 %_wyvern_thunkcall18, -16
  %18 = add i64 %1, 2
  br label %99

19:                                               ; preds = %2
  %20 = inttoptr i64 %5 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %5 to i64*
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %_wyvern_thunk_fptr_addr13 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr14 = load i64 (%_wyvern_thunk_type.0*)*, i64 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr13, align 8
  %_wyvern_thunkcall15 = call i64 %_wyvern_thunkfptr14(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %25 = inttoptr i64 %_wyvern_thunkcall15 to i64*
  %26 = load i64, i64* %25, align 8
  %_wyvern_thunk_fptr_addr10 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr11 = load i64 (%_wyvern_thunk_type.0*)*, i64 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr10, align 8
  %_wyvern_thunkcall12 = call i64 %_wyvern_thunkfptr11(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %27 = add i64 %_wyvern_thunkcall12, -8
  %28 = add i64 %1, 1
  br label %84

29:                                               ; preds = %2
  %30 = icmp eq i64 %1, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  br label %128

32:                                               ; preds = %29
  %33 = inttoptr i64 %5 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %5 to i64*
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load i64 (%_wyvern_thunk_type.0*)*, i64 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call i64 %_wyvern_thunkfptr8(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %38 = inttoptr i64 %_wyvern_thunkcall9 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %5, 8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i64 (%_wyvern_thunk_type.0*)*, i64 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i64 %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  br label %69

41:                                               ; preds = %2
  %42 = inttoptr i64 %5 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %5 to i64*
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i64, i64* %45, align 8
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load i64 (%_wyvern_thunk_type.0*)*, i64 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call i64 %_wyvern_thunkfptr5(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %47 = inttoptr i64 %_wyvern_thunkcall6 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %5, 16
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i64 (%_wyvern_thunk_type.0*)*, i64 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i64 %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %50 = add i64 %_wyvern_thunkcall3, 8
  %51 = add i64 %1, -1
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %119

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %115, %55
  %.023 = phi i64 [ %105, %115 ], [ %48, %55 ]
  %.017 = phi i64 [ %102, %115 ], [ %46, %55 ]
  %.014 = phi i64 [ %.115, %115 ], [ %43, %55 ]
  %.06 = phi i64 [ %114, %115 ], [ %51, %55 ]
  %.02 = phi i64 [ %116, %115 ], [ %50, %55 ]
  %.01 = phi i64 [ %117, %115 ], [ %49, %55 ]
  %57 = zext i32 %4 to i64
  %58 = lshr i64 %.014, %57
  %59 = zext i32 %narrow to i64
  %60 = shl i64 %.017, %59
  %61 = or i64 %58, %60
  %.not = icmp eq i64 %61, %.023
  br i1 %.not, label %64, label %62

62:                                               ; preds = %56
  %63 = call i32 @mymemcmp1(i64 noundef %61, i64 noundef %.023) #5
  br label %128

64:                                               ; preds = %56
  %65 = inttoptr i64 %.02 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %.01 to i64*
  %68 = load i64, i64* %67, align 8
  br label %69

69:                                               ; preds = %64, %32
  %.020 = phi i64 [ %66, %64 ], [ %39, %32 ]
  %.118 = phi i64 [ %.017, %64 ], [ %34, %32 ]
  %.010 = phi i64 [ %68, %64 ], [ %37, %32 ]
  %.17 = phi i64 [ %.06, %64 ], [ %1, %32 ]
  %.13 = phi i64 [ %.02, %64 ], [ %_wyvern_thunkcall, %32 ]
  %.1 = phi i64 [ %.01, %64 ], [ %40, %32 ]
  %70 = zext i32 %4 to i64
  %71 = lshr i64 %.118, %70
  %72 = zext i32 %narrow to i64
  %73 = shl i64 %.010, %72
  %74 = or i64 %71, %73
  %.not22 = icmp eq i64 %74, %.020
  br i1 %.not22, label %77, label %75

75:                                               ; preds = %69
  %76 = call i32 @mymemcmp1(i64 noundef %74, i64 noundef %.020) #5
  br label %128

77:                                               ; preds = %69
  %78 = inttoptr i64 %.13 to i64*
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %.1 to i64*
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  br label %84

84:                                               ; preds = %77, %19
  %.021 = phi i64 [ %80, %77 ], [ %26, %19 ]
  %.012 = phi i64 [ %83, %77 ], [ %24, %19 ]
  %.111 = phi i64 [ %.010, %77 ], [ %21, %19 ]
  %.28 = phi i64 [ %.17, %77 ], [ %28, %19 ]
  %.24 = phi i64 [ %.13, %77 ], [ %27, %19 ]
  %.2 = phi i64 [ %.1, %77 ], [ %5, %19 ]
  %85 = zext i32 %4 to i64
  %86 = lshr i64 %.111, %85
  %87 = zext i32 %narrow to i64
  %88 = shl i64 %.012, %87
  %89 = or i64 %86, %88
  %.not23 = icmp eq i64 %89, %.021
  br i1 %.not23, label %92, label %90

90:                                               ; preds = %84
  %91 = call i32 @mymemcmp1(i64 noundef %89, i64 noundef %.021) #5
  br label %128

92:                                               ; preds = %84
  %93 = inttoptr i64 %.24 to i64*
  %94 = getelementptr inbounds i64, i64* %93, i64 2
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %.2 to i64*
  %97 = getelementptr inbounds i64, i64* %96, i64 2
  %98 = load i64, i64* %97, align 8
  br label %99

99:                                               ; preds = %92, %8
  %.022 = phi i64 [ %15, %8 ], [ %95, %92 ]
  %.115 = phi i64 [ %13, %8 ], [ %98, %92 ]
  %.113 = phi i64 [ %10, %8 ], [ %.012, %92 ]
  %.39 = phi i64 [ %18, %8 ], [ %.28, %92 ]
  %.35 = phi i64 [ %17, %8 ], [ %.24, %92 ]
  %.3 = phi i64 [ %16, %8 ], [ %.2, %92 ]
  %100 = inttoptr i64 %.3 to i64*
  %101 = getelementptr inbounds i64, i64* %100, i64 3
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %.35 to i64*
  %104 = getelementptr inbounds i64, i64* %103, i64 3
  %105 = load i64, i64* %104, align 8
  %106 = zext i32 %4 to i64
  %107 = lshr i64 %.113, %106
  %108 = zext i32 %narrow to i64
  %109 = shl i64 %.115, %108
  %110 = or i64 %107, %109
  %.not24 = icmp eq i64 %110, %.022
  br i1 %.not24, label %113, label %111

111:                                              ; preds = %99
  %112 = call i32 @mymemcmp1(i64 noundef %110, i64 noundef %.022) #5
  br label %128

113:                                              ; preds = %99
  %114 = add i64 %.39, -4
  br label %115

115:                                              ; preds = %113
  %116 = add i64 %.35, 32
  %117 = add i64 %.3, 32
  %.not25 = icmp eq i64 %114, 0
  br i1 %.not25, label %118, label %56, !llvm.loop !6

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %118, %53
  %.124 = phi i64 [ %105, %118 ], [ %48, %53 ]
  %.219 = phi i64 [ %102, %118 ], [ %46, %53 ]
  %.216 = phi i64 [ %.115, %118 ], [ %43, %53 ]
  %120 = zext i32 %4 to i64
  %121 = lshr i64 %.216, %120
  %122 = zext i32 %narrow to i64
  %123 = shl i64 %.219, %122
  %124 = or i64 %121, %123
  %.not26 = icmp eq i64 %124, %.124
  br i1 %.not26, label %127, label %125

125:                                              ; preds = %119
  %126 = call i32 @mymemcmp1(i64 noundef %124, i64 noundef %.124) #5
  br label %128

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %125, %111, %90, %75, %62, %31
  %.0 = phi i32 [ %112, %111 ], [ %63, %62 ], [ %76, %75 ], [ %91, %90 ], [ %126, %125 ], [ 0, %127 ], [ 0, %31 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define i64 @_wyvern_slice_memo_mymemcmp_286579152(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #4 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i64, i64* %_wyvern_memo_val_addr, align 8
  ret i64 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i8*, i8** %_wyvern_arg_addr_, align 8
  %0 = ptrtoint i8* %_wyvern_arg_ to i64
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i64 %0, i64* %_wyvern_memo_val_addr, align 8
  ret i64 %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @_wyvern_calleeclone_mymemcmp2_0642244604(%_wyvern_thunk_type.2* noundef %_wyvern_thunkptr, i64 noundef %0, i64 noundef %1) #0 {
  %3 = and i64 %1, 3
  switch i64 %3, label %4 [
    i64 2, label %5
    i64 3, label %13
    i64 0, label %21
    i64 1, label %29
  ]

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %2
  %_wyvern_thunk_fptr_addr19 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr20 = load i64 (%_wyvern_thunk_type.2*)*, i64 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr19, align 8
  %_wyvern_thunkcall21 = call i64 %_wyvern_thunkfptr20(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  %6 = inttoptr i64 %_wyvern_thunkcall21 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %0 to i64*
  %9 = load i64, i64* %8, align 8
  %_wyvern_thunk_fptr_addr16 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr17 = load i64 (%_wyvern_thunk_type.2*)*, i64 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr16, align 8
  %_wyvern_thunkcall18 = call i64 %_wyvern_thunkfptr17(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  %10 = add i64 %_wyvern_thunkcall18, -16
  %11 = add i64 %0, -16
  %12 = add i64 %1, 2
  br label %69

13:                                               ; preds = %2
  %_wyvern_thunk_fptr_addr13 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr14 = load i64 (%_wyvern_thunk_type.2*)*, i64 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr13, align 8
  %_wyvern_thunkcall15 = call i64 %_wyvern_thunkfptr14(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  %14 = inttoptr i64 %_wyvern_thunkcall15 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %0 to i64*
  %17 = load i64, i64* %16, align 8
  %_wyvern_thunk_fptr_addr10 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr11 = load i64 (%_wyvern_thunk_type.2*)*, i64 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr10, align 8
  %_wyvern_thunkcall12 = call i64 %_wyvern_thunkfptr11(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  %18 = add i64 %_wyvern_thunkcall12, -8
  %19 = add i64 %0, -8
  %20 = add i64 %1, 1
  br label %59

21:                                               ; preds = %2
  %22 = icmp eq i64 %1, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %88

24:                                               ; preds = %21
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load i64 (%_wyvern_thunk_type.2*)*, i64 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call i64 %_wyvern_thunkfptr8(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  %25 = inttoptr i64 %_wyvern_thunkcall9 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %0 to i64*
  %28 = load i64, i64* %27, align 8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i64 (%_wyvern_thunk_type.2*)*, i64 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i64 %_wyvern_thunkfptr(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  br label %49

29:                                               ; preds = %2
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load i64 (%_wyvern_thunk_type.2*)*, i64 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call i64 %_wyvern_thunkfptr5(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  %30 = inttoptr i64 %_wyvern_thunkcall6 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %0 to i64*
  %33 = load i64, i64* %32, align 8
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i64 (%_wyvern_thunk_type.2*)*, i64 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i64 %_wyvern_thunkfptr2(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5
  %34 = add i64 %_wyvern_thunkcall3, 8
  %35 = add i64 %0, 8
  %36 = add i64 %1, -1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %84

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %80, %40
  %.017 = phi i64 [ %75, %80 ], [ %33, %40 ]
  %.012 = phi i64 [ %72, %80 ], [ %31, %40 ]
  %.06 = phi i64 [ %79, %80 ], [ %36, %40 ]
  %.02 = phi i64 [ %81, %80 ], [ %35, %40 ]
  %.01 = phi i64 [ %82, %80 ], [ %34, %40 ]
  %.not = icmp eq i64 %.012, %.017
  br i1 %.not, label %44, label %42

42:                                               ; preds = %41
  %43 = call i32 @mymemcmp1(i64 noundef %.012, i64 noundef %.017) #5
  br label %88

44:                                               ; preds = %41
  %45 = inttoptr i64 %.02 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %.01 to i64*
  %48 = load i64, i64* %47, align 8
  br label %49

49:                                               ; preds = %44, %24
  %.015 = phi i64 [ %46, %44 ], [ %28, %24 ]
  %.010 = phi i64 [ %48, %44 ], [ %26, %24 ]
  %.17 = phi i64 [ %.06, %44 ], [ %1, %24 ]
  %.13 = phi i64 [ %.02, %44 ], [ %0, %24 ]
  %.1 = phi i64 [ %.01, %44 ], [ %_wyvern_thunkcall, %24 ]
  %.not22 = icmp eq i64 %.010, %.015
  br i1 %.not22, label %52, label %50

50:                                               ; preds = %49
  %51 = call i32 @mymemcmp1(i64 noundef %.010, i64 noundef %.015) #5
  br label %88

52:                                               ; preds = %49
  %53 = inttoptr i64 %.13 to i64*
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %.1 to i64*
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  br label %59

59:                                               ; preds = %52, %13
  %.118 = phi i64 [ %55, %52 ], [ %17, %13 ]
  %.113 = phi i64 [ %58, %52 ], [ %15, %13 ]
  %.28 = phi i64 [ %.17, %52 ], [ %20, %13 ]
  %.24 = phi i64 [ %.13, %52 ], [ %19, %13 ]
  %.2 = phi i64 [ %.1, %52 ], [ %18, %13 ]
  %.not23 = icmp eq i64 %.113, %.118
  br i1 %.not23, label %62, label %60

60:                                               ; preds = %59
  %61 = call i32 @mymemcmp1(i64 noundef %.113, i64 noundef %.118) #5
  br label %88

62:                                               ; preds = %59
  %63 = inttoptr i64 %.24 to i64*
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %.2 to i64*
  %67 = getelementptr inbounds i64, i64* %66, i64 2
  %68 = load i64, i64* %67, align 8
  br label %69

69:                                               ; preds = %62, %5
  %.116 = phi i64 [ %9, %5 ], [ %65, %62 ]
  %.111 = phi i64 [ %7, %5 ], [ %68, %62 ]
  %.39 = phi i64 [ %12, %5 ], [ %.28, %62 ]
  %.35 = phi i64 [ %11, %5 ], [ %.24, %62 ]
  %.3 = phi i64 [ %10, %5 ], [ %.2, %62 ]
  %70 = inttoptr i64 %.3 to i64*
  %71 = getelementptr inbounds i64, i64* %70, i64 3
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %.35 to i64*
  %74 = getelementptr inbounds i64, i64* %73, i64 3
  %75 = load i64, i64* %74, align 8
  %.not24 = icmp eq i64 %.111, %.116
  br i1 %.not24, label %78, label %76

76:                                               ; preds = %69
  %77 = call i32 @mymemcmp1(i64 noundef %.111, i64 noundef %.116) #5
  br label %88

78:                                               ; preds = %69
  %79 = add i64 %.39, -4
  br label %80

80:                                               ; preds = %78
  %81 = add i64 %.35, 32
  %82 = add i64 %.3, 32
  %.not25 = icmp eq i64 %79, 0
  br i1 %.not25, label %83, label %41, !llvm.loop !4

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %83, %38
  %.219 = phi i64 [ %75, %83 ], [ %33, %38 ]
  %.214 = phi i64 [ %72, %83 ], [ %31, %38 ]
  %.not26 = icmp eq i64 %.214, %.219
  br i1 %.not26, label %87, label %85

85:                                               ; preds = %84
  %86 = call i32 @mymemcmp1(i64 noundef %.214, i64 noundef %.219) #5
  br label %88

87:                                               ; preds = %84
  br label %88

88:                                               ; preds = %87, %85, %76, %60, %50, %42, %23
  %.0 = phi i32 [ %77, %76 ], [ %43, %42 ], [ %51, %50 ], [ %61, %60 ], [ %86, %85 ], [ 0, %87 ], [ 0, %23 ]
  ret i32 %.0
}

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
