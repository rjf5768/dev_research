; ModuleID = './openFiles.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/openFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@openFiles.name = internal global [10 x i8] c"openFiles\00", align 1
@.str = private unnamed_addr constant [9 x i8] c"argc > 0\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/openFiles.c\00", align 1
@__PRETTY_FUNCTION__.openFiles = private unnamed_addr constant [55 x i8] c"Int openFiles(Int, Char **, FILE **, FILE **, FILE **)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"argv && argv[ 0 ]\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"*inputFile == NULL\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"*outputFile == NULL\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"*metricsFile == NULL\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"missing argument for -i\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"Usage: %s [-h], or\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"       %s\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c" [-i <input file = stdin>]\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c" [-o <output file = stdout>]\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c" [-m <metrics file = stderr>]\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"missing argument for -o\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"missing argument for -m\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"unknown option\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"incorrect format - unknown option\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"error opening input file\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"error opening output file\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"error opening metrics file\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @openFiles(i64 noundef %0, i8** noundef readonly %1, %struct._IO_FILE** nocapture noundef %2, %struct._IO_FILE** nocapture noundef %3, %struct._IO_FILE** nocapture noundef %4) #0 {
  %6 = icmp sgt i64 %0, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %9

8:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.openFiles, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  %.not = icmp eq i8** %1, null
  br i1 %.not, label %13, label %10

10:                                               ; preds = %9
  %11 = load i8*, i8** %1, align 8
  %.not32 = icmp eq i8* %11, null
  br i1 %.not32, label %13, label %12

12:                                               ; preds = %10
  br label %14

13:                                               ; preds = %10, %9
  call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.openFiles, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %12
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %16 = icmp eq %struct._IO_FILE* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %19

18:                                               ; preds = %14
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.openFiles, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %17
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %21 = icmp eq %struct._IO_FILE* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %24

23:                                               ; preds = %19
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.openFiles, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %26 = icmp eq %struct._IO_FILE* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %29

28:                                               ; preds = %24
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.openFiles, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %27
  %30 = icmp sgt i64 %0, 1
  br i1 %30, label %31, label %175

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %173, %31
  %.09 = phi i8* [ null, %31 ], [ %.110, %173 ]
  %.05 = phi i8* [ null, %31 ], [ %.27, %173 ]
  %.02 = phi i8* [ null, %31 ], [ %.24, %173 ]
  %.01 = phi i64 [ 1, %31 ], [ %.2, %173 ]
  %33 = icmp slt i64 %.01, %0
  br i1 %33, label %34, label %174

34:                                               ; preds = %32
  %35 = getelementptr inbounds i8*, i8** %1, i64 %.01
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %36) #6
  %38 = icmp eq i64 %37, 2
  br i1 %38, label %39, label %160

39:                                               ; preds = %34
  %40 = getelementptr inbounds i8*, i8** %1, i64 %.01
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp eq i8 %42, 45
  br i1 %43, label %44, label %160

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8*, i8** %1, i64 %.01
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = icmp eq i8 %48, 105
  br i1 %49, label %50, label %71

50:                                               ; preds = %44
  %51 = add nuw nsw i64 %.01, 1
  %52 = icmp slt i64 %51, %0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %67

54:                                               ; preds = %50
  call void @errorMessage(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8 noundef signext 0) #7
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 noundef signext 1) #7
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = load i8*, i8** %1, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef %56) #8
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = load i8*, i8** %1, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %58, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef %59) #8
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %61) #9
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %63) #9
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %65) #9
  br label %204

67:                                               ; preds = %53
  %68 = add nuw nsw i64 %.01, 1
  %69 = getelementptr inbounds i8*, i8** %1, i64 %68
  %70 = load i8*, i8** %69, align 8
  br label %159

71:                                               ; preds = %44
  %72 = getelementptr inbounds i8*, i8** %1, i64 %.01
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = icmp eq i8 %75, 111
  br i1 %76, label %77, label %98

77:                                               ; preds = %71
  %78 = add nuw nsw i64 %.01, 1
  %79 = icmp slt i64 %78, %0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %94

81:                                               ; preds = %77
  call void @errorMessage(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8 noundef signext 0) #7
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 noundef signext 1) #7
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %83 = load i8*, i8** %1, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %82, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef %83) #8
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %86 = load i8*, i8** %1, align 8
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %85, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef %86) #8
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %89 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %88) #9
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %91 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %90) #9
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %93 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %92) #9
  br label %204

94:                                               ; preds = %80
  %95 = add nuw nsw i64 %.01, 1
  %96 = getelementptr inbounds i8*, i8** %1, i64 %95
  %97 = load i8*, i8** %96, align 8
  br label %158

98:                                               ; preds = %71
  %99 = getelementptr inbounds i8*, i8** %1, i64 %.01
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = icmp eq i8 %102, 109
  br i1 %103, label %104, label %125

104:                                              ; preds = %98
  %105 = add nuw nsw i64 %.01, 1
  %106 = icmp slt i64 %105, %0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = add nuw nsw i64 %.01, 1
  %109 = getelementptr inbounds i8*, i8** %1, i64 %108
  %110 = load i8*, i8** %109, align 8
  br label %124

