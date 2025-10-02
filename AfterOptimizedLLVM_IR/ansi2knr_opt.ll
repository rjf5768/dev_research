; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/ansi2knr.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/ansi2knr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [10 x i8] c"--varargs\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Unrecognized switch: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Usage: ansi2knr input_file [output_file]\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Cannot open output file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Cannot open input file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"#line 1 \22%s\22\0A\00", align 1
@test1.words = internal global [25 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* null], align 16
@.str.8 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"Unable to allocate break table!\0A\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"va_alist\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c");\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c")  \00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"va_dcl\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 45
  br i1 %21, label %22, label %40

22:                                               ; preds = %14
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* noundef %25, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #6
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  store i32 1, i32* %11, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %32, i8*** %5, align 8
  br label %39

33:                                               ; preds = %22
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* noundef %37)
  call void @exit(i32 noundef 1) #7
  unreachable

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %14, %2
  %41 = load i32, i32* %4, align 4
  switch i32 %41, label %42 [
    i32 2, label %44
    i32 3, label %46
  ]

42:                                               ; preds = %40
  %43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 noundef 0) #7
  unreachable

44:                                               ; preds = %40
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %45, %struct._IO_FILE** %7, align 8
  br label %60

46:                                               ; preds = %40
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  %49 = load i8*, i8** %48, align 8
  %50 = call noalias %struct._IO_FILE* @fopen(i8* noundef %49, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %50, %struct._IO_FILE** %7, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %52 = icmp eq %struct._IO_FILE* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* noundef %57)
  call void @exit(i32 noundef 1) #7
  unreachable

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  %64 = call noalias %struct._IO_FILE* @fopen(i8* noundef %63, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store %struct._IO_FILE* %64, %struct._IO_FILE** %6, align 8
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %66 = icmp eq %struct._IO_FILE* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %68, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* noundef %71)
  call void @exit(i32 noundef 1) #7
  unreachable

73:                                               ; preds = %60
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %74, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef %77)
  %79 = call i8* (i32, ...) bitcast (i8* (...)* @malloc to i8* (i32, ...)*)(i32 noundef 5000)
  store i8* %79, i8** %8, align 8
  %80 = load i8*, i8** %8, align 8
  store i8* %80, i8** %9, align 8
  br label %81

81:                                               ; preds = %167, %160, %73
  %82 = load i8*, i8** %9, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 5000
  %85 = load i8*, i8** %9, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %91 = call i8* @fgets(i8* noundef %82, i32 noundef %89, %struct._IO_FILE* noundef %90)
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %169

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %146, %93
  %95 = load i8*, i8** %9, align 8
  %96 = call i64 @strlen(i8* noundef %95) #6
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 %96
  store i8* %98, i8** %9, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @test1(i8* noundef %99)
  switch i32 %100, label %162 [
    i32 2, label %101
    i32 1, label %106
    i32 -1, label %155
  ]

101:                                              ; preds = %94
  %102 = load i8*, i8** %8, align 8
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @convert1(i8* noundef %102, %struct._IO_FILE* noundef %103, i32 noundef 1, i32 noundef %104)
  br label %167

106:                                              ; preds = %94
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %9, align 8
  store i8* %108, i8** %10, align 8
  br label %109

109:                                              ; preds = %141, %106
  %110 = load i8*, i8** %9, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 4999
  %113 = icmp uge i8* %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %163

115:                                              ; preds = %109
  %116 = load i8*, i8** %9, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 5000
  %119 = load i8*, i8** %9, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = trunc i64 %122 to i32
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %125 = call i8* @fgets(i8* noundef %116, i32 noundef %123, %struct._IO_FILE* noundef %124)
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  br label %163

128:                                              ; preds = %115
  %129 = load i8*, i8** %10, align 8
  %130 = call i8* @skipspace(i8* noundef %129, i32 noundef 1)
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  switch i32 %132, label %146 [
    i32 123, label %133
    i32 0, label %141
  ]

