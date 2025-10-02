; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-16.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @vafunction(double noundef %0, double noundef %1, ...) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load double, double* %3, align 8
  %9 = fcmp une double %8, 8.880000e+02
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @abort() #3
  unreachable

11:                                               ; preds = %2
  %12 = load double, double* %4, align 8
  %13 = fcmp une double %12, 9.990000e+02
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @abort() #3
  unreachable

15:                                               ; preds = %11
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ule i32 %18, 160
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %16, i32 0, i32 3
  %22 = load i8*, i8** %21, align 16
  %23 = getelementptr i8, i8* %22, i32 %18
  %24 = bitcast i8* %23 to double*
  %25 = add i32 %18, 16
  store i32 %25, i32* %17, align 4
  br label %31

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %16, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = bitcast i8* %28 to double*
  %30 = getelementptr i8, i8* %28, i32 8
  store i8* %30, i8** %27, align 8
  br label %31

31:                                               ; preds = %26, %20
  %32 = phi double* [ %24, %20 ], [ %29, %26 ]
  %33 = load double, double* %32, align 8
  %34 = fcmp une double %33, 1.000000e+00
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  call void @abort() #3
  unreachable

36:                                               ; preds = %31
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %38 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ule i32 %39, 160
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %37, i32 0, i32 3
  %43 = load i8*, i8** %42, align 16
  %44 = getelementptr i8, i8* %43, i32 %39
  %45 = bitcast i8* %44 to double*
  %46 = add i32 %39, 16
  store i32 %46, i32* %38, align 4
  br label %52

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %37, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = bitcast i8* %49 to double*
  %51 = getelementptr i8, i8* %49, i32 8
  store i8* %51, i8** %48, align 8
  br label %52

52:                                               ; preds = %47, %41
  %53 = phi double* [ %45, %41 ], [ %50, %47 ]
  %54 = load double, double* %53, align 8
  %55 = fcmp une double %54, 2.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  call void @abort() #3
  unreachable

57:                                               ; preds = %52
  %58 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %59 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ule i32 %60, 160
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %58, i32 0, i32 3
  %64 = load i8*, i8** %63, align 16
  %65 = getelementptr i8, i8* %64, i32 %60
  %66 = bitcast i8* %65 to double*
  %67 = add i32 %60, 16
  store i32 %67, i32* %59, align 4
  br label %73

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %58, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = bitcast i8* %70 to double*
  %72 = getelementptr i8, i8* %70, i32 8
  store i8* %72, i8** %69, align 8
  br label %73

73:                                               ; preds = %68, %62
  %74 = phi double* [ %66, %62 ], [ %71, %68 ]
  %75 = load double, double* %74, align 8
  %76 = fcmp une double %75, 3.000000e+00
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  call void @abort() #3
  unreachable

78:                                               ; preds = %73
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ule i32 %81, 160
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %79, i32 0, i32 3
  %85 = load i8*, i8** %84, align 16
  %86 = getelementptr i8, i8* %85, i32 %81
  %87 = bitcast i8* %86 to double*
  %88 = add i32 %81, 16
  store i32 %88, i32* %80, align 4
  br label %94

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %79, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = bitcast i8* %91 to double*
  %93 = getelementptr i8, i8* %91, i32 8
  store i8* %93, i8** %90, align 8
  br label %94

94:                                               ; preds = %89, %83
  %95 = phi double* [ %87, %83 ], [ %92, %89 ]
  %96 = load double, double* %95, align 8
  %97 = fcmp une double %96, 4.000000e+00
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  call void @abort() #3
  unreachable

99:                                               ; preds = %94
  %100 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %101 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ule i32 %102, 160
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %100, i32 0, i32 3
  %106 = load i8*, i8** %105, align 16
  %107 = getelementptr i8, i8* %106, i32 %102
  %108 = bitcast i8* %107 to double*
  %109 = add i32 %102, 16
  store i32 %109, i32* %101, align 4
  br label %115

110:                                              ; preds = %99
  %111 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %100, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = bitcast i8* %112 to double*
  %114 = getelementptr i8, i8* %112, i32 8
  store i8* %114, i8** %111, align 8
  br label %115

