; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/assembler/assem.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/assembler/assem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }

@START_ADDRESS = dso_local global i32 -1, align 4
@.str = private unnamed_addr constant [8 x i8] c"%pass1%\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"usage: assem file\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: No such file or directory\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".lst\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".obj\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Errors detected. Deleted object file.\0A\00", align 1
@MODULE_NAME = dso_local global [9 x i8] zeroinitializer, align 1
@MAIN_ROUTINE = dso_local global [9 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct._IO_FILE*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 0, i32* %10, align 4
  call void (%struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (void (...)* @INIT_SYM_TAB to void (%struct.SYMBOL_TABLE_ENTRY**, ...)*)(%struct.SYMBOL_TABLE_ENTRY** noundef %7)
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %133

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call noalias %struct._IO_FILE* @fopen(i8* noundef %23, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %24, %struct._IO_FILE** %6, align 8
  %25 = icmp eq %struct._IO_FILE* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* noundef %29)
  br label %132

31:                                               ; preds = %20
  %32 = load i8*, i8** %9, align 8
  %33 = call noalias %struct._IO_FILE* @fopen(i8* noundef %32, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %33, %struct._IO_FILE** %8, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  call void (%struct._IO_FILE*, %struct.SYMBOL_TABLE_ENTRY**, %struct._IO_FILE*, ...) bitcast (void (...)* @PASS1 to void (%struct._IO_FILE*, %struct.SYMBOL_TABLE_ENTRY**, %struct._IO_FILE*, ...)*)(%struct._IO_FILE* noundef %34, %struct.SYMBOL_TABLE_ENTRY** noundef %7, %struct._IO_FILE* noundef %35)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %37 = call i32 @fclose(%struct._IO_FILE* noundef %36)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %39 = call i32 @fclose(%struct._IO_FILE* noundef %38)
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strlen(i8* noundef %42) #4
  %44 = add i64 %43, 5
  %45 = trunc i64 %44 to i32
  %46 = zext i32 %45 to i64
  %47 = call noalias i8* @malloc(i64 noundef %46) #5
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @strcpy(i8* noundef %48, i8* noundef %51) #5
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strlen(i8* noundef %55) #4
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %72, %31
  %59 = load i32, i32* %15, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 46
  br label %69

69:                                               ; preds = %61, %58
  %70 = phi i1 [ false, %58 ], [ %68, %61 ]
  br i1 %70, label %71, label %75

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %15, align 4
  br label %58, !llvm.loop !4

75:                                               ; preds = %69
  %76 = load i32, i32* %15, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @strlen(i8* noundef %81) #4
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %78, %75
  %85 = load i8*, i8** %11, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = call i8* @strcpy(i8* noundef %88, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #5
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @strlen(i8* noundef %92) #4
  %94 = add i64 %93, 5
  %95 = trunc i64 %94 to i32
  %96 = zext i32 %95 to i64
  %97 = call noalias i8* @malloc(i64 noundef %96) #5
  store i8* %97, i8** %13, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i8* @strcpy(i8* noundef %98, i8* noundef %101) #5
  %103 = load i8*, i8** %13, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = call i8* @strcpy(i8* noundef %106, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #5
  %108 = load i8*, i8** %9, align 8
  %109 = call noalias %struct._IO_FILE* @fopen(i8* noundef %108, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %109, %struct._IO_FILE** %6, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = call noalias %struct._IO_FILE* @fopen(i8* noundef %110, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %111, %struct._IO_FILE** %12, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = call noalias %struct._IO_FILE* @fopen(i8* noundef %112, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %113, %struct._IO_FILE** %14, align 8
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  call void (%struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...) bitcast (void (...)* @PASS2 to void (%struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...)*)(%struct._IO_FILE* noundef %114, %struct._IO_FILE* noundef %115, %struct._IO_FILE* noundef %116, %struct.SYMBOL_TABLE_ENTRY** noundef %7, i32* noundef %10)
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %118 = call i32 @fclose(%struct._IO_FILE* noundef %117)
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %120 = call i32 @fclose(%struct._IO_FILE* noundef %119)
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %122 = call i32 @fclose(%struct._IO_FILE* noundef %121)
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 @remove(i8* noundef %123) #5
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %84
  %128 = load i8*, i8** %13, align 8
  %129 = call i32 @remove(i8* noundef %128) #5
  %130 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %131

131:                                              ; preds = %127, %84
  br label %132

132:                                              ; preds = %131, %26
  br label %133

133:                                              ; preds = %132, %18
  ret i32 0
}

declare dso_local void @INIT_SYM_TAB(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local void @PASS1(...) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

declare dso_local void @PASS2(...) #1

; Function Attrs: nounwind
declare dso_local i32 @remove(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