133:                                              ; preds = %128
  %134 = load i8*, i8** %8, align 8
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @convert1(i8* noundef %134, %struct._IO_FILE* noundef %135, i32 noundef 0, i32 noundef %136)
  %138 = load i8*, i8** %10, align 8
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %140 = call i32 @fputs(i8* noundef %138, %struct._IO_FILE* noundef %139)
  br label %154

141:                                              ; preds = %128
  %142 = load i8*, i8** %9, align 8
  %143 = call i64 @strlen(i8* noundef %142) #6
  %144 = load i8*, i8** %9, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 %143
  store i8* %145, i8** %9, align 8
  br label %109

146:                                              ; preds = %128
  %147 = load i8*, i8** %8, align 8
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %149 = call i32 @fputs(i8* noundef %147, %struct._IO_FILE* noundef %148)
  %150 = load i8*, i8** %8, align 8
  %151 = load i8*, i8** %10, align 8
  %152 = call i8* @strcpy(i8* noundef %150, i8* noundef %151) #8
  %153 = load i8*, i8** %8, align 8
  store i8* %153, i8** %9, align 8
  br label %94

154:                                              ; preds = %133
  br label %167

155:                                              ; preds = %94
  %156 = load i8*, i8** %9, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 4999
  %159 = icmp ne i8* %156, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %81, !llvm.loop !4

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %94, %161
  br label %163

163:                                              ; preds = %162, %127, %114
  %164 = load i8*, i8** %8, align 8
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %166 = call i32 @fputs(i8* noundef %164, %struct._IO_FILE* noundef %165)
  br label %167

167:                                              ; preds = %163, %154, %101
  %168 = load i8*, i8** %8, align 8
  store i8* %168, i8** %9, align 8
  br label %81, !llvm.loop !4

169:                                              ; preds = %81
  %170 = load i8*, i8** %9, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = icmp ne i8* %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load i8*, i8** %8, align 8
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %176 = call i32 @fputs(i8* noundef %174, %struct._IO_FILE* noundef %175)
  br label %177

177:                                              ; preds = %173, %169
  %178 = load i8*, i8** %8, align 8
  %179 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* noundef %178)
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %181 = call i32 @fclose(%struct._IO_FILE* noundef %180)
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %183 = call i32 @fclose(%struct._IO_FILE* noundef %182)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i8* @malloc(...) #2

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

