; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20090113-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20090113-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type {}
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }

@bitmap_zero_bits = dso_local global %struct.bitmap_element_def zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_element_def, align 8
  %3 = alloca %struct.bitmap_head_def, align 8
  store i32 0, i32* %1, align 4
  %4 = bitcast %struct.bitmap_element_def* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 40, i1 false)
  %5 = bitcast i8* %4 to %struct.bitmap_element_def*
  %6 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i32 0, i32 3
  %7 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i32 0, i32 0
  store i64 1, i64* %7, align 8
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i32 0, i32 1
  store i64 1, i64* %8, align 8
  %9 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %3, i32 0, i32 0
  store %struct.bitmap_element_def* %2, %struct.bitmap_element_def** %9, align 8
  %10 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %3, i32 0, i32 1
  store %struct.bitmap_element_def* %2, %struct.bitmap_element_def** %10, align 8
  %11 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %3, i32 0, i32 2
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %3, i32 0, i32 3
  store %struct.bitmap_obstack* null, %struct.bitmap_obstack** %12, align 8
  call void @foobar(%struct.bitmap_head_def* noundef %3)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @foobar(%struct.bitmap_head_def* noundef %0) #0 {
  %2 = alloca %struct.bitmap_head_def*, align 8
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  store %struct.bitmap_head_def* %0, %struct.bitmap_head_def** %2, align 8
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %2, align 8
  call void @bmp_iter_set_init(%struct.bitmap_iterator* noundef %3, %struct.bitmap_head_def* noundef %5, i32 noundef 0, i32* noundef %4)
  br label %6

6:                                                ; preds = %11, %1
  %7 = call zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* noundef %3, i32* noundef %4)
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  call void @catchme(i32 noundef %10)
  br label %11

11:                                               ; preds = %9
  call void @bmp_iter_next(%struct.bitmap_iterator* noundef %3, i32* noundef %4)
  br label %6, !llvm.loop !4

12:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @bmp_iter_set_init(%struct.bitmap_iterator* noundef %0, %struct.bitmap_head_def* noundef %1, i32 noundef %2, i32* noundef %3) #0 {
  %5 = alloca %struct.bitmap_iterator*, align 8
  %6 = alloca %struct.bitmap_head_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.bitmap_iterator* %0, %struct.bitmap_iterator** %5, align 8
  store %struct.bitmap_head_def* %1, %struct.bitmap_head_def** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %6, align 8
  %10 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %9, i32 0, i32 0
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %10, align 8
  %12 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %13 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %12, i32 0, i32 0
  store %struct.bitmap_element_def* %11, %struct.bitmap_element_def** %13, align 8
  %14 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %15 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %14, i32 0, i32 1
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %15, align 8
  br label %16

16:                                               ; preds = %4, %34
  %17 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %18 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %17, i32 0, i32 0
  %19 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %18, align 8
  %20 = icmp ne %struct.bitmap_element_def* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %23 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %22, i32 0, i32 0
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %23, align 8
  br label %42

24:                                               ; preds = %16
  %25 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %26 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %25, i32 0, i32 0
  %27 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %26, align 8
  %28 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = udiv i32 %30, 128
  %32 = icmp uge i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %42

34:                                               ; preds = %24
  %35 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %36 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %35, i32 0, i32 0
  %37 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %36, align 8
  %38 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %37, i32 0, i32 0
  %39 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %38, align 8
  %40 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %41 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %40, i32 0, i32 0
  store %struct.bitmap_element_def* %39, %struct.bitmap_element_def** %41, align 8
  br label %16

