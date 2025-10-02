; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/zlib_compress.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/zlib_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque

@.str = private unnamed_addr constant [7 x i8] c"1.2.11\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compress2(i8* noundef %0, i64* noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.z_stream_s, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 -1, i32* %14, align 4
  %16 = load i64*, i64** %8, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %15, align 8
  %18 = load i64*, i64** %8, align 8
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 8
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %19, align 8
  %20 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 9
  store void (i8*, i8*)* null, void (i8*, i8*)** %20, align 8
  %21 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 10
  store i8* null, i8** %21, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @deflateInit_(%struct.z_stream_s* noundef %12, i32 noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 112)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %6, align 4
  br label %94

28:                                               ; preds = %5
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 3
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 4
  store i32 0, i32* %31, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 1
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %79, %28
  %36 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load i64, i64* %15, align 8
  %41 = icmp ugt i64 %40, 4294967295
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %46

43:                                               ; preds = %39
  %44 = load i64, i64* %15, align 8
  %45 = trunc i64 %44 to i32
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i32 [ -1, %42 ], [ %45, %43 ]
  %48 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 4
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* %15, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %15, align 8
  br label %54

54:                                               ; preds = %46, %35
  %55 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8
  %60 = icmp ugt i64 %59, 4294967295
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %65

62:                                               ; preds = %58
  %63 = load i64, i64* %10, align 8
  %64 = trunc i64 %63 to i32
  br label %65

65:                                               ; preds = %62, %61
  %66 = phi i32 [ -1, %61 ], [ %64, %62 ]
  %67 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 1
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* %10, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %65, %54
  %74 = load i64, i64* %10, align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 0, i32 4
  %78 = call i32 @deflate(%struct.z_stream_s* noundef %12, i32 noundef %77)
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %35, label %82, !llvm.loop !4

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %8, align 8
  store i64 %84, i64* %85, align 8
  %86 = call i32 @deflateEnd(%struct.z_stream_s* noundef %12)
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %13, align 4
  br label %92

92:                                               ; preds = %90, %89
  %93 = phi i32 [ 0, %89 ], [ %91, %90 ]
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %26
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @deflateInit_(%struct.z_stream_s* noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @deflate(%struct.z_stream_s* noundef, i32 noundef) #1

declare dso_local i32 @deflateEnd(%struct.z_stream_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compress(i8* noundef %0, i64* noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @compress2(i8* noundef %9, i64* noundef %10, i8* noundef %11, i64 noundef %12, i32 noundef -1)
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @compressBound(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = lshr i64 %4, 12
  %6 = add i64 %3, %5
  %7 = load i64, i64* %2, align 8
  %8 = lshr i64 %7, 14
  %9 = add i64 %6, %8
  %10 = load i64, i64* %2, align 8
  %11 = lshr i64 %10, 25
  %12 = add i64 %9, %11
  %13 = add i64 %12, 13
  ret i64 %13
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