declare dso_local i32 @free(...) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @skipspace(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %83, %2
  br label %7

7:                                                ; preds = %27, %6
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = and i32 %10, -128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = call i16** @__ctype_b_loc() #9
  %15 = load i16*, i16** %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16* %15, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 8192
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %13, %7
  %26 = phi i1 [ false, %7 ], [ %24, %13 ]
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = load i32, i32* %5, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %4, align 8
  br label %7, !llvm.loop !6

32:                                               ; preds = %25
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 47
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 42
  br i1 %44, label %46, label %45

45:                                               ; preds = %37, %32
  br label %92

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %4, align 8
  br label %55

55:                                               ; preds = %78, %46
  %56 = load i8*, i8** %4, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 42
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 47
  br label %68

68:                                               ; preds = %60, %55
  %69 = phi i1 [ false, %55 ], [ %67, %60 ]
  %70 = xor i1 %69, true
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i8*, i8** %4, align 8
  store i8* %77, i8** %3, align 8
  br label %94

78:                                               ; preds = %71
  %79 = load i32, i32* %5, align 4
  %80 = load i8*, i8** %4, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %4, align 8
  br label %55, !llvm.loop !7

83:                                               ; preds = %68
  %84 = load i32, i32* %5, align 4
  %85 = load i8*, i8** %4, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i8*, i8** %4, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %4, align 8
  br label %6

92:                                               ; preds = %45
  %93 = load i8*, i8** %4, align 8
  store i8* %93, i8** %3, align 8
  br label %94

94:                                               ; preds = %92, %76
  %95 = load i8*, i8** %3, align 8
  ret i8* %95
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @writeblanks(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  br label %7

7:                                                ; preds = %24, %2
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 13
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 10
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  store i8 32, i8* %22, align 1
  br label %23

23:                                               ; preds = %21, %16, %11
  br label %24

24:                                               ; preds = %23
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  br label %7, !llvm.loop !8

27:                                               ; preds = %7
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = and i32 %14, -128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = call i16** @__ctype_b_loc() #9
  %19 = load i16*, i16** %18, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %19, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 1024
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %17, %1
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 95
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %127

35:                                               ; preds = %29, %17
  %36 = load i8*, i8** %3, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @strlen(i8* noundef %37) #6
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = getelementptr inbounds i8, i8* %39, i64 -1
  %41 = call i8* @skipspace(i8* noundef %40, i32 noundef -1)
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %49 [
    i32 59, label %45
    i32 41, label %46
    i32 123, label %47
    i32 125, label %48
  ]

45:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %50

46:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %50

47:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %127

48:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %127

49:                                               ; preds = %35
  store i32 -1, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %46, %45
  br label %51

51:                                               ; preds = %76, %50
  %52 = load i8*, i8** %4, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = and i32 %54, -128
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = call i16** @__ctype_b_loc() #9
  %59 = load i16*, i16** %58, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16, i16* %59, i64 %63
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i32
  %67 = and i32 %66, 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %57, %51
  %70 = load i8*, i8** %4, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 95
  br label %74

74:                                               ; preds = %69, %57
  %75 = phi i1 [ true, %57 ], [ %73, %69 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %4, align 8
  br label %51, !llvm.loop !9

79:                                               ; preds = %74
  %80 = load i8*, i8** %4, align 8
  store i8* %80, i8** %6, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = call i8* @skipspace(i8* noundef %81, i32 noundef 1)
  store i8* %82, i8** %4, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %4, align 8
  %85 = load i8, i8* %83, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 40
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %127

89:                                               ; preds = %79
  %90 = load i8*, i8** %4, align 8
  %91 = call i8* @skipspace(i8* noundef %90, i32 noundef 1)
  store i8* %91, i8** %4, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 41
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i32 0, i32* %2, align 4
  br label %127

97:                                               ; preds = %89
  store i8** getelementptr inbounds ([25 x i8*], [25 x i8*]* @test1.words, i64 0, i64 0), i8*** %8, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = load i8*, i8** %3, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %122, %97
  %105 = load i8**, i8*** %8, align 8
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %9, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %125

108:                                              ; preds = %104
  %109 = load i8*, i8** %9, align 8
  %110 = call i64 @strlen(i8* noundef %109) #6
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp eq i64 %110, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = load i8*, i8** %9, align 8
  %116 = load i8*, i8** %3, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = call i32 @strncmp(i8* noundef %115, i8* noundef %116, i64 noundef %118) #6
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %127

122:                                              ; preds = %114, %108
  %123 = load i8**, i8*** %8, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i32 1
  store i8** %124, i8*** %8, align 8
  br label %104, !llvm.loop !10

125:                                              ; preds = %104
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %121, %96, %88, %48, %47, %34
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @convert1(i8* noundef %0, %struct._IO_FILE* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 2, i32* %13, align 4
  store i8* null, i8** %17, align 8
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %10, align 8
  br label %24

24:                                               ; preds = %30, %4
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %10, align 8
  %27 = load i8, i8* %25, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 40
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %24, !llvm.loop !11

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %60, %31
  %33 = load i8*, i8** %10, align 8
  store i8* %33, i8** %11, align 8
  %34 = load i32, i32* %13, align 4
  %35 = zext i32 %34 to i64
  %36 = mul i64 8, %35
  %37 = mul i64 %36, 2
  %38 = call i8* (i64, ...) bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 noundef %37)
  %39 = bitcast i8* %38 to i8**
  store i8** %39, i8*** %12, align 8
  %40 = load i8**, i8*** %12, align 8
  %41 = icmp eq i8** %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0))
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %47 = call i32 @fputs(i8* noundef %45, %struct._IO_FILE* noundef %46)
  store i32 -1, i32* %5, align 4
  br label %468

48:                                               ; preds = %32
  %49 = load i8**, i8*** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = mul i32 %50, 2
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  %54 = getelementptr inbounds i8*, i8** %53, i64 -2
  store i8** %54, i8*** %14, align 8
  %55 = load i8**, i8*** %12, align 8
  store i8** %55, i8*** %15, align 8
  br label %56

56:                                               ; preds = %280, %48
  store i32 0, i32* %18, align 4
  store i8* null, i8** %19, align 8
  store i8* null, i8** %21, align 8
  %57 = load i8**, i8*** %15, align 8
  %58 = load i8**, i8*** %14, align 8
  %59 = icmp uge i8** %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i8**, i8*** %12, align 8
  %62 = bitcast i8** %61 to i8*
  %63 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* noundef %62)
  %64 = load i32, i32* %13, align 4
  %65 = shl i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %32

