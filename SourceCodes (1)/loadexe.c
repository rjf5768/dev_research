; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/loadexe.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/loadexe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@MAIN_ROUTINE = external dso_local global [9 x i8], align 1
@START_ADDRESS = external dso_local global i32, align 4
@MEMORY = external dso_local global i8*, align 8
@.str = private unnamed_addr constant [9 x i8] c"_GLOBAL \00", align 1
@SYM_TAB = external dso_local global %struct.SYMBOL_TABLE_ENTRY*, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"ERROR: Input is not an executable file. Aborting.\0A\00", align 1
@TYPE_OUT_MODE = dso_local global [6 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @LOAD(i32 noundef %0, i32* noundef %1, %struct._IO_FILE* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [9 x i8], align 1
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %6, align 8
  store i32 0, i32* %9, align 4
  %11 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 8
  store i8 0, i8* %11, align 1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %13 = call i32 @feof(%struct._IO_FILE* noundef %12) #4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  store i32 1, i32* %16, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** noundef %7, %struct._IO_FILE* noundef %18)
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 83
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @strlen(i8* noundef %25) #5
  %27 = icmp ne i64 %26, 14
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %17
  %29 = load i32*, i32** %5, align 8
  store i32 1, i32* %29, align 4
  br label %41

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  store i8 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i64 0, i64 8), align 1
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = call i8* @strncpy(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i64 0, i64 0), i8* noundef %35, i64 noundef 8) #4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 9
  %40 = load i32*, i32** %5, align 8
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %39, i32 noundef 5, i32 noundef 16, i32* noundef @START_ADDRESS, i32* noundef %40)
  br label %41

41:                                               ; preds = %37, %28
  br label %42

42:                                               ; preds = %41, %15
  br label %43

43:                                               ; preds = %155, %42
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %45 = call i32 @feof(%struct._IO_FILE* noundef %44) #4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = icmp sle i32 %48, 1048576
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %50, %47, %43
  %56 = phi i1 [ false, %47 ], [ false, %43 ], [ %54, %50 ]
  br i1 %56, label %57, label %156

57:                                               ; preds = %55
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** noundef %7, %struct._IO_FILE* noundef %58)
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  switch i32 %62, label %154 [
    i32 84, label %63
    i32 77, label %94
    i32 71, label %127
    i32 0, label %153
  ]

63:                                               ; preds = %57
  %64 = load i8*, i8** %7, align 8
  %65 = call i64 @strlen(i8* noundef %64) #5
  %66 = icmp ult i64 %65, 9
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32*, i32** %5, align 8
  store i32 1, i32* %68, align 4
  br label %93

69:                                               ; preds = %63
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i32*, i32** %5, align 8
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %71, i32 noundef 6, i32 noundef 16, i32* noundef %9, i32* noundef %72)
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 7
  %75 = load i32*, i32** %5, align 8
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %74, i32 noundef 2, i32 noundef 16, i32* noundef %8, i32* noundef %75)
  %76 = load i8*, i8** %7, align 8
  %77 = call i64 @strlen(i8* noundef %76) #5
  %78 = load i32, i32* %8, align 4
  %79 = mul nsw i32 %78, 2
  %80 = add nsw i32 9, %79
  %81 = sext i32 %80 to i64
  %82 = icmp ne i64 %77, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %69
  %84 = load i32*, i32** %5, align 8
  store i32 1, i32* %84, align 4
  br label %92

85:                                               ; preds = %69
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 9
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i8*, i8** @MEMORY, align 8
  %91 = load i32*, i32** %5, align 8
  call void (i8*, i32, i32, i8*, i32*, ...) bitcast (void (...)* @STORE_AT to void (i8*, i32, i32, i8*, i32*, ...)*)(i8* noundef %87, i32 noundef %88, i32 noundef %89, i8* noundef %90, i32* noundef %91)
  br label %92

92:                                               ; preds = %85, %83
  br label %93

93:                                               ; preds = %92, %67
  br label %155

94:                                               ; preds = %57
  %95 = load i8*, i8** %7, align 8
  %96 = call i64 @strlen(i8* noundef %95) #5
  %97 = icmp ne i64 %96, 21
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32*, i32** %5, align 8
  store i32 1, i32* %99, align 4
  br label %126

100:                                              ; preds = %94
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %100
  %104 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = call i8* @strncpy(i8* noundef %104, i8* noundef %106, i64 noundef 8) #4
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 9
  %110 = load i32*, i32** %5, align 8
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %109, i32 noundef 6, i32 noundef 16, i32* noundef %9, i32* noundef %110)
  %111 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (i32 (...)* @INSERT_IN_SYM_TAB to i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef %111, i32 noundef %112, i32 noundef 3, %struct.SYMBOL_TABLE_ENTRY** noundef @SYM_TAB)
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = load i32*, i32** %5, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 15
  %120 = load i32*, i32** %5, align 8
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %119, i32 noundef 6, i32 noundef 16, i32* noundef %8, i32* noundef %120)
  %121 = load i32, i32* %8, align 4
  %122 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %123 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef %122, %struct.SYMBOL_TABLE_ENTRY** noundef @SYM_TAB)
  %124 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %123, i32 0, i32 3
  store i32 %121, i32* %124, align 8
  br label %125

125:                                              ; preds = %103, %100
  br label %126

126:                                              ; preds = %125, %98
  br label %155

127:                                              ; preds = %57
  %128 = load i8*, i8** %7, align 8
  %129 = call i64 @strlen(i8* noundef %128) #5
  %130 = icmp ne i64 %129, 15
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32*, i32** %5, align 8
  store i32 1, i32* %132, align 4
  br label %152

133:                                              ; preds = %127
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %133
  %137 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %138 = load i8*, i8** %7, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  %140 = call i8* @strncpy(i8* noundef %137, i8* noundef %139, i64 noundef 8) #4
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 9
  %143 = load i32*, i32** %5, align 8
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %142, i32 noundef 6, i32 noundef 16, i32* noundef %9, i32* noundef %143)
  %144 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %145 = load i32, i32* %9, align 4
  %146 = call i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (i32 (...)* @INSERT_IN_SYM_TAB to i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef %144, i32 noundef %145, i32 noundef 4, %struct.SYMBOL_TABLE_ENTRY** noundef @SYM_TAB)
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = load i32*, i32** %5, align 8
  store i32 %149, i32* %150, align 4
  br label %151

151:                                              ; preds = %136, %133
  br label %152

152:                                              ; preds = %151, %131
  br label %155

153:                                              ; preds = %57
  br label %154

154:                                              ; preds = %57, %153
  br label %155

155:                                              ; preds = %154, %152, %126, %93
  br label %43, !llvm.loop !4

156:                                              ; preds = %55
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %156
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #1

declare dso_local void @GET_LINE(...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @STR_TO_NUM(...) #2

declare dso_local void @STORE_AT(...) #2

declare dso_local i32 @INSERT_IN_SYM_TAB(...) #2

declare dso_local %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
