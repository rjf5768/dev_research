; ModuleID = './va-arg-6.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %5 = load i32, i32* %4, align 16
  %6 = icmp ult i32 %5, 41
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %9 = load i8*, i8** %8, align 16
  %10 = sext i32 %5 to i64
  %11 = getelementptr i8, i8* %9, i64 %10
  %12 = add i32 %5, 8
  store i32 %12, i32* %4, align 16
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr i8, i8* %15, i64 8
  store i8* %16, i8** %14, align 8
  br label %17

17:                                               ; preds = %13, %7
  %.in = phi i8* [ %11, %7 ], [ %15, %13 ]
  %18 = bitcast i8* %.in to i32*
  %19 = load i32, i32* %18, align 4
  %.not = icmp eq i32 %19, 10
  br i1 %.not, label %21, label %20

20:                                               ; preds = %17
  call void @abort() #4
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %17
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %23 = load i32, i32* %22, align 16
  %24 = icmp ult i32 %23, 41
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %27 = load i8*, i8** %26, align 16
  %28 = sext i32 %23 to i64
  %29 = getelementptr i8, i8* %27, i64 %28
  %30 = add i32 %23, 8
  store i32 %30, i32* %22, align 16
  br label %35

31:                                               ; preds = %21
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr i8, i8* %33, i64 8
  store i8* %34, i8** %32, align 8
  br label %35

35:                                               ; preds = %31, %25
  %.in1 = phi i8* [ %29, %25 ], [ %33, %31 ]
  %36 = bitcast i8* %.in1 to i64*
  %37 = load i64, i64* %36, align 8
  %.not2 = icmp eq i64 %37, 10000000000
  br i1 %.not2, label %39, label %38

38:                                               ; preds = %35
  call void @abort() #4
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %35
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %41 = load i32, i32* %40, align 16
  %42 = icmp ult i32 %41, 41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %45 = load i8*, i8** %44, align 16
  %46 = sext i32 %41 to i64
  %47 = getelementptr i8, i8* %45, i64 %46
  %48 = add i32 %41, 8
  store i32 %48, i32* %40, align 16
  br label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr i8, i8* %51, i64 8
  store i8* %52, i8** %50, align 8
  br label %53

53:                                               ; preds = %49, %43
  %.in3 = phi i8* [ %47, %43 ], [ %51, %49 ]
  %54 = bitcast i8* %.in3 to i32*
  %55 = load i32, i32* %54, align 4
  %.not4 = icmp eq i32 %55, 11
  br i1 %.not4, label %57, label %56

56:                                               ; preds = %53
  call void @abort() #4
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %53
  %58 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = add i64 %60, 15
  %62 = and i64 %61, -16
  %63 = inttoptr i64 %62 to i8*
  %64 = inttoptr i64 %62 to x86_fp80*
  %65 = getelementptr i8, i8* %63, i64 16
  store i8* %65, i8** %58, align 8
  %66 = load x86_fp80, x86_fp80* %64, align 16
  %67 = fcmp une x86_fp80 %66, 0xK4000C8F5C28F5C28F5C3
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  call void @abort() #4
  br label %UnifiedUnreachableBlock

69:                                               ; preds = %57
  %70 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %71 = load i32, i32* %70, align 16
  %72 = icmp ult i32 %71, 41
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %75 = load i8*, i8** %74, align 16
  %76 = sext i32 %71 to i64
  %77 = getelementptr i8, i8* %75, i64 %76
  %78 = add i32 %71, 8
  store i32 %78, i32* %70, align 16
  br label %83

79:                                               ; preds = %69
  %80 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr i8, i8* %81, i64 8
  store i8* %82, i8** %80, align 8
  br label %83

83:                                               ; preds = %79, %73
  %.in5 = phi i8* [ %77, %73 ], [ %81, %79 ]
  %84 = bitcast i8* %.in5 to i32*
  %85 = load i32, i32* %84, align 4
  %.not6 = icmp eq i32 %85, 12
  br i1 %.not6, label %87, label %86

86:                                               ; preds = %83
  call void @abort() #4
  br label %UnifiedUnreachableBlock

