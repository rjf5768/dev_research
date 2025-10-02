; ModuleID = './zlib_uncompr.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/zlib_uncompr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque

@.str = private unnamed_addr constant [7 x i8] c"1.2.11\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uncompress2(i8* noundef %0, i64* nocapture noundef %1, i8* noundef %2, i64* nocapture noundef %3) #0 {
  %5 = alloca %struct.z_stream_s, align 8
  %6 = alloca [1 x i8], align 1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* %1, align 8
  %.not = icmp eq i64 %8, 0
  br i1 %.not, label %11, label %9

9:                                                ; preds = %4
  %10 = load i64, i64* %1, align 8
  store i64 0, i64* %1, align 8
  br label %13

11:                                               ; preds = %4
  %12 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  br label %13

13:                                               ; preds = %11, %9
  %.02 = phi i64 [ %10, %9 ], [ 1, %11 ]
  %.01 = phi i8* [ %0, %9 ], [ %12, %11 ]
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i64 0, i32 0
  store i8* %2, i8** %14, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i64 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i64 0, i32 8
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %16, align 8
  %17 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i64 0, i32 9
  store void (i8*, i8*)* null, void (i8*, i8*)** %17, align 8
  %18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i64 0, i32 10
  store i8* null, i8** %18, align 8
  %19 = call i32 @inflateInit_(%struct.z_stream_s* noundef nonnull %5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 112) #2
  %.not5 = icmp eq i32 %19, 0
  br i1 %.not5, label %21, label %20

20:                                               ; preds = %13
  br label %96

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i64 0, i32 3
  store i8* %.01, i8** %22, align 8
  %23 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i64 0, i32 4
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %54, %21
  %.03 = phi i64 [ %7, %21 ], [ %.14, %54 ]
  %.1 = phi i64 [ %.02, %21 ], [ %.2, %54 ]
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i64 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = icmp ugt i64 %.1, 4294967295
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  br label %33

31:                                               ; preds = %28
  %32 = trunc i64 %.1 to i32
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ -1, %30 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i64 0, i32 4
  store i32 %34, i32* %35, align 8
  %36 = zext i32 %34 to i64
  %37 = sub i64 %.1, %36
  br label %38

38:                                               ; preds = %33, %24
  %.2 = phi i64 [ %37, %33 ], [ %.1, %24 ]
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i64 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = icmp ugt i64 %.03, 4294967295
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  br label %47

45:                                               ; preds = %42
  %46 = trunc i64 %.03 to i32
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi i32 [ -1, %44 ], [ %46, %45 ]
  %49 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i64 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = zext i32 %48 to i64
  %51 = sub i64 %.03, %50
  br label %52

52:                                               ; preds = %47, %38
  %.14 = phi i64 [ %51, %47 ], [ %.03, %38 ]
  %53 = call i32 @inflate(%struct.z_stream_s* noundef nonnull %5, i32 noundef 0) #2
  br label %54

54:                                               ; preds = %52
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %24, label %56, !llvm.loop !4

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i64 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = zext i32 %58 to i64
  %60 = add i64 %.14, %59
  %61 = load i64, i64* %3, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %3, align 8
  %63 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %.not6 = icmp eq i8* %.01, %63
  br i1 %.not6, label %67, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i64 0, i32 5
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %1, align 8
  br label %74

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i64 0, i32 5
  %69 = load i64, i64* %68, align 8
  %.not7 = icmp eq i64 %69, 0
  br i1 %.not7, label %73, label %70

70:                                               ; preds = %67
  %71 = icmp eq i32 %53, -5
  br i1 %71, label %72, label %73

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %72, %70, %67
  %.3 = phi i64 [ 1, %72 ], [ %.2, %70 ], [ %.2, %67 ]
  br label %74

74:                                               ; preds = %73, %64
  %.4 = phi i64 [ %.2, %64 ], [ %.3, %73 ]
  %75 = call i32 @inflateEnd(%struct.z_stream_s* noundef nonnull %5) #2
  %76 = icmp eq i32 %53, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %94

78:                                               ; preds = %74
  %79 = icmp eq i32 %53, 2
  br i1 %79, label %80, label %81

80:                                               ; preds = %78
  br label %92

81:                                               ; preds = %78
  %82 = icmp eq i32 %53, -5
  br i1 %82, label %83, label %89

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %5, i64 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = zext i32 %85 to i64
  %87 = sub nsw i64 0, %86
  %.not8 = icmp eq i64 %.4, %87
  br i1 %.not8, label %89, label %88

88:                                               ; preds = %83
  br label %90

89:                                               ; preds = %83, %81
  br label %90

90:                                               ; preds = %89, %88
  %91 = phi i32 [ -3, %88 ], [ %53, %89 ]
  br label %92

92:                                               ; preds = %90, %80
  %93 = phi i32 [ -3, %80 ], [ %91, %90 ]
  br label %94

94:                                               ; preds = %92, %77
  %95 = phi i32 [ 0, %77 ], [ %93, %92 ]
  br label %96

96:                                               ; preds = %94, %20
  %.0 = phi i32 [ %19, %20 ], [ %95, %94 ]
  ret i32 %.0
}

declare dso_local i32 @inflateInit_(%struct.z_stream_s* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @inflate(%struct.z_stream_s* noundef, i32 noundef) #1

declare dso_local i32 @inflateEnd(%struct.z_stream_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uncompress(i8* noundef %0, i64* nocapture noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = alloca i64, align 8
  store i64 %3, i64* %5, align 8
  %6 = call i32 @uncompress2(i8* noundef %0, i64* noundef %1, i8* noundef %2, i64* noundef nonnull %5)
  ret i32 %6
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
