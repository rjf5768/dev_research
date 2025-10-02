; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/commands.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child = type { %struct.child*, %struct.file*, i8**, i8**, i32, i8*, i32, i8 }
%struct.file = type { %struct.file*, i8*, %struct.dep*, %struct.commands*, i8*, %struct.dep*, i64, %struct.file*, %struct.file*, %struct.variable_set_list*, %struct.file*, i16, i16 }
%struct.commands = type { i8*, i32, i8*, i32, i8**, i8*, i8 }
%struct.dep = type { %struct.dep*, i8*, %struct.file*, i32 }
%struct.variable_set_list = type { %struct.variable_set_list*, %struct.variable_set* }
%struct.variable_set = type { %struct.variable**, i32 }
%struct.variable = type { %struct.variable*, i8*, i8*, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"$(MAKE)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"${MAKE}\00", align 1
@children = external dso_local global %struct.child*, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"*** Deleting file `%s'\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"unlink: \00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"*** [%s] Deleting file `%s'\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"#  commands to execute\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c" (built-in):\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c" (from `%s', line %u):\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"\09%.*s\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c".SUFFIXES\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@default_file = external dso_local global %struct.file*, align 8
@.str.15 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"@D\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"@F\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"*D\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"*F\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"<D\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"<F\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%D\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%F\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"^D\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"^F\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"?D\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"?F\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @chop_commands(%struct.commands* noundef %0) #0 {
  %2 = alloca %struct.commands*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.commands* %0, %struct.commands** %2, align 8
  %12 = load %struct.commands*, %struct.commands** %2, align 8
  %13 = icmp ne %struct.commands* %12, null
  br i1 %13, label %14, label %188

14:                                               ; preds = %1
  %15 = load %struct.commands*, %struct.commands** %2, align 8
  %16 = getelementptr inbounds %struct.commands, %struct.commands* %15, i32 0, i32 4
  %17 = load i8**, i8*** %16, align 8
  %18 = icmp eq i8** %17, null
  br i1 %18, label %19, label %188

19:                                               ; preds = %14
  store i32 5, i32* %4, align 4
  %20 = call i8* (i64, ...) bitcast (i8* (...)* @xmalloc to i8* (i64, ...)*)(i64 noundef 40)
  %21 = bitcast i8* %20 to i8**
  store i8** %21, i8*** %6, align 8
  store i32 0, i32* %5, align 4
  %22 = load %struct.commands*, %struct.commands** %2, align 8
  %23 = getelementptr inbounds %struct.commands, %struct.commands* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %117, %19
  %26 = load i8*, i8** %3, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %118

30:                                               ; preds = %25
  %31 = load i8*, i8** %3, align 8
  store i8* %31, i8** %7, align 8
  br label %32

32:                                               ; preds = %77, %30
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* @strchr(i8* noundef %33, i32 noundef 10) #7
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %3, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 @strlen(i8* noundef %39) #7
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %7, align 8
  br label %82

42:                                               ; preds = %32
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = icmp ugt i8* %43, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 -1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 92
  br i1 %51, label %52, label %81

52:                                               ; preds = %46
  store i32 1, i32* %8, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 -2
  store i8* %54, i8** %9, align 8
  br label %55

55:                                               ; preds = %71, %52
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = icmp uge i8* %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i8*, i8** %9, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 92
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i1 [ false, %55 ], [ %63, %59 ]
  br i1 %65, label %66, label %74

66:                                               ; preds = %64
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 -1
  store i8* %73, i8** %9, align 8
  br label %55, !llvm.loop !4

74:                                               ; preds = %64
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  br label %32

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %46, %42
  br label %82

82:                                               ; preds = %81, %37
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i32, i32* %4, align 4
  %88 = add i32 %87, 2
  store i32 %88, i32* %4, align 4
  %89 = load i8**, i8*** %6, align 8
  %90 = bitcast i8** %89 to i8*
  %91 = load i32, i32* %4, align 4
  %92 = zext i32 %91 to i64
  %93 = mul i64 %92, 8
  %94 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @xrealloc to i8* (i8*, i64, ...)*)(i8* noundef %90, i64 noundef %93)
  %95 = bitcast i8* %94 to i8**
  store i8** %95, i8*** %6, align 8
  br label %96

96:                                               ; preds = %86, %82
  %97 = load i8*, i8** %3, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i8*, i8** %3, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %97, i64 noundef %102)
  %104 = load i8**, i8*** %6, align 8
  %105 = load i32, i32* %5, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %5, align 4
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds i8*, i8** %104, i64 %107
  store i8* %103, i8** %108, align 8
  %109 = load i8*, i8** %7, align 8
  store i8* %109, i8** %3, align 8
  %110 = load i8*, i8** %3, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %96
  %115 = load i8*, i8** %3, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %3, align 8
  br label %117

117:                                              ; preds = %114, %96
  br label %25, !llvm.loop !6

118:                                              ; preds = %25
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load i32, i32* %5, align 4
  store i32 %123, i32* %4, align 4
  %124 = load i8**, i8*** %6, align 8
  %125 = bitcast i8** %124 to i8*
  %126 = load i32, i32* %4, align 4
  %127 = zext i32 %126 to i64
  %128 = mul i64 %127, 8
  %129 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @xrealloc to i8* (i8*, i64, ...)*)(i8* noundef %125, i64 noundef %128)
  %130 = bitcast i8* %129 to i8**
  store i8** %130, i8*** %6, align 8
  br label %131

131:                                              ; preds = %122, %118
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.commands*, %struct.commands** %2, align 8
  %134 = getelementptr inbounds %struct.commands, %struct.commands* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 8
  %135 = load i8**, i8*** %6, align 8
  %136 = load %struct.commands*, %struct.commands** %2, align 8
  %137 = getelementptr inbounds %struct.commands, %struct.commands* %136, i32 0, i32 4
  store i8** %135, i8*** %137, align 8
  %138 = load %struct.commands*, %struct.commands** %2, align 8
  %139 = getelementptr inbounds %struct.commands, %struct.commands* %138, i32 0, i32 6
  store i8 0, i8* %139, align 8
  %140 = load i32, i32* %4, align 4
  %141 = call i8* (i32, ...) bitcast (i8* (...)* @xmalloc to i8* (i32, ...)*)(i32 noundef %140)
  %142 = load %struct.commands*, %struct.commands** %2, align 8
  %143 = getelementptr inbounds %struct.commands, %struct.commands* %142, i32 0, i32 5
  store i8* %141, i8** %143, align 8
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %184, %131
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %187

148:                                              ; preds = %144
  %149 = load i8**, i8*** %6, align 8
  %150 = load i32, i32* %5, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %3, align 8
  %154 = load i8*, i8** %3, align 8
  %155 = call i64 @strlen(i8* noundef %154) #7
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %10, align 4
  %157 = load i8*, i8** %3, align 8
  %158 = load i32, i32* %10, align 4
  %159 = call i8* (i8*, i32, i8*, i32, ...) bitcast (i8* (...)* @sindex to i8* (i8*, i32, i8*, i32, ...)*)(i8* noundef %157, i32 noundef %158, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 7)
  %160 = icmp ne i8* %159, null
  br i1 %160, label %166, label %161

161:                                              ; preds = %148
  %162 = load i8*, i8** %3, align 8
  %163 = load i32, i32* %10, align 4
  %164 = call i8* (i8*, i32, i8*, i32, ...) bitcast (i8* (...)* @sindex to i8* (i8*, i32, i8*, i32, ...)*)(i8* noundef %162, i32 noundef %163, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 7)
  %165 = icmp ne i8* %164, null
  br label %166

166:                                              ; preds = %161, %148
  %167 = phi i1 [ true, %148 ], [ %165, %161 ]
  %168 = zext i1 %167 to i32
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = trunc i32 %169 to i8
  %171 = load %struct.commands*, %struct.commands** %2, align 8
  %172 = getelementptr inbounds %struct.commands, %struct.commands* %171, i32 0, i32 5
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  store i8 %170, i8* %176, align 1
  %177 = load i32, i32* %11, align 4
  %178 = load %struct.commands*, %struct.commands** %2, align 8
  %179 = getelementptr inbounds %struct.commands, %struct.commands* %178, i32 0, i32 6
  %180 = load i8, i8* %179, align 8
  %181 = sext i8 %180 to i32
  %182 = or i32 %181, %177
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %179, align 8
  br label %184

184:                                              ; preds = %166
  %185 = load i32, i32* %5, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %144, !llvm.loop !7

187:                                              ; preds = %144
  br label %188

188:                                              ; preds = %187, %14, %1
  ret void
}

