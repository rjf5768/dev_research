; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010129-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010129-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@baz1.l = internal global i64 0, align 8
@bar = dso_local global i8** null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @baz1(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @baz1.l, align 8
  %4 = add nsw i64 %3, 1
  store i64 %4, i64* @baz1.l, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz2(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  call void @abort() #2
  unreachable

6:                                                ; preds = %1
  ret i32 1
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8* noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  store i8 10, i8* %13, align 16
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 1
  store i8 0, i8* %14, align 1
  br label %15

15:                                               ; preds = %109, %85, %76, %67, %58, %41, %3
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @baz1(i8* noundef %16)
  %18 = load i64, i64* %5, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %110

20:                                               ; preds = %15
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %22 = load i8, i8* %21, align 16
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 32
  br i1 %24, label %25, label %109

25:                                               ; preds = %20
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %27 = load i8, i8* %26, align 16
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 9
  br i1 %29, label %30, label %109

30:                                               ; preds = %25
  store i32 1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %35 = call i32 @baz2(i8* noundef %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %15, !llvm.loop !4

42:                                               ; preds = %37
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %33, %30
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 16
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 16384
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51, %47, %43
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 2
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %15, !llvm.loop !4

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 8192
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %65 = call i32 @baz2(i8* noundef %64)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %15, !llvm.loop !4

68:                                               ; preds = %63, %59
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, 5128
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %74 = call i32 @baz2(i8* noundef %73)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %15, !llvm.loop !4

77:                                               ; preds = %72, %68
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, 512
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %83 = call i32 @baz2(i8* noundef %82)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %15, !llvm.loop !4

86:                                               ; preds = %81, %77
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, 128
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %86
  %91 = load i8**, i8*** @bar, align 8
  store i8** %91, i8*** %12, align 8
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %101, %90
  %93 = load i8**, i8*** %12, align 8
  %94 = icmp ne i8** %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @baz3(i32 noundef %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %107

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %100
  %102 = load i8**, i8*** %12, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = bitcast i8* %103 to i8**
  store i8** %104, i8*** %12, align 8
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %92, !llvm.loop !6

107:                                              ; preds = %99, %92
  br label %108

108:                                              ; preds = %107, %86
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %108, %25, %20
  br label %15, !llvm.loop !4

110:                                              ; preds = %15
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* null, i8** %2, align 8
  store i8** %2, i8*** @bar, align 8
  %3 = bitcast i8** %2 to i8*
  %4 = call i32 @foo(i8* noundef %3, i64 noundef 1, i32 noundef 51217)
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
