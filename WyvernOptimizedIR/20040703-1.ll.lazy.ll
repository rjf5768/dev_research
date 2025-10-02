; ModuleID = './20040703-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040703-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_num = type { i32, i32, i32, i32 }

@precision = dso_local global i32 64, align 4
@n = dso_local global i32 16, align 4
@num = dso_local global %struct.cpp_num { i32 0, i32 3, i32 0, i32 0 }, align 8

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local { i64, i64 } @num_lshift(i64 %0, i64 %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca { i64, i64 }, align 8
  %6 = alloca { i64, i64 }, align 8
  %tmpcast = bitcast { i64, i64 }* %6 to %struct.cpp_num*
  %7 = alloca %struct.cpp_num, align 4
  %8 = alloca { i64, i64 }, align 8
  %9 = alloca { i64, i64 }, align 8
  %tmpcast4 = bitcast { i64, i64 }* %9 to %struct.cpp_num*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  store i64 %1, i64* %11, align 8
  %.not = icmp ult i32 %3, %2
  br i1 %.not, label %28, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  %14 = bitcast i64* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %.not8 = icmp eq i32 %15, 0
  br i1 %.not8, label %16, label %23

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = bitcast { i64, i64 }* %6 to i32*
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %18, %20
  %22 = icmp ne i32 %21, 0
  %phi.cast9 = zext i1 %22 to i32
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi i32 [ 0, %12 ], [ %phi.cast9, %16 ]
  %25 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = bitcast { i64, i64 }* %6 to i32*
  store i32 0, i32* %27, align 8
  br label %94

28:                                               ; preds = %4
  %29 = bitcast %struct.cpp_num* %7 to i8*
  %30 = bitcast { i64, i64 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %29, i8* noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false)
  %31 = icmp ugt i32 %3, 31
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = add i32 %3, -32
  %34 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = bitcast { i64, i64 }* %6 to i32*
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 1
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %28
  %.0 = phi i32 [ %33, %32 ], [ %3, %28 ]
  %.not1 = icmp eq i32 %.0, 0
  br i1 %.not1, label %52, label %39

39:                                               ; preds = %38
  %40 = bitcast { i64, i64 }* %6 to i32*
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 %41, %.0
  %43 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub i32 32, %.0
  %46 = lshr i32 %44, %45
  %47 = or i32 %42, %46
  %48 = bitcast { i64, i64 }* %6 to i32*
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, %.0
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %39, %38
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call { i64, i64 } @num_trim(i64 %54, i64 %56, i32 noundef %2)
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i64 0, i32 0
  %59 = extractvalue { i64, i64 } %57, 0
  store i64 %59, i64* %58, align 8
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i64 0, i32 1
  %61 = extractvalue { i64, i64 } %57, 1
  store i64 %61, i64* %60, align 8
  %62 = bitcast { i64, i64 }* %6 to i8*
  %63 = bitcast { i64, i64 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %62, i8* noundef nonnull align 8 dereferenceable(16) %63, i64 16, i1 false)
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  %65 = bitcast i64* %64 to i32*
  %66 = load i32, i32* %65, align 8
  %.not3 = icmp eq i32 %66, 0
  br i1 %.not3, label %69, label %67

67:                                               ; preds = %52
  %68 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 3
  store i32 0, i32* %68, align 4
  br label %93

69:                                               ; preds = %52
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call { i64, i64 } @num_rshift(i64 %71, i64 %73, i32 noundef %2, i32 noundef %3)
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i64 0, i32 0
  %76 = extractvalue { i64, i64 } %74, 0
  store i64 %76, i64* %75, align 8
  %77 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i64 0, i32 1
  %78 = extractvalue { i64, i64 } %74, 1
  store i64 %78, i64* %77, align 8
  %79 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %7, i64 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast4, i64 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %69
  %85 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %7, i64 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = bitcast { i64, i64 }* %9 to i32*
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %86, %88
  %phi.cast = zext i1 %89 to i32
  br label %90

90:                                               ; preds = %84, %69
  %91 = phi i32 [ 1, %69 ], [ %phi.cast, %84 ]
  %92 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 3
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %67
  br label %94

94:                                               ; preds = %93, %23
  %95 = bitcast { i64, i64 }* %5 to i8*
  %96 = bitcast { i64, i64 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %95, i8* noundef nonnull align 8 dereferenceable(16) %96, i64 16, i1 false)
  %.elt = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i64 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %97 = insertvalue { i64, i64 } undef, i64 %.unpack, 0
  %.elt6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i64 0, i32 1
  %.unpack7 = load i64, i64* %.elt6, align 8
  %98 = insertvalue { i64, i64 } %97, i64 %.unpack7, 1
  ret { i64, i64 } %98
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal { i64, i64 } @num_trim(i64 %0, i64 %1, i32 noundef %2) #0 {
  %4 = alloca { i64, i64 }, align 8
  %5 = alloca { i64, i64 }, align 8
  %tmpcast = bitcast { i64, i64 }* %5 to %struct.cpp_num*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i64 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i64 0, i32 1
  store i64 %1, i64* %7, align 8
  %8 = icmp ugt i32 %2, 32
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = add i32 %2, -32
  %11 = icmp ult i32 %10, 32
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %notmask4 = shl nsw i32 -1, %10
  %13 = xor i32 %notmask4, -1
  %14 = bitcast { i64, i64 }* %5 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %13
  store i32 %16, i32* %14, align 8
  br label %17

17:                                               ; preds = %12, %9
  br label %26

18:                                               ; preds = %3
  %.not = icmp eq i32 %2, 32
  br i1 %.not, label %24, label %19

19:                                               ; preds = %18
  %notmask = shl nsw i32 -1, %2
  %20 = xor i32 %notmask, -1
  %21 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %19, %18
  %25 = bitcast { i64, i64 }* %5 to i32*
  store i32 0, i32* %25, align 8
  br label %26

26:                                               ; preds = %24, %17
  %27 = bitcast { i64, i64 }* %4 to i8*
  %28 = bitcast { i64, i64 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %27, i8* noundef nonnull align 8 dereferenceable(16) %28, i64 16, i1 false)
  %.elt = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i64 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %29 = insertvalue { i64, i64 } undef, i64 %.unpack, 0
  %.elt2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i64 0, i32 1
  %.unpack3 = load i64, i64* %.elt2, align 8
  %30 = insertvalue { i64, i64 } %29, i64 %.unpack3, 1
  ret { i64, i64 } %30
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal { i64, i64 } @num_rshift(i64 %0, i64 %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca { i64, i64 }, align 8
  %6 = alloca { i64, i64 }, align 8
  %tmpcast = bitcast { i64, i64 }* %6 to %struct.cpp_num*
  %7 = alloca { i64, i64 }, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  store i64 %1, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  %11 = bitcast i64* %10 to i32*
  %12 = load i32, i32* %11, align 8
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %13, label %15

13:                                               ; preds = %4
  %14 = call i32 @num_positive(i64 %0, i64 %1, i32 noundef %2)
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %16, label %15

15:                                               ; preds = %13, %4
  br label %17

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %15
  %.0 = phi i32 [ 0, %15 ], [ -1, %16 ]
  %.not3 = icmp ult i32 %3, %2
  br i1 %.not3, label %21, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 1
  store i32 %.0, i32* %19, align 4
  %20 = bitcast { i64, i64 }* %6 to i32*
  store i32 %.0, i32* %20, align 8
  br label %65

21:                                               ; preds = %17
  %22 = icmp ult i32 %2, 32
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = bitcast { i64, i64 }* %6 to i32*
  store i32 %.0, i32* %24, align 8
  %25 = shl i32 %.0, %2
  %26 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  br label %38

29:                                               ; preds = %21
  %30 = icmp ult i32 %2, 64
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  %32 = add i32 %2, -32
  %33 = shl i32 %.0, %32
  %34 = bitcast { i64, i64 }* %6 to i32*
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %31, %29
  br label %38

38:                                               ; preds = %37, %23
  %39 = icmp ugt i32 %3, 31
  br i1 %39, label %40, label %46

40:                                               ; preds = %38
  %41 = add i32 %3, -32
  %42 = bitcast { i64, i64 }* %6 to i32*
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = bitcast { i64, i64 }* %6 to i32*
  store i32 %.0, i32* %45, align 8
  br label %46

46:                                               ; preds = %40, %38
  %.01 = phi i32 [ %41, %40 ], [ %3, %38 ]
  %.not4 = icmp eq i32 %.01, 0
  br i1 %.not4, label %64, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = lshr i32 %49, %.01
  %51 = bitcast { i64, i64 }* %6 to i32*
  %52 = load i32, i32* %51, align 8
  %53 = sub i32 32, %.01
  %54 = shl i32 %52, %53
  %55 = or i32 %50, %54
  %56 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = bitcast { i64, i64 }* %6 to i32*
  %58 = load i32, i32* %57, align 8
  %59 = lshr i32 %58, %.01
  %60 = sub i32 32, %.01
  %61 = shl i32 %.0, %60
  %62 = or i32 %59, %61
  %63 = bitcast { i64, i64 }* %6 to i32*
  store i32 %62, i32* %63, align 8
  br label %64

64:                                               ; preds = %47, %46
  br label %65

65:                                               ; preds = %64, %18
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call { i64, i64 } @num_trim(i64 %67, i64 %69, i32 noundef %2)
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 0
  %72 = extractvalue { i64, i64 } %70, 0
  store i64 %72, i64* %71, align 8
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  %74 = extractvalue { i64, i64 } %70, 1
  store i64 %74, i64* %73, align 8
  %75 = bitcast { i64, i64 }* %6 to i8*
  %76 = bitcast { i64, i64 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %75, i8* noundef nonnull align 8 dereferenceable(16) %76, i64 16, i1 false)
  %77 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 3
  store i32 0, i32* %77, align 4
  %78 = bitcast { i64, i64 }* %5 to i8*
  %79 = bitcast { i64, i64 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %78, i8* noundef nonnull align 8 dereferenceable(16) %79, i64 16, i1 false)
  %.elt = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i64 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %80 = insertvalue { i64, i64 } undef, i64 %.unpack, 0
  %.elt7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i64 0, i32 1
  %.unpack8 = load i64, i64* %.elt7, align 8
  %81 = insertvalue { i64, i64 } %80, i64 %.unpack8, 1
  ret { i64, i64 } %81
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca { i64, i64 }, align 8
  %tmpcast = bitcast { i64, i64 }* %1 to %struct.cpp_num*
  %2 = load i32, i32* @n, align 4
  %3 = load i64, i64* bitcast (%struct.cpp_num* @num to i64*), align 8
  %4 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.cpp_num, %struct.cpp_num* @num, i64 0, i32 2) to i64*), align 8
  %5 = call { i64, i64 } @num_lshift(i64 %3, i64 %4, i32 noundef 64, i32 noundef %2)
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i64 0, i32 0
  %7 = extractvalue { i64, i64 } %5, 0
  store i64 %7, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i64 0, i32 1
  %9 = extractvalue { i64, i64 } %5, 1
  store i64 %9, i64* %8, align 8
  %10 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 1
  %11 = load i32, i32* %10, align 4
  %.not = icmp eq i32 %11, 196608
  br i1 %.not, label %13, label %12

