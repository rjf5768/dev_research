; ModuleID = './va-arg-16.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @vafunction(double noundef %0, double noundef %1, ...) #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = fcmp une double %0, 8.880000e+02
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @abort() #4
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %2
  %8 = fcmp une double %1, 9.990000e+02
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  call void @abort() #4
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %7
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %12, 161
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %16 = load i8*, i8** %15, align 16
  %17 = sext i32 %12 to i64
  %18 = getelementptr i8, i8* %16, i64 %17
  %19 = add i32 %12, 16
  store i32 %19, i32* %11, align 4
  br label %24

20:                                               ; preds = %10
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr i8, i8* %22, i64 8
  store i8* %23, i8** %21, align 8
  br label %24

24:                                               ; preds = %20, %14
  %.in = phi i8* [ %18, %14 ], [ %22, %20 ]
  %25 = bitcast i8* %.in to double*
  %26 = load double, double* %25, align 8
  %27 = fcmp une double %26, 1.000000e+00
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void @abort() #4
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %24
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ult i32 %31, 161
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %35 = load i8*, i8** %34, align 16
  %36 = sext i32 %31 to i64
  %37 = getelementptr i8, i8* %35, i64 %36
  %38 = add i32 %31, 16
  store i32 %38, i32* %30, align 4
  br label %43

39:                                               ; preds = %29
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr i8, i8* %41, i64 8
  store i8* %42, i8** %40, align 8
  br label %43

43:                                               ; preds = %39, %33
  %.in1 = phi i8* [ %37, %33 ], [ %41, %39 ]
  %44 = bitcast i8* %.in1 to double*
  %45 = load double, double* %44, align 8
  %46 = fcmp une double %45, 2.000000e+00
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  call void @abort() #4
  br label %UnifiedUnreachableBlock

48:                                               ; preds = %43
  %49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ult i32 %50, 161
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %54 = load i8*, i8** %53, align 16
  %55 = sext i32 %50 to i64
  %56 = getelementptr i8, i8* %54, i64 %55
  %57 = add i32 %50, 16
  store i32 %57, i32* %49, align 4
  br label %62

58:                                               ; preds = %48
  %59 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr i8, i8* %60, i64 8
  store i8* %61, i8** %59, align 8
  br label %62

62:                                               ; preds = %58, %52
  %.in2 = phi i8* [ %56, %52 ], [ %60, %58 ]
  %63 = bitcast i8* %.in2 to double*
  %64 = load double, double* %63, align 8
  %65 = fcmp une double %64, 3.000000e+00
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  call void @abort() #4
  br label %UnifiedUnreachableBlock

67:                                               ; preds = %62
  %68 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ult i32 %69, 161
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %73 = load i8*, i8** %72, align 16
  %74 = sext i32 %69 to i64
  %75 = getelementptr i8, i8* %73, i64 %74
  %76 = add i32 %69, 16
  store i32 %76, i32* %68, align 4
  br label %81

77:                                               ; preds = %67
  %78 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr i8, i8* %79, i64 8
  store i8* %80, i8** %78, align 8
  br label %81

81:                                               ; preds = %77, %71
  %.in3 = phi i8* [ %75, %71 ], [ %79, %77 ]
  %82 = bitcast i8* %.in3 to double*
  %83 = load double, double* %82, align 8
  %84 = fcmp une double %83, 4.000000e+00
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  call void @abort() #4
  br label %UnifiedUnreachableBlock

86:                                               ; preds = %81
  %87 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ult i32 %88, 161
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %92 = load i8*, i8** %91, align 16
  %93 = sext i32 %88 to i64
  %94 = getelementptr i8, i8* %92, i64 %93
  %95 = add i32 %88, 16
  store i32 %95, i32* %87, align 4
  br label %100

96:                                               ; preds = %86
  %97 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr i8, i8* %98, i64 8
  store i8* %99, i8** %97, align 8
  br label %100

100:                                              ; preds = %96, %90
  %.in4 = phi i8* [ %94, %90 ], [ %98, %96 ]
  %101 = bitcast i8* %.in4 to double*
  %102 = load double, double* %101, align 8
  %103 = fcmp une double %102, 5.000000e+00
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  call void @abort() #4
  br label %UnifiedUnreachableBlock