declare dso_local i8* @xmalloc(...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i8* @xrealloc(...) #1

declare dso_local i8* @savestring(...) #1

declare dso_local i8* @sindex(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @execute_file_commands(%struct.file* noundef %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = getelementptr inbounds %struct.file, %struct.file* %4, i32 0, i32 3
  %6 = load %struct.commands*, %struct.commands** %5, align 8
  %7 = getelementptr inbounds %struct.commands, %struct.commands* %6, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  br label %9

9:                                                ; preds = %38, %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %9
  %15 = call i16** @__ctype_b_loc() #8
  %16 = load i16*, i16** %15, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %16, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 8192
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %14
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 45
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 64
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %41

37:                                               ; preds = %31, %26, %14
  br label %38

38:                                               ; preds = %37
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %3, align 8
  br label %9, !llvm.loop !8

41:                                               ; preds = %36, %9
  %42 = load i8*, i8** %3, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.file*, %struct.file** %2, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 11
  store i16 0, i16* %48, align 8
  %49 = load %struct.file*, %struct.file** %2, align 8
  call void (%struct.file*, ...) bitcast (void (...)* @notice_finished_file to void (%struct.file*, ...)*)(%struct.file* noundef %49)
  br label %54

50:                                               ; preds = %41
  %51 = load %struct.file*, %struct.file** %2, align 8
  call void (%struct.file*, ...) bitcast (void (...)* @initialize_file_variables to void (%struct.file*, ...)*)(%struct.file* noundef %51)
  %52 = load %struct.file*, %struct.file** %2, align 8
  call void @set_file_variables(%struct.file* noundef %52)
  %53 = load %struct.file*, %struct.file** %2, align 8
  call void (%struct.file*, ...) bitcast (void (...)* @new_job to void (%struct.file*, ...)*)(%struct.file* noundef %53)
  br label %54

54:                                               ; preds = %50, %46
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

declare dso_local void @notice_finished_file(...) #1

declare dso_local void @initialize_file_variables(...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @set_file_variables(%struct.file* noundef %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dep*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.dep*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %33 = load %struct.file*, %struct.file** %2, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, ...) bitcast (i32 (...)* @ar_name to i32 (i8*, ...)*)(i8* noundef %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %1
  %39 = load %struct.file*, %struct.file** %2, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @strchr(i8* noundef %41, i32 noundef 40) #7
  store i8* %42, i8** %3, align 8
  %43 = load %struct.file*, %struct.file** %2, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = load %struct.file*, %struct.file** %2, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %46 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %45, i64 noundef %52)
  store i8* %53, i8** %4, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %3, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = call i64 @strlen(i8* noundef %57) #7
  %59 = sub i64 %58, 1
  %60 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %56, i64 noundef %59)
  store i8* %60, i8** %5, align 8
  br label %70

61:                                               ; preds = %1
  %62 = load %struct.file*, %struct.file** %2, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.file*, %struct.file** %2, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strlen(i8* noundef %67) #7
  %69 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %64, i64 noundef %68)
  store i8* %69, i8** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  br label %70

70:                                               ; preds = %61, %38
  %71 = load i8*, i8** %4, align 8
  %72 = load %struct.file*, %struct.file** %2, align 8
  %73 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1, i8* noundef %71, i32 noundef 6, i32 noundef 0, %struct.file* noundef %72)
  %74 = load i8*, i8** %5, align 8
  %75 = load %struct.file*, %struct.file** %2, align 8
  %76 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1, i8* noundef %74, i32 noundef 6, i32 noundef 0, %struct.file* noundef %75)
  %77 = load %struct.file*, %struct.file** %2, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 4
  %79 = load i8*, i8** %78, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %248

81:                                               ; preds = %70
  %82 = call %struct.file* (i8*, ...) bitcast (%struct.file* (...)* @enter_file to %struct.file* (i8*, ...)*)(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %83 = getelementptr inbounds %struct.file, %struct.file* %82, i32 0, i32 2
  %84 = load %struct.dep*, %struct.dep** %83, align 8
  store %struct.dep* %84, %struct.dep** %8, align 8
  br label %85

85:                                               ; preds = %237, %81
  %86 = load %struct.dep*, %struct.dep** %8, align 8
  %87 = icmp ne %struct.dep* %86, null
  br i1 %87, label %88, label %241

88:                                               ; preds = %85
  %89 = load %struct.file*, %struct.file** %2, align 8
  %90 = getelementptr inbounds %struct.file, %struct.file* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strlen(i8* noundef %91) #7
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %9, align 4
  %94 = load %struct.dep*, %struct.dep** %8, align 8
  %95 = getelementptr inbounds %struct.dep, %struct.dep* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %88
  %99 = load %struct.dep*, %struct.dep** %8, align 8
  %100 = getelementptr inbounds %struct.dep, %struct.dep* %99, i32 0, i32 2
  %101 = load %struct.file*, %struct.file** %100, align 8
  %102 = getelementptr inbounds %struct.file, %struct.file* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  br label %108

104:                                              ; preds = %88
  %105 = load %struct.dep*, %struct.dep** %8, align 8
  %106 = getelementptr inbounds %struct.dep, %struct.dep* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  br label %108

108:                                              ; preds = %104, %98
  %109 = phi i8* [ %103, %98 ], [ %107, %104 ]
  %110 = call i64 @strlen(i8* noundef %109) #7
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ugt i32 %112, %113
  br i1 %114, label %115, label %236

115:                                              ; preds = %108
  %116 = load %struct.dep*, %struct.dep** %8, align 8
  %117 = getelementptr inbounds %struct.dep, %struct.dep* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load %struct.dep*, %struct.dep** %8, align 8
  %122 = getelementptr inbounds %struct.dep, %struct.dep* %121, i32 0, i32 2
  %123 = load %struct.file*, %struct.file** %122, align 8
  %124 = getelementptr inbounds %struct.file, %struct.file* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  br label %130

126:                                              ; preds = %115
  %127 = load %struct.dep*, %struct.dep** %8, align 8
  %128 = getelementptr inbounds %struct.dep, %struct.dep* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  br label %130

130:                                              ; preds = %126, %120
  %131 = phi i8* [ %125, %120 ], [ %129, %126 ]
  %132 = load %struct.file*, %struct.file** %2, align 8
  %133 = getelementptr inbounds %struct.file, %struct.file* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i32, i32* %10, align 4
  %139 = zext i32 %138 to i64
  %140 = sub i64 0, %139
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  %142 = icmp eq i8* %131, %141
  br i1 %142, label %226, label %143

143:                                              ; preds = %130
  %144 = load %struct.dep*, %struct.dep** %8, align 8
  %145 = getelementptr inbounds %struct.dep, %struct.dep* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.dep*, %struct.dep** %8, align 8
  %150 = getelementptr inbounds %struct.dep, %struct.dep* %149, i32 0, i32 2
  %151 = load %struct.file*, %struct.file** %150, align 8
  %152 = getelementptr inbounds %struct.file, %struct.file* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  br label %158

154:                                              ; preds = %143
  %155 = load %struct.dep*, %struct.dep** %8, align 8
  %156 = getelementptr inbounds %struct.dep, %struct.dep* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  br label %158

158:                                              ; preds = %154, %148
  %159 = phi i8* [ %153, %148 ], [ %157, %154 ]
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = load %struct.file*, %struct.file** %2, align 8
  %163 = getelementptr inbounds %struct.file, %struct.file* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i32, i32* %10, align 4
  %169 = zext i32 %168 to i64
  %170 = sub i64 0, %169
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %161, %173
  br i1 %174, label %175, label %236

175:                                              ; preds = %158
  %176 = load %struct.dep*, %struct.dep** %8, align 8
  %177 = getelementptr inbounds %struct.dep, %struct.dep* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = icmp eq i8* %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load %struct.dep*, %struct.dep** %8, align 8
  %182 = getelementptr inbounds %struct.dep, %struct.dep* %181, i32 0, i32 2
  %183 = load %struct.file*, %struct.file** %182, align 8
  %184 = getelementptr inbounds %struct.file, %struct.file* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  br label %190

186:                                              ; preds = %175
  %187 = load %struct.dep*, %struct.dep** %8, align 8
  %188 = getelementptr inbounds %struct.dep, %struct.dep* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  br label %190

190:                                              ; preds = %186, %180
  %191 = phi i8* [ %185, %180 ], [ %189, %186 ]
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %226, label %195

195:                                              ; preds = %190
  %196 = load %struct.dep*, %struct.dep** %8, align 8
  %197 = getelementptr inbounds %struct.dep, %struct.dep* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = icmp eq i8* %198, null
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load %struct.dep*, %struct.dep** %8, align 8
  %202 = getelementptr inbounds %struct.dep, %struct.dep* %201, i32 0, i32 2
  %203 = load %struct.file*, %struct.file** %202, align 8
  %204 = getelementptr inbounds %struct.file, %struct.file* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  br label %210

206:                                              ; preds = %195
  %207 = load %struct.dep*, %struct.dep** %8, align 8
  %208 = getelementptr inbounds %struct.dep, %struct.dep* %207, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  br label %210

210:                                              ; preds = %206, %200
  %211 = phi i8* [ %205, %200 ], [ %209, %206 ]
  %212 = getelementptr inbounds i8, i8* %211, i64 1
  %213 = load %struct.file*, %struct.file** %2, align 8
  %214 = getelementptr inbounds %struct.file, %struct.file* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load i32, i32* %10, align 4
  %220 = zext i32 %219 to i64
  %221 = sub i64 0, %220
  %222 = getelementptr inbounds i8, i8* %218, i64 %221
  %223 = getelementptr inbounds i8, i8* %222, i64 1
  %224 = call i32 @strcmp(i8* noundef %212, i8* noundef %223) #7
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %236, label %226

226:                                              ; preds = %210, %190, %130
  %227 = load %struct.file*, %struct.file** %2, align 8
  %228 = getelementptr inbounds %struct.file, %struct.file* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* %10, align 4
  %232 = sub i32 %230, %231
  %233 = call i8* (i8*, i32, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i32, ...)*)(i8* noundef %229, i32 noundef %232)
  %234 = load %struct.file*, %struct.file** %2, align 8
  %235 = getelementptr inbounds %struct.file, %struct.file* %234, i32 0, i32 4
  store i8* %233, i8** %235, align 8
  br label %241

