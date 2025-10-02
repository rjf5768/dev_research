; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020615-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020615-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.font_hints_s = type { i32, i32, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }

@main.fh = internal global [3 x %struct.font_hints_s] [%struct.font_hints_s { i32 0, i32 1, i32 0 }, %struct.font_hints_s { i32 0, i32 0, i32 1 }, %struct.font_hints_s zeroinitializer], align 16
@main.gsf = internal global [4 x %struct.gs_fixed_point_s] [%struct.gs_fixed_point_s { i64 196608, i64 80216 }, %struct.gs_fixed_point_s { i64 196608, i64 98697 }, %struct.gs_fixed_point_s { i64 80216, i64 196608 }, %struct.gs_fixed_point_s { i64 98697, i64 196608 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @line_hints(%struct.font_hints_s* noundef %0, %struct.gs_fixed_point_s* noundef %1, %struct.gs_fixed_point_s* noundef %2) #0 {
  %4 = alloca %struct.font_hints_s*, align 8
  %5 = alloca %struct.gs_fixed_point_s*, align 8
  %6 = alloca %struct.gs_fixed_point_s*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.font_hints_s* %0, %struct.font_hints_s** %4, align 8
  store %struct.gs_fixed_point_s* %1, %struct.gs_fixed_point_s** %5, align 8
  store %struct.gs_fixed_point_s* %2, %struct.gs_fixed_point_s** %6, align 8
  %16 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %6, align 8
  %17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %5, align 8
  %20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %6, align 8
  %24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %5, align 8
  %27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  store i64 %29, i64* %8, align 8
  %30 = load %struct.font_hints_s*, %struct.font_hints_s** %4, align 8
  %31 = getelementptr inbounds %struct.font_hints_s, %struct.font_hints_s* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.font_hints_s*, %struct.font_hints_s** %4, align 8
  %34 = getelementptr inbounds %struct.font_hints_s, %struct.font_hints_s* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i64, i64* %7, align 8
  %40 = sub nsw i64 0, %39
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %38, %3
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i64, i64* %8, align 8
  %46 = sub nsw i64 0, %45
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.font_hints_s*, %struct.font_hints_s** %4, align 8
  %49 = getelementptr inbounds %struct.font_hints_s, %struct.font_hints_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %14, align 8
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %15, align 4
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %7, align 8
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %11, align 4
  %57 = load i64, i64* %14, align 8
  store i64 %57, i64* %8, align 8
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %52, %47
  %60 = load i64, i64* %7, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64, i64* %7, align 8
  %64 = sub nsw i64 0, %63
  br label %67

65:                                               ; preds = %59
  %66 = load i64, i64* %7, align 8
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi i64 [ %64, %62 ], [ %66, %65 ]
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i64, i64* %8, align 8
  %73 = sub nsw i64 0, %72
  br label %76

74:                                               ; preds = %67
  %75 = load i64, i64* %8, align 8
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi i64 [ %73, %71 ], [ %75, %74 ]
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = ashr i64 %82, 4
  %84 = icmp sle i64 %81, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load i64, i64* %8, align 8
  %87 = icmp sgt i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 2, i32 1
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* %13, align 4
  %94 = xor i32 %93, 3
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %92, %85
  br label %117

96:                                               ; preds = %80, %76
  %97 = load i64, i64* %7, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* %9, align 8
  %102 = ashr i64 %101, 4
  %103 = icmp sle i64 %100, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load i64, i64* %7, align 8
  %106 = icmp slt i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 8, i32 4
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i32, i32* %13, align 4
  %113 = xor i32 %112, 12
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %111, %104
  br label %116

115:                                              ; preds = %99, %96
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %115, %114
  br label %117

117:                                              ; preds = %116, %95
  %118 = load i32, i32* %13, align 4
  ret i32 %118
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @line_hints(%struct.font_hints_s* noundef getelementptr inbounds ([3 x %struct.font_hints_s], [3 x %struct.font_hints_s]* @main.fh, i64 0, i64 0), %struct.gs_fixed_point_s* noundef getelementptr inbounds ([4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* @main.gsf, i64 0, i64 0), %struct.gs_fixed_point_s* noundef getelementptr inbounds ([4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* @main.gsf, i64 0, i64 1))
  %3 = icmp ne i32 %2, 1
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = call i32 @line_hints(%struct.font_hints_s* noundef getelementptr inbounds ([3 x %struct.font_hints_s], [3 x %struct.font_hints_s]* @main.fh, i64 0, i64 1), %struct.gs_fixed_point_s* noundef getelementptr inbounds ([4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* @main.gsf, i64 0, i64 2), %struct.gs_fixed_point_s* noundef getelementptr inbounds ([4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* @main.gsf, i64 0, i64 3))
  %6 = icmp ne i32 %5, 8
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = call i32 @line_hints(%struct.font_hints_s* noundef getelementptr inbounds ([3 x %struct.font_hints_s], [3 x %struct.font_hints_s]* @main.fh, i64 0, i64 2), %struct.gs_fixed_point_s* noundef getelementptr inbounds ([4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* @main.gsf, i64 0, i64 2), %struct.gs_fixed_point_s* noundef getelementptr inbounds ([4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* @main.gsf, i64 0, i64 3))
  %9 = icmp ne i32 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %4, %0
  call void @abort() #2
  unreachable

11:                                               ; preds = %7
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

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