42:                                               ; preds = %33, %21
  %43 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %44 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %43, i32 0, i32 0
  %45 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %44, align 8
  %46 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = udiv i32 %48, 128
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %53 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %52, i32 0, i32 0
  %54 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %53, align 8
  %55 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = mul i32 %56, 128
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %51, %42
  %59 = load i32, i32* %7, align 4
  %60 = udiv i32 %59, 64
  %61 = urem i32 %60, 2
  %62 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %63 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %65 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %64, i32 0, i32 0
  %66 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %65, align 8
  %67 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %66, i32 0, i32 3
  %68 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %69 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [2 x i64], [2 x i64]* %67, i64 0, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %75 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* %7, align 4
  %77 = urem i32 %76, 64
  %78 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %79 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = zext i32 %77 to i64
  %82 = lshr i64 %80, %81
  store i64 %82, i64* %79, align 8
  %83 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %84 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %7, align 4
  %90 = add i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32*, i32** %8, align 8
  store i32 %91, i32* %92, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.bitmap_iterator*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.bitmap_element_def*, align 8
  store %struct.bitmap_iterator* %0, %struct.bitmap_iterator** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %4, align 8
  %12 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %22, %16
  %18 = load i64, i64* %7, align 8
  %19 = and i64 %18, 1
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i64, i64* %7, align 8
  %24 = lshr i64 %23, 1
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %17, !llvm.loop !6

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  store i8 1, i8* %3, align 1
  br label %98

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = add i32 %31, 64
  %33 = sub i32 %32, 1
  %34 = udiv i32 %33, 64
  %35 = mul i32 %34, 64
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %4, align 8
  %38 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %4, align 8
  %42 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %41, i32 0, i32 0
  %43 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %42, align 8
  store %struct.bitmap_element_def* %43, %struct.bitmap_element_def** %8, align 8
  br label %44

44:                                               ; preds = %30, %90
  br label %45

45:                                               ; preds = %72, %44
  %46 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %4, align 8
  %47 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 2
  br i1 %49, label %50, label %80

50:                                               ; preds = %45
  %51 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %8, align 8
  %52 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %51, i32 0, i32 3
  %53 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %4, align 8
  %54 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %52, i64 0, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %4, align 8
  %60 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %4, align 8
  %62 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %50
  %66 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %8, align 8
  %67 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %4, align 8
  %68 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %67, i32 0, i32 0
  store %struct.bitmap_element_def* %66, %struct.bitmap_element_def** %68, align 8
  %69 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %4, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call zeroext i8 @bmp_iter_set_tail(%struct.bitmap_iterator* noundef %69, i32* noundef %70)
  store i8 %71, i8* %3, align 1
  br label %98

72:                                               ; preds = %50
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %73, align 4
  %75 = add i32 %74, 64
  store i32 %75, i32* %73, align 4
  %76 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %4, align 8
  %77 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = add i32 %78, 1
  store i32 %79, i32* %77, align 8
  br label %45, !llvm.loop !7

80:                                               ; preds = %45
  %81 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %8, align 8
  %82 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %81, i32 0, i32 0
  %83 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %82, align 8
  store %struct.bitmap_element_def* %83, %struct.bitmap_element_def** %8, align 8
  %84 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %8, align 8
  %85 = icmp ne %struct.bitmap_element_def* %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %8, align 8
  %88 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %4, align 8
  %89 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %88, i32 0, i32 0
  store %struct.bitmap_element_def* %87, %struct.bitmap_element_def** %89, align 8
  store i8 0, i8* %3, align 1
  br label %98

90:                                               ; preds = %80
  %91 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %8, align 8
  %92 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = mul i32 %93, 128
  %95 = load i32*, i32** %5, align 8
  store i32 %94, i32* %95, align 4
  %96 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %4, align 8
  %97 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %96, i32 0, i32 2
  store i32 0, i32* %97, align 8
  br label %44

98:                                               ; preds = %86, %65, %27
  %99 = load i8, i8* %3, align 1
  ret i8 %99
}

; Function Attrs: noinline nounwind uwtable
define internal void @catchme(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 64
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #3
  unreachable

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @bmp_iter_next(%struct.bitmap_iterator* noundef %0, i32* noundef %1) #0 {
  %3 = alloca %struct.bitmap_iterator*, align 8
  %4 = alloca i32*, align 8
  store %struct.bitmap_iterator* %0, %struct.bitmap_iterator** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %3, align 8
  %6 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = lshr i64 %7, 1
  store i64 %8, i64* %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @bmp_iter_set_tail(%struct.bitmap_iterator* noundef %0, i32* noundef %1) #0 {
  %3 = alloca %struct.bitmap_iterator*, align 8
  %4 = alloca i32*, align 8
  store %struct.bitmap_iterator* %0, %struct.bitmap_iterator** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %5

5:                                                ; preds = %12, %2
  %6 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %3, align 8
  %7 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = and i64 %8, 1
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %20

12:                                               ; preds = %5
  %13 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %3, align 8
  %14 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = lshr i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %17, align 4
  br label %5, !llvm.loop !8

20:                                               ; preds = %5
  ret i8 1
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

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
