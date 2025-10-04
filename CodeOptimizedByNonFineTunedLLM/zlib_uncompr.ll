; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/zlib_uncompr.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/zlib_uncompr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque

@.str = private unnamed_addr constant [7 x i8] c"1.2.11\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uncompress2(i8* noundef %0, i64* noundef %1, i8* noundef %2, i64* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.z_stream_s, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [1 x i8], align 1
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 -1, i32* %12, align 4
  %16 = load i64*, i64** %9, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %13, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %14, align 8
  %24 = load i64*, i64** %7, align 8
  store i64 0, i64* %24, align 8
  br label %27

25:                                               ; preds = %4
  store i64 1, i64* %14, align 8
  %26 = getelementptr inbounds [1 x i8], [1 x i8]* %15, i64 0, i64 0
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 8
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %31, align 8
  %32 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 9
  store void (i8*, i8*)* null, void (i8*, i8*)** %32, align 8
  %33 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 10
  store i8* null, i8** %33, align 8
  %34 = call i32 @inflateInit_(%struct.z_stream_s* noundef %10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 112)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %139

39:                                               ; preds = %27
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 3
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %83, %39
  %44 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load i64, i64* %14, align 8
  %49 = icmp ugt i64 %48, 4294967295
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %54

51:                                               ; preds = %47
  %52 = load i64, i64* %14, align 8
  %53 = trunc i64 %52 to i32
  br label %54

54:                                               ; preds = %51, %50
  %55 = phi i32 [ -1, %50 ], [ %53, %51 ]
  %56 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* %14, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %14, align 8
  br label %62

62:                                               ; preds = %54, %43
  %63 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load i64, i64* %13, align 8
  %68 = icmp ugt i64 %67, 4294967295
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %73

70:                                               ; preds = %66
  %71 = load i64, i64* %13, align 8
  %72 = trunc i64 %71 to i32
  br label %73

73:                                               ; preds = %70, %69
  %74 = phi i32 [ -1, %69 ], [ %72, %70 ]
  %75 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1
  store i32 %74, i32* %75, align 8
  %76 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* %13, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %13, align 8
  br label %81

81:                                               ; preds = %73, %62
  %82 = call i32 @inflate(%struct.z_stream_s* noundef %10, i32 noundef 0)
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %81
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %43, label %86, !llvm.loop !4

86:                                               ; preds = %83
  %87 = load i64, i64* %13, align 8
  %88 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = zext i32 %89 to i64
  %91 = add i64 %87, %90
  %92 = load i64*, i64** %9, align 8
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %93, %91
  store i64 %94, i64* %92, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds [1 x i8], [1 x i8]* %15, i64 0, i64 0
  %97 = icmp ne i8* %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %7, align 8
  store i64 %100, i64* %101, align 8
  br label %111

102:                                              ; preds = %86
  %103 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %11, align 4
  %108 = icmp eq i32 %107, -5
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i64 1, i64* %14, align 8
  br label %110

110:                                              ; preds = %109, %106, %102
  br label %111

111:                                              ; preds = %110, %98
  %112 = call i32 @inflateEnd(%struct.z_stream_s* noundef %10)
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %137

116:                                              ; preds = %111
  %117 = load i32, i32* %11, align 4
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %135

120:                                              ; preds = %116
  %121 = load i32, i32* %11, align 4
  %122 = icmp eq i32 %121, -5
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i64, i64* %14, align 8
  %125 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = zext i32 %126 to i64
  %128 = add i64 %124, %127
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %133

131:                                              ; preds = %123, %120
  %132 = load i32, i32* %11, align 4
  br label %133

133:                                              ; preds = %131, %130
  %134 = phi i32 [ -3, %130 ], [ %132, %131 ]
  br label %135

135:                                              ; preds = %133, %119
  %136 = phi i32 [ -3, %119 ], [ %134, %133 ]
  br label %137

137:                                              ; preds = %135, %115
  %138 = phi i32 [ 0, %115 ], [ %136, %135 ]
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %137, %37
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @inflateInit_(%struct.z_stream_s* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @inflate(%struct.z_stream_s* noundef, i32 noundef) #1

declare dso_local i32 @inflateEnd(%struct.z_stream_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uncompress(i8* noundef %0, i64* noundef %1, i8* noundef %2, i64 noundef %3) #0 {
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
  %12 = call i32 @uncompress2(i8* noundef %9, i64* noundef %10, i8* noundef %11, i64* noundef %8)
  ret i32 %12
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
