; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-6.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 16
  %10 = icmp ule i32 %9, 40
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 3
  %13 = load i8*, i8** %12, align 16
  %14 = getelementptr i8, i8* %13, i32 %9
  %15 = bitcast i8* %14 to i32*
  %16 = add i32 %9, 8
  store i32 %16, i32* %8, align 16
  br label %22

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = getelementptr i8, i8* %19, i32 8
  store i8* %21, i8** %18, align 8
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i32* [ %15, %11 ], [ %20, %17 ]
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 10
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  call void @abort() #3
  unreachable

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 16
  %31 = icmp ule i32 %30, 40
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 3
  %34 = load i8*, i8** %33, align 16
  %35 = getelementptr i8, i8* %34, i32 %30
  %36 = bitcast i8* %35 to i64*
  %37 = add i32 %30, 8
  store i32 %37, i32* %29, align 16
  br label %43

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to i64*
  %42 = getelementptr i8, i8* %40, i32 8
  store i8* %42, i8** %39, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i64* [ %36, %32 ], [ %41, %38 ]
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 10000000000
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  call void @abort() #3
  unreachable

48:                                               ; preds = %43
  %49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 16
  %52 = icmp ule i32 %51, 40
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 3
  %55 = load i8*, i8** %54, align 16
  %56 = getelementptr i8, i8* %55, i32 %51
  %57 = bitcast i8* %56 to i32*
  %58 = add i32 %51, 8
  store i32 %58, i32* %50, align 16
  br label %64

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = getelementptr i8, i8* %61, i32 8
  store i8* %63, i8** %60, align 8
  br label %64

64:                                               ; preds = %59, %53
  %65 = phi i32* [ %57, %53 ], [ %62, %59 ]
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 11
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  call void @abort() #3
  unreachable

69:                                               ; preds = %64
  %70 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %71 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = add i64 %73, 15
  %75 = and i64 %74, -16
  %76 = inttoptr i64 %75 to i8*
  %77 = bitcast i8* %76 to x86_fp80*
  %78 = getelementptr i8, i8* %76, i32 16
  store i8* %78, i8** %71, align 8
  %79 = load x86_fp80, x86_fp80* %77, align 16
  %80 = fcmp une x86_fp80 %79, 0xK4000C8F5C28F5C28F5C3
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  call void @abort() #3
  unreachable

82:                                               ; preds = %69
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %84 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 16
  %86 = icmp ule i32 %85, 40
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %83, i32 0, i32 3
  %89 = load i8*, i8** %88, align 16
  %90 = getelementptr i8, i8* %89, i32 %85
  %91 = bitcast i8* %90 to i32*
  %92 = add i32 %85, 8
  store i32 %92, i32* %84, align 16
  br label %98

93:                                               ; preds = %82
  %94 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %83, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = bitcast i8* %95 to i32*
  %97 = getelementptr i8, i8* %95, i32 8
  store i8* %97, i8** %94, align 8
  br label %98

98:                                               ; preds = %93, %87
  %99 = phi i32* [ %91, %87 ], [ %96, %93 ]
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 12
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  call void @abort() #3
  unreachable

103:                                              ; preds = %98
  %104 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %105 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 16
  %107 = icmp ule i32 %106, 40
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %104, i32 0, i32 3
  %110 = load i8*, i8** %109, align 16
  %111 = getelementptr i8, i8* %110, i32 %106
  %112 = bitcast i8* %111 to i32*
  %113 = add i32 %106, 8
  store i32 %113, i32* %105, align 16
  br label %119

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %104, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = bitcast i8* %116 to i32*
  %118 = getelementptr i8, i8* %116, i32 8
  store i8* %118, i8** %115, align 8
  br label %119

119:                                              ; preds = %114, %108
  %120 = phi i32* [ %112, %108 ], [ %117, %114 ]
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 13
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  call void @abort() #3
  unreachable

124:                                              ; preds = %119
  %125 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %126 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 16
  %128 = icmp ule i32 %127, 40
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %125, i32 0, i32 3
  %131 = load i8*, i8** %130, align 16
  %132 = getelementptr i8, i8* %131, i32 %127
  %133 = bitcast i8* %132 to i64*
  %134 = add i32 %127, 8
  store i32 %134, i32* %126, align 16
  br label %140

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %125, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = bitcast i8* %137 to i64*
  %139 = getelementptr i8, i8* %137, i32 8
  store i8* %139, i8** %136, align 8
  br label %140

140:                                              ; preds = %135, %129
  %141 = phi i64* [ %133, %129 ], [ %138, %135 ]
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 20000000000
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  call void @abort() #3
  unreachable

145:                                              ; preds = %140
  %146 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %147 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 16
  %149 = icmp ule i32 %148, 40
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %146, i32 0, i32 3
  %152 = load i8*, i8** %151, align 16
  %153 = getelementptr i8, i8* %152, i32 %148
  %154 = bitcast i8* %153 to i32*
  %155 = add i32 %148, 8
  store i32 %155, i32* %147, align 16
  br label %161

156:                                              ; preds = %145
  %157 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %146, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = bitcast i8* %158 to i32*
  %160 = getelementptr i8, i8* %158, i32 8
  store i8* %160, i8** %157, align 8
  br label %161

161:                                              ; preds = %156, %150
  %162 = phi i32* [ %154, %150 ], [ %159, %156 ]
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 14
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  call void @abort() #3
  unreachable

166:                                              ; preds = %161
  %167 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %168 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp ule i32 %169, 160
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %167, i32 0, i32 3
  %173 = load i8*, i8** %172, align 16
  %174 = getelementptr i8, i8* %173, i32 %169
  %175 = bitcast i8* %174 to double*
  %176 = add i32 %169, 16
  store i32 %176, i32* %168, align 4
  br label %182

177:                                              ; preds = %166
  %178 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %167, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = bitcast i8* %179 to double*
  %181 = getelementptr i8, i8* %179, i32 8
  store i8* %181, i8** %178, align 8
  br label %182

182:                                              ; preds = %177, %171
  %183 = phi double* [ %175, %171 ], [ %180, %177 ]
  %184 = load double, double* %183, align 8
  %185 = fcmp une double %184, 2.720000e+00
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  call void @abort() #3
  unreachable

187:                                              ; preds = %182
  %188 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %189 = bitcast %struct.__va_list_tag* %188 to i8*
  call void @llvm.va_end(i8* %189)
  %190 = load i32, i32* %2, align 4
  ret i32 %190
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
  %2 = call i32 (i32, ...) @f(i32 noundef 4, i32 noundef 10, i64 noundef 10000000000, i32 noundef 11, x86_fp80 noundef 0xK4000C8F5C28F5C28F5C3, i32 noundef 12, i32 noundef 13, i64 noundef 20000000000, i32 noundef 14, double noundef 2.720000e+00)
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