66:                                               ; preds = %56
  %67 = load i8*, i8** %11, align 8
  %68 = load i8**, i8*** %15, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %69, i8*** %15, align 8
  store i8* %67, i8** %68, align 8
  br label %70

70:                                               ; preds = %106, %66
  %71 = load i8*, i8** %21, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %109

73:                                               ; preds = %70
  %74 = load i8*, i8** %11, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  switch i32 %76, label %104 [
    i32 44, label %77
    i32 40, label %83
    i32 41, label %91
    i32 47, label %100
  ]

77:                                               ; preds = %73
  %78 = load i32, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** %11, align 8
  store i8* %81, i8** %21, align 8
  br label %82

82:                                               ; preds = %80, %77
  br label %105

83:                                               ; preds = %73
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load i8*, i8** %11, align 8
  store i8* %87, i8** %19, align 8
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %18, align 4
  br label %105

91:                                               ; preds = %73
  %92 = load i32, i32* %18, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %18, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i8*, i8** %11, align 8
  store i8* %96, i8** %21, align 8
  br label %99

97:                                               ; preds = %91
  %98 = load i8*, i8** %11, align 8
  store i8* %98, i8** %20, align 8
  br label %99

99:                                               ; preds = %97, %95
  br label %105

100:                                              ; preds = %73
  %101 = load i8*, i8** %11, align 8
  %102 = call i8* @skipspace(i8* noundef %101, i32 noundef 1)
  %103 = getelementptr inbounds i8, i8* %102, i64 -1
  store i8* %103, i8** %11, align 8
  br label %105

104:                                              ; preds = %73
  br label %105

105:                                              ; preds = %104, %100, %99, %88, %82
  br label %106

106:                                              ; preds = %105
  %107 = load i8*, i8** %11, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %11, align 8
  br label %70, !llvm.loop !12

109:                                              ; preds = %70
  %110 = load i8*, i8** %19, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i8*, i8** %19, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8*, i8** %20, align 8
  %116 = call i32 @writeblanks(i8* noundef %114, i8* noundef %115)
  br label %117

117:                                              ; preds = %112, %109
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 -1
  store i8* %119, i8** %11, align 8
  br label %120

120:                                              ; preds = %194, %117
  %121 = load i8*, i8** %11, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 -1
  %123 = call i8* @skipspace(i8* noundef %122, i32 noundef -1)
  store i8* %123, i8** %11, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  switch i32 %126, label %193 [
    i32 93, label %127
    i32 41, label %127
  ]

127:                                              ; preds = %120, %120
  store i32 1, i32* %22, align 4
  br label %128

