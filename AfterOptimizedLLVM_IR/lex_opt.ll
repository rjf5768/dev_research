; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/lex.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bucket = type { %struct.bucket*, %struct.bucket*, i8*, i8*, i16, i16, i16, i16, i8 }

@unlexed = internal global i32 0, align 4
@finput = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [23 x i8] c"unexpected '/%c' found\00", align 1
@lineno = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1
@symval = dso_local global %struct.bucket* null, align 8
@unlexed_symval = internal global %struct.bucket* null, align 8
@token_buffer = dso_local global [1025 x i8] zeroinitializer, align 16
@numval = dso_local global i32 0, align 4
@translations = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"malformatted literal token '\\%03o'\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"invalid literal token '\\%c'\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"multicharacter literal tokens NOT supported\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"unterminated type name\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"type name too long (%d max)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"term\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"nterm\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"guard\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"expect\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"nonassoc\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"semantic_parser\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"pure_parser\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"prec\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_lex() #0 {
  store i32 -1, i32* @unlexed, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @skip_white_space() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %4 = call i32 @getc(%struct._IO_FILE* noundef %3)
  store i32 %4, i32* %1, align 4
  br label %5

5:                                                ; preds = %64, %0
  %6 = load i32, i32* %1, align 4
  switch i32 %6, label %62 [
    i32 47, label %7
    i32 10, label %56
    i32 32, label %59
    i32 9, label %59
    i32 12, label %59
  ]