105:                                              ; preds = %100
  %106 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ult i32 %107, 161
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %111 = load i8*, i8** %110, align 16
  %112 = sext i32 %107 to i64
  %113 = getelementptr i8, i8* %111, i64 %112
  %114 = add i32 %107, 16
  store i32 %114, i32* %106, align 4
  br label %119

115:                                              ; preds = %105
  %116 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr i8, i8* %117, i64 8
  store i8* %118, i8** %116, align 8
  br label %119

119:                                              ; preds = %115, %109
  %.in5 = phi i8* [ %113, %109 ], [ %117, %115 ]
  %120 = bitcast i8* %.in5 to double*
  %121 = load double, double* %120, align 8
  %122 = fcmp une double %121, 6.000000e+00
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  call void @abort() #4
  br label %UnifiedUnreachableBlock

124:                                              ; preds = %119
  %125 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ult i32 %126, 161
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %130 = load i8*, i8** %129, align 16
  %131 = sext i32 %126 to i64
  %132 = getelementptr i8, i8* %130, i64 %131
  %133 = add i32 %126, 16
  store i32 %133, i32* %125, align 4
  br label %138

134:                                              ; preds = %124
  %135 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr i8, i8* %136, i64 8
  store i8* %137, i8** %135, align 8
  br label %138

138:                                              ; preds = %134, %128
  %.in6 = phi i8* [ %132, %128 ], [ %136, %134 ]
  %139 = bitcast i8* %.in6 to double*
  %140 = load double, double* %139, align 8
  %141 = fcmp une double %140, 7.000000e+00
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  call void @abort() #4
  br label %UnifiedUnreachableBlock

143:                                              ; preds = %138
  %144 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp ult i32 %145, 161
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %149 = load i8*, i8** %148, align 16
  %150 = sext i32 %145 to i64
  %151 = getelementptr i8, i8* %149, i64 %150
  %152 = add i32 %145, 16
  store i32 %152, i32* %144, align 4
  br label %157

153:                                              ; preds = %143
  %154 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr i8, i8* %155, i64 8
  store i8* %156, i8** %154, align 8
  br label %157

157:                                              ; preds = %153, %147
  %.in7 = phi i8* [ %151, %147 ], [ %155, %153 ]
  %158 = bitcast i8* %.in7 to double*
  %159 = load double, double* %158, align 8
  %160 = fcmp une double %159, 8.000000e+00
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  call void @abort() #4
  br label %UnifiedUnreachableBlock

162:                                              ; preds = %157
  %163 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp ult i32 %164, 161
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %168 = load i8*, i8** %167, align 16
  %169 = sext i32 %164 to i64
  %170 = getelementptr i8, i8* %168, i64 %169
  %171 = add i32 %164, 16
  store i32 %171, i32* %163, align 4
  br label %176

172:                                              ; preds = %162
  %173 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = getelementptr i8, i8* %174, i64 8
  store i8* %175, i8** %173, align 8
  br label %176

176:                                              ; preds = %172, %166
  %.in8 = phi i8* [ %170, %166 ], [ %174, %172 ]
  %177 = bitcast i8* %.in8 to double*
  %178 = load double, double* %177, align 8
  %179 = fcmp une double %178, 9.000000e+00
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  call void @abort() #4
  br label %UnifiedUnreachableBlock

181:                                              ; preds = %176
  %182 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %182)
  ret void

UnifiedUnreachableBlock:                          ; preds = %180, %161, %142, %123, %104, %85, %66, %47, %28, %9, %6
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
  call void (double, double, ...) @vafunction(double noundef 8.880000e+02, double noundef 9.990000e+02, double noundef 1.000000e+00, double noundef 2.000000e+00, double noundef 3.000000e+00, double noundef 4.000000e+00, double noundef 5.000000e+00, double noundef 6.000000e+00, double noundef 7.000000e+00, double noundef 8.000000e+00, double noundef 9.000000e+00)
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