111:                                              ; preds = %104
  call void @errorMessage(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8 noundef signext 0) #7
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 noundef signext 1) #7
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %113 = load i8*, i8** %1, align 8
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %112, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef %113) #8
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %116 = load i8*, i8** %1, align 8
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %115, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef %116) #8
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %119 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %118) #9
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %121 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %120) #9
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %123 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %122) #9
  br label %204

124:                                              ; preds = %107
  br label %157

125:                                              ; preds = %98
  %126 = getelementptr inbounds i8*, i8** %1, i64 %.01
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  %129 = load i8, i8* %128, align 1
  %130 = icmp eq i8 %129, 104
  br i1 %130, label %131, label %144

131:                                              ; preds = %125
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %133 = load i8*, i8** %1, align 8
  %134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %132, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef %133) #8
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %136 = load i8*, i8** %1, align 8
  %137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %135, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef %136) #8
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %139 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %138) #9
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %141 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %140) #9
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %143 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %142) #9
  br label %204

144:                                              ; preds = %125
  call void @errorMessage(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8 noundef signext 0) #7
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 noundef signext 1) #7
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %146 = load i8*, i8** %1, align 8
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %145, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef %146) #8
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %149 = load i8*, i8** %1, align 8
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %148, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef %149) #8
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %152 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %151) #9
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %154 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %153) #9
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %156 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %155) #9
  br label %204

157:                                              ; preds = %124
  br label %158

158:                                              ; preds = %157, %94
  %.16 = phi i8* [ %97, %94 ], [ %.05, %157 ]
  %.13 = phi i8* [ %.02, %94 ], [ %110, %157 ]
  br label %159

159:                                              ; preds = %158, %67
  %.110 = phi i8* [ %70, %67 ], [ %.09, %158 ]
  %.27 = phi i8* [ %.05, %67 ], [ %.16, %158 ]
  %.24 = phi i8* [ %.02, %67 ], [ %.13, %158 ]
  br label %173

160:                                              ; preds = %39, %34
  call void @errorMessage(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i8 noundef signext 0) #7
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 noundef signext 1) #7
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %162 = load i8*, i8** %1, align 8
  %163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef %162) #8
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %165 = load i8*, i8** %1, align 8
  %166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %164, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef %165) #8
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %168 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %167) #9
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %170 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %169) #9
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %172 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %171) #9
  br label %204

173:                                              ; preds = %159
  %.2 = add nuw nsw i64 %.01, 2
  br label %32, !llvm.loop !4

174:                                              ; preds = %32
  br label %175

175:                                              ; preds = %174, %29
  %.211 = phi i8* [ %.09, %174 ], [ null, %29 ]
  %.38 = phi i8* [ %.05, %174 ], [ null, %29 ]
  %.3 = phi i8* [ %.02, %174 ], [ null, %29 ]
  %176 = icmp eq i8* %.211, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %175
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %178, %struct._IO_FILE** %2, align 8
  br label %184

179:                                              ; preds = %175
  %180 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %.211, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #7
  store %struct._IO_FILE* %180, %struct._IO_FILE** %2, align 8
  %181 = icmp eq %struct._IO_FILE* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  call void @errorMessage(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i8 noundef signext 0) #7
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 noundef signext 1) #7
  br label %204

183:                                              ; preds = %179
  br label %184

184:                                              ; preds = %183, %177
  %185 = icmp eq i8* %.38, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %184
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %187, %struct._IO_FILE** %3, align 8
  br label %193

188:                                              ; preds = %184
  %189 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %.38, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7
  store %struct._IO_FILE* %189, %struct._IO_FILE** %3, align 8
  %190 = icmp eq %struct._IO_FILE* %189, null
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  call void @errorMessage(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i8 noundef signext 0) #7
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 noundef signext 1) #7
  br label %204

192:                                              ; preds = %188
  br label %193

193:                                              ; preds = %192, %186
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @initOutputBuffer(%struct._IO_FILE* noundef %194) #7
  %195 = icmp eq i8* %.3, null
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %197, %struct._IO_FILE** %4, align 8
  br label %203

198:                                              ; preds = %193
  %199 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %.3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7
  store %struct._IO_FILE* %199, %struct._IO_FILE** %4, align 8
  %200 = icmp eq %struct._IO_FILE* %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  call void @errorMessage(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8 noundef signext 0) #7
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 noundef signext 1) #7
  br label %204

202:                                              ; preds = %198
  br label %203

203:                                              ; preds = %202, %196
  br label %204

204:                                              ; preds = %203, %201, %191, %182, %160, %144, %131, %111, %81, %54
  %.0 = phi i64 [ 2, %54 ], [ 2, %81 ], [ 2, %111 ], [ 1, %131 ], [ 2, %144 ], [ 2, %160 ], [ 0, %203 ], [ 5, %201 ], [ 4, %191 ], [ 3, %182 ]
  ret i64 %.0

UnifiedUnreachableBlock:                          ; preds = %28, %23, %18, %13, %8
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare dso_local void @initOutputBuffer(%struct._IO_FILE* noundef) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
