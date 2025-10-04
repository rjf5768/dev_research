; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-19.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-19.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @vafunction(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 16
  %9 = icmp ule i32 %8, 40
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %6, i32 0, i32 3
  %12 = load i8*, i8** %11, align 16
  %13 = getelementptr i8, i8* %12, i32 %8
  %14 = bitcast i8* %13 to i32*
  %15 = add i32 %8, 8
  store i32 %15, i32* %7, align 16
  br label %21

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %6, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = getelementptr i8, i8* %18, i32 8
  store i8* %20, i8** %17, align 8
  br label %21

21:                                               ; preds = %16, %10
  %22 = phi i32* [ %14, %10 ], [ %19, %16 ]
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  call void @abort() #3
  unreachable

26:                                               ; preds = %21
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 16
  %30 = icmp ule i32 %29, 40
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %27, i32 0, i32 3
  %33 = load i8*, i8** %32, align 16
  %34 = getelementptr i8, i8* %33, i32 %29
  %35 = bitcast i8* %34 to i32*
  %36 = add i32 %29, 8
  store i32 %36, i32* %28, align 16
  br label %42

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %27, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = getelementptr i8, i8* %39, i32 8
  store i8* %41, i8** %38, align 8
  br label %42

42:                                               ; preds = %37, %31
  %43 = phi i32* [ %35, %31 ], [ %40, %37 ]
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  call void @abort() #3
  unreachable

47:                                               ; preds = %42
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 16
  %51 = icmp ule i32 %50, 40
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 3
  %54 = load i8*, i8** %53, align 16
  %55 = getelementptr i8, i8* %54, i32 %50
  %56 = bitcast i8* %55 to i32*
  %57 = add i32 %50, 8
  store i32 %57, i32* %49, align 16
  br label %63

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = getelementptr i8, i8* %60, i32 8
  store i8* %62, i8** %59, align 8
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi i32* [ %56, %52 ], [ %61, %58 ]
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 3
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  call void @abort() #3
  unreachable

68:                                               ; preds = %63
  %69 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 16
  %72 = icmp ule i32 %71, 40
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 3
  %75 = load i8*, i8** %74, align 16
  %76 = getelementptr i8, i8* %75, i32 %71
  %77 = bitcast i8* %76 to i32*
  %78 = add i32 %71, 8
  store i32 %78, i32* %70, align 16
  br label %84

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = getelementptr i8, i8* %81, i32 8
  store i8* %83, i8** %80, align 8
  br label %84

84:                                               ; preds = %79, %73
  %85 = phi i32* [ %77, %73 ], [ %82, %79 ]
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 4
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  call void @abort() #3
  unreachable

89:                                               ; preds = %84
  %90 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %91 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 16
  %93 = icmp ule i32 %92, 40
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %90, i32 0, i32 3
  %96 = load i8*, i8** %95, align 16
  %97 = getelementptr i8, i8* %96, i32 %92
  %98 = bitcast i8* %97 to i32*
  %99 = add i32 %92, 8
  store i32 %99, i32* %91, align 16
  br label %105

100:                                              ; preds = %89
  %101 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %90, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = bitcast i8* %102 to i32*
  %104 = getelementptr i8, i8* %102, i32 8
  store i8* %104, i8** %101, align 8
  br label %105

105:                                              ; preds = %100, %94
  %106 = phi i32* [ %98, %94 ], [ %103, %100 ]
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 5
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  call void @abort() #3
  unreachable

110:                                              ; preds = %105
  %111 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %112 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 16
  %114 = icmp ule i32 %113, 40
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %111, i32 0, i32 3
  %117 = load i8*, i8** %116, align 16
  %118 = getelementptr i8, i8* %117, i32 %113
  %119 = bitcast i8* %118 to i32*
  %120 = add i32 %113, 8
  store i32 %120, i32* %112, align 16
  br label %126

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %111, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = bitcast i8* %123 to i32*
  %125 = getelementptr i8, i8* %123, i32 8
  store i8* %125, i8** %122, align 8
  br label %126

126:                                              ; preds = %121, %115
  %127 = phi i32* [ %119, %115 ], [ %124, %121 ]
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 6
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  call void @abort() #3
  unreachable

131:                                              ; preds = %126
  %132 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %133 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 16
  %135 = icmp ule i32 %134, 40
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %132, i32 0, i32 3
  %138 = load i8*, i8** %137, align 16
  %139 = getelementptr i8, i8* %138, i32 %134
  %140 = bitcast i8* %139 to i32*
  %141 = add i32 %134, 8
  store i32 %141, i32* %133, align 16
  br label %147

142:                                              ; preds = %131
  %143 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %132, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = bitcast i8* %144 to i32*
  %146 = getelementptr i8, i8* %144, i32 8
  store i8* %146, i8** %143, align 8
  br label %147

147:                                              ; preds = %142, %136
  %148 = phi i32* [ %140, %136 ], [ %145, %142 ]
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 7
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  call void @abort() #3
  unreachable

152:                                              ; preds = %147
  %153 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %154 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 16
  %156 = icmp ule i32 %155, 40
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %153, i32 0, i32 3
  %159 = load i8*, i8** %158, align 16
  %160 = getelementptr i8, i8* %159, i32 %155
  %161 = bitcast i8* %160 to i32*
  %162 = add i32 %155, 8
  store i32 %162, i32* %154, align 16
  br label %168

163:                                              ; preds = %152
  %164 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %153, i32 0, i32 2
  %165 = load i8*, i8** %164, align 8
  %166 = bitcast i8* %165 to i32*
  %167 = getelementptr i8, i8* %165, i32 8
  store i8* %167, i8** %164, align 8
  br label %168

168:                                              ; preds = %163, %157
  %169 = phi i32* [ %161, %157 ], [ %166, %163 ]
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 8
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  call void @abort() #3
  unreachable

173:                                              ; preds = %168
  %174 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %175 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 16
  %177 = icmp ule i32 %176, 40
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %174, i32 0, i32 3
  %180 = load i8*, i8** %179, align 16
  %181 = getelementptr i8, i8* %180, i32 %176
  %182 = bitcast i8* %181 to i32*
  %183 = add i32 %176, 8
  store i32 %183, i32* %175, align 16
  br label %189

184:                                              ; preds = %173
  %185 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %174, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = bitcast i8* %186 to i32*
  %188 = getelementptr i8, i8* %186, i32 8
  store i8* %188, i8** %185, align 8
  br label %189

189:                                              ; preds = %184, %178
  %190 = phi i32* [ %182, %178 ], [ %187, %184 ]
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 9
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  call void @abort() #3
  unreachable

194:                                              ; preds = %189
  %195 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %196 = bitcast %struct.__va_list_tag* %195 to i8*
  call void @llvm.va_end(i8* %196)
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
  call void (i8*, ...) @vafunction(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9)
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
