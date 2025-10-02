; ModuleID = './va-arg-14.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@global = dso_local global [1 x %struct.__va_list_tag] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @vat(%struct.__va_list_tag* noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_copy(i8* bitcast ([1 x %struct.__va_list_tag]* @global to i8*), i8* nonnull %4)
  %5 = bitcast %struct.__va_list_tag* %0 to i8*
  %6 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_copy(i8* %5, i8* nonnull %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %8 = load i32, i32* %7, align 16
  %9 = icmp ult i32 %8, 41
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %12 = load i8*, i8** %11, align 16
  %13 = sext i32 %8 to i64
  %14 = getelementptr i8, i8* %12, i64 %13
  %15 = add i32 %8, 8
  store i32 %15, i32* %7, align 16
  br label %20

16:                                               ; preds = %1
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr i8, i8* %18, i64 8
  store i8* %19, i8** %17, align 8
  br label %20

20:                                               ; preds = %16, %10
  %.in = phi i8* [ %14, %10 ], [ %18, %16 ]
  %21 = bitcast i8* %.in to i32*
  %22 = load i32, i32* %21, align 4
  %.not = icmp eq i32 %22, 1
  br i1 %.not, label %24, label %23

23:                                               ; preds = %20
  call void @abort() #4
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  %25 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %25)
  %26 = load i32, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 0), align 16
  %27 = icmp ult i32 %26, 41
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 3), align 16
  %30 = sext i32 %26 to i64
  %31 = getelementptr i8, i8* %29, i64 %30
  %32 = add i32 %26, 8
  store i32 %32, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 0), align 16
  br label %36

33:                                               ; preds = %24
  %34 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 2), align 8
  %35 = getelementptr i8, i8* %34, i64 8
  store i8* %35, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 2), align 8
  br label %36

36:                                               ; preds = %33, %28
  %.in1 = phi i8* [ %31, %28 ], [ %34, %33 ]
  %37 = bitcast i8* %.in1 to i32*
  %38 = load i32, i32* %37, align 4
  %.not2 = icmp eq i32 %38, 1
  br i1 %.not2, label %40, label %39

39:                                               ; preds = %36
  call void @abort() #4
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %36
  call void @llvm.va_end(i8* bitcast ([1 x %struct.__va_list_tag]* @global to i8*))
  %41 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %0, i64 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %42, 41
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %0, i64 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = sext i32 %42 to i64
  %48 = getelementptr i8, i8* %46, i64 %47
  %49 = add i32 %42, 8
  store i32 %49, i32* %41, align 8
  br label %54

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %0, i64 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr i8, i8* %52, i64 8
  store i8* %53, i8** %51, align 8
  br label %54

54:                                               ; preds = %50, %44
  %.in3 = phi i8* [ %48, %44 ], [ %52, %50 ]
  %55 = bitcast i8* %.in3 to i32*
  %56 = load i32, i32* %55, align 4
  %.not4 = icmp eq i32 %56, 1
  br i1 %.not4, label %58, label %57

57:                                               ; preds = %54
  call void @abort() #4
  br label %UnifiedUnreachableBlock

58:                                               ; preds = %54
  %59 = bitcast %struct.__va_list_tag* %0 to i8*
  call void @llvm.va_end(i8* %59)
  %60 = bitcast %struct.__va_list_tag* %0 to i8*
  call void @llvm.va_start(i8* %60)
  call void @llvm.va_start(i8* bitcast ([1 x %struct.__va_list_tag]* @global to i8*))
  %61 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  %62 = bitcast %struct.__va_list_tag* %0 to i8*
  call void @llvm.va_copy(i8* nonnull %61, i8* %62)
  %63 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %64 = load i32, i32* %63, align 16
  %65 = icmp ult i32 %64, 41
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %68 = load i8*, i8** %67, align 16
  %69 = sext i32 %64 to i64
  %70 = getelementptr i8, i8* %68, i64 %69
  %71 = add i32 %64, 8
  store i32 %71, i32* %63, align 16
  br label %76

72:                                               ; preds = %58
  %73 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr i8, i8* %74, i64 8
  store i8* %75, i8** %73, align 8
  br label %76