236:                                              ; preds = %210, %158, %108
  br label %237

237:                                              ; preds = %236
  %238 = load %struct.dep*, %struct.dep** %8, align 8
  %239 = getelementptr inbounds %struct.dep, %struct.dep* %238, i32 0, i32 0
  %240 = load %struct.dep*, %struct.dep** %239, align 8
  store %struct.dep* %240, %struct.dep** %8, align 8
  br label %85, !llvm.loop !9

241:                                              ; preds = %226, %85
  %242 = load %struct.dep*, %struct.dep** %8, align 8
  %243 = icmp eq %struct.dep* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load %struct.file*, %struct.file** %2, align 8
  %246 = getelementptr inbounds %struct.file, %struct.file* %245, i32 0, i32 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8** %246, align 8
  br label %247

247:                                              ; preds = %244, %241
  br label %248

248:                                              ; preds = %247, %70
  %249 = load %struct.file*, %struct.file** %2, align 8
  %250 = getelementptr inbounds %struct.file, %struct.file* %249, i32 0, i32 4
  %251 = load i8*, i8** %250, align 8
  store i8* %251, i8** %6, align 8
  %252 = load i8*, i8** %6, align 8
  %253 = load %struct.file*, %struct.file** %2, align 8
  %254 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef 1, i8* noundef %252, i32 noundef 6, i32 noundef 0, %struct.file* noundef %253)
  %255 = load %struct.file*, %struct.file** %2, align 8
  %256 = getelementptr inbounds %struct.file, %struct.file* %255, i32 0, i32 2
  %257 = load %struct.dep*, %struct.dep** %256, align 8
  %258 = icmp ne %struct.dep* %257, null
  br i1 %258, label %259, label %282

259:                                              ; preds = %248
  %260 = load %struct.file*, %struct.file** %2, align 8
  %261 = getelementptr inbounds %struct.file, %struct.file* %260, i32 0, i32 2
  %262 = load %struct.dep*, %struct.dep** %261, align 8
  %263 = getelementptr inbounds %struct.dep, %struct.dep* %262, i32 0, i32 1
  %264 = load i8*, i8** %263, align 8
  %265 = icmp eq i8* %264, null
  br i1 %265, label %266, label %274

266:                                              ; preds = %259
  %267 = load %struct.file*, %struct.file** %2, align 8
  %268 = getelementptr inbounds %struct.file, %struct.file* %267, i32 0, i32 2
  %269 = load %struct.dep*, %struct.dep** %268, align 8
  %270 = getelementptr inbounds %struct.dep, %struct.dep* %269, i32 0, i32 2
  %271 = load %struct.file*, %struct.file** %270, align 8
  %272 = getelementptr inbounds %struct.file, %struct.file* %271, i32 0, i32 1
  %273 = load i8*, i8** %272, align 8
  br label %280

274:                                              ; preds = %259
  %275 = load %struct.file*, %struct.file** %2, align 8
  %276 = getelementptr inbounds %struct.file, %struct.file* %275, i32 0, i32 2
  %277 = load %struct.dep*, %struct.dep** %276, align 8
  %278 = getelementptr inbounds %struct.dep, %struct.dep* %277, i32 0, i32 1
  %279 = load i8*, i8** %278, align 8
  br label %280

280:                                              ; preds = %274, %266
  %281 = phi i8* [ %273, %266 ], [ %279, %274 ]
  br label %283

282:                                              ; preds = %248
  br label %283

283:                                              ; preds = %282, %280
  %284 = phi i8* [ %281, %280 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %282 ]
  store i8* %284, i8** %7, align 8
  %285 = load %struct.file*, %struct.file** %2, align 8
  %286 = getelementptr inbounds %struct.file, %struct.file* %285, i32 0, i32 3
  %287 = load %struct.commands*, %struct.commands** %286, align 8
  %288 = load %struct.file*, %struct.file** @default_file, align 8
  %289 = getelementptr inbounds %struct.file, %struct.file* %288, i32 0, i32 3
  %290 = load %struct.commands*, %struct.commands** %289, align 8
  %291 = icmp eq %struct.commands* %287, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %283
  %293 = load i8*, i8** %4, align 8
  store i8* %293, i8** %7, align 8
  br label %294

294:                                              ; preds = %292, %283
  %295 = load i8*, i8** %7, align 8
  %296 = load %struct.file*, %struct.file** %2, align 8
  %297 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 noundef 1, i8* noundef %295, i32 noundef 6, i32 noundef 0, %struct.file* noundef %296)
  %298 = load i8*, i8** %4, align 8
  %299 = call i8* @strrchr(i8* noundef %298, i32 noundef 47) #7
  store i8* %299, i8** %3, align 8
  %300 = load i8*, i8** %3, align 8
  %301 = icmp eq i8* %300, null
  br i1 %301, label %302, label %303

302:                                              ; preds = %294
  br label %319

303:                                              ; preds = %294
  %304 = load i8*, i8** %3, align 8
  %305 = load i8*, i8** %4, align 8
  %306 = icmp eq i8* %304, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %303
  br label %317

308:                                              ; preds = %303
  %309 = load i8*, i8** %4, align 8
  %310 = load i8*, i8** %3, align 8
  %311 = load i8*, i8** %4, align 8
  %312 = ptrtoint i8* %310 to i64
  %313 = ptrtoint i8* %311 to i64
  %314 = sub i64 %312, %313
  %315 = add nsw i64 %314, 1
  %316 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %309, i64 noundef %315)
  br label %317

317:                                              ; preds = %308, %307
  %318 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %307 ], [ %316, %308 ]
  br label %319

319:                                              ; preds = %317, %302
  %320 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %302 ], [ %318, %317 ]
  %321 = load %struct.file*, %struct.file** %2, align 8
  %322 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2, i8* noundef %320, i32 noundef 6, i32 noundef 0, %struct.file* noundef %321)
  %323 = load i8*, i8** %3, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %325, label %328

325:                                              ; preds = %319
  %326 = load i8*, i8** %3, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 1
  br label %330

328:                                              ; preds = %319
  %329 = load i8*, i8** %4, align 8
  br label %330

330:                                              ; preds = %328, %325
  %331 = phi i8* [ %327, %325 ], [ %329, %328 ]
  %332 = load %struct.file*, %struct.file** %2, align 8
  %333 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 noundef 2, i8* noundef %331, i32 noundef 6, i32 noundef 0, %struct.file* noundef %332)
  %334 = load i8*, i8** %6, align 8
  %335 = call i8* @strrchr(i8* noundef %334, i32 noundef 47) #7
  store i8* %335, i8** %3, align 8
  %336 = load i8*, i8** %3, align 8
  %337 = icmp eq i8* %336, null
  br i1 %337, label %338, label %339

338:                                              ; preds = %330
  br label %355

339:                                              ; preds = %330
  %340 = load i8*, i8** %3, align 8
  %341 = load i8*, i8** %6, align 8
  %342 = icmp eq i8* %340, %341
  br i1 %342, label %343, label %344

343:                                              ; preds = %339
  br label %353