7:                                                ; preds = %5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %9 = call i32 @getc(%struct._IO_FILE* noundef %8)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp ne i32 %10, 42
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i32, i32* %1, align 4
  call void @fatals(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %14

14:                                               ; preds = %12, %7
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %16 = call i32 @getc(%struct._IO_FILE* noundef %15)
  store i32 %16, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %17

17:                                               ; preds = %54, %14
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = icmp eq i32 %21, 42
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %27, %23
  %25 = load i32, i32* %1, align 4
  %26 = icmp eq i32 %25, 42
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %29 = call i32 @getc(%struct._IO_FILE* noundef %28)
  store i32 %29, i32* %1, align 4
  br label %24, !llvm.loop !4

30:                                               ; preds = %24
  %31 = load i32, i32* %1, align 4
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %35 = call i32 @getc(%struct._IO_FILE* noundef %34)
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %33, %30
  br label %54

37:                                               ; preds = %20
  %38 = load i32, i32* %1, align 4
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* @lineno, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @lineno, align 4
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %44 = call i32 @getc(%struct._IO_FILE* noundef %43)
  store i32 %44, i32* %1, align 4
  br label %53

45:                                               ; preds = %37
  %46 = load i32, i32* %1, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @fatal(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %52

49:                                               ; preds = %45
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %51 = call i32 @getc(%struct._IO_FILE* noundef %50)
  store i32 %51, i32* %1, align 4
  br label %52

52:                                               ; preds = %49, %48
  br label %53

53:                                               ; preds = %52, %40
  br label %54

54:                                               ; preds = %53, %36
  br label %17, !llvm.loop !6

55:                                               ; preds = %17
  br label %64

56:                                               ; preds = %5
  %57 = load i32, i32* @lineno, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @lineno, align 4
  br label %59

59:                                               ; preds = %5, %5, %5, %56
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %61 = call i32 @getc(%struct._IO_FILE* noundef %60)
  store i32 %61, i32* %1, align 4
  br label %64

62:                                               ; preds = %5
  %63 = load i32, i32* %1, align 4
  ret i32 %63

64:                                               ; preds = %59, %55
  br label %5
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

declare dso_local void @fatals(i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @fatal(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @unlex(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @unlexed, align 4
  %4 = load %struct.bucket*, %struct.bucket** @symval, align 8
  store %struct.bucket* %4, %struct.bucket** @unlexed_symval, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @unlexed, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load %struct.bucket*, %struct.bucket** @unlexed_symval, align 8
  store %struct.bucket* %8, %struct.bucket** @symval, align 8
  %9 = load i32, i32* @unlexed, align 4
  store i32 %9, i32* %2, align 4
  store i32 -1, i32* @unlexed, align 4
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %342

11:                                               ; preds = %0
  %12 = call i32 @skip_white_space()
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  switch i32 %13, label %341 [
    i32 -1, label %14
    i32 65, label %15
    i32 66, label %15
    i32 67, label %15
    i32 68, label %15
    i32 69, label %15
    i32 70, label %15
    i32 71, label %15
    i32 72, label %15
    i32 73, label %15
    i32 74, label %15
    i32 75, label %15
    i32 76, label %15
    i32 77, label %15
    i32 78, label %15
    i32 79, label %15
    i32 80, label %15
    i32 81, label %15
    i32 82, label %15
    i32 83, label %15
    i32 84, label %15
    i32 85, label %15
    i32 86, label %15
    i32 87, label %15
    i32 88, label %15
    i32 89, label %15
    i32 90, label %15
    i32 97, label %15
    i32 98, label %15
    i32 99, label %15
    i32 100, label %15
    i32 101, label %15
    i32 102, label %15
    i32 103, label %15
    i32 104, label %15
    i32 105, label %15
    i32 106, label %15
    i32 107, label %15
    i32 108, label %15
    i32 109, label %15
    i32 110, label %15
    i32 111, label %15
    i32 112, label %15
    i32 113, label %15
    i32 114, label %15
    i32 115, label %15
    i32 116, label %15
    i32 117, label %15
    i32 118, label %15
    i32 119, label %15
    i32 120, label %15
    i32 121, label %15
    i32 122, label %15
    i32 46, label %15
    i32 95, label %15
    i32 48, label %51
    i32 49, label %51
    i32 50, label %51
    i32 51, label %51
    i32 52, label %51
    i32 53, label %51
    i32 54, label %51
    i32 55, label %51
    i32 56, label %51
    i32 57, label %51
    i32 39, label %74
    i32 44, label %279
    i32 58, label %280
    i32 59, label %281
    i32 124, label %282
    i32 123, label %283
    i32 61, label %284
    i32 60, label %313
    i32 37, label %339
  ]

14:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %342

15:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8** %3, align 8
  br label %16

16:                                               ; preds = %42, %15
  %17 = call i16** @__ctype_b_loc() #4
  %18 = load i16*, i16** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %18, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %27, 95
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, 46
  br label %32

32:                                               ; preds = %29, %26, %16
  %33 = phi i1 [ true, %26 ], [ true, %16 ], [ %31, %29 ]
  br i1 %33, label %34, label %45

34:                                               ; preds = %32
  %35 = load i8*, i8** %3, align 8
  %36 = icmp ult i8* %35, getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1024)
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %3, align 8
  store i8 %39, i8* %40, align 1
  br label %42

42:                                               ; preds = %37, %34
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %44 = call i32 @getc(%struct._IO_FILE* noundef %43)
  store i32 %44, i32* %2, align 4
  br label %16, !llvm.loop !7

45:                                               ; preds = %32
  %46 = load i8*, i8** %3, align 8
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* %2, align 4
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %49 = call i32 @ungetc(i32 noundef %47, %struct._IO_FILE* noundef %48)
  %50 = call %struct.bucket* (i8*, ...) bitcast (%struct.bucket* (...)* @getsym to %struct.bucket* (i8*, ...)*)(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0))
  store %struct.bucket* %50, %struct.bucket** @symval, align 8
  store i32 1, i32* %1, align 4
  br label %342

51:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  store i32 0, i32* @numval, align 4
  br label %52

52:                                               ; preds = %62, %51
  %53 = call i16** @__ctype_b_loc() #4
  %54 = load i16*, i16** %53, align 8
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %54, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = and i32 %59, 2048
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %52
  %63 = load i32, i32* @numval, align 4
  %64 = mul nsw i32 %63, 10
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %64, %65
  %67 = sub nsw i32 %66, 48
  store i32 %67, i32* @numval, align 4
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %69 = call i32 @getc(%struct._IO_FILE* noundef %68)
  store i32 %69, i32* %2, align 4
  br label %52, !llvm.loop !8

70:                                               ; preds = %52
  %71 = load i32, i32* %2, align 4
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %73 = call i32 @ungetc(i32 noundef %71, %struct._IO_FILE* noundef %72)
  store i32 22, i32* %1, align 4
  br label %342

74:                                               ; preds = %11
  store i32 -1, i32* @translations, align 4
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %76 = call i32 @getc(%struct._IO_FILE* noundef %75)
  store i32 %76, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %77 = load i32, i32* %2, align 4
  %78 = icmp eq i32 %77, 92
  br i1 %78, label %79, label %158

79:                                               ; preds = %74
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %81 = call i32 @getc(%struct._IO_FILE* noundef %80)
  store i32 %81, i32* %2, align 4
  %82 = load i32, i32* %2, align 4
  %83 = icmp sle i32 %82, 55
  br i1 %83, label %84, label %113

84:                                               ; preds = %79
  %85 = load i32, i32* %2, align 4
  %86 = icmp sge i32 %85, 48
  br i1 %86, label %87, label %113

87:                                               ; preds = %84
  br label %88

88:                                               ; preds = %96, %87
  %89 = load i32, i32* %2, align 4
  %90 = icmp sle i32 %89, 55
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %2, align 4
  %93 = icmp sge i32 %92, 48
  br label %94

94:                                               ; preds = %91, %88
  %95 = phi i1 [ false, %88 ], [ %93, %91 ]
  br i1 %95, label %96, label %104

96:                                               ; preds = %94
  %97 = load i32, i32* %4, align 4
  %98 = mul nsw i32 %97, 8
  %99 = load i32, i32* %2, align 4
  %100 = sub nsw i32 %99, 48
  %101 = add nsw i32 %98, %100
  store i32 %101, i32* %4, align 4
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %103 = call i32 @getc(%struct._IO_FILE* noundef %102)
  store i32 %103, i32* %2, align 4
  br label %88, !llvm.loop !9

104:                                              ; preds = %94
  %105 = load i32, i32* %4, align 4
  %106 = icmp sge i32 %105, 128
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %4, align 4
  call void @fatals(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 noundef %111, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %112

112:                                              ; preds = %110, %107
  br label %157

113:                                              ; preds = %84, %79
  %114 = load i32, i32* %2, align 4
  %115 = icmp eq i32 %114, 116
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 9, i32* %4, align 4
  br label %154

117:                                              ; preds = %113
  %118 = load i32, i32* %2, align 4
  %119 = icmp eq i32 %118, 110
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 10, i32* %4, align 4
  br label %153

121:                                              ; preds = %117
  %122 = load i32, i32* %2, align 4
  %123 = icmp eq i32 %122, 114
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 13, i32* %4, align 4
  br label %152

125:                                              ; preds = %121
  %126 = load i32, i32* %2, align 4
  %127 = icmp eq i32 %126, 102
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 12, i32* %4, align 4
  br label %151

129:                                              ; preds = %125
  %130 = load i32, i32* %2, align 4
  %131 = icmp eq i32 %130, 98
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 8, i32* %4, align 4
  br label %150

133:                                              ; preds = %129
  %134 = load i32, i32* %2, align 4
  %135 = icmp eq i32 %134, 92
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 92, i32* %4, align 4
  br label %149

137:                                              ; preds = %133
  %138 = load i32, i32* %2, align 4
  %139 = icmp eq i32 %138, 39
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 39, i32* %4, align 4
  br label %148

141:                                              ; preds = %137
  %142 = load i32, i32* %2, align 4
  %143 = icmp eq i32 %142, 34
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 34, i32* %4, align 4
  br label %147

145:                                              ; preds = %141
  %146 = load i32, i32* %2, align 4
  call void @fatals(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 noundef %146, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %147

147:                                              ; preds = %145, %144
  br label %148

148:                                              ; preds = %147, %140
  br label %149

149:                                              ; preds = %148, %136
  br label %150

150:                                              ; preds = %149, %132
  br label %151

151:                                              ; preds = %150, %128
  br label %152

152:                                              ; preds = %151, %124
  br label %153

153:                                              ; preds = %152, %120
  br label %154

154:                                              ; preds = %153, %116
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %156 = call i32 @getc(%struct._IO_FILE* noundef %155)
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %154, %112
  br label %162

158:                                              ; preds = %74
  %159 = load i32, i32* %2, align 4
  store i32 %159, i32* %4, align 4
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %161 = call i32 @getc(%struct._IO_FILE* noundef %160)
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %158, %157
  %163 = load i32, i32* %2, align 4
  %164 = icmp ne i32 %163, 39
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  call void @fatal(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %166

166:                                              ; preds = %165, %162
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8** %3, align 8
  %167 = load i8*, i8** %3, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %3, align 8
  store i8 39, i8* %167, align 1
  %169 = load i32, i32* %4, align 4
  %170 = icmp eq i32 %169, 92
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), i8** %3, align 8
  %172 = load i8*, i8** %3, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %3, align 8
  store i8 92, i8* %172, align 1
  %174 = load i8*, i8** %3, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %3, align 8
  store i8 92, i8* %174, align 1
  br label %262

176:                                              ; preds = %166
  %177 = load i32, i32* %4, align 4
  %178 = icmp eq i32 %177, 39
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), i8** %3, align 8
  %180 = load i8*, i8** %3, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %3, align 8
  store i8 92, i8* %180, align 1
  %182 = load i8*, i8** %3, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %3, align 8
  store i8 39, i8* %182, align 1
  br label %261

184:                                              ; preds = %176
  %185 = load i32, i32* %4, align 4
  %186 = icmp sge i32 %185, 32
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = load i32, i32* %4, align 4
  %189 = icmp ne i32 %188, 127
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load i32, i32* %4, align 4
  %192 = trunc i32 %191 to i8
  %193 = load i8*, i8** %3, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %3, align 8
  store i8 %192, i8* %193, align 1
  br label %260

195:                                              ; preds = %187, %184
  %196 = load i32, i32* %4, align 4
  %197 = icmp eq i32 %196, 9
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), i8** %3, align 8
  %199 = load i8*, i8** %3, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %3, align 8
  store i8 92, i8* %199, align 1
  %201 = load i8*, i8** %3, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %3, align 8
  store i8 116, i8* %201, align 1
  br label %259

203:                                              ; preds = %195
  %204 = load i32, i32* %4, align 4
  %205 = icmp eq i32 %204, 10
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), i8** %3, align 8
  %207 = load i8*, i8** %3, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %3, align 8
  store i8 92, i8* %207, align 1
  %209 = load i8*, i8** %3, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %3, align 8
  store i8 110, i8* %209, align 1
  br label %258

211:                                              ; preds = %203
  %212 = load i32, i32* %4, align 4
  %213 = icmp eq i32 %212, 13
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), i8** %3, align 8
  %215 = load i8*, i8** %3, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %3, align 8
  store i8 92, i8* %215, align 1
  %217 = load i8*, i8** %3, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %3, align 8
  store i8 114, i8* %217, align 1
  br label %257

219:                                              ; preds = %211
  %220 = load i32, i32* %4, align 4
  %221 = icmp eq i32 %220, 8
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), i8** %3, align 8
  %223 = load i8*, i8** %3, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %3, align 8
  store i8 92, i8* %223, align 1
  %225 = load i8*, i8** %3, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %3, align 8
  store i8 98, i8* %225, align 1
  br label %256