12:                                               ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %0
  %14 = bitcast { i64, i64 }* %1 to i32*
  %15 = load i32, i32* %14, align 8
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %17, label %16

16:                                               ; preds = %13
  call void @abort() #5
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 3
  %19 = load i32, i32* %18, align 4
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %21, label %20

20:                                               ; preds = %17
  call void @abort() #5
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %17
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %21, %20, %16, %12
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @num_positive(i64 %0, i64 %1, i32 noundef %2) #4 {
  %4 = alloca { i64, i64 }, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i64 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i64 0, i32 1
  store i64 %1, i64* %6, align 8
  %7 = icmp ugt i32 %2, 32
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = bitcast { i64, i64 }* %4 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = add i32 %2, -33
  %12 = xor i32 %10, -1
  %13 = lshr i32 %12, %11
  br label %20

14:                                               ; preds = %3
  %tmpcast = bitcast { i64, i64 }* %4 to %struct.cpp_num*
  %15 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %tmpcast, i64 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add i32 %2, -1
  %18 = xor i32 %16, -1
  %19 = lshr i32 %18, %17
  br label %20

20:                                               ; preds = %14, %8
  %.0.in = phi i32 [ %13, %8 ], [ %19, %14 ]
  %.0 = and i32 %.0.in, 1
  ret i32 %.0
}

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