344:                                              ; preds = %339
  %345 = load i8*, i8** %6, align 8
  %346 = load i8*, i8** %3, align 8
  %347 = load i8*, i8** %6, align 8
  %348 = ptrtoint i8* %346 to i64
  %349 = ptrtoint i8* %347 to i64
  %350 = sub i64 %348, %349
  %351 = add nsw i64 %350, 1
  %352 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %345, i64 noundef %351)
  br label %353

353:                                              ; preds = %344, %343
  %354 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %343 ], [ %352, %344 ]
  br label %355

355:                                              ; preds = %353, %338
  %356 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %338 ], [ %354, %353 ]
  %357 = load %struct.file*, %struct.file** %2, align 8
  %358 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 noundef 2, i8* noundef %356, i32 noundef 6, i32 noundef 0, %struct.file* noundef %357)
  %359 = load i8*, i8** %3, align 8
  %360 = icmp ne i8* %359, null
  br i1 %360, label %361, label %364

361:                                              ; preds = %355
  %362 = load i8*, i8** %3, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 1
  br label %366

364:                                              ; preds = %355
  %365 = load i8*, i8** %6, align 8
  br label %366

366:                                              ; preds = %364, %361
  %367 = phi i8* [ %363, %361 ], [ %365, %364 ]
  %368 = load %struct.file*, %struct.file** %2, align 8
  %369 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 noundef 2, i8* noundef %367, i32 noundef 6, i32 noundef 0, %struct.file* noundef %368)
  %370 = load i8*, i8** %7, align 8
  %371 = call i8* @strrchr(i8* noundef %370, i32 noundef 47) #7
  store i8* %371, i8** %3, align 8
  %372 = load i8*, i8** %3, align 8
  %373 = icmp eq i8* %372, null
  br i1 %373, label %374, label %375

374:                                              ; preds = %366
  br label %391

375:                                              ; preds = %366
  %376 = load i8*, i8** %3, align 8
  %377 = load i8*, i8** %7, align 8
  %378 = icmp eq i8* %376, %377
  br i1 %378, label %379, label %380

379:                                              ; preds = %375
  br label %389

380:                                              ; preds = %375
  %381 = load i8*, i8** %7, align 8
  %382 = load i8*, i8** %3, align 8
  %383 = load i8*, i8** %7, align 8
  %384 = ptrtoint i8* %382 to i64
  %385 = ptrtoint i8* %383 to i64
  %386 = sub i64 %384, %385
  %387 = add nsw i64 %386, 1
  %388 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %381, i64 noundef %387)
  br label %389

389:                                              ; preds = %380, %379
  %390 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %379 ], [ %388, %380 ]
  br label %391

391:                                              ; preds = %389, %374
  %392 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %374 ], [ %390, %389 ]
  %393 = load %struct.file*, %struct.file** %2, align 8
  %394 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 noundef 2, i8* noundef %392, i32 noundef 6, i32 noundef 0, %struct.file* noundef %393)
  %395 = load i8*, i8** %3, align 8
  %396 = icmp ne i8* %395, null
  br i1 %396, label %397, label %400

397:                                              ; preds = %391
  %398 = load i8*, i8** %3, align 8
  %399 = getelementptr inbounds i8, i8* %398, i64 1
  br label %402

400:                                              ; preds = %391
  %401 = load i8*, i8** %7, align 8
  br label %402

402:                                              ; preds = %400, %397
  %403 = phi i8* [ %399, %397 ], [ %401, %400 ]
  %404 = load %struct.file*, %struct.file** %2, align 8
  %405 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 noundef 2, i8* noundef %403, i32 noundef 6, i32 noundef 0, %struct.file* noundef %404)
  %406 = load i8*, i8** %5, align 8
  %407 = call i8* @strrchr(i8* noundef %406, i32 noundef 47) #7
  store i8* %407, i8** %3, align 8
  %408 = load i8*, i8** %3, align 8
  %409 = icmp eq i8* %408, null
  br i1 %409, label %410, label %411

410:                                              ; preds = %402
  br label %427

411:                                              ; preds = %402
  %412 = load i8*, i8** %3, align 8
  %413 = load i8*, i8** %5, align 8
  %414 = icmp eq i8* %412, %413
  br i1 %414, label %415, label %416

415:                                              ; preds = %411
  br label %425

416:                                              ; preds = %411
  %417 = load i8*, i8** %5, align 8
  %418 = load i8*, i8** %3, align 8
  %419 = load i8*, i8** %5, align 8
  %420 = ptrtoint i8* %418 to i64
  %421 = ptrtoint i8* %419 to i64
  %422 = sub i64 %420, %421
  %423 = add nsw i64 %422, 1
  %424 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %417, i64 noundef %423)
  br label %425

425:                                              ; preds = %416, %415
  %426 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %415 ], [ %424, %416 ]
  br label %427

427:                                              ; preds = %425, %410
  %428 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %410 ], [ %426, %425 ]
  %429 = load %struct.file*, %struct.file** %2, align 8
  %430 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i32 noundef 2, i8* noundef %428, i32 noundef 6, i32 noundef 0, %struct.file* noundef %429)
  %431 = load i8*, i8** %3, align 8
  %432 = icmp ne i8* %431, null
  br i1 %432, label %433, label %436

433:                                              ; preds = %427
  %434 = load i8*, i8** %3, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 1
  br label %438

436:                                              ; preds = %427
  %437 = load i8*, i8** %5, align 8
  br label %438

438:                                              ; preds = %436, %433
  %439 = phi i8* [ %435, %433 ], [ %437, %436 ]
  %440 = load %struct.file*, %struct.file** %2, align 8
  %441 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32 noundef 2, i8* noundef %439, i32 noundef 6, i32 noundef 0, %struct.file* noundef %440)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %442 = load %struct.file*, %struct.file** %2, align 8
  %443 = getelementptr inbounds %struct.file, %struct.file* %442, i32 0, i32 2
  %444 = load %struct.dep*, %struct.dep** %443, align 8
  store %struct.dep* %444, %struct.dep** %25, align 8
  br label %445

445:                                              ; preds = %480, %438
  %446 = load %struct.dep*, %struct.dep** %25, align 8
  %447 = icmp ne %struct.dep* %446, null
  br i1 %447, label %448, label %484

448:                                              ; preds = %445
  %449 = load %struct.dep*, %struct.dep** %25, align 8
  %450 = getelementptr inbounds %struct.dep, %struct.dep* %449, i32 0, i32 1
  %451 = load i8*, i8** %450, align 8
  %452 = icmp eq i8* %451, null
  br i1 %452, label %453, label %459

453:                                              ; preds = %448
  %454 = load %struct.dep*, %struct.dep** %25, align 8
  %455 = getelementptr inbounds %struct.dep, %struct.dep* %454, i32 0, i32 2
  %456 = load %struct.file*, %struct.file** %455, align 8
  %457 = getelementptr inbounds %struct.file, %struct.file* %456, i32 0, i32 1
  %458 = load i8*, i8** %457, align 8
  br label %463

459:                                              ; preds = %448
  %460 = load %struct.dep*, %struct.dep** %25, align 8
  %461 = getelementptr inbounds %struct.dep, %struct.dep* %460, i32 0, i32 1
  %462 = load i8*, i8** %461, align 8
  br label %463

463:                                              ; preds = %459, %453
  %464 = phi i8* [ %458, %453 ], [ %462, %459 ]
  %465 = call i64 @strlen(i8* noundef %464) #7
  %466 = add i64 %465, 1
  %467 = trunc i64 %466 to i32
  store i32 %467, i32* %27, align 4
  %468 = load i32, i32* %27, align 4
  %469 = load i32, i32* %11, align 4
  %470 = add i32 %469, %468
  store i32 %470, i32* %11, align 4
  %471 = load %struct.dep*, %struct.dep** %25, align 8
  %472 = getelementptr inbounds %struct.dep, %struct.dep* %471, i32 0, i32 3
  %473 = load i32, i32* %472, align 8
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %479

475:                                              ; preds = %463
  %476 = load i32, i32* %27, align 4
  %477 = load i32, i32* %12, align 4
  %478 = add i32 %477, %476
  store i32 %478, i32* %12, align 4
  br label %479

479:                                              ; preds = %475, %463
  br label %480

480:                                              ; preds = %479
  %481 = load %struct.dep*, %struct.dep** %25, align 8
  %482 = getelementptr inbounds %struct.dep, %struct.dep* %481, i32 0, i32 0
  %483 = load %struct.dep*, %struct.dep** %482, align 8
  store %struct.dep* %483, %struct.dep** %25, align 8
  br label %445, !llvm.loop !10

484:                                              ; preds = %445
  %485 = load i32, i32* %11, align 4
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %484
  br label %490