227:                                              ; preds = %219
  %228 = load i32, i32* %4, align 4
  %229 = icmp eq i32 %228, 12
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), i8** %3, align 8
  %231 = load i8*, i8** %3, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %3, align 8
  store i8 92, i8* %231, align 1
  %233 = load i8*, i8** %3, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %3, align 8
  store i8 102, i8* %233, align 1
  br label %255

235:                                              ; preds = %227
  %236 = load i32, i32* %4, align 4
  %237 = sdiv i32 %236, 64
  %238 = add nsw i32 %237, 48
  %239 = trunc i32 %238 to i8
  %240 = load i8*, i8** %3, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %3, align 8
  store i8 %239, i8* %240, align 1
  %242 = load i32, i32* %4, align 4
  %243 = sdiv i32 %242, 8
  %244 = and i32 %243, 7
  %245 = add nsw i32 %244, 48
  %246 = trunc i32 %245 to i8
  %247 = load i8*, i8** %3, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %3, align 8
  store i8 %246, i8* %247, align 1
  %249 = load i32, i32* %4, align 4
  %250 = and i32 %249, 7
  %251 = add nsw i32 %250, 48
  %252 = trunc i32 %251 to i8
  %253 = load i8*, i8** %3, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %3, align 8
  store i8 %252, i8* %253, align 1
  br label %255

