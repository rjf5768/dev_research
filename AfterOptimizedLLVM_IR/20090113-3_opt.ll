; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20090113-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20090113-3.c"
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
  %2 = alloca %struct.bitmap_iterator*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.bitmap_iterator*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bitmap_head_def*, align 8
  %8 = alloca %struct.bitmap_iterator, align 8
  %9 = alloca i32, align 4
  store %struct.bitmap_head_def* %0, %struct.bitmap_head_def** %7, align 8
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %7, align 8
  call void @bmp_iter_set_init(%struct.bitmap_iterator* noundef %8, %struct.bitmap_head_def* noundef %10, i32 noundef 0, i32* noundef %9)
  br label %11

11:                                               ; preds = %120, %1
  store %struct.bitmap_iterator* %8, %struct.bitmap_iterator** %5, align 8
  store i32* %9, i32** %6, align 8
  %12 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %13 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %24, %16
  %18 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %19 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %20, 1
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %26 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = lshr i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %17, !llvm.loop !4

32:                                               ; preds = %17
  store i8 1, i8* %4, align 1
  br label %116

33:                                               ; preds = %11
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %35, 64
  %37 = sub i32 %36, 1
  %38 = udiv i32 %37, 64
  %39 = mul i32 %38, 64
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %42 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %106, %33
  br label %46

46:                                               ; preds = %85, %45
  %47 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %48 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 2
  br i1 %50, label %51, label %93

51:                                               ; preds = %46
  %52 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %53 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %52, i32 0, i32 0
  %54 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %53, align 8
  %55 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %54, i32 0, i32 3
  %56 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %57 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [2 x i64], [2 x i64]* %55, i64 0, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %63 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %65 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %76, %68
  %70 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %71 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = and i64 %72, 1
  %74 = icmp ne i64 %73, 0
  %75 = xor i1 %74, true
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %78 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = lshr i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %69, !llvm.loop !6

84:                                               ; preds = %69
  store i8 1, i8* %4, align 1
  br label %116

85:                                               ; preds = %51
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %86, align 4
  %88 = add i32 %87, 64
  store i32 %88, i32* %86, align 4
  %89 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %90 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = add i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %46, !llvm.loop !7

93:                                               ; preds = %46
  %94 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %95 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %94, i32 0, i32 0
  %96 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %95, align 8
  %97 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %96, i32 0, i32 0
  %98 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %97, align 8
  %99 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %100 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %99, i32 0, i32 0
  store %struct.bitmap_element_def* %98, %struct.bitmap_element_def** %100, align 8
  %101 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %102 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %101, i32 0, i32 0
  %103 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %102, align 8
  %104 = icmp ne %struct.bitmap_element_def* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %93
  store i8 0, i8* %4, align 1
  br label %116

106:                                              ; preds = %93
  %107 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %108 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %107, i32 0, i32 0
  %109 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %108, align 8
  %110 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = mul i32 %111, 128
  %113 = load i32*, i32** %6, align 8
  store i32 %112, i32* %113, align 4
  %114 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %5, align 8
  %115 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %114, i32 0, i32 2
  store i32 0, i32* %115, align 8
  br label %45

116:                                              ; preds = %32, %84, %105
  %117 = load i8, i8* %4, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  br label %120

120:                                              ; preds = %119
  store %struct.bitmap_iterator* %8, %struct.bitmap_iterator** %2, align 8
  store i32* %9, i32** %3, align 8
  %121 = load %struct.bitmap_iterator*, %struct.bitmap_iterator** %2, align 8
  %122 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = lshr i64 %123, 1
  store i64 %124, i64* %122, align 8
  %125 = load i32*, i32** %3, align 8
  %126 = load i32, i32* %125, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %11, !llvm.loop !8

128:                                              ; preds = %116
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

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }

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