488:                                              ; preds = %484
  %489 = load i32, i32* %11, align 4
  br label %490

490:                                              ; preds = %488, %487
  %491 = phi i32 [ 1, %487 ], [ %489, %488 ]
  store i32 %491, i32* %26, align 4
  %492 = load i32, i32* %26, align 4
  %493 = call i8* (i32, ...) bitcast (i8* (...)* @xmalloc to i8* (i32, ...)*)(i32 noundef %492)
  store i8* %493, i8** %13, align 8
  store i8* %493, i8** %16, align 8
  %494 = load i32, i32* %26, align 4
  %495 = call i8* (i32, ...) bitcast (i8* (...)* @xmalloc to i8* (i32, ...)*)(i32 noundef %494)
  store i8* %495, i8** %14, align 8
  store i8* %495, i8** %17, align 8
  %496 = load i32, i32* %26, align 4
  %497 = call i8* (i32, ...) bitcast (i8* (...)* @xmalloc to i8* (i32, ...)*)(i32 noundef %496)
  store i8* %497, i8** %15, align 8
  store i8* %497, i8** %18, align 8
  %498 = load i32, i32* %12, align 4
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %501

500:                                              ; preds = %490
  br label %503

501:                                              ; preds = %490
  %502 = load i32, i32* %12, align 4
  br label %503

503:                                              ; preds = %501, %500
  %504 = phi i32 [ 1, %500 ], [ %502, %501 ]
  store i32 %504, i32* %26, align 4
  %505 = load i32, i32* %26, align 4
  %506 = call i8* (i32, ...) bitcast (i8* (...)* @xmalloc to i8* (i32, ...)*)(i32 noundef %505)
  store i8* %506, i8** %19, align 8
  store i8* %506, i8** %22, align 8
  %507 = load i32, i32* %26, align 4
  %508 = call i8* (i32, ...) bitcast (i8* (...)* @xmalloc to i8* (i32, ...)*)(i32 noundef %507)
  store i8* %508, i8** %20, align 8
  store i8* %508, i8** %23, align 8
  %509 = load i32, i32* %26, align 4
  %510 = call i8* (i32, ...) bitcast (i8* (...)* @xmalloc to i8* (i32, ...)*)(i32 noundef %509)
  store i8* %510, i8** %21, align 8
  store i8* %510, i8** %24, align 8
  %511 = load %struct.file*, %struct.file** %2, align 8
  %512 = getelementptr inbounds %struct.file, %struct.file* %511, i32 0, i32 2
  %513 = load %struct.dep*, %struct.dep** %512, align 8
  store %struct.dep* %513, %struct.dep** %25, align 8
  br label %514

514:                                              ; preds = %642, %503
  %515 = load %struct.dep*, %struct.dep** %25, align 8
  %516 = icmp ne %struct.dep* %515, null
  br i1 %516, label %517, label %646

517:                                              ; preds = %514
  %518 = load %struct.dep*, %struct.dep** %25, align 8
  %519 = getelementptr inbounds %struct.dep, %struct.dep* %518, i32 0, i32 1
  %520 = load i8*, i8** %519, align 8
  %521 = icmp eq i8* %520, null
  br i1 %521, label %522, label %528

522:                                              ; preds = %517
  %523 = load %struct.dep*, %struct.dep** %25, align 8
  %524 = getelementptr inbounds %struct.dep, %struct.dep* %523, i32 0, i32 2
  %525 = load %struct.file*, %struct.file** %524, align 8
  %526 = getelementptr inbounds %struct.file, %struct.file* %525, i32 0, i32 1
  %527 = load i8*, i8** %526, align 8
  br label %532

528:                                              ; preds = %517
  %529 = load %struct.dep*, %struct.dep** %25, align 8
  %530 = getelementptr inbounds %struct.dep, %struct.dep* %529, i32 0, i32 1
  %531 = load i8*, i8** %530, align 8
  br label %532

532:                                              ; preds = %528, %522
  %533 = phi i8* [ %527, %522 ], [ %531, %528 ]
  store i8* %533, i8** %28, align 8
  %534 = load i8*, i8** %28, align 8
  %535 = call i64 @strlen(i8* noundef %534) #7
  %536 = trunc i64 %535 to i32
  store i32 %536, i32* %26, align 4
  %537 = load i8*, i8** %16, align 8
  %538 = load i8*, i8** %28, align 8
  %539 = load i32, i32* %26, align 4
  %540 = zext i32 %539 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %537, i8* align 1 %538, i64 %540, i1 false)
  %541 = load i32, i32* %26, align 4
  %542 = load i8*, i8** %16, align 8
  %543 = zext i32 %541 to i64
  %544 = getelementptr inbounds i8, i8* %542, i64 %543
  store i8* %544, i8** %16, align 8
  %545 = load i8*, i8** %16, align 8
  %546 = getelementptr inbounds i8, i8* %545, i32 1
  store i8* %546, i8** %16, align 8
  store i8 32, i8* %545, align 1
  %547 = load i8*, i8** %28, align 8
  %548 = call i8* @strrchr(i8* noundef %547, i32 noundef 47) #7
  store i8* %548, i8** %3, align 8
  %549 = load i8*, i8** %3, align 8
  %550 = icmp eq i8* %549, null
  br i1 %550, label %551, label %554

551:                                              ; preds = %532
  %552 = load i8*, i8** %28, align 8
  store i8* %552, i8** %30, align 8
  %553 = load i32, i32* %26, align 4
  store i32 %553, i32* %32, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8** %29, align 8
  store i32 2, i32* %31, align 4
  br label %585

554:                                              ; preds = %532
  %555 = load i8*, i8** %3, align 8
  %556 = load i8*, i8** %28, align 8
  %557 = icmp eq i8* %555, %556
  br i1 %557, label %558, label %564

558:                                              ; preds = %554
  %559 = load i8*, i8** %28, align 8
  store i8* %559, i8** %29, align 8
  store i32 1, i32* %31, align 4
  %560 = load i8*, i8** %28, align 8
  %561 = getelementptr inbounds i8, i8* %560, i64 1
  store i8* %561, i8** %30, align 8
  %562 = load i32, i32* %26, align 4
  %563 = sub i32 %562, 1
  store i32 %563, i32* %32, align 4
  br label %584

564:                                              ; preds = %554
  %565 = load i8*, i8** %3, align 8
  %566 = getelementptr inbounds i8, i8* %565, i64 1
  store i8* %566, i8** %30, align 8
  %567 = load i32, i32* %26, align 4
  %568 = zext i32 %567 to i64
  %569 = load i8*, i8** %3, align 8
  %570 = getelementptr inbounds i8, i8* %569, i64 1
  %571 = load i8*, i8** %28, align 8
  %572 = ptrtoint i8* %570 to i64
  %573 = ptrtoint i8* %571 to i64
  %574 = sub i64 %572, %573
  %575 = sub nsw i64 %568, %574
  %576 = trunc i64 %575 to i32
  store i32 %576, i32* %32, align 4
  %577 = load i8*, i8** %28, align 8
  store i8* %577, i8** %29, align 8
  %578 = load i8*, i8** %3, align 8
  %579 = load i8*, i8** %28, align 8
  %580 = ptrtoint i8* %578 to i64
  %581 = ptrtoint i8* %579 to i64
  %582 = sub i64 %580, %581
  %583 = trunc i64 %582 to i32
  store i32 %583, i32* %31, align 4
  br label %584

584:                                              ; preds = %564, %558
  br label %585

585:                                              ; preds = %584, %551
  %586 = load i8*, i8** %17, align 8
  %587 = load i8*, i8** %29, align 8
  %588 = load i32, i32* %31, align 4
  %589 = zext i32 %588 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %586, i8* align 1 %587, i64 %589, i1 false)
  %590 = load i32, i32* %31, align 4
  %591 = load i8*, i8** %17, align 8
  %592 = zext i32 %590 to i64
  %593 = getelementptr inbounds i8, i8* %591, i64 %592
  store i8* %593, i8** %17, align 8
  %594 = load i8*, i8** %17, align 8
  %595 = getelementptr inbounds i8, i8* %594, i32 1
  store i8* %595, i8** %17, align 8
  store i8 32, i8* %594, align 1
  %596 = load i8*, i8** %18, align 8
  %597 = load i8*, i8** %30, align 8
  %598 = load i32, i32* %32, align 4
  %599 = zext i32 %598 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %596, i8* align 1 %597, i64 %599, i1 false)
  %600 = load i32, i32* %32, align 4
  %601 = load i8*, i8** %18, align 8
  %602 = zext i32 %600 to i64
  %603 = getelementptr inbounds i8, i8* %601, i64 %602
  store i8* %603, i8** %18, align 8
  %604 = load i8*, i8** %18, align 8
  %605 = getelementptr inbounds i8, i8* %604, i32 1
  store i8* %605, i8** %18, align 8
  store i8 32, i8* %604, align 1
  %606 = load %struct.dep*, %struct.dep** %25, align 8
  %607 = getelementptr inbounds %struct.dep, %struct.dep* %606, i32 0, i32 3
  %608 = load i32, i32* %607, align 8
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %641