255:                                              ; preds = %235, %230
  br label %256

256:                                              ; preds = %255, %222
  br label %257

257:                                              ; preds = %256, %214
  br label %258

258:                                              ; preds = %257, %206
  br label %259

259:                                              ; preds = %258, %198
  br label %260

260:                                              ; preds = %259, %190
  br label %261

261:                                              ; preds = %260, %179
  br label %262

262:                                              ; preds = %261, %171
  %263 = load i8*, i8** %3, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %3, align 8
  store i8 39, i8* %263, align 1
  %265 = load i8*, i8** %3, align 8
  store i8 0, i8* %265, align 1
  %266 = call %struct.bucket* (i8*, ...) bitcast (%struct.bucket* (...)* @getsym to %struct.bucket* (i8*, ...)*)(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0))
  store %struct.bucket* %266, %struct.bucket** @symval, align 8
  %267 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %268 = getelementptr inbounds %struct.bucket, %struct.bucket* %267, i32 0, i32 8
  store i8 1, i8* %268, align 8
  %269 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %270 = getelementptr inbounds %struct.bucket, %struct.bucket* %269, i32 0, i32 7
  %271 = load i16, i16* %270, align 2
  %272 = icmp ne i16 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %262
  %274 = load i32, i32* %4, align 4
  %275 = trunc i32 %274 to i16
  %276 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %277 = getelementptr inbounds %struct.bucket, %struct.bucket* %276, i32 0, i32 7
  store i16 %275, i16* %277, align 2
  br label %278

