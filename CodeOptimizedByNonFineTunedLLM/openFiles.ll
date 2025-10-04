; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/openFiles.c'
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
define dso_local i64 @openFiles(i64 noundef %0, i8** noundef %1, %struct._IO_FILE** noundef %2, %struct._IO_FILE** noundef %3, %struct._IO_FILE** noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct._IO_FILE**, align 8
  %10 = alloca %struct._IO_FILE**, align 8
  %11 = alloca %struct._IO_FILE**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct._IO_FILE** %2, %struct._IO_FILE*** %9, align 8
  store %struct._IO_FILE** %3, %struct._IO_FILE*** %10, align 8
  store %struct._IO_FILE** %4, %struct._IO_FILE*** %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %20

19:                                               ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.openFiles, i64 0, i64 0)) #4
  unreachable

20:                                               ; preds = %18
  %21 = load i8**, i8*** %8, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i8**, i8*** %8, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %30

29:                                               ; preds = %23, %20
  call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.openFiles, i64 0, i64 0)) #4
  unreachable

30:                                               ; preds = %28
  %31 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8
  %33 = icmp eq %struct._IO_FILE* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %36

35:                                               ; preds = %30
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.openFiles, i64 0, i64 0)) #4
  unreachable

36:                                               ; preds = %34
  %37 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %37, align 8
  %39 = icmp eq %struct._IO_FILE* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %36
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.openFiles, i64 0, i64 0)) #4
  unreachable

42:                                               ; preds = %40
  %43 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %43, align 8
  %45 = icmp eq %struct._IO_FILE* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %48

47:                                               ; preds = %42
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.openFiles, i64 0, i64 0)) #4
  unreachable

48:                                               ; preds = %46
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp sgt i64 %49, 1
  br i1 %50, label %51, label %260

51:                                               ; preds = %48
  store i64 1, i64* %15, align 8
  br label %52

52:                                               ; preds = %258, %51
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %259

56:                                               ; preds = %52
  %57 = load i8**, i8*** %8, align 8
  %58 = load i64, i64* %15, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strlen(i8* noundef %60) #5
  %62 = icmp eq i64 %61, 2
  br i1 %62, label %63, label %241

63:                                               ; preds = %56
  %64 = load i8**, i8*** %8, align 8
  %65 = load i64, i64* %15, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 45
  br i1 %71, label %72, label %241

72:                                               ; preds = %63
  %73 = load i8**, i8*** %8, align 8
  %74 = load i64, i64* %15, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 105
  br i1 %80, label %81, label %113

81:                                               ; preds = %72
  %82 = load i64, i64* %15, align 8
  %83 = add nsw i64 %82, 1
  %84 = load i64, i64* %7, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i64, i64* %15, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %15, align 8
  %89 = load i8**, i8*** %8, align 8
  %90 = load i64, i64* %15, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %12, align 8
  br label %110

93:                                               ; preds = %81
  call void @errorMessage(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 noundef signext 1)
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %95 = load i8**, i8*** %8, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %94, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef %97)
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %100 = load i8**, i8*** %8, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %99, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef %102)
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %104, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %106, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %108, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i64 2, i64* %6, align 8
  br label %308

110:                                              ; preds = %86
  %111 = load i64, i64* %15, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %15, align 8
  br label %240

113:                                              ; preds = %72
  %114 = load i8**, i8*** %8, align 8
  %115 = load i64, i64* %15, align 8
  %116 = getelementptr inbounds i8*, i8** %114, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 111
  br i1 %121, label %122, label %154

122:                                              ; preds = %113
  %123 = load i64, i64* %15, align 8
  %124 = add nsw i64 %123, 1
  %125 = load i64, i64* %7, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load i64, i64* %15, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %15, align 8
  %130 = load i8**, i8*** %8, align 8
  %131 = load i64, i64* %15, align 8
  %132 = getelementptr inbounds i8*, i8** %130, i64 %131
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %13, align 8
  br label %151

134:                                              ; preds = %122
  call void @errorMessage(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 noundef signext 1)
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %136 = load i8**, i8*** %8, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %135, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef %138)
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %141 = load i8**, i8*** %8, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %140, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef %143)
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %145, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %147, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %149, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i64 2, i64* %6, align 8
  br label %308

151:                                              ; preds = %127
  %152 = load i64, i64* %15, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %15, align 8
  br label %239

154:                                              ; preds = %113
  %155 = load i8**, i8*** %8, align 8
  %156 = load i64, i64* %15, align 8
  %157 = getelementptr inbounds i8*, i8** %155, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 109
  br i1 %162, label %163, label %195

163:                                              ; preds = %154
  %164 = load i64, i64* %15, align 8
  %165 = add nsw i64 %164, 1
  %166 = load i64, i64* %7, align 8
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load i64, i64* %15, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %15, align 8
  %171 = load i8**, i8*** %8, align 8
  %172 = load i64, i64* %15, align 8
  %173 = getelementptr inbounds i8*, i8** %171, i64 %172
  %174 = load i8*, i8** %173, align 8
  store i8* %174, i8** %14, align 8
  br label %192