610:                                              ; preds = %585
  %611 = load i8*, i8** %22, align 8
  %612 = load i8*, i8** %28, align 8
  %613 = load i32, i32* %26, align 4
  %614 = zext i32 %613 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %611, i8* align 1 %612, i64 %614, i1 false)
  %615 = load i32, i32* %26, align 4
  %616 = load i8*, i8** %22, align 8
  %617 = zext i32 %615 to i64
  %618 = getelementptr inbounds i8, i8* %616, i64 %617
  store i8* %618, i8** %22, align 8
  %619 = load i8*, i8** %22, align 8
  %620 = getelementptr inbounds i8, i8* %619, i32 1
  store i8* %620, i8** %22, align 8
  store i8 32, i8* %619, align 1
  %621 = load i8*, i8** %23, align 8
  %622 = load i8*, i8** %29, align 8
  %623 = load i32, i32* %31, align 4
  %624 = zext i32 %623 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %621, i8* align 1 %622, i64 %624, i1 false)
  %625 = load i32, i32* %31, align 4
  %626 = load i8*, i8** %23, align 8
  %627 = zext i32 %625 to i64
  %628 = getelementptr inbounds i8, i8* %626, i64 %627
  store i8* %628, i8** %23, align 8
  %629 = load i8*, i8** %23, align 8
  %630 = getelementptr inbounds i8, i8* %629, i32 1
  store i8* %630, i8** %23, align 8
  store i8 32, i8* %629, align 1
  %631 = load i8*, i8** %24, align 8
  %632 = load i8*, i8** %30, align 8
  %633 = load i32, i32* %32, align 4
  %634 = zext i32 %633 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %631, i8* align 1 %632, i64 %634, i1 false)
  %635 = load i32, i32* %32, align 4
  %636 = load i8*, i8** %24, align 8
  %637 = zext i32 %635 to i64
  %638 = getelementptr inbounds i8, i8* %636, i64 %637
  store i8* %638, i8** %24, align 8
  %639 = load i8*, i8** %24, align 8
  %640 = getelementptr inbounds i8, i8* %639, i32 1
  store i8* %640, i8** %24, align 8
  store i8 32, i8* %639, align 1
  br label %641

641:                                              ; preds = %610, %585
  br label %642

642:                                              ; preds = %641
  %643 = load %struct.dep*, %struct.dep** %25, align 8
  %644 = getelementptr inbounds %struct.dep, %struct.dep* %643, i32 0, i32 0
  %645 = load %struct.dep*, %struct.dep** %644, align 8
  store %struct.dep* %645, %struct.dep** %25, align 8
  br label %514, !llvm.loop !11

646:                                              ; preds = %514
  %647 = load i8*, i8** %16, align 8
  %648 = load i8*, i8** %16, align 8
  %649 = load i8*, i8** %13, align 8
  %650 = icmp ugt i8* %648, %649
  %651 = zext i1 %650 to i64
  %652 = select i1 %650, i32 -1, i32 0
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i8, i8* %647, i64 %653
  store i8 0, i8* %654, align 1
  %655 = load i8*, i8** %13, align 8
  %656 = load %struct.file*, %struct.file** %2, align 8
  %657 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 noundef 1, i8* noundef %655, i32 noundef 6, i32 noundef 0, %struct.file* noundef %656)
  %658 = load i8*, i8** %17, align 8
  %659 = load i8*, i8** %17, align 8
  %660 = load i8*, i8** %14, align 8
  %661 = icmp ugt i8* %659, %660
  %662 = zext i1 %661 to i64
  %663 = select i1 %661, i32 -1, i32 0
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds i8, i8* %658, i64 %664
  store i8 0, i8* %665, align 1
  %666 = load i8*, i8** %14, align 8
  %667 = load %struct.file*, %struct.file** %2, align 8
  %668 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i32 noundef 2, i8* noundef %666, i32 noundef 6, i32 noundef 0, %struct.file* noundef %667)
  %669 = load i8*, i8** %18, align 8
  %670 = load i8*, i8** %18, align 8
  %671 = load i8*, i8** %15, align 8
  %672 = icmp ugt i8* %670, %671
  %673 = zext i1 %672 to i64
  %674 = select i1 %672, i32 -1, i32 0
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds i8, i8* %669, i64 %675
  store i8 0, i8* %676, align 1
  %677 = load i8*, i8** %15, align 8
  %678 = load %struct.file*, %struct.file** %2, align 8
  %679 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 noundef 2, i8* noundef %677, i32 noundef 6, i32 noundef 0, %struct.file* noundef %678)
  %680 = load i8*, i8** %22, align 8
  %681 = load i8*, i8** %22, align 8
  %682 = load i8*, i8** %19, align 8
  %683 = icmp ugt i8* %681, %682
  %684 = zext i1 %683 to i64
  %685 = select i1 %683, i32 -1, i32 0
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds i8, i8* %680, i64 %686
  store i8 0, i8* %687, align 1
  %688 = load i8*, i8** %19, align 8
  %689 = load %struct.file*, %struct.file** %2, align 8
  %690 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1, i8* noundef %688, i32 noundef 6, i32 noundef 0, %struct.file* noundef %689)
  %691 = load i8*, i8** %23, align 8
  %692 = load i8*, i8** %23, align 8
  %693 = load i8*, i8** %20, align 8
  %694 = icmp ugt i8* %692, %693
  %695 = zext i1 %694 to i64
  %696 = select i1 %694, i32 -1, i32 0
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds i8, i8* %691, i64 %697
  store i8 0, i8* %698, align 1
  %699 = load i8*, i8** %20, align 8
  %700 = load %struct.file*, %struct.file** %2, align 8
  %701 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i32 noundef 2, i8* noundef %699, i32 noundef 6, i32 noundef 0, %struct.file* noundef %700)
  %702 = load i8*, i8** %24, align 8
  %703 = load i8*, i8** %24, align 8
  %704 = load i8*, i8** %21, align 8
  %705 = icmp ugt i8* %703, %704
  %706 = zext i1 %705 to i64
  %707 = select i1 %705, i32 -1, i32 0
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds i8, i8* %702, i64 %708
  store i8 0, i8* %709, align 1
  %710 = load i8*, i8** %21, align 8
  %711 = load %struct.file*, %struct.file** %2, align 8
  %712 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i32 noundef 2, i8* noundef %710, i32 noundef 6, i32 noundef 0, %struct.file* noundef %711)
  ret void
}