87:                                               ; preds = %83
  %88 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %89 = load i32, i32* %88, align 16
  %90 = icmp ult i32 %89, 41
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %93 = load i8*, i8** %92, align 16
  %94 = sext i32 %89 to i64
  %95 = getelementptr i8, i8* %93, i64 %94
  %96 = add i32 %89, 8
  store i32 %96, i32* %88, align 16
  br label %101

97:                                               ; preds = %87
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr i8, i8* %99, i64 8
  store i8* %100, i8** %98, align 8
  br label %101

101:                                              ; preds = %97, %91
  %.in7 = phi i8* [ %95, %91 ], [ %99, %97 ]
  %102 = bitcast i8* %.in7 to i32*
  %103 = load i32, i32* %102, align 4
  %.not8 = icmp eq i32 %103, 13
  br i1 %.not8, label %105, label %104

104:                                              ; preds = %101
  call void @abort() #4
  br label %UnifiedUnreachableBlock

105:                                              ; preds = %101
  %106 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %107 = load i32, i32* %106, align 16
  %108 = icmp ult i32 %107, 41
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %111 = load i8*, i8** %110, align 16
  %112 = sext i32 %107 to i64
  %113 = getelementptr i8, i8* %111, i64 %112
  %114 = add i32 %107, 8
  store i32 %114, i32* %106, align 16
  br label %119

115:                                              ; preds = %105
  %116 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr i8, i8* %117, i64 8
  store i8* %118, i8** %116, align 8
  br label %119

119:                                              ; preds = %115, %109
  %.in9 = phi i8* [ %113, %109 ], [ %117, %115 ]
  %120 = bitcast i8* %.in9 to i64*
  %121 = load i64, i64* %120, align 8
  %.not10 = icmp eq i64 %121, 20000000000
  br i1 %.not10, label %123, label %122

122:                                              ; preds = %119
  call void @abort() #4
  br label %UnifiedUnreachableBlock

123:                                              ; preds = %119
  %124 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %125 = load i32, i32* %124, align 16
  %126 = icmp ult i32 %125, 41
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %129 = load i8*, i8** %128, align 16
  %130 = sext i32 %125 to i64
  %131 = getelementptr i8, i8* %129, i64 %130
  %132 = add i32 %125, 8
  store i32 %132, i32* %124, align 16
  br label %137

133:                                              ; preds = %123
  %134 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr i8, i8* %135, i64 8
  store i8* %136, i8** %134, align 8
  br label %137

137:                                              ; preds = %133, %127
  %.in11 = phi i8* [ %131, %127 ], [ %135, %133 ]
  %138 = bitcast i8* %.in11 to i32*
  %139 = load i32, i32* %138, align 4
  %.not12 = icmp eq i32 %139, 14
  br i1 %.not12, label %141, label %140

140:                                              ; preds = %137
  call void @abort() #4
  br label %UnifiedUnreachableBlock

141:                                              ; preds = %137
  %142 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ult i32 %143, 161
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %147 = load i8*, i8** %146, align 16
  %148 = sext i32 %143 to i64
  %149 = getelementptr i8, i8* %147, i64 %148
  %150 = add i32 %143, 16
  store i32 %150, i32* %142, align 4
  br label %155

151:                                              ; preds = %141
  %152 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr i8, i8* %153, i64 8
  store i8* %154, i8** %152, align 8
  br label %155

155:                                              ; preds = %151, %145
  %.in13 = phi i8* [ %149, %145 ], [ %153, %151 ]
  %156 = bitcast i8* %.in13 to double*
  %157 = load double, double* %156, align 8
  %158 = fcmp une double %157, 2.720000e+00
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  call void @abort() #4
  br label %UnifiedUnreachableBlock

160:                                              ; preds = %155
  %161 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %161)
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %159, %140, %122, %104, %86, %68, %56, %38, %20
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
  %1 = call i32 (i32, ...) @f(i32 noundef 4, i32 noundef 10, i64 noundef 10000000000, i32 noundef 11, x86_fp80 noundef 0xK4000C8F5C28F5C28F5C3, i32 noundef 12, i32 noundef 13, i64 noundef 20000000000, i32 noundef 14, double noundef 2.720000e+00)
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