115:                                              ; preds = %110, %104
  %116 = phi double* [ %108, %104 ], [ %113, %110 ]
  %117 = load double, double* %116, align 8
  %118 = fcmp une double %117, 5.000000e+00
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  call void @abort() #3
  unreachable

120:                                              ; preds = %115
  %121 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %122 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ule i32 %123, 160
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %121, i32 0, i32 3
  %127 = load i8*, i8** %126, align 16
  %128 = getelementptr i8, i8* %127, i32 %123
  %129 = bitcast i8* %128 to double*
  %130 = add i32 %123, 16
  store i32 %130, i32* %122, align 4
  br label %136

131:                                              ; preds = %120
  %132 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %121, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = bitcast i8* %133 to double*
  %135 = getelementptr i8, i8* %133, i32 8
  store i8* %135, i8** %132, align 8
  br label %136

136:                                              ; preds = %131, %125
  %137 = phi double* [ %129, %125 ], [ %134, %131 ]
  %138 = load double, double* %137, align 8
  %139 = fcmp une double %138, 6.000000e+00
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  call void @abort() #3
  unreachable

141:                                              ; preds = %136
  %142 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %143 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ule i32 %144, 160
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %142, i32 0, i32 3
  %148 = load i8*, i8** %147, align 16
  %149 = getelementptr i8, i8* %148, i32 %144
  %150 = bitcast i8* %149 to double*
  %151 = add i32 %144, 16
  store i32 %151, i32* %143, align 4
  br label %157

152:                                              ; preds = %141
  %153 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %142, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = bitcast i8* %154 to double*
  %156 = getelementptr i8, i8* %154, i32 8
  store i8* %156, i8** %153, align 8
  br label %157

157:                                              ; preds = %152, %146
  %158 = phi double* [ %150, %146 ], [ %155, %152 ]
  %159 = load double, double* %158, align 8
  %160 = fcmp une double %159, 7.000000e+00
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  call void @abort() #3
  unreachable

162:                                              ; preds = %157
  %163 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %164 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ule i32 %165, 160
  br i1 %166, label %167, label %173

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %163, i32 0, i32 3
  %169 = load i8*, i8** %168, align 16
  %170 = getelementptr i8, i8* %169, i32 %165
  %171 = bitcast i8* %170 to double*
  %172 = add i32 %165, 16
  store i32 %172, i32* %164, align 4
  br label %178

173:                                              ; preds = %162
  %174 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %163, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = bitcast i8* %175 to double*
  %177 = getelementptr i8, i8* %175, i32 8
  store i8* %177, i8** %174, align 8
  br label %178

178:                                              ; preds = %173, %167
  %179 = phi double* [ %171, %167 ], [ %176, %173 ]
  %180 = load double, double* %179, align 8
  %181 = fcmp une double %180, 8.000000e+00
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  call void @abort() #3
  unreachable

183:                                              ; preds = %178
  %184 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %185 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp ule i32 %186, 160
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %184, i32 0, i32 3
  %190 = load i8*, i8** %189, align 16
  %191 = getelementptr i8, i8* %190, i32 %186
  %192 = bitcast i8* %191 to double*
  %193 = add i32 %186, 16
  store i32 %193, i32* %185, align 4
  br label %199

194:                                              ; preds = %183
  %195 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %184, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  %197 = bitcast i8* %196 to double*
  %198 = getelementptr i8, i8* %196, i32 8
  store i8* %198, i8** %195, align 8
  br label %199

199:                                              ; preds = %194, %188
  %200 = phi double* [ %192, %188 ], [ %197, %194 ]
  %201 = load double, double* %200, align 8
  %202 = fcmp une double %201, 9.000000e+00
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  call void @abort() #3
  unreachable

204:                                              ; preds = %199
  %205 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %206 = bitcast %struct.__va_list_tag* %205 to i8*
  call void @llvm.va_end(i8* %206)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (double, double, ...) @vafunction(double noundef 8.880000e+02, double noundef 9.990000e+02, double noundef 1.000000e+00, double noundef 2.000000e+00, double noundef 3.000000e+00, double noundef 4.000000e+00, double noundef 5.000000e+00, double noundef 6.000000e+00, double noundef 7.000000e+00, double noundef 8.000000e+00, double noundef 9.000000e+00)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