declare dso_local void @new_job(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fatal_error_signal(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.child*, align 8
  %4 = alloca %struct.child*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call void (i32)* @signal(i32 noundef %5, void (i32)* noundef null) #9
  %7 = call i32 @sigsetmask(i32 noundef 0) #9
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 15
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  call void (i32, ...) bitcast (void (...)* @push_signals_blocked_p to void (i32, ...)*)(i32 noundef 1)
  %11 = load %struct.child*, %struct.child** @children, align 8
  store %struct.child* %11, %struct.child** %3, align 8
  br label %12

12:                                               ; preds = %28, %10
  %13 = load %struct.child*, %struct.child** %3, align 8
  %14 = icmp ne %struct.child* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load %struct.child*, %struct.child** %3, align 8
  %17 = getelementptr inbounds %struct.child, %struct.child* %16, i32 0, i32 7
  %18 = load i8, i8* %17, align 4
  %19 = and i8 %18, 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load %struct.child*, %struct.child** %3, align 8
  %24 = getelementptr inbounds %struct.child, %struct.child* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @kill(i32 noundef %25, i32 noundef 15) #9
  br label %27

27:                                               ; preds = %22, %15
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.child*, %struct.child** %3, align 8
  %30 = getelementptr inbounds %struct.child, %struct.child* %29, i32 0, i32 0
  %31 = load %struct.child*, %struct.child** %30, align 8
  store %struct.child* %31, %struct.child** %3, align 8
  br label %12, !llvm.loop !12

32:                                               ; preds = %12
  call void (...) @pop_signals_blocked_p()
  br label %33

33:                                               ; preds = %32, %1
  %34 = load i32, i32* %2, align 4
  %35 = sub nsw i32 %34, 1
  %36 = shl i32 1, %35
  %37 = and i32 16391, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %33
  call void (i32, ...) bitcast (void (...)* @push_signals_blocked_p to void (i32, ...)*)(i32 noundef 1)
  %40 = load %struct.child*, %struct.child** @children, align 8
  store %struct.child* %40, %struct.child** %4, align 8
  br label %41

41:                                               ; preds = %58, %39
  %42 = load %struct.child*, %struct.child** %4, align 8
  %43 = icmp ne %struct.child* %42, null
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load %struct.child*, %struct.child** %4, align 8
  %46 = getelementptr inbounds %struct.child, %struct.child* %45, i32 0, i32 7
  %47 = load i8, i8* %46, align 4
  %48 = and i8 %47, 1
  %49 = zext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.child*, %struct.child** %4, align 8
  %53 = getelementptr inbounds %struct.child, %struct.child* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %2, align 4
  %56 = call i32 (i32, i32, ...) bitcast (i32 (...)* @remote_kill to i32 (i32, i32, ...)*)(i32 noundef %54, i32 noundef %55)
  br label %57

57:                                               ; preds = %51, %44
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.child*, %struct.child** %4, align 8
  %60 = getelementptr inbounds %struct.child, %struct.child* %59, i32 0, i32 0
  %61 = load %struct.child*, %struct.child** %60, align 8
  store %struct.child* %61, %struct.child** %4, align 8
  br label %41, !llvm.loop !13

62:                                               ; preds = %41
  %63 = load %struct.child*, %struct.child** @children, align 8
  store %struct.child* %63, %struct.child** %4, align 8
  br label %64

64:                                               ; preds = %69, %62
  %65 = load %struct.child*, %struct.child** %4, align 8
  %66 = icmp ne %struct.child* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.child*, %struct.child** %4, align 8
  call void @delete_child_targets(%struct.child* noundef %68)
  br label %69

69:                                               ; preds = %67
  %70 = load %struct.child*, %struct.child** %4, align 8
  %71 = getelementptr inbounds %struct.child, %struct.child* %70, i32 0, i32 0
  %72 = load %struct.child*, %struct.child** %71, align 8
  store %struct.child* %72, %struct.child** %4, align 8
  br label %64, !llvm.loop !14

73:                                               ; preds = %64
  call void (...) @pop_signals_blocked_p()
  call void (i32, i32, ...) bitcast (void (...)* @wait_for_children to void (i32, i32, ...)*)(i32 noundef 0, i32 noundef 0)
  br label %75

74:                                               ; preds = %33
  call void (i32, i32, ...) bitcast (void (...)* @wait_for_children to void (i32, i32, ...)*)(i32 noundef 0, i32 noundef 1)
  br label %75

75:                                               ; preds = %74, %73
  call void (i32, ...) bitcast (void (...)* @remove_intermediates to void (i32, ...)*)(i32 noundef 1)
  %76 = load i32, i32* %2, align 4
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  call void @exit(i32 noundef 1) #10
  unreachable

79:                                               ; preds = %75
  %80 = call i32 @getpid() #9
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @kill(i32 noundef %80, i32 noundef %81) #9
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  call void (i8*, ...) bitcast (void (...)* @pfatal_with_name to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %84, %79
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @sigsetmask(i32 noundef) #4

declare dso_local void @push_signals_blocked_p(...) #1

; Function Attrs: nounwind
declare dso_local i32 @kill(i32 noundef, i32 noundef) #4

declare dso_local void @pop_signals_blocked_p(...) #1

declare dso_local i32 @remote_kill(...) #1

declare dso_local void @wait_for_children(...) #1

declare dso_local void @remove_intermediates(...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: nounwind
declare dso_local i32 @getpid() #4

declare dso_local void @pfatal_with_name(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @delete_child_targets(%struct.child* noundef %0) #0 {
  %2 = alloca %struct.child*, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.dep*, align 8
  store %struct.child* %0, %struct.child** %2, align 8
  %5 = load %struct.child*, %struct.child** %2, align 8
  %6 = getelementptr inbounds %struct.child, %struct.child* %5, i32 0, i32 7
  %7 = load i8, i8* %6, align 4
  %8 = lshr i8 %7, 3
  %9 = and i8 %8, 1
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %145

13:                                               ; preds = %1
  %14 = load %struct.child*, %struct.child** %2, align 8
  %15 = getelementptr inbounds %struct.child, %struct.child* %14, i32 0, i32 1
  %16 = load %struct.file*, %struct.file** %15, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 12
  %18 = load i16, i16* %17, align 2
  %19 = lshr i16 %18, 3
  %20 = and i16 %19, 1
  %21 = zext i16 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %66, label %23

23:                                               ; preds = %13
  %24 = load %struct.child*, %struct.child** %2, align 8
  %25 = getelementptr inbounds %struct.child, %struct.child* %24, i32 0, i32 1
  %26 = load %struct.file*, %struct.file** %25, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @stat(i8* noundef %28, %struct.stat* noundef %3) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 61440
  %35 = icmp eq i32 %34, 32768
  br i1 %35, label %36, label %66

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 12
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.child*, %struct.child** %2, align 8
  %41 = getelementptr inbounds %struct.child, %struct.child* %40, i32 0, i32 1
  %42 = load %struct.file*, %struct.file** %41, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %39, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %36
  %47 = load %struct.child*, %struct.child** %2, align 8
  %48 = getelementptr inbounds %struct.child, %struct.child* %47, i32 0, i32 1
  %49 = load %struct.file*, %struct.file** %48, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @error to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* noundef %51)
  %52 = load %struct.child*, %struct.child** %2, align 8
  %53 = getelementptr inbounds %struct.child, %struct.child* %52, i32 0, i32 1
  %54 = load %struct.file*, %struct.file** %53, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @unlink(i8* noundef %56) #9
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %46
  %60 = load %struct.child*, %struct.child** %2, align 8
  %61 = getelementptr inbounds %struct.child, %struct.child* %60, i32 0, i32 1
  %62 = load %struct.file*, %struct.file** %61, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @perror_with_name to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* noundef %64)
  br label %65

65:                                               ; preds = %59, %46
  br label %66

66:                                               ; preds = %65, %36, %31, %23, %13
  %67 = load %struct.child*, %struct.child** %2, align 8
  %68 = getelementptr inbounds %struct.child, %struct.child* %67, i32 0, i32 1
  %69 = load %struct.file*, %struct.file** %68, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 5
  %71 = load %struct.dep*, %struct.dep** %70, align 8
  store %struct.dep* %71, %struct.dep** %4, align 8
  br label %72

72:                                               ; preds = %135, %66
  %73 = load %struct.dep*, %struct.dep** %4, align 8
  %74 = icmp ne %struct.dep* %73, null
  br i1 %74, label %75, label %139

75:                                               ; preds = %72
  %76 = load %struct.dep*, %struct.dep** %4, align 8
  %77 = getelementptr inbounds %struct.dep, %struct.dep* %76, i32 0, i32 2
  %78 = load %struct.file*, %struct.file** %77, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 12
  %80 = load i16, i16* %79, align 2
  %81 = lshr i16 %80, 3
  %82 = and i16 %81, 1
  %83 = zext i16 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %134, label %85

85:                                               ; preds = %75
  %86 = load %struct.dep*, %struct.dep** %4, align 8
  %87 = getelementptr inbounds %struct.dep, %struct.dep* %86, i32 0, i32 2
  %88 = load %struct.file*, %struct.file** %87, align 8
  %89 = getelementptr inbounds %struct.file, %struct.file* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @stat(i8* noundef %90, %struct.stat* noundef %3) #9
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %133

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, 61440
  %97 = icmp eq i32 %96, 32768
  br i1 %97, label %98, label %133

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 12
  %100 = getelementptr inbounds %struct.timespec, %struct.timespec* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.dep*, %struct.dep** %4, align 8
  %103 = getelementptr inbounds %struct.dep, %struct.dep* %102, i32 0, i32 2
  %104 = load %struct.file*, %struct.file** %103, align 8
  %105 = getelementptr inbounds %struct.file, %struct.file* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %101, %106
  br i1 %107, label %108, label %133

108:                                              ; preds = %98
  %109 = load %struct.child*, %struct.child** %2, align 8
  %110 = getelementptr inbounds %struct.child, %struct.child* %109, i32 0, i32 1
  %111 = load %struct.file*, %struct.file** %110, align 8
  %112 = getelementptr inbounds %struct.file, %struct.file* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.dep*, %struct.dep** %4, align 8
  %115 = getelementptr inbounds %struct.dep, %struct.dep* %114, i32 0, i32 2
  %116 = load %struct.file*, %struct.file** %115, align 8
  %117 = getelementptr inbounds %struct.file, %struct.file* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  call void (i8*, i8*, i8*, ...) bitcast (void (...)* @error to void (i8*, i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* noundef %113, i8* noundef %118)
  %119 = load %struct.dep*, %struct.dep** %4, align 8
  %120 = getelementptr inbounds %struct.dep, %struct.dep* %119, i32 0, i32 2
  %121 = load %struct.file*, %struct.file** %120, align 8
  %122 = getelementptr inbounds %struct.file, %struct.file* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @unlink(i8* noundef %123) #9
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %108
  %127 = load %struct.dep*, %struct.dep** %4, align 8
  %128 = getelementptr inbounds %struct.dep, %struct.dep* %127, i32 0, i32 2
  %129 = load %struct.file*, %struct.file** %128, align 8
  %130 = getelementptr inbounds %struct.file, %struct.file* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @perror_with_name to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* noundef %131)
  br label %132

132:                                              ; preds = %126, %108
  br label %133

133:                                              ; preds = %132, %98, %93, %85
  br label %134

134:                                              ; preds = %133, %75
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.dep*, %struct.dep** %4, align 8
  %137 = getelementptr inbounds %struct.dep, %struct.dep* %136, i32 0, i32 0
  %138 = load %struct.dep*, %struct.dep** %137, align 8
  store %struct.dep* %138, %struct.dep** %4, align 8
  br label %72, !llvm.loop !15

139:                                              ; preds = %72
  %140 = load %struct.child*, %struct.child** %2, align 8
  %141 = getelementptr inbounds %struct.child, %struct.child* %140, i32 0, i32 7
  %142 = load i8, i8* %141, align 4
  %143 = and i8 %142, -9
  %144 = or i8 %143, 8
  store i8 %144, i8* %141, align 4
  br label %145

145:                                              ; preds = %139, %12
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @stat(i8* noundef, %struct.stat* noundef) #4

declare dso_local void @error(...) #1

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8* noundef) #4

declare dso_local void @perror_with_name(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_commands(%struct.commands* noundef %0) #0 {
  %2 = alloca %struct.commands*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.commands* %0, %struct.commands** %2, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = call i32 @fputs(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* noundef %5)
  %7 = load %struct.commands*, %struct.commands** %2, align 8
  %8 = getelementptr inbounds %struct.commands, %struct.commands* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @puts(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.commands*, %struct.commands** %2, align 8
  %15 = getelementptr inbounds %struct.commands, %struct.commands* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.commands*, %struct.commands** %2, align 8
  %18 = getelementptr inbounds %struct.commands, %struct.commands* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* noundef %16, i32 noundef %19)
  br label %21

21:                                               ; preds = %13, %11
  %22 = load %struct.commands*, %struct.commands** %2, align 8
  %23 = getelementptr inbounds %struct.commands, %struct.commands* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %56, %21
  %26 = load i8*, i8** %3, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %43, %30
  %32 = call i16** @__ctype_b_loc() #8
  %33 = load i16*, i16** %32, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %33, i64 %37
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %40, 8192
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %3, align 8
  br label %31, !llvm.loop !16

46:                                               ; preds = %31
  %47 = load i8*, i8** %3, align 8
  %48 = call i8* @strchr(i8* noundef %47, i32 noundef 10) #7
  store i8* %48, i8** %4, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i8*, i8** %3, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = call i64 @strlen(i8* noundef %53) #7
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8* %55, i8** %4, align 8
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i64 noundef %61, i8* noundef %62)
  %64 = load i8*, i8** %4, align 8
  store i8* %64, i8** %3, align 8
  br label %25, !llvm.loop !17

65:                                               ; preds = %25
  ret void
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @puts(i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @ar_name(...) #1

declare dso_local %struct.variable* @define_variable_for_file(...) #1

declare dso_local %struct.file* @enter_file(...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!22, !5}
!22 = distinct !{!23, !5}
!23 = distinct !{!24, !5}
!24 = distinct !{!25, !5}
!25 = distinct !{!26, !5}
!26 = distinct !{!27, !5}
!27 = distinct !{!28, !5}
!28 = distinct !{!29, !5}
!29 = distinct !{!30, !5}
!30 = distinct !{!31, !5}
!31 = distinct !{!32, !5}
!32 = distinct !{!33, !5}
!33 = distinct !{!34, !5}
!34 = distinct !{!35, !5}
!35 = distinct !{!36, !5}
!36 = distinct !{!37, !5}
!37 = distinct !{!38, !5}
!38 = distinct !{!39, !5}
!39 = distinct !{!40, !5}
!40 = distinct !{!41, !5}
!41 = distinct !{!42, !5}
!42 = distinct !{!43, !5}
!43 = distinct !{!44, !5}
!44 = distinct !{!45, !5}
!45 = distinct !{!46, !5}
!46 = distinct !{!47, !5}
!47 = distinct !{!48, !5}
!48 = distinct !{!49, !5}
!49 = distinct !{!50, !5}
!50 = distinct !{!51, !5}
!51 = distinct !{!52, !5}
!52 = distinct !{!53, !5}
!53 = distinct !{!54, !5}
!54 = distinct !{!55, !5}
!55 = distinct !{!56, !5}
!56 = distinct !{!57, !5}
!57 = distinct !{!58, !5}
!58 = distinct !{!59, !5}
!59 = distinct !{!60, !5}
!60 = distinct !{!61, !5}
!61 = distinct !{!62, !5}
!62 = distinct !{!63, !5}
!63 = distinct !{!64, !5}
!64 = distinct !{!65, !5}
!65 = distinct !{!66, !5}
!66 = distinct !{!67, !5}
!67 = distinct !{!68, !5}
!68 = distinct !{!69, !5}
!69 = distinct !{!70, !5}
!70 = distinct !{!71, !5}
!71 = distinct !{!72, !5}
!72 = distinct !{!73, !5}
!73 = distinct !{!74, !5}
!74 = distinct !{!75, !5}
!75 = distinct !{!76, !5}
!76 = distinct !{!77, !5}
!77 = distinct !{!78, !5}
!78 = distinct !{!79, !5}
!79 = distinct !{!80, !5}
!80 = distinct !{!81, !5}
!81 = distinct !{!82, !5}
!82 = distinct !{!83, !5}
!83 = distinct !{!84, !5}
!84 = distinct !{!85, !5}
!85 = distinct !{!86, !5}
!86 = distinct !{!87, !5}
!87 = distinct !{!88, !5}
!88 = distinct !{!89, !5}
!89 = distinct !{!90, !5}
!90 = distinct !{!91, !5}
!91 = distinct !{!92, !5}
!92 = distinct !{!93, !5}
!93 = distinct !{!94, !5}
!94 = distinct !{!95, !5}
!95 = distinct !{!96, !5}
!96 = distinct !{!97, !5}
!97 = distinct !{!98, !5}
!98 = distinct !{!99, !5}
!99 = distinct !{!100, !5}
!100 = distinct !{!101, !5}
!101 = distinct !{!102, !5}
!102 = distinct !{!103, !5}
!103 = distinct !{!104, !5}
!104 = distinct !{!105, !5}
!105 = distinct !{!106, !5}
!106 = distinct !{!107, !5}
!107 = distinct !{!108, !5}
!108 = distinct !{!109, !5}
!109 = distinct !{!110, !5}
!110 = distinct !{!111, !5}
!111 = distinct !{!112, !5}
!112 = distinct !{!113, !5}
!113 = distinct !{!114, !5}
!114 = distinct !{!115, !5}
!115 = distinct !{!116, !5}
!116 = distinct !{!117, !5}
!117 = distinct !{!118, !5}
!118 = distinct !{!119, !5}
!119 = distinct !{!200, !5}
!119 = distinct !{!201, !5}
!201 = distinct !{!202, !5}
!202 = distinct !{!203, !5}
!203 = distinct !{!204, !5}
!204 = distinct !{!205, !5}
!205 = distinct !{!206, !5}
!206 = distinct !{!207, !5}
!207 = distinct !{!208, !5}
!208 = distinct !{!209, !5}
!209 = distinct !{!210, !5}
!210 = distinct !{!211, !5}
!211 = distinct !{!212, !5}
!212 = distinct !{!213, !5}
!213 = distinct !{!214, !5}
!214 = distinct !{!215, !5}
!215 = distinct !{!216, !5}
!216 = distinct !{!217, !5}
!217 = distinct !{!218, !5}
!218 = distinct !{!219, !5}
!219 = distinct !{!220, !5}
!220 = distinct !{!221, !5}
!221 = distinct !{!222, !5}
!222 = distinct !{!223, !5}
!223 = distinct !{!224, !5}
!224 = distinct !{!225, !5}
!225 = distinct !{!226, !5}
!226 = distinct !{!227, !5}
!227 = distinct !{!228, !5}