128:                                              ; preds = %147, %127
  %129 = load i32, i32* %22, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %128
  %132 = load i8*, i8** %11, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 -1
  store i8* %133, i8** %11, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  switch i32 %135, label %146 [
    i32 93, label %136
    i32 41, label %136
    i32 91, label %139
    i32 40, label %139
    i32 47, label %142
  ]

136:                                              ; preds = %131, %131
  %137 = load i32, i32* %22, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %22, align 4
  br label %147

139:                                              ; preds = %131, %131
  %140 = load i32, i32* %22, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %22, align 4
  br label %147

142:                                              ; preds = %131
  %143 = load i8*, i8** %11, align 8
  %144 = call i8* @skipspace(i8* noundef %143, i32 noundef -1)
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  store i8* %145, i8** %11, align 8
  br label %147

146:                                              ; preds = %131
  br label %147

147:                                              ; preds = %146, %142, %139, %136
  br label %128, !llvm.loop !13

148:                                              ; preds = %128
  %149 = load i8*, i8** %11, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 40
  br i1 %152, label %153, label %192

153:                                              ; preds = %148
  %154 = load i8*, i8** %11, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  %156 = call i8* @skipspace(i8* noundef %155, i32 noundef 1)
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 42
  br i1 %159, label %160, label %192

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %187, %160
  %162 = load i8*, i8** %11, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = and i32 %164, -128
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = call i16** @__ctype_b_loc() #9
  %169 = load i16*, i16** %168, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i16, i16* %169, i64 %173
  %175 = load i16, i16* %174, align 2
  %176 = zext i16 %175 to i32
  %177 = and i32 %176, 1024
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %167, %161
  %180 = load i8*, i8** %11, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 95
  br label %184

184:                                              ; preds = %179, %167
  %185 = phi i1 [ true, %167 ], [ %183, %179 ]
  %186 = xor i1 %185, true
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i8*, i8** %11, align 8
  %189 = call i8* @skipspace(i8* noundef %188, i32 noundef 1)
  %190 = getelementptr inbounds i8, i8* %189, i64 1
  store i8* %190, i8** %11, align 8
  br label %161, !llvm.loop !14

191:                                              ; preds = %184
  br label %195

192:                                              ; preds = %153, %148
  br label %194

193:                                              ; preds = %120
  br label %195

194:                                              ; preds = %192
  br label %120

195:                                              ; preds = %193, %191
  %196 = load i8*, i8** %11, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 46
  br i1 %199, label %200, label %244

200:                                              ; preds = %195
  %201 = load i8*, i8** %11, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 -1
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 46
  br i1 %205, label %206, label %244

206:                                              ; preds = %200
  %207 = load i8*, i8** %11, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 -2
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 46
  br i1 %211, label %212, label %244

212:                                              ; preds = %206
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %212
  %216 = load i8**, i8*** %15, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i32 1
  store i8** %217, i8*** %15, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8** %216, align 8
  %218 = load i8*, i8** %11, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 -2
  store i8* %219, i8** %17, align 8
  br label %243

220:                                              ; preds = %212
  %221 = load i8*, i8** %11, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %11, align 8
  %223 = load i8**, i8*** %15, align 8
  %224 = load i8**, i8*** %12, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 1
  %226 = icmp eq i8** %223, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %220
  %228 = load i8**, i8*** %12, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 0
  %230 = load i8*, i8** %229, align 8
  %231 = load i8*, i8** %11, align 8
  %232 = call i32 @writeblanks(i8* noundef %230, i8* noundef %231)
  br label %240

233:                                              ; preds = %220
  %234 = load i8**, i8*** %15, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 -1
  %236 = load i8*, i8** %235, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 -1
  %238 = load i8*, i8** %11, align 8
  %239 = call i32 @writeblanks(i8* noundef %237, i8* noundef %238)
  br label %240

240:                                              ; preds = %233, %227
  %241 = load i8**, i8*** %15, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i32 -1
  store i8** %242, i8*** %15, align 8
  br label %243

243:                                              ; preds = %240, %215
  br label %278

