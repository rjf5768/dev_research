; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/vfprintf-1.c'
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
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load i32, i32* %2, align 4
  switch i32 %9, label %120 [
    i32 0, label %10
    i32 1, label %20
    i32 2, label %30
    i32 3, label %40
    i32 4, label %50
    i32 5, label %60
    i32 6, label %70
    i32 7, label %80
    i32 8, label %90
    i32 9, label %100
    i32 10, label %110
  ]

10:                                               ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* noundef %12)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %16 = call i32 @vfprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* noundef %15)
  %17 = icmp ne i32 %16, 5
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  call void @abort() #4
  unreachable

19:                                               ; preds = %10
  br label %121

20:                                               ; preds = %1
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %23 = call i32 @vfprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.__va_list_tag* noundef %22)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %26 = call i32 @vfprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.__va_list_tag* noundef %25)
  %27 = icmp ne i32 %26, 6
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  call void @abort() #4
  unreachable

29:                                               ; preds = %20
  br label %121

30:                                               ; preds = %1
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %33 = call i32 @vfprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* noundef %32)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %36 = call i32 @vfprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* noundef %35)
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  call void @abort() #4
  unreachable

39:                                               ; preds = %30
  br label %121

40:                                               ; preds = %1
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %43 = call i32 @vfprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef %42)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %46 = call i32 @vfprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.__va_list_tag* noundef %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  call void @abort() #4
  unreachable

49:                                               ; preds = %40
  br label %121

50:                                               ; preds = %1
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %53 = call i32 @vfprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %52)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %56 = call i32 @vfprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %55)
  %57 = icmp ne i32 %56, 5
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  call void @abort() #4
  unreachable

59:                                               ; preds = %50
  br label %121

60:                                               ; preds = %1
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %62 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %63 = call i32 @vfprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %62)
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %65 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %66 = call i32 @vfprintf(%struct._IO_FILE* noundef %64, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %65)
  %67 = icmp ne i32 %66, 6
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  call void @abort() #4
  unreachable

69:                                               ; preds = %60
  br label %121

70:                                               ; preds = %1
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %72 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %73 = call i32 @vfprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %72)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %75 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %76 = call i32 @vfprintf(%struct._IO_FILE* noundef %74, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %75)
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  call void @abort() #4
  unreachable

79:                                               ; preds = %70
  br label %121

80:                                               ; preds = %1
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %82 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %83 = call i32 @vfprintf(%struct._IO_FILE* noundef %81, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %82)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %85 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %86 = call i32 @vfprintf(%struct._IO_FILE* noundef %84, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* noundef %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  call void @abort() #4
  unreachable

89:                                               ; preds = %80
  br label %121

90:                                               ; preds = %1
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %92 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %93 = call i32 @vfprintf(%struct._IO_FILE* noundef %91, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef %92)
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %95 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %96 = call i32 @vfprintf(%struct._IO_FILE* noundef %94, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* noundef %95)
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  call void @abort() #4
  unreachable

99:                                               ; preds = %90
  br label %121

100:                                              ; preds = %1
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %103 = call i32 @vfprintf(%struct._IO_FILE* noundef %101, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* noundef %102)
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %105 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %106 = call i32 @vfprintf(%struct._IO_FILE* noundef %104, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* noundef %105)
  %107 = icmp ne i32 %106, 7
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  call void @abort() #4
  unreachable

109:                                              ; preds = %100
  br label %121

110:                                              ; preds = %1
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %112 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %113 = call i32 @vfprintf(%struct._IO_FILE* noundef %111, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* noundef %112)
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %115 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %116 = call i32 @vfprintf(%struct._IO_FILE* noundef %114, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* noundef %115)
  %117 = icmp ne i32 %116, 2
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  call void @abort() #4
  unreachable

119:                                              ; preds = %110
  br label %121

120:                                              ; preds = %1
  call void @abort() #4
  unreachable

121:                                              ; preds = %119, %109, %99, %89, %79, %69, %59, %49, %39, %29, %19
  %122 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %123 = bitcast %struct.__va_list_tag* %122 to i8*
  call void @llvm.va_end(i8* %123)
  %124 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %125 = bitcast %struct.__va_list_tag* %124 to i8*
  call void @llvm.va_end(i8* %125)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
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
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
