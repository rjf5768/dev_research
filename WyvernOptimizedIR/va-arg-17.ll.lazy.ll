; ModuleID = './va-arg-17.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @vafunction(i8* nocapture noundef readnone %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ult i32 %5, 161
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %9 = load i8*, i8** %8, align 16
  %10 = sext i32 %5 to i64
  %11 = getelementptr i8, i8* %9, i64 %10
  %12 = add i32 %5, 16
  store i32 %12, i32* %4, align 4
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr i8, i8* %15, i64 8
  store i8* %16, i8** %14, align 8
  br label %17

17:                                               ; preds = %13, %7
  %.in = phi i8* [ %11, %7 ], [ %15, %13 ]
  %18 = bitcast i8* %.in to double*
  %19 = load double, double* %18, align 8
  %20 = fcmp une double %19, 1.000000e+00
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  call void @abort() #4
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %17
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ult i32 %24, 161
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %28 = load i8*, i8** %27, align 16
  %29 = sext i32 %24 to i64
  %30 = getelementptr i8, i8* %28, i64 %29
  %31 = add i32 %24, 16
  store i32 %31, i32* %23, align 4
  br label %36

32:                                               ; preds = %22
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr i8, i8* %34, i64 8
  store i8* %35, i8** %33, align 8
  br label %36

36:                                               ; preds = %32, %26
  %.in1 = phi i8* [ %30, %26 ], [ %34, %32 ]
  %37 = bitcast i8* %.in1 to double*
  %38 = load double, double* %37, align 8
  %39 = fcmp une double %38, 2.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @abort() #4
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %36
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ult i32 %43, 161
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %47 = load i8*, i8** %46, align 16
  %48 = sext i32 %43 to i64
  %49 = getelementptr i8, i8* %47, i64 %48
  %50 = add i32 %43, 16
  store i32 %50, i32* %42, align 4
  br label %55

51:                                               ; preds = %41
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr i8, i8* %53, i64 8
  store i8* %54, i8** %52, align 8
  br label %55

55:                                               ; preds = %51, %45
  %.in2 = phi i8* [ %49, %45 ], [ %53, %51 ]
  %56 = bitcast i8* %.in2 to double*
  %57 = load double, double* %56, align 8
  %58 = fcmp une double %57, 3.000000e+00
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  call void @abort() #4
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %55
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ult i32 %62, 161
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %66 = load i8*, i8** %65, align 16
  %67 = sext i32 %62 to i64
  %68 = getelementptr i8, i8* %66, i64 %67
  %69 = add i32 %62, 16
  store i32 %69, i32* %61, align 4
  br label %74

70:                                               ; preds = %60
  %71 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr i8, i8* %72, i64 8
  store i8* %73, i8** %71, align 8
  br label %74

74:                                               ; preds = %70, %64
  %.in3 = phi i8* [ %68, %64 ], [ %72, %70 ]
  %75 = bitcast i8* %.in3 to double*
  %76 = load double, double* %75, align 8
  %77 = fcmp une double %76, 4.000000e+00
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  call void @abort() #4
  br label %UnifiedUnreachableBlock

79:                                               ; preds = %74
  %80 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ult i32 %81, 161
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %85 = load i8*, i8** %84, align 16
  %86 = sext i32 %81 to i64
  %87 = getelementptr i8, i8* %85, i64 %86
  %88 = add i32 %81, 16
  store i32 %88, i32* %80, align 4
  br label %93

89:                                               ; preds = %79
  %90 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr i8, i8* %91, i64 8
  store i8* %92, i8** %90, align 8
  br label %93

93:                                               ; preds = %89, %83
  %.in4 = phi i8* [ %87, %83 ], [ %91, %89 ]
  %94 = bitcast i8* %.in4 to double*
  %95 = load double, double* %94, align 8
  %96 = fcmp une double %95, 5.000000e+00
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  call void @abort() #4
  br label %UnifiedUnreachableBlock