244:                                              ; preds = %206, %200, %195
  br label %245

245:                                              ; preds = %270, %244
  %246 = load i8*, i8** %11, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = and i32 %248, -128
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %245
  %252 = call i16** @__ctype_b_loc() #9
  %253 = load i16*, i16** %252, align 8
  %254 = load i8*, i8** %11, align 8
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i32
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i16, i16* %253, i64 %257
  %259 = load i16, i16* %258, align 2
  %260 = zext i16 %259 to i32
  %261 = and i32 %260, 8
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %251, %245
  %264 = load i8*, i8** %11, align 8
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 95
  br label %268

268:                                              ; preds = %263, %251
  %269 = phi i1 [ true, %251 ], [ %267, %263 ]
  br i1 %269, label %270, label %273

270:                                              ; preds = %268
  %271 = load i8*, i8** %11, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 -1
  store i8* %272, i8** %11, align 8
  br label %245, !llvm.loop !15

273:                                              ; preds = %268
  %274 = load i8*, i8** %11, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 1
  %276 = load i8**, i8*** %15, align 8
  %277 = getelementptr inbounds i8*, i8** %276, i32 1
  store i8** %277, i8*** %15, align 8
  store i8* %275, i8** %276, align 8
  br label %278

278:                                              ; preds = %273, %243
  %279 = load i8*, i8** %21, align 8
  store i8* %279, i8** %11, align 8
  br label %280

280:                                              ; preds = %278
  %281 = load i8*, i8** %11, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %11, align 8
  %283 = load i8, i8* %281, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp eq i32 %284, 44
  br i1 %285, label %56, label %286, !llvm.loop !16

286:                                              ; preds = %280
  %287 = load i8*, i8** %11, align 8
  %288 = load i8**, i8*** %15, align 8
  store i8* %287, i8** %288, align 8
  %289 = load i8**, i8*** %15, align 8
  %290 = load i8**, i8*** %12, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 2
  %292 = icmp eq i8** %289, %291
  br i1 %292, label %293, label %321

293:                                              ; preds = %286
  %294 = load i8**, i8*** %12, align 8
  %295 = getelementptr inbounds i8*, i8** %294, i64 0
  %296 = load i8*, i8** %295, align 8
  %297 = call i8* @skipspace(i8* noundef %296, i32 noundef 1)
  store i8* %297, i8** %11, align 8
  %298 = load i8*, i8** %11, align 8
  %299 = call i32 @strncmp(i8* noundef %298, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 noundef 4) #6
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %320, label %301

301:                                              ; preds = %293
  %302 = load i8*, i8** %11, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 4
  %304 = call i8* @skipspace(i8* noundef %303, i32 noundef 1)
  store i8* %304, i8** %11, align 8
  %305 = load i8*, i8** %11, align 8
  %306 = load i8**, i8*** %12, align 8
  %307 = getelementptr inbounds i8*, i8** %306, i64 2
  %308 = load i8*, i8** %307, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 -1
  %310 = icmp eq i8* %305, %309
  br i1 %310, label %311, label %319

311:                                              ; preds = %301
  %312 = load i8**, i8*** %12, align 8
  store i8** %312, i8*** %15, align 8
  %313 = load i8**, i8*** %12, align 8
  %314 = getelementptr inbounds i8*, i8** %313, i64 0
  %315 = load i8*, i8** %314, align 8
  %316 = load i8*, i8** %11, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 1
  %318 = call i32 @writeblanks(i8* noundef %315, i8* noundef %317)
  br label %319

319:                                              ; preds = %311, %301
  br label %320

320:                                              ; preds = %319, %293
  br label %321

321:                                              ; preds = %320, %286
  %322 = load i8*, i8** %6, align 8
  store i8* %322, i8** %11, align 8
  br label %323

323:                                              ; preds = %327, %321
  %324 = load i8*, i8** %11, align 8
  %325 = load i8*, i8** %10, align 8
  %326 = icmp ne i8* %324, %325
  br i1 %326, label %327, label %335

