; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040703-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040703-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_num = type { i32, i32, i32, i32 }

@precision = dso_local global i32 64, align 4
@n = dso_local global i32 16, align 4
@num = dso_local global %struct.cpp_num { i32 0, i32 3, i32 0, i32 0 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @num_lshift(i64 %0, i64 %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.cpp_num, align 4
  %6 = alloca %struct.cpp_num, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpp_num, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cpp_num, align 4
  %12 = alloca %struct.cpp_num, align 4
  %13 = bitcast %struct.cpp_num* %6 to { i64, i64 }*
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  store i64 %0, i64* %14, align 4
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  store i64 %1, i64* %15, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %25, %27
  %29 = icmp eq i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %23, %19
  %32 = phi i1 [ false, %19 ], [ %30, %23 ]
  %33 = zext i1 %32 to i32
  %34 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %125

37:                                               ; preds = %4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %10, align 4
  %39 = bitcast %struct.cpp_num* %9 to i8*
  %40 = bitcast %struct.cpp_num* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 16, i1 false)
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = icmp uge i64 %42, 32
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = sub i64 %46, 32
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 1
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %44, %37
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = shl i32 %58, %59
  %61 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = sub i64 32, %64
  %66 = trunc i64 %65 to i32
  %67 = lshr i32 %62, %66
  %68 = or i32 %60, %67
  %69 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %10, align 4
  %71 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %56, %53
  %75 = load i32, i32* %7, align 4
  %76 = bitcast %struct.cpp_num* %6 to { i64, i64 }*
  %77 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 4
  %79 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %76, i32 0, i32 1
  %80 = load i64, i64* %79, align 4
  %81 = call { i64, i64 } @num_trim(i64 %78, i64 %80, i32 noundef %75)
  %82 = bitcast %struct.cpp_num* %11 to { i64, i64 }*
  %83 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %82, i32 0, i32 0
  %84 = extractvalue { i64, i64 } %81, 0
  store i64 %84, i64* %83, align 4
  %85 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %82, i32 0, i32 1
  %86 = extractvalue { i64, i64 } %81, 1
  store i64 %86, i64* %85, align 4
  %87 = bitcast %struct.cpp_num* %6 to i8*
  %88 = bitcast %struct.cpp_num* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 16, i1 false)
  %89 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %74
  %93 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 3
  store i32 0, i32* %93, align 4
  br label %124

94:                                               ; preds = %74
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = bitcast %struct.cpp_num* %6 to { i64, i64 }*
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 4
  %100 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %97, i32 0, i32 1
  %101 = load i64, i64* %100, align 4
  %102 = call { i64, i64 } @num_rshift(i64 %99, i64 %101, i32 noundef %95, i32 noundef %96)
  %103 = bitcast %struct.cpp_num* %12 to { i64, i64 }*
  %104 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %103, i32 0, i32 0
  %105 = extractvalue { i64, i64 } %102, 0
  store i64 %105, i64* %104, align 4
  %106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %103, i32 0, i32 1
  %107 = extractvalue { i64, i64 } %102, 1
  store i64 %107, i64* %106, align 4
  %108 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %9, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %12, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %94
  %114 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %9, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %12, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %115, %117
  br label %119

119:                                              ; preds = %113, %94
  %120 = phi i1 [ false, %94 ], [ %118, %113 ]
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 3
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %119, %92
  br label %125

125:                                              ; preds = %124, %31
  %126 = bitcast %struct.cpp_num* %5 to i8*
  %127 = bitcast %struct.cpp_num* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %126, i8* align 4 %127, i64 16, i1 false)
  %128 = bitcast %struct.cpp_num* %5 to { i64, i64 }*
  %129 = load { i64, i64 }, { i64, i64 }* %128, align 4
  ret { i64, i64 } %129
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal { i64, i64 } @num_trim(i64 %0, i64 %1, i32 noundef %2) #0 {
  %4 = alloca %struct.cpp_num, align 4
  %5 = alloca %struct.cpp_num, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.cpp_num* %5 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %0, i64* %8, align 4
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %1, i64* %9, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = icmp ugt i64 %11, 32
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = sub i64 %15, 32
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %19, 32
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 1, %22
  %24 = sub i32 %23, 1
  %25 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %24
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %21, %13
  br label %42

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %31, 32
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 1, %34
  %36 = sub i32 %35, 1
  %37 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %5, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %33, %29
  %41 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %5, i32 0, i32 0
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %28
  %43 = bitcast %struct.cpp_num* %4 to i8*
  %44 = bitcast %struct.cpp_num* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 16, i1 false)
  %45 = bitcast %struct.cpp_num* %4 to { i64, i64 }*
  %46 = load { i64, i64 }, { i64, i64 }* %45, align 4
  ret { i64, i64 } %46
}