278:                                              ; preds = %273, %262
  store i32 1, i32* %1, align 4
  br label %342

279:                                              ; preds = %11
  store i32 2, i32* %1, align 4
  br label %342

280:                                              ; preds = %11
  store i32 3, i32* %1, align 4
  br label %342

281:                                              ; preds = %11
  store i32 4, i32* %1, align 4
  br label %342

282:                                              ; preds = %11
  store i32 5, i32* %1, align 4
  br label %342

283:                                              ; preds = %11
  store i32 6, i32* %1, align 4
  br label %342

284:                                              ; preds = %11
  br label %285

285:                                              ; preds = %303, %284
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %287 = call i32 @getc(%struct._IO_FILE* noundef %286)
  store i32 %287, i32* %2, align 4
  %288 = load i32, i32* %2, align 4
  %289 = icmp eq i32 %288, 10
  br i1 %289, label %290, label %293

290:                                              ; preds = %285
  %291 = load i32, i32* @lineno, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* @lineno, align 4
  br label %293

293:                                              ; preds = %290, %285
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %2, align 4
  %296 = icmp eq i32 %295, 32
  br i1 %296, label %303, label %297

297:                                              ; preds = %294
  %298 = load i32, i32* %2, align 4
  %299 = icmp eq i32 %298, 10
  br i1 %299, label %303, label %300

300:                                              ; preds = %297
  %301 = load i32, i32* %2, align 4
  %302 = icmp eq i32 %301, 9
  br label %303

303:                                              ; preds = %300, %297, %294
  %304 = phi i1 [ true, %297 ], [ true, %294 ], [ %302, %300 ]
  br i1 %304, label %285, label %305, !llvm.loop !10

305:                                              ; preds = %303
  %306 = load i32, i32* %2, align 4
  %307 = icmp eq i32 %306, 123
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  store i32 6, i32* %1, align 4
  br label %342

309:                                              ; preds = %305
  %310 = load i32, i32* %2, align 4
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %312 = call i32 @ungetc(i32 noundef %310, %struct._IO_FILE* noundef %311)
  store i32 24, i32* %1, align 4
  br label %342

313:                                              ; preds = %11
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8** %3, align 8
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %315 = call i32 @getc(%struct._IO_FILE* noundef %314)
  store i32 %315, i32* %2, align 4
  br label %316

316:                                              ; preds = %330, %313
  %317 = load i32, i32* %2, align 4
  %318 = icmp ne i32 %317, 62
  br i1 %318, label %319, label %337

319:                                              ; preds = %316
  %320 = load i32, i32* %2, align 4
  %321 = icmp eq i32 %320, 10
  br i1 %321, label %325, label %322

322:                                              ; preds = %319
  %323 = load i32, i32* %2, align 4
  %324 = icmp eq i32 %323, -1
  br i1 %324, label %325, label %326

325:                                              ; preds = %322, %319
  call void @fatal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %326