327:                                              ; preds = %323
  %328 = load i8*, i8** %11, align 8
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %332 = call i32 @putc(i32 noundef %330, %struct._IO_FILE* noundef %331)
  %333 = load i8*, i8** %11, align 8
  %334 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %334, i8** %11, align 8
  br label %323, !llvm.loop !17

335:                                              ; preds = %323
  %336 = load i32, i32* %8, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %369

338:                                              ; preds = %335
  %339 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %340 = call i32 @fputs(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), %struct._IO_FILE* noundef %339)
  %341 = load i8**, i8*** %12, align 8
  %342 = getelementptr inbounds i8*, i8** %341, i64 0
  %343 = load i8*, i8** %342, align 8
  store i8* %343, i8** %11, align 8
  br label %344

344:                                              ; preds = %365, %338
  %345 = load i8*, i8** %11, align 8
  %346 = load i8, i8* %345, align 1
  %347 = icmp ne i8 %346, 0
  br i1 %347, label %348, label %368

348:                                              ; preds = %344
  %349 = load i8*, i8** %11, align 8
  %350 = load i8, i8* %349, align 1
  %351 = sext i8 %350 to i32
  %352 = icmp eq i32 %351, 13
  br i1 %352, label %358, label %353

353:                                              ; preds = %348
  %354 = load i8*, i8** %11, align 8
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp eq i32 %356, 10
  br i1 %357, label %358, label %364

358:                                              ; preds = %353, %348
  %359 = load i8*, i8** %11, align 8
  %360 = load i8, i8* %359, align 1
  %361 = sext i8 %360 to i32
  %362 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %363 = call i32 @putc(i32 noundef %361, %struct._IO_FILE* noundef %362)
  br label %364

364:                                              ; preds = %358, %353
  br label %365

365:                                              ; preds = %364
  %366 = load i8*, i8** %11, align 8
  %367 = getelementptr inbounds i8, i8* %366, i32 1
  store i8* %367, i8** %11, align 8
  br label %344, !llvm.loop !18

368:                                              ; preds = %344
  br label %464

369:                                              ; preds = %335
  %370 = load i8**, i8*** %12, align 8
  %371 = getelementptr inbounds i8*, i8** %370, i64 1
  store i8** %371, i8*** %16, align 8
  br label %372

372:                                              ; preds = %421, %369
  %373 = load i8**, i8*** %16, align 8
  %374 = load i8**, i8*** %15, align 8
  %375 = icmp ult i8** %373, %374
  br i1 %375, label %376, label %424

376:                                              ; preds = %372
  %377 = load i8**, i8*** %16, align 8
  %378 = load i8*, i8** %377, align 8
  store i8* %378, i8** %11, align 8
  br label %379

379:                                              ; preds = %404, %376
  %380 = load i8*, i8** %11, align 8
  %381 = load i8, i8* %380, align 1
  %382 = sext i8 %381 to i32
  %383 = and i32 %382, -128
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %397

385:                                              ; preds = %379
  %386 = call i16** @__ctype_b_loc() #9
  %387 = load i16*, i16** %386, align 8
  %388 = load i8*, i8** %11, align 8
  %389 = load i8, i8* %388, align 1
  %390 = sext i8 %389 to i32
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i16, i16* %387, i64 %391
  %393 = load i16, i16* %392, align 2
  %394 = zext i16 %393 to i32
  %395 = and i32 %394, 8
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %402, label %397

397:                                              ; preds = %385, %379
  %398 = load i8*, i8** %11, align 8
  %399 = load i8, i8* %398, align 1
  %400 = sext i8 %399 to i32
  %401 = icmp eq i32 %400, 95
  br label %402

402:                                              ; preds = %397, %385
  %403 = phi i1 [ true, %385 ], [ %401, %397 ]
  br i1 %403, label %404, label %412

