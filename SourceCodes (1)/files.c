; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/files.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@finput = dso_local global %struct._IO_FILE* null, align 8
@foutput = dso_local global %struct._IO_FILE* null, align 8
@fdefines = dso_local global %struct._IO_FILE* null, align 8
@ftable = dso_local global %struct._IO_FILE* null, align 8
@fattrs = dso_local global %struct._IO_FILE* null, align 8
@fguard = dso_local global %struct._IO_FILE* null, align 8
@faction = dso_local global %struct._IO_FILE* null, align 8
@fparser = dso_local global %struct._IO_FILE* null, align 8
@fixed_outfiles = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/tmp/b.\00", align 1
@spec_outfile = dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".tab\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_tab\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"y.y\00", align 1
@infile = dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c".y\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@verboseflag = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c".output\00", align 1
@outfile = dso_local global i8* null, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@definesflag = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c".h\00", align 1
@defsfile = dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"act.XXXXXX\00", align 1
@actfile = dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"attrs.XXXXXX\00", align 1
@tmpattrsfile = dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"tab.XXXXXX\00", align 1
@tmptabfile = dso_local global i8* null, align 8
@tabfile = dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c".stype.h\00", align 1
@attrsfile = dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c".guard.c\00", align 1
@guardfile = dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"BISON_HAIRY\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"parse.y.in\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"bison: \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @stringappend(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %17, %3
  %13 = load i8*, i8** %8, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %8, align 8
  %15 = load i8, i8* %13, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %10, align 4
  br label %12, !llvm.loop !4

20:                                               ; preds = %12
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %21, %22
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %4, align 8
  store i8* %30, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %41, %20
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %9, align 8
  %38 = load i8, i8* %36, align 1
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  store i8 %38, i8* %39, align 1
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %31, !llvm.loop !6

44:                                               ; preds = %31
  %45 = load i8*, i8** %6, align 8
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %53, %44
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %9, align 8
  %49 = load i8, i8* %47, align 1
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  store i8 %49, i8* %50, align 1
  %52 = icmp ne i8 %49, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %46, !llvm.loop !7

54:                                               ; preds = %46
  %55 = load i8*, i8** %7, align 8
  ret i8* %55
}

