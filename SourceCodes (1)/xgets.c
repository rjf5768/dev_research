; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/xgets.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/xgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@xgets.Include_File = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [15 x i8] c"&Include_File&\00", align 1
@xgets.Include_Len = internal global i32 0, align 4
@xgets.F = internal global [6 x %struct._IO_FILE*] zeroinitializer, align 16
@xgets.current_F = internal global %struct._IO_FILE** getelementptr inbounds ([6 x %struct._IO_FILE*], [6 x %struct._IO_FILE*]* @xgets.F, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"INCLUDE_STRING\00", align 1
@incfileflag = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @xgets(i8* noundef %0, i32 noundef %1, %struct._IO_FILE* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct._IO_FILE* %2, %struct._IO_FILE** %7, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i32, i32* @xgets.Include_Len, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #4
  store i8* %17, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i8*, i8** %10, align 8
  store i8* %20, i8** @xgets.Include_File, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i8*, i8** @xgets.Include_File, align 8
  %23 = call i64 @strlen(i8* noundef %22) #5
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* @xgets.Include_Len, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %26 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  store %struct._IO_FILE* %25, %struct._IO_FILE** %26, align 8
  br label %27

27:                                               ; preds = %21, %3
  br label %28

28:                                               ; preds = %109, %73, %50, %27
  store i32 0, i32* %9, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = add nsw i64 %33, 1
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %28
  %39 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %39, align 8
  %41 = call i32 @getc(%struct._IO_FILE* noundef %40)
  store i32 %41, i32* %9, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %8, align 8
  store i8 %45, i8* %46, align 1
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 10
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %28

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %38, %28
  %53 = load i8*, i8** %8, align 8
  store i8 0, i8* %53, align 1
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  %58 = icmp eq %struct._IO_FILE** %57, getelementptr inbounds ([6 x %struct._IO_FILE*], [6 x %struct._IO_FILE*]* @xgets.F, i64 0, i64 0)
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i8* null, i8** %4, align 8
  br label %114

64:                                               ; preds = %59
  br label %75

65:                                               ; preds = %56
  %66 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  %67 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %66, i32 -1
  store %struct._IO_FILE** %67, %struct._IO_FILE*** @xgets.current_F, align 8
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %66, align 8
  %69 = call i32 @fclose(%struct._IO_FILE* noundef %68)
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %28

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %64
  br label %76

76:                                               ; preds = %75, %52
  %77 = load i32, i32* @incfileflag, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %111

79:                                               ; preds = %76
  %80 = load i8*, i8** %5, align 8
  %81 = load i8*, i8** @xgets.Include_File, align 8
  %82 = load i32, i32* @xgets.Include_Len, align 4
  %83 = zext i32 %82 to i64
  %84 = call i32 @strncmp(i8* noundef %80, i8* noundef %81, i64 noundef %83) #5
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %79
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* @xgets.Include_Len, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8* %90, i8** %11, align 8
  %91 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  %92 = ptrtoint %struct._IO_FILE** %91 to i64
  %93 = sub i64 %92, ptrtoint ([6 x %struct._IO_FILE*]* @xgets.F to i64)
  %94 = sdiv exact i64 %93, 8
  %95 = icmp slt i64 %94, 5
  br i1 %95, label %96, label %109

96:                                               ; preds = %86
  %97 = load i8*, i8** %11, align 8
  %98 = call i64 @strlen(i8* noundef %97) #5
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i8*, i8** %11, align 8
  %102 = call noalias %struct._IO_FILE* @fopen(i8* noundef %101, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %102, %struct._IO_FILE** %12, align 8
  %103 = icmp ne %struct._IO_FILE* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %106 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  %107 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %106, i32 1
  store %struct._IO_FILE** %107, %struct._IO_FILE*** @xgets.current_F, align 8
  store %struct._IO_FILE* %105, %struct._IO_FILE** %107, align 8
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108, %96, %86
  %110 = load i8*, i8** %5, align 8
  store i8* %110, i8** %8, align 8
  br label %28

111:                                              ; preds = %79, %76
  br label %112

112:                                              ; preds = %111
  %113 = load i8*, i8** %5, align 8
  store i8* %113, i8** %4, align 8
  br label %114

114:                                              ; preds = %112, %63
  %115 = load i8*, i8** %4, align 8
  ret i8* %115
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