404:                                              ; preds = %402
  %405 = load i8*, i8** %11, align 8
  %406 = load i8, i8* %405, align 1
  %407 = sext i8 %406 to i32
  %408 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %409 = call i32 @putc(i32 noundef %407, %struct._IO_FILE* noundef %408)
  %410 = load i8*, i8** %11, align 8
  %411 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %411, i8** %11, align 8
  br label %379, !llvm.loop !19

412:                                              ; preds = %402
  %413 = load i8**, i8*** %16, align 8
  %414 = load i8**, i8*** %15, align 8
  %415 = getelementptr inbounds i8*, i8** %414, i64 -1
  %416 = icmp ult i8** %413, %415
  br i1 %416, label %417, label %420

417:                                              ; preds = %412
  %418 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %419 = call i32 @fputs(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), %struct._IO_FILE* noundef %418)
  br label %420

420:                                              ; preds = %417, %412
  br label %421

421:                                              ; preds = %420
  %422 = load i8**, i8*** %16, align 8
  %423 = getelementptr inbounds i8*, i8** %422, i64 2
  store i8** %423, i8*** %16, align 8
  br label %372, !llvm.loop !20

424:                                              ; preds = %372
  %425 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %426 = call i32 @fputs(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), %struct._IO_FILE* noundef %425)
  %427 = load i8**, i8*** %12, align 8
  %428 = getelementptr inbounds i8*, i8** %427, i64 2
  store i8** %428, i8*** %16, align 8
  br label %429

429:                                              ; preds = %437, %424
  %430 = load i8**, i8*** %16, align 8
  %431 = load i8**, i8*** %15, align 8
  %432 = icmp ule i8** %430, %431
  br i1 %432, label %433, label %440

433:                                              ; preds = %429
  %434 = load i8**, i8*** %16, align 8
  %435 = load i8*, i8** %434, align 8
  %436 = getelementptr inbounds i8, i8* %435, i64 -1
  store i8 59, i8* %436, align 1
  br label %437

437:                                              ; preds = %433
  %438 = load i8**, i8*** %16, align 8
  %439 = getelementptr inbounds i8*, i8** %438, i64 2
  store i8** %439, i8*** %16, align 8
  br label %429, !llvm.loop !21

440:                                              ; preds = %429
  %441 = load i8*, i8** %17, align 8
  %442 = icmp ne i8* %441, null
  br i1 %442, label %443, label %457

443:                                              ; preds = %440
  %444 = load i8*, i8** %17, align 8
  store i8 0, i8* %444, align 1
  %445 = load i8**, i8*** %12, align 8
  %446 = getelementptr inbounds i8*, i8** %445, i64 0
  %447 = load i8*, i8** %446, align 8
  %448 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %449 = call i32 @fputs(i8* noundef %447, %struct._IO_FILE* noundef %448)
  %450 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %451 = call i32 @fputs(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %450)
  %452 = load i8**, i8*** %15, align 8
  %453 = getelementptr inbounds i8*, i8** %452, i64 0
  %454 = load i8*, i8** %453, align 8
  %455 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %456 = call i32 @fputs(i8* noundef %454, %struct._IO_FILE* noundef %455)
  br label %463

457:                                              ; preds = %440
  %458 = load i8**, i8*** %12, align 8
  %459 = getelementptr inbounds i8*, i8** %458, i64 0
  %460 = load i8*, i8** %459, align 8
  %461 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %462 = call i32 @fputs(i8* noundef %460, %struct._IO_FILE* noundef %461)
  br label %463

463:                                              ; preds = %457, %443
  br label %464

464:                                              ; preds = %463, %368
  %465 = load i8**, i8*** %12, align 8
  %466 = bitcast i8** %465 to i8*
  %467 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* noundef %466)
  store i32 0, i32* %5, align 4
  br label %468

468:                                              ; preds = %464, %42
  %469 = load i32, i32* %5, align 4
  ret i32 %469
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

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
!21 = distinct !{!21, !5}