98:                                               ; preds = %93
  %99 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ult i32 %100, 161
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %104 = load i8*, i8** %103, align 16
  %105 = sext i32 %100 to i64
  %106 = getelementptr i8, i8* %104, i64 %105
  %107 = add i32 %100, 16
  store i32 %107, i32* %99, align 4
  br label %112

108:                                              ; preds = %98
  %109 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr i8, i8* %110, i64 8
  store i8* %111, i8** %109, align 8
  br label %112

112:                                              ; preds = %108, %102
  %.in5 = phi i8* [ %106, %102 ], [ %110, %108 ]
  %113 = bitcast i8* %.in5 to double*
  %114 = load double, double* %113, align 8
  %115 = fcmp une double %114, 6.000000e+00
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  call void @abort() #4
  br label %UnifiedUnreachableBlock

117:                                              ; preds = %112
  %118 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ult i32 %119, 161
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %123 = load i8*, i8** %122, align 16
  %124 = sext i32 %119 to i64
  %125 = getelementptr i8, i8* %123, i64 %124
  %126 = add i32 %119, 16
  store i32 %126, i32* %118, align 4
  br label %131

127:                                              ; preds = %117
  %128 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr i8, i8* %129, i64 8
  store i8* %130, i8** %128, align 8
  br label %131

131:                                              ; preds = %127, %121
  %.in6 = phi i8* [ %125, %121 ], [ %129, %127 ]
  %132 = bitcast i8* %.in6 to double*
  %133 = load double, double* %132, align 8
  %134 = fcmp une double %133, 7.000000e+00
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  call void @abort() #4
  br label %UnifiedUnreachableBlock

136:                                              ; preds = %131
  %137 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ult i32 %138, 161
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %142 = load i8*, i8** %141, align 16
  %143 = sext i32 %138 to i64
  %144 = getelementptr i8, i8* %142, i64 %143
  %145 = add i32 %138, 16
  store i32 %145, i32* %137, align 4
  br label %150

146:                                              ; preds = %136
  %147 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr i8, i8* %148, i64 8
  store i8* %149, i8** %147, align 8
  br label %150

150:                                              ; preds = %146, %140
  %.in7 = phi i8* [ %144, %140 ], [ %148, %146 ]
  %151 = bitcast i8* %.in7 to double*
  %152 = load double, double* %151, align 8
  %153 = fcmp une double %152, 8.000000e+00
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  call void @abort() #4
  br label %UnifiedUnreachableBlock

155:                                              ; preds = %150
  %156 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ult i32 %157, 161
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %161 = load i8*, i8** %160, align 16
  %162 = sext i32 %157 to i64
  %163 = getelementptr i8, i8* %161, i64 %162
  %164 = add i32 %157, 16
  store i32 %164, i32* %156, align 4
  br label %169

165:                                              ; preds = %155
  %166 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr i8, i8* %167, i64 8
  store i8* %168, i8** %166, align 8
  br label %169

169:                                              ; preds = %165, %159
  %.in8 = phi i8* [ %163, %159 ], [ %167, %165 ]
  %170 = bitcast i8* %.in8 to double*
  %171 = load double, double* %170, align 8
  %172 = fcmp une double %171, 9.000000e+00
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  call void @abort() #4
  br label %UnifiedUnreachableBlock

174:                                              ; preds = %169
  %175 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %175)
  ret void

UnifiedUnreachableBlock:                          ; preds = %173, %154, %135, %116, %97, %78, %59, %40, %21
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  call void (i8*, ...) @vafunction(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), double noundef 1.000000e+00, double noundef 2.000000e+00, double noundef 3.000000e+00, double noundef 4.000000e+00, double noundef 5.000000e+00, double noundef 6.000000e+00, double noundef 7.000000e+00, double noundef 8.000000e+00, double noundef 9.000000e+00)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