declare dso_local i8* @mallocate(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @openfiles() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i64 @strlen(i8* noundef %8) #5
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** @spec_outfile, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %53

13:                                               ; preds = %0
  %14 = load i8*, i8** @spec_outfile, align 8
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = call i64 @strlen(i8* noundef %15) #5
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load i8*, i8** %1, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 -2
  %23 = call i32 @strcmp(i8* noundef %22, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #5
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 2
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %13
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i8*, i8** %1, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = getelementptr inbounds i8, i8* %33, i64 -4
  %35 = call i32 @strcmp(i8* noundef %34, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #5
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, 4
  store i32 %39, i32* %5, align 4
  br label %52

40:                                               ; preds = %28
  %41 = load i8*, i8** %1, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = getelementptr inbounds i8, i8* %44, i64 -4
  %46 = call i32 @strcmp(i8* noundef %45, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %40
  br label %52

52:                                               ; preds = %51, %37
  br label %102

53:                                               ; preds = %0
  %54 = load i32, i32* @fixed_outfiles, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %59

57:                                               ; preds = %53
  %58 = load i8*, i8** @infile, align 8
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %56 ], [ %58, %57 ]
  store i8* %60, i8** %1, align 8
  %61 = load i8*, i8** %1, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  call void @exit(i32 noundef 1) #6
  unreachable

64:                                               ; preds = %59
  %65 = load i8*, i8** %1, align 8
  store i8* %65, i8** %2, align 8
  br label %66

66:                                               ; preds = %78, %64
  %67 = load i8*, i8** %2, align 8
  %68 = load i8, i8* %67, align 1
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i8*, i8** %2, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 47
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i8*, i8** %2, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8* %77, i8** %1, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i8*, i8** %2, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %2, align 8
  br label %66, !llvm.loop !8

81:                                               ; preds = %66
  %82 = load i8*, i8** %1, align 8
  %83 = call i64 @strlen(i8* noundef %82) #5
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %4, align 4
  %85 = load i8*, i8** %1, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = getelementptr inbounds i8, i8* %88, i64 -2
  %90 = call i32 @strcmp(i8* noundef %89, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #5
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %4, align 4
  %94 = sub nsw i32 %93, 2
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %81
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %5, align 4
  %97 = load i8*, i8** %1, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i8* @stringappend(i8* noundef %97, i32 noundef %98, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %99, i8** %1, align 8
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %95, %52
  %103 = load i8*, i8** @infile, align 8
  %104 = call %struct._IO_FILE* @tryopen(i8* noundef %103, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store %struct._IO_FILE* %104, %struct._IO_FILE** @finput, align 8
  %105 = load i32, i32* @verboseflag, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i8*, i8** %1, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i8* @stringappend(i8* noundef %108, i32 noundef %109, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i8* %110, i8** @outfile, align 8
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %111, %struct._IO_FILE** @foutput, align 8
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, i32* @definesflag, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i8*, i8** %1, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i8* @stringappend(i8* noundef %116, i32 noundef %117, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i8* %118, i8** @defsfile, align 8
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %119, %struct._IO_FILE** @fdefines, align 8
  br label %120

120:                                              ; preds = %115, %112
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i8* @stringappend(i8* noundef %121, i32 noundef %122, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %124 = call i8* @mktemp(i8* noundef %123) #7
  store i8* %124, i8** @actfile, align 8
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %125, %struct._IO_FILE** @faction, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i8* @stringappend(i8* noundef %126, i32 noundef %127, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %129 = call i8* @mktemp(i8* noundef %128) #7
  store i8* %129, i8** @tmpattrsfile, align 8
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %130, %struct._IO_FILE** @fattrs, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i8* @stringappend(i8* noundef %131, i32 noundef %132, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %134 = call i8* @mktemp(i8* noundef %133) #7
  store i8* %134, i8** @tmptabfile, align 8
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %135, %struct._IO_FILE** @ftable, align 8
  %136 = load i8*, i8** @spec_outfile, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %120
  %139 = load i8*, i8** @spec_outfile, align 8
  store i8* %139, i8** @tabfile, align 8
  br label %144

140:                                              ; preds = %120
  %141 = load i8*, i8** %1, align 8
  %142 = load i32, i32* %4, align 4
  %143 = call i8* @stringappend(i8* noundef %141, i32 noundef %142, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %143, i8** @tabfile, align 8
  br label %144

144:                                              ; preds = %140, %138
  %145 = load i8*, i8** %1, align 8
  %146 = load i32, i32* %5, align 4
  %147 = call i8* @stringappend(i8* noundef %145, i32 noundef %146, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  store i8* %147, i8** @attrsfile, align 8
  %148 = load i8*, i8** %1, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i8* @stringappend(i8* noundef %148, i32 noundef %149, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  store i8* %150, i8** @guardfile, align 8
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @mktemp(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @open_extra_files() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %5 = call i32 @fclose(%struct._IO_FILE* noundef %4)
  %6 = call i8* @getenv(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0)) #7
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i8*, i8** %3, align 8
  br label %12

11:                                               ; preds = %0
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i8* [ %10, %9 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), %11 ]
  %14 = call %struct._IO_FILE* @tryopen(i8* noundef %13, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store %struct._IO_FILE* %14, %struct._IO_FILE** @fparser, align 8
  %15 = load i8*, i8** @attrsfile, align 8
  %16 = call %struct._IO_FILE* @tryopen(i8* noundef %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store %struct._IO_FILE* %16, %struct._IO_FILE** %1, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  call void @rewind(%struct._IO_FILE* noundef %17)
  br label %18

18:                                               ; preds = %22, %12
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %20 = call i32 @getc(%struct._IO_FILE* noundef %19)
  store i32 %20, i32* %2, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %25 = call i32 @putc(i32 noundef %23, %struct._IO_FILE* noundef %24)
  br label %18, !llvm.loop !9

26:                                               ; preds = %18
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  store %struct._IO_FILE* %27, %struct._IO_FILE** @fattrs, align 8
  %28 = load i8*, i8** @guardfile, align 8
  %29 = call %struct._IO_FILE* @tryopen(i8* noundef %28, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store %struct._IO_FILE* %29, %struct._IO_FILE** @fguard, align 8
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #4

declare dso_local void @rewind(%struct._IO_FILE* noundef) #1

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._IO_FILE* @tryopen(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call noalias %struct._IO_FILE* @fopen(i8* noundef %6, i8* noundef %7)
  store %struct._IO_FILE* %8, %struct._IO_FILE** %5, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %14 = load i8*, i8** %3, align 8
  call void @perror(i8* noundef %14)
  call void @done(i32 noundef 2)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  ret %struct._IO_FILE* %16
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @perror(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @done(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @exit(i32 noundef %3) #6
  unreachable
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

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