; Function Attrs: noinline nounwind uwtable
define internal { i64, i64 } @num_rshift(i64 %0, i64 %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.cpp_num, align 4
  %6 = alloca %struct.cpp_num, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cpp_num, align 4
  %12 = bitcast %struct.cpp_num* %6 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %0, i64* %13, align 4
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %1, i64* %14, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = bitcast %struct.cpp_num* %6 to { i64, i64 }*
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 4
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  %20 = load i64, i64* %19, align 4
  %21 = call i32 @num_positive(i64 %18, i64 %20, i32 noundef %15)
  store i32 %21, i32* %10, align 4
  %22 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %4
  store i32 0, i32* %9, align 4
  br label %30

29:                                               ; preds = %25
  store i32 -1, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %110

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %40, 32
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %45, %46
  %48 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %66

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = icmp ult i64 %53, 64
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = sub i64 %58, 32
  %60 = trunc i64 %59 to i32
  %61 = shl i32 %56, %60
  %62 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %55, %51
  br label %66

66:                                               ; preds = %65, %42
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = icmp uge i64 %68, 32
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = sub i64 %72, 32
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %8, align 4
  %75 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %70, %66
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %109

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = lshr i32 %85, %86
  %88 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = sub i64 32, %91
  %93 = trunc i64 %92 to i32
  %94 = shl i32 %89, %93
  %95 = or i32 %87, %94
  %96 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = lshr i32 %98, %99
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = sub i64 32, %103
  %105 = trunc i64 %104 to i32
  %106 = shl i32 %101, %105
  %107 = or i32 %100, %106
  %108 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 0
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %83, %80
  br label %110

110:                                              ; preds = %109, %34
  %111 = load i32, i32* %7, align 4
  %112 = bitcast %struct.cpp_num* %6 to { i64, i64 }*
  %113 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 4
  %115 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %112, i32 0, i32 1
  %116 = load i64, i64* %115, align 4
  %117 = call { i64, i64 } @num_trim(i64 %114, i64 %116, i32 noundef %111)
  %118 = bitcast %struct.cpp_num* %11 to { i64, i64 }*
  %119 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %118, i32 0, i32 0
  %120 = extractvalue { i64, i64 } %117, 0
  store i64 %120, i64* %119, align 4
  %121 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %118, i32 0, i32 1
  %122 = extractvalue { i64, i64 } %117, 1
  store i64 %122, i64* %121, align 4
  %123 = bitcast %struct.cpp_num* %6 to i8*
  %124 = bitcast %struct.cpp_num* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 16, i1 false)
  %125 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %6, i32 0, i32 3
  store i32 0, i32* %125, align 4
  %126 = bitcast %struct.cpp_num* %5 to i8*
  %127 = bitcast %struct.cpp_num* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %126, i8* align 4 %127, i64 16, i1 false)
  %128 = bitcast %struct.cpp_num* %5 to { i64, i64 }*
  %129 = load { i64, i64 }, { i64, i64 }* %128, align 4
  ret { i64, i64 } %129
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cpp_num, align 4
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @n, align 4
  %4 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.cpp_num* @num to { i64, i64 }*), i32 0, i32 0), align 4
  %5 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.cpp_num* @num to { i64, i64 }*), i32 0, i32 1), align 4
  %6 = call { i64, i64 } @num_lshift(i64 %4, i64 %5, i32 noundef 64, i32 noundef %3)
  %7 = bitcast %struct.cpp_num* %2 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  %9 = extractvalue { i64, i64 } %6, 0
  store i64 %9, i64* %8, align 4
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  %11 = extractvalue { i64, i64 } %6, 1
  store i64 %11, i64* %10, align 4
  %12 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %2, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 196608
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  call void @abort() #3
  unreachable

16:                                               ; preds = %0
  %17 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @abort() #3
  unreachable

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %2, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  call void @abort() #3
  unreachable

26:                                               ; preds = %21
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @num_positive(i64 %0, i64 %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpp_num, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.cpp_num* %5 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %0, i64* %8, align 4
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %1, i64* %9, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = icmp ugt i64 %11, 32
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = sub i64 %15, 32
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub i32 %20, 1
  %22 = shl i32 1, %21
  %23 = and i32 %19, %22
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %35

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %5, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub i32 %29, 1
  %31 = shl i32 1, %30
  %32 = and i32 %28, %31
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %26, %13
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