76:                                               ; preds = %72, %66
  %.in5 = phi i8* [ %70, %66 ], [ %74, %72 ]
  %77 = bitcast i8* %.in5 to i32*
  %78 = load i32, i32* %77, align 4
  %.not6 = icmp eq i32 %78, 1
  br i1 %.not6, label %80, label %79

79:                                               ; preds = %76
  call void @abort() #4
  br label %UnifiedUnreachableBlock

80:                                               ; preds = %76
  %81 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %81)
  %82 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_copy(i8* nonnull %82, i8* bitcast ([1 x %struct.__va_list_tag]* @global to i8*))
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %84 = load i32, i32* %83, align 16
  %85 = icmp ult i32 %84, 41
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %88 = load i8*, i8** %87, align 16
  %89 = sext i32 %84 to i64
  %90 = getelementptr i8, i8* %88, i64 %89
  %91 = add i32 %84, 8
  store i32 %91, i32* %83, align 16
  br label %96

92:                                               ; preds = %80
  %93 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr i8, i8* %94, i64 8
  store i8* %95, i8** %93, align 8
  br label %96

96:                                               ; preds = %92, %86
  %.in7 = phi i8* [ %90, %86 ], [ %94, %92 ]
  %97 = bitcast i8* %.in7 to i32*
  %98 = load i32, i32* %97, align 4
  %.not8 = icmp eq i32 %98, 1
  br i1 %.not8, label %100, label %99

99:                                               ; preds = %96
  call void @abort() #4
  br label %UnifiedUnreachableBlock

100:                                              ; preds = %96
  %101 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %101)
  %102 = load i32, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 0), align 16
  %103 = icmp ult i32 %102, 41
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 3), align 16
  %106 = sext i32 %102 to i64
  %107 = getelementptr i8, i8* %105, i64 %106
  %108 = add i32 %102, 8
  store i32 %108, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 0), align 16
  br label %112

109:                                              ; preds = %100
  %110 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 2), align 8
  %111 = getelementptr i8, i8* %110, i64 8
  store i8* %111, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @global, i64 0, i64 0, i32 2), align 8
  br label %112

112:                                              ; preds = %109, %104
  %.in9 = phi i8* [ %107, %104 ], [ %110, %109 ]
  %113 = bitcast i8* %.in9 to i32*
  %114 = load i32, i32* %113, align 4
  %.not10 = icmp eq i32 %114, 1
  br i1 %.not10, label %116, label %115

115:                                              ; preds = %112
  call void @abort() #4
  br label %UnifiedUnreachableBlock

116:                                              ; preds = %112
  call void @llvm.va_end(i8* bitcast ([1 x %struct.__va_list_tag]* @global to i8*))
  %117 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %0, i64 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ult i32 %118, 41
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %0, i64 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = sext i32 %118 to i64
  %124 = getelementptr i8, i8* %122, i64 %123
  %125 = add i32 %118, 8
  store i32 %125, i32* %117, align 8
  br label %130

126:                                              ; preds = %116
  %127 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %0, i64 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr i8, i8* %128, i64 8
  store i8* %129, i8** %127, align 8
  br label %130

130:                                              ; preds = %126, %120
  %.in11 = phi i8* [ %124, %120 ], [ %128, %126 ]
  %131 = bitcast i8* %.in11 to i32*
  %132 = load i32, i32* %131, align 4
  %.not12 = icmp eq i32 %132, 1
  br i1 %.not12, label %134, label %133

133:                                              ; preds = %130
  call void @abort() #4
  br label %UnifiedUnreachableBlock

134:                                              ; preds = %130
  %135 = bitcast %struct.__va_list_tag* %0 to i8*
  call void @llvm.va_end(i8* %135)
  ret void

UnifiedUnreachableBlock:                          ; preds = %133, %115, %99, %79, %57, %39, %23
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca [1 x %struct.__va_list_tag], align 16
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %1, i64 0, i64 0
  call void (%struct.__va_list_tag*, ...) @vat(%struct.__va_list_tag* noundef nonnull %2, i32 noundef 1)
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