175:                                              ; preds = %163
  call void @errorMessage(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 noundef signext 1)
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %177 = load i8**, i8*** %8, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 0
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %176, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef %179)
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %182 = load i8**, i8*** %8, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %181, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef %184)
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %186, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %189 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %188, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %190, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i64 2, i64* %6, align 8
  br label %308

192:                                              ; preds = %168
  %193 = load i64, i64* %15, align 8
  %194 = add nsw i64 %193, 1
  store i64 %194, i64* %15, align 8
  br label %238

195:                                              ; preds = %154
  %196 = load i8**, i8*** %8, align 8
  %197 = load i64, i64* %15, align 8
  %198 = getelementptr inbounds i8*, i8** %196, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 104
  br i1 %203, label %204, label %221

204:                                              ; preds = %195
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %206 = load i8**, i8*** %8, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 0
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %205, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef %208)
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %211 = load i8**, i8*** %8, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %210, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef %213)
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %215, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %218 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %217, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %219, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i64 1, i64* %6, align 8
  br label %308

221:                                              ; preds = %195
  call void @errorMessage(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 noundef signext 1)
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %223 = load i8**, i8*** %8, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i64 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %222, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef %225)
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %228 = load i8**, i8*** %8, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 0
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %227, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef %230)
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %233 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %232, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %235 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %234, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %237 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %236, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i64 2, i64* %6, align 8
  br label %308

238:                                              ; preds = %192
  br label %239

239:                                              ; preds = %238, %151
  br label %240

240:                                              ; preds = %239, %110
  br label %258

241:                                              ; preds = %63, %56
  call void @errorMessage(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 noundef signext 1)
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %243 = load i8**, i8*** %8, align 8
  %244 = getelementptr inbounds i8*, i8** %243, i64 0
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %242, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef %245)
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %248 = load i8**, i8*** %8, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 0
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %247, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef %250)
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %253 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %252, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %255 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %254, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %257 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %256, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i64 2, i64* %6, align 8
  br label %308

258:                                              ; preds = %240
  br label %52, !llvm.loop !4

259:                                              ; preds = %52
  br label %260

260:                                              ; preds = %259, %48
  %261 = load i8*, i8** %12, align 8
  %262 = icmp eq i8* %261, null
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %265 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  store %struct._IO_FILE* %264, %struct._IO_FILE** %265, align 8
  br label %275

266:                                              ; preds = %260
  %267 = load i8*, i8** %12, align 8
  %268 = call noalias %struct._IO_FILE* @fopen(i8* noundef %267, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %269 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  store %struct._IO_FILE* %268, %struct._IO_FILE** %269, align 8
  %270 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** %270, align 8
  %272 = icmp eq %struct._IO_FILE* %271, null
  br i1 %272, label %273, label %274

273:                                              ; preds = %266
  call void @errorMessage(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 3, i64* %6, align 8
  br label %308

274:                                              ; preds = %266
  br label %275

275:                                              ; preds = %274, %263
  %276 = load i8*, i8** %13, align 8
  %277 = icmp eq i8* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %280 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  store %struct._IO_FILE* %279, %struct._IO_FILE** %280, align 8
  br label %290

281:                                              ; preds = %275
  %282 = load i8*, i8** %13, align 8
  %283 = call noalias %struct._IO_FILE* @fopen(i8* noundef %282, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %284 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  store %struct._IO_FILE* %283, %struct._IO_FILE** %284, align 8
  %285 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** %285, align 8
  %287 = icmp eq %struct._IO_FILE* %286, null
  br i1 %287, label %288, label %289

288:                                              ; preds = %281
  call void @errorMessage(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 4, i64* %6, align 8
  br label %308

289:                                              ; preds = %281
  br label %290

290:                                              ; preds = %289, %278
  %291 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** %291, align 8
  call void @initOutputBuffer(%struct._IO_FILE* noundef %292)
  %293 = load i8*, i8** %14, align 8
  %294 = icmp eq i8* %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %290
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %297 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8
  store %struct._IO_FILE* %296, %struct._IO_FILE** %297, align 8
  br label %307

298:                                              ; preds = %290
  %299 = load i8*, i8** %14, align 8
  %300 = call noalias %struct._IO_FILE* @fopen(i8* noundef %299, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %301 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8
  store %struct._IO_FILE* %300, %struct._IO_FILE** %301, align 8
  %302 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8
  %303 = load %struct._IO_FILE*, %struct._IO_FILE** %302, align 8
  %304 = icmp eq %struct._IO_FILE* %303, null
  br i1 %304, label %305, label %306

305:                                              ; preds = %298
  call void @errorMessage(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 5, i64* %6, align 8
  br label %308

306:                                              ; preds = %298
  br label %307

307:                                              ; preds = %306, %295
  store i64 0, i64* %6, align 8
  br label %308

308:                                              ; preds = %307, %305, %288, %273, %241, %221, %204, %175, %134, %93
  %309 = load i64, i64* %6, align 8
  ret i64 %309
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare dso_local void @initOutputBuffer(%struct._IO_FILE* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
