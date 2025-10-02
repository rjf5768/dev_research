; ModuleID = './vfprintf-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/vfprintf-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @inner(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %5)
  switch i32 %0, label %105 [
    i32 0, label %6
    i32 1, label %15
    i32 2, label %24
    i32 3, label %33
    i32 4, label %42
    i32 5, label %51
    i32 6, label %60
    i32 7, label %69
    i32 8, label %78
    i32 9, label %87
    i32 10, label %96
  ]

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %9 = call i32 @vfprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %8) #4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %12 = call i32 @vfprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %11) #4
  %.not10 = icmp eq i32 %12, 5
  br i1 %.not10, label %14, label %13

13:                                               ; preds = %6
  call void @abort() #5
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %6
  br label %106

15:                                               ; preds = %1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %18 = call i32 @vfprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %17) #4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %21 = call i32 @vfprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %20) #4
  %.not9 = icmp eq i32 %21, 6
  br i1 %.not9, label %23, label %22

22:                                               ; preds = %15
  call void @abort() #5
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %15
  br label %106

24:                                               ; preds = %1
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %27 = call i32 @vfprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %26) #4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %30 = call i32 @vfprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %29) #4
  %.not8 = icmp eq i32 %30, 1
  br i1 %.not8, label %32, label %31

31:                                               ; preds = %24
  call void @abort() #5
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %24
  br label %106

33:                                               ; preds = %1
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %36 = call i32 @vfprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %35) #4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %39 = call i32 @vfprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %38) #4
  %.not7 = icmp eq i32 %39, 0
  br i1 %.not7, label %41, label %40

40:                                               ; preds = %33
  call void @abort() #5
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %33
  br label %106

42:                                               ; preds = %1
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %45 = call i32 @vfprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %44) #4
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %47 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %48 = call i32 @vfprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %47) #4
  %.not6 = icmp eq i32 %48, 5
  br i1 %.not6, label %50, label %49

49:                                               ; preds = %42
  call void @abort() #5
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %42
  br label %106

51:                                               ; preds = %1
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %54 = call i32 @vfprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %53) #4
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %57 = call i32 @vfprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %56) #4
  %.not5 = icmp eq i32 %57, 6
  br i1 %.not5, label %59, label %58

58:                                               ; preds = %51
  call void @abort() #5
  br label %UnifiedUnreachableBlock

59:                                               ; preds = %51
  br label %106

60:                                               ; preds = %1
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %62 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %63 = call i32 @vfprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %62) #4
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %65 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %66 = call i32 @vfprintf(%struct._IO_FILE* noundef %64, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %65) #4
  %.not4 = icmp eq i32 %66, 1
  br i1 %.not4, label %68, label %67

67:                                               ; preds = %60
  call void @abort() #5
  br label %UnifiedUnreachableBlock

68:                                               ; preds = %60
  br label %106

69:                                               ; preds = %1
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %71 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %72 = call i32 @vfprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %71) #4
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %74 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %75 = call i32 @vfprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %74) #4
  %.not3 = icmp eq i32 %75, 0
  br i1 %.not3, label %77, label %76

76:                                               ; preds = %69
  call void @abort() #5
  br label %UnifiedUnreachableBlock

77:                                               ; preds = %69
  br label %106

78:                                               ; preds = %1
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %80 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %81 = call i32 @vfprintf(%struct._IO_FILE* noundef %79, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %80) #4
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %84 = call i32 @vfprintf(%struct._IO_FILE* noundef %82, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %83) #4
  %.not2 = icmp eq i32 %84, 1
  br i1 %.not2, label %86, label %85

85:                                               ; preds = %78
  call void @abort() #5
  br label %UnifiedUnreachableBlock

86:                                               ; preds = %78
  br label %106

87:                                               ; preds = %1
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %90 = call i32 @vfprintf(%struct._IO_FILE* noundef %88, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %89) #4
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %92 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %93 = call i32 @vfprintf(%struct._IO_FILE* noundef %91, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %92) #4
  %.not1 = icmp eq i32 %93, 7
  br i1 %.not1, label %95, label %94

94:                                               ; preds = %87
  call void @abort() #5
  br label %UnifiedUnreachableBlock

95:                                               ; preds = %87
  br label %106

96:                                               ; preds = %1
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %99 = call i32 @vfprintf(%struct._IO_FILE* noundef %97, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %98) #4
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %101 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %102 = call i32 @vfprintf(%struct._IO_FILE* noundef %100, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %101) #4
  %.not = icmp eq i32 %102, 2
  br i1 %.not, label %104, label %103

103:                                              ; preds = %96
  call void @abort() #5
  br label %UnifiedUnreachableBlock

104:                                              ; preds = %96
  br label %106

105:                                              ; preds = %1
  call void @abort() #5
  br label %UnifiedUnreachableBlock

106:                                              ; preds = %104, %95, %86, %77, %68, %59, %50, %41, %32, %23, %14
  %107 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %107)
  %108 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %108)
  ret void

UnifiedUnreachableBlock:                          ; preds = %105, %103, %94, %85, %76, %67, %58, %49, %40, %31, %22, %13
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void (i32, ...) @inner(i32 noundef 0)
  call void (i32, ...) @inner(i32 noundef 1)
  call void (i32, ...) @inner(i32 noundef 2)
  call void (i32, ...) @inner(i32 noundef 3)
  call void (i32, ...) @inner(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  call void (i32, ...) @inner(i32 noundef 5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  call void (i32, ...) @inner(i32 noundef 6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  call void (i32, ...) @inner(i32 noundef 7, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  call void (i32, ...) @inner(i32 noundef 8, i32 noundef 120)
  call void (i32, ...) @inner(i32 noundef 9, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  call void (i32, ...) @inner(i32 noundef 10, i32 noundef 0)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
