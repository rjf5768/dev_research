; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-14.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@global = dso_local global [1 x %struct.__va_list_tag] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @vat(%struct.__va_list_tag* noundef %0, ...) #0 {
  %2 = alloca %struct.__va_list_tag*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.__va_list_tag* %0, %struct.__va_list_tag** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_copy(i8* bitcast ([1 x %struct.__va_list_tag]* @global to i8*), i8* %7)
  %8 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %8 to i8*
  %11 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_copy(i8* %10, i8* %11)
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 16
  %15 = icmp ule i32 %14, 40
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 3
  %18 = load i8*, i8** %17, align 16
  %19 = getelementptr i8, i8* %18, i32 %14
  %20 = bitcast i8* %19 to i32*
  %21 = add i32 %14, 8
  store i32 %21, i32* %13, align 16
  br label %27

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = getelementptr i8, i8* %24, i32 8
  store i8* %26, i8** %23, align 8
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi i32* [ %20, %16 ], [ %25, %22 ]
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  call void @abort() #3
  unreachable

32:                                               ; preds = %27
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %34 = bitcast %struct.__va_list_tag* %33 to i8*
  call void @llvm.va_end(i8* %34)
  %35 = load i32, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 0), align 16
  %36 = icmp ule i32 %35, 40
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 3), align 16
  %39 = getelementptr i8, i8* %38, i32 %35
  %40 = bitcast i8* %39 to i32*
  %41 = add i32 %35, 8
  store i32 %41, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 0), align 16
  br label %46

42:                                               ; preds = %32
  %43 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 2), align 8
  %44 = bitcast i8* %43 to i32*
  %45 = getelementptr i8, i8* %43, i32 8
  store i8* %45, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 2), align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i32* [ %40, %37 ], [ %44, %42 ]
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  call void @abort() #3
  unreachable

51:                                               ; preds = %46
  call void @llvm.va_end(i8* bitcast ([1 x %struct.__va_list_tag]* @global to i8*))
  %52 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ule i32 %54, 40
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %52, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr i8, i8* %58, i32 %54
  %60 = bitcast i8* %59 to i32*
  %61 = add i32 %54, 8
  store i32 %61, i32* %53, align 8
  br label %67

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %52, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = getelementptr i8, i8* %64, i32 8
  store i8* %66, i8** %63, align 8
  br label %67

67:                                               ; preds = %62, %56
  %68 = phi i32* [ %60, %56 ], [ %65, %62 ]
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  call void @abort() #3
  unreachable

72:                                               ; preds = %67
  %73 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %74 = bitcast %struct.__va_list_tag* %73 to i8*
  call void @llvm.va_end(i8* %74)
  %75 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %76 = bitcast %struct.__va_list_tag* %75 to i8*
  call void @llvm.va_start(i8* %76)
  call void @llvm.va_start(i8* bitcast ([1 x %struct.__va_list_tag]* @global to i8*))
  %77 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %78 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %79 = bitcast %struct.__va_list_tag* %77 to i8*
  %80 = bitcast %struct.__va_list_tag* %78 to i8*
  call void @llvm.va_copy(i8* %79, i8* %80)
  %81 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %82 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 16
  %84 = icmp ule i32 %83, 40
  br i1 %84, label %85, label %91

85:                                               ; preds = %72
  %86 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %81, i32 0, i32 3
  %87 = load i8*, i8** %86, align 16
  %88 = getelementptr i8, i8* %87, i32 %83
  %89 = bitcast i8* %88 to i32*
  %90 = add i32 %83, 8
  store i32 %90, i32* %82, align 16
  br label %96

91:                                               ; preds = %72
  %92 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %81, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = bitcast i8* %93 to i32*
  %95 = getelementptr i8, i8* %93, i32 8
  store i8* %95, i8** %92, align 8
  br label %96

96:                                               ; preds = %91, %85
  %97 = phi i32* [ %89, %85 ], [ %94, %91 ]
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  call void @abort() #3
  unreachable

101:                                              ; preds = %96
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %103 = bitcast %struct.__va_list_tag* %102 to i8*
  call void @llvm.va_end(i8* %103)
  %104 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %105 = bitcast %struct.__va_list_tag* %104 to i8*
  call void @llvm.va_copy(i8* %105, i8* bitcast ([1 x %struct.__va_list_tag]* @global to i8*))
  %106 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %107 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 16
  %109 = icmp ule i32 %108, 40
  br i1 %109, label %110, label %116

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %106, i32 0, i32 3
  %112 = load i8*, i8** %111, align 16
  %113 = getelementptr i8, i8* %112, i32 %108
  %114 = bitcast i8* %113 to i32*
  %115 = add i32 %108, 8
  store i32 %115, i32* %107, align 16
  br label %121

116:                                              ; preds = %101
  %117 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %106, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = bitcast i8* %118 to i32*
  %120 = getelementptr i8, i8* %118, i32 8
  store i8* %120, i8** %117, align 8
  br label %121

121:                                              ; preds = %116, %110
  %122 = phi i32* [ %114, %110 ], [ %119, %116 ]
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 1
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  call void @abort() #3
  unreachable

126:                                              ; preds = %121
  %127 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %128 = bitcast %struct.__va_list_tag* %127 to i8*
  call void @llvm.va_end(i8* %128)
  %129 = load i32, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 0), align 16
  %130 = icmp ule i32 %129, 40
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 3), align 16
  %133 = getelementptr i8, i8* %132, i32 %129
  %134 = bitcast i8* %133 to i32*
  %135 = add i32 %129, 8
  store i32 %135, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 0), align 16
  br label %140

136:                                              ; preds = %126
  %137 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 2), align 8
  %138 = bitcast i8* %137 to i32*
  %139 = getelementptr i8, i8* %137, i32 8
  store i8* %139, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 2), align 8
  br label %140

140:                                              ; preds = %136, %131
  %141 = phi i32* [ %134, %131 ], [ %138, %136 ]
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 1
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  call void @abort() #3
  unreachable

145:                                              ; preds = %140
  call void @llvm.va_end(i8* bitcast ([1 x %struct.__va_list_tag]* @global to i8*))
  %146 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %147 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ule i32 %148, 40
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %146, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr i8, i8* %152, i32 %148
  %154 = bitcast i8* %153 to i32*
  %155 = add i32 %148, 8
  store i32 %155, i32* %147, align 8
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
  %164 = icmp ne i32 %163, 1
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  call void @abort() #3
  unreachable

166:                                              ; preds = %161
  %167 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %168 = bitcast %struct.__va_list_tag* %167 to i8*
  call void @llvm.va_end(i8* %168)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  call void (%struct.__va_list_tag*, ...) @vat(%struct.__va_list_tag* noundef %3, i32 noundef 1)
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