326:                                              ; preds = %325, %322
  %327 = load i8*, i8** %3, align 8
  %328 = icmp uge i8* %327, getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1023)
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  call void @fatals(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 noundef 1023, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %330

330:                                              ; preds = %329, %326
  %331 = load i32, i32* %2, align 4
  %332 = trunc i32 %331 to i8
  %333 = load i8*, i8** %3, align 8
  %334 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %334, i8** %3, align 8
  store i8 %332, i8* %333, align 1
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %336 = call i32 @getc(%struct._IO_FILE* noundef %335)
  store i32 %336, i32* %2, align 4
  br label %316, !llvm.loop !11

337:                                              ; preds = %316
  %338 = load i8*, i8** %3, align 8
  store i8 0, i8* %338, align 1
  store i32 21, i32* %1, align 4
  br label %342

339:                                              ; preds = %11
  %340 = call i32 @parse_percent_token()
  store i32 %340, i32* %1, align 4
  br label %342

341:                                              ; preds = %11
  store i32 24, i32* %1, align 4
  br label %342

342:                                              ; preds = %341, %339, %337, %309, %308, %283, %282, %281, %280, %279, %278, %70, %45, %14, %7
  %343 = load i32, i32* %1, align 4
  ret i32 %343
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local %struct.bucket* @getsym(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @parse_percent_token() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8** %3, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %5 = call i32 @getc(%struct._IO_FILE* noundef %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %14 [
    i32 37, label %7
    i32 123, label %8
    i32 60, label %9
    i32 62, label %10
    i32 50, label %11
    i32 48, label %12
    i32 61, label %13
  ]

7:                                                ; preds = %0
  store i32 7, i32* %1, align 4
  br label %115

8:                                                ; preds = %0
  store i32 8, i32* %1, align 4
  br label %115

9:                                                ; preds = %0
  store i32 15, i32* %1, align 4
  br label %115

10:                                               ; preds = %0
  store i32 16, i32* %1, align 4
  br label %115

11:                                               ; preds = %0
  store i32 17, i32* %1, align 4
  br label %115

12:                                               ; preds = %0
  store i32 9, i32* %1, align 4
  br label %115

13:                                               ; preds = %0
  store i32 18, i32* %1, align 4
  br label %115

14:                                               ; preds = %0
  %15 = call i16** @__ctype_b_loc() #4
  %16 = load i16*, i16** %15, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %16, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 1024
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store i32 24, i32* %1, align 4
  br label %115

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %49, %25
  %27 = call i16** @__ctype_b_loc() #4
  %28 = load i16*, i16** %27, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %28, i64 %30
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 1024
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %2, align 4
  %38 = icmp eq i32 %37, 95
  br label %39

39:                                               ; preds = %36, %26
  %40 = phi i1 [ true, %26 ], [ %38, %36 ]
  br i1 %40, label %41, label %52

41:                                               ; preds = %39
  %42 = load i8*, i8** %3, align 8
  %43 = icmp ult i8* %42, getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1024)
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %2, align 4
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %3, align 8
  store i8 %46, i8* %47, align 1
  br label %49

49:                                               ; preds = %44, %41
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %51 = call i32 @getc(%struct._IO_FILE* noundef %50)
  store i32 %51, i32* %2, align 4
  br label %26, !llvm.loop !12

52:                                               ; preds = %39
  %53 = load i32, i32* %2, align 4
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %55 = call i32 @ungetc(i32 noundef %53, %struct._IO_FILE* noundef %54)
  %56 = load i8*, i8** %3, align 8
  store i8 0, i8* %56, align 1
  %57 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %52
  store i32 9, i32* %1, align 4
  br label %115

63:                                               ; preds = %59
  %64 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)) #5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 10, i32* %1, align 4
  br label %115

67:                                               ; preds = %63
  %68 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #5
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 12, i32* %1, align 4
  br label %115

71:                                               ; preds = %67
  %72 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)) #5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 11, i32* %1, align 4
  br label %115

75:                                               ; preds = %71
  %76 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 13, i32* %1, align 4
  br label %115

79:                                               ; preds = %75
  %80 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #5
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 23, i32* %1, align 4
  br label %115

83:                                               ; preds = %79
  %84 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #5
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 14, i32* %1, align 4
  br label %115

87:                                               ; preds = %83
  %88 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #5
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 15, i32* %1, align 4
  br label %115

91:                                               ; preds = %87
  %92 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #5
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 16, i32* %1, align 4
  br label %115

95:                                               ; preds = %91
  %96 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0)) #5
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)) #5
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %95
  store i32 17, i32* %1, align 4
  br label %115

102:                                              ; preds = %98
  %103 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0)) #5
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 19, i32* %1, align 4
  br label %115

106:                                              ; preds = %102
  %107 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0)) #5
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 20, i32* %1, align 4
  br label %115

110:                                              ; preds = %106
  %111 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #5
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 18, i32* %1, align 4
  br label %115

114:                                              ; preds = %110
  store i32 24, i32* %1, align 4
  br label %115

115:                                              ; preds = %114, %113, %109, %105, %101, %94, %90, %86, %82, %78, %74, %70, %66, %62, %24, %13, %12, %11, %10, %9, %8, %7
  %116 = load i32, i32* %1, align 4
  ret i32 %116
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind readonly willreturn }

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
