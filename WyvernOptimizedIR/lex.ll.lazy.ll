; ModuleID = './lex.ll'
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @init_lex() #0 {
  store i32 -1, i32* @unlexed, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @skip_white_space() #1 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %2 = call i32 @getc(%struct._IO_FILE* noundef %1) #7
  br label %3

3:                                                ; preds = %50, %0
  %.0 = phi i32 [ %2, %0 ], [ %.7, %50 ]
  switch i32 %.0, label %49 [
    i32 47, label %4
    i32 10, label %43
    i32 32, label %46
    i32 9, label %46
    i32 12, label %46
  ]

4:                                                ; preds = %3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %6 = call i32 @getc(%struct._IO_FILE* noundef %5) #7
  %.not = icmp eq i32 %6, 42
  br i1 %.not, label %8, label %7

7:                                                ; preds = %4
  call void @fatals(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %8

8:                                                ; preds = %7, %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %10 = call i32 @getc(%struct._IO_FILE* noundef %9) #7
  br label %11

11:                                               ; preds = %41, %8
  %.01 = phi i32 [ 1, %8 ], [ %.23, %41 ]
  %.1 = phi i32 [ %10, %8 ], [ %.6, %41 ]
  %.not4 = icmp eq i32 %.01, 0
  br i1 %.not4, label %42, label %12

12:                                               ; preds = %11
  %13 = icmp eq i32 %.1, 42
  br i1 %13, label %14, label %26

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %17, %14
  %.2 = phi i32 [ %.1, %14 ], [ %19, %17 ]
  %16 = icmp eq i32 %.2, 42
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %19 = call i32 @getc(%struct._IO_FILE* noundef %18) #7
  br label %15, !llvm.loop !4

20:                                               ; preds = %15
  %21 = icmp eq i32 %.2, 47
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %24 = call i32 @getc(%struct._IO_FILE* noundef %23) #7
  br label %25

25:                                               ; preds = %22, %20
  %.12 = phi i32 [ 0, %22 ], [ %.01, %20 ]
  %.3 = phi i32 [ %24, %22 ], [ %.2, %20 ]
  br label %41

26:                                               ; preds = %12
  %27 = icmp eq i32 %.1, 10
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = load i32, i32* @lineno, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @lineno, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %32 = call i32 @getc(%struct._IO_FILE* noundef %31) #7
  br label %40

33:                                               ; preds = %26
  %34 = icmp eq i32 %.1, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  call void @fatal(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)) #7
  br label %39

36:                                               ; preds = %33
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %38 = call i32 @getc(%struct._IO_FILE* noundef %37) #7
  br label %39

39:                                               ; preds = %36, %35
  %.4 = phi i32 [ %.1, %35 ], [ %38, %36 ]
  br label %40

40:                                               ; preds = %39, %28
  %.5 = phi i32 [ %32, %28 ], [ %.4, %39 ]
  br label %41

41:                                               ; preds = %40, %25
  %.23 = phi i32 [ %.12, %25 ], [ %.01, %40 ]
  %.6 = phi i32 [ %.3, %25 ], [ %.5, %40 ]
  br label %11, !llvm.loop !6

42:                                               ; preds = %11
  br label %50

43:                                               ; preds = %3
  %44 = load i32, i32* @lineno, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @lineno, align 4
  br label %46

46:                                               ; preds = %43, %3, %3, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %48 = call i32 @getc(%struct._IO_FILE* noundef %47) #7
  br label %50

49:                                               ; preds = %3
  ret i32 %.0

50:                                               ; preds = %46, %42
  %.7 = phi i32 [ %48, %46 ], [ %.1, %42 ]
  br label %3
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #2

declare dso_local void @fatals(i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @fatal(i8* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @unlex(i32 noundef %0) #3 {
  store i32 %0, i32* @unlexed, align 4
  %2 = load %struct.bucket*, %struct.bucket** @symval, align 8
  store %struct.bucket* %2, %struct.bucket** @unlexed_symval, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lex() #1 {
  %1 = load i32, i32* @unlexed, align 4
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load %struct.bucket*, %struct.bucket** @unlexed_symval, align 8
  store %struct.bucket* %4, %struct.bucket** @symval, align 8
  %5 = load i32, i32* @unlexed, align 4
  store i32 -1, i32* @unlexed, align 4
  br label %226

6:                                                ; preds = %0
  %7 = call i32 @skip_white_space()
  switch i32 %7, label %225 [
    i32 -1, label %8
    i32 65, label %9
    i32 66, label %9
    i32 67, label %9
    i32 68, label %9
    i32 69, label %9
    i32 70, label %9
    i32 71, label %9
    i32 72, label %9
    i32 73, label %9
    i32 74, label %9
    i32 75, label %9
    i32 76, label %9
    i32 77, label %9
    i32 78, label %9
    i32 79, label %9
    i32 80, label %9
    i32 81, label %9
    i32 82, label %9
    i32 83, label %9
    i32 84, label %9
    i32 85, label %9
    i32 86, label %9
    i32 87, label %9
    i32 88, label %9
    i32 89, label %9
    i32 90, label %9
    i32 97, label %9
    i32 98, label %9
    i32 99, label %9
    i32 100, label %9
    i32 101, label %9
    i32 102, label %9
    i32 103, label %9
    i32 104, label %9
    i32 105, label %9
    i32 106, label %9
    i32 107, label %9
    i32 108, label %9
    i32 109, label %9
    i32 110, label %9
    i32 111, label %9
    i32 112, label %9
    i32 113, label %9
    i32 114, label %9
    i32 115, label %9
    i32 116, label %9
    i32 117, label %9
    i32 118, label %9
    i32 119, label %9
    i32 120, label %9
    i32 121, label %9
    i32 122, label %9
    i32 46, label %9
    i32 95, label %9
    i32 48, label %35
    i32 49, label %35
    i32 50, label %35
    i32 51, label %35
    i32 52, label %35
    i32 53, label %35
    i32 54, label %35
    i32 55, label %35
    i32 56, label %35
    i32 57, label %35
    i32 39, label %53
    i32 44, label %178
    i32 58, label %179
    i32 59, label %180
    i32 124, label %181
    i32 123, label %182
    i32 61, label %183
    i32 60, label %206
    i32 37, label %223
  ]

8:                                                ; preds = %6
  br label %226

9:                                                ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  br label %10

10:                                               ; preds = %28, %9
  %.02 = phi i8* [ getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), %9 ], [ %.13, %28 ]
  %.01 = phi i32 [ %7, %9 ], [ %30, %28 ]
  %11 = call i16** @__ctype_b_loc() #8
  %12 = load i16*, i16** %11, align 8
  %13 = sext i32 %.01 to i64
  %14 = getelementptr inbounds i16, i16* %12, i64 %13
  %15 = load i16, i16* %14, align 2
  %16 = and i16 %15, 8
  %.not24 = icmp eq i16 %16, 0
  br i1 %.not24, label %17, label %21

17:                                               ; preds = %10
  %18 = icmp eq i32 %.01, 95
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = icmp eq i32 %.01, 46
  br label %21

21:                                               ; preds = %19, %17, %10
  %22 = phi i1 [ true, %17 ], [ true, %10 ], [ %20, %19 ]
  br i1 %22, label %23, label %31

23:                                               ; preds = %21
  %24 = icmp ult i8* %.02, getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1024)
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = trunc i32 %.01 to i8
  %27 = getelementptr inbounds i8, i8* %.02, i64 1
  store i8 %26, i8* %.02, align 1
  br label %28

28:                                               ; preds = %25, %23
  %.13 = phi i8* [ %27, %25 ], [ %.02, %23 ]
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %30 = call i32 @getc(%struct._IO_FILE* noundef %29) #7
  br label %10, !llvm.loop !7

31:                                               ; preds = %21
  store i8 0, i8* %.02, align 1
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %33 = call i32 @ungetc(i32 noundef %.01, %struct._IO_FILE* noundef %32) #7
  %34 = call %struct.bucket* (i8*, ...) bitcast (%struct.bucket* (...)* @getsym to %struct.bucket* (i8*, ...)*)(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0)) #7
  store %struct.bucket* %34, %struct.bucket** @symval, align 8
  br label %226

35:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  store i32 0, i32* @numval, align 4
  br label %36

36:                                               ; preds = %43, %35
  %.1 = phi i32 [ %7, %35 ], [ %49, %43 ]
  %37 = call i16** @__ctype_b_loc() #8
  %38 = load i16*, i16** %37, align 8
  %39 = sext i32 %.1 to i64
  %40 = getelementptr inbounds i16, i16* %38, i64 %39
  %41 = load i16, i16* %40, align 2
  %42 = and i16 %41, 2048
  %.not23 = icmp eq i16 %42, 0
  br i1 %.not23, label %50, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @numval, align 4
  %45 = mul nsw i32 %44, 10
  %46 = add nsw i32 %45, %.1
  %47 = add nsw i32 %46, -48
  store i32 %47, i32* @numval, align 4
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %49 = call i32 @getc(%struct._IO_FILE* noundef %48) #7
  br label %36, !llvm.loop !8

50:                                               ; preds = %36
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %52 = call i32 @ungetc(i32 noundef %.1, %struct._IO_FILE* noundef %51) #7
  br label %226

53:                                               ; preds = %6
  store i32 -1, i32* @translations, align 4
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %55 = call i32 @getc(%struct._IO_FILE* noundef %54) #7
  %56 = icmp eq i32 %55, 92
  br i1 %56, label %57, label %118

57:                                               ; preds = %53
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %59 = call i32 @getc(%struct._IO_FILE* noundef %58) #7
  %60 = icmp slt i32 %59, 56
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = icmp sgt i32 %59, 47
  br i1 %62, label %63, label %82

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %70, %63
  %.08 = phi i32 [ 0, %63 ], [ %73, %70 ]
  %.2 = phi i32 [ %59, %63 ], [ %75, %70 ]
  %65 = icmp slt i32 %.2, 56
  br i1 %65, label %66, label %68

66:                                               ; preds = %64
  %67 = icmp sgt i32 %.2, 47
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i1 [ false, %64 ], [ %67, %66 ]
  br i1 %69, label %70, label %76

70:                                               ; preds = %68
  %71 = shl nsw i32 %.08, 3
  %72 = add nsw i32 %.2, -48
  %73 = add nsw i32 %71, %72
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %75 = call i32 @getc(%struct._IO_FILE* noundef %74) #7
  br label %64, !llvm.loop !9

76:                                               ; preds = %68
  %77 = icmp sgt i32 %.08, 127
  br i1 %77, label %80, label %78

78:                                               ; preds = %76
  %79 = icmp slt i32 %.08, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %78, %76
  call void @fatals(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.08, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %81

81:                                               ; preds = %80, %78
  br label %117

82:                                               ; preds = %61, %57
  %83 = icmp eq i32 %59, 116
  br i1 %83, label %84, label %85

84:                                               ; preds = %82
  br label %114

85:                                               ; preds = %82
  %86 = icmp eq i32 %59, 110
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  br label %113

88:                                               ; preds = %85
  %89 = icmp eq i32 %59, 114
  br i1 %89, label %90, label %91

90:                                               ; preds = %88
  br label %112

91:                                               ; preds = %88
  %92 = icmp eq i32 %59, 102
  br i1 %92, label %93, label %94

93:                                               ; preds = %91
  br label %111

94:                                               ; preds = %91
  %95 = icmp eq i32 %59, 98
  br i1 %95, label %96, label %97

96:                                               ; preds = %94
  br label %110

97:                                               ; preds = %94
  %98 = icmp eq i32 %59, 92
  br i1 %98, label %99, label %100

99:                                               ; preds = %97
  br label %109

100:                                              ; preds = %97
  %101 = icmp eq i32 %59, 39
  br i1 %101, label %102, label %103

102:                                              ; preds = %100
  br label %108

103:                                              ; preds = %100
  %104 = icmp eq i32 %59, 34
  br i1 %104, label %105, label %106

105:                                              ; preds = %103
  br label %107

106:                                              ; preds = %103
  call void @fatals(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 noundef %59, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %107

107:                                              ; preds = %106, %105
  %.19 = phi i32 [ 34, %105 ], [ 0, %106 ]
  br label %108

108:                                              ; preds = %107, %102
  %.210 = phi i32 [ 39, %102 ], [ %.19, %107 ]
  br label %109

109:                                              ; preds = %108, %99
  %.311 = phi i32 [ 92, %99 ], [ %.210, %108 ]
  br label %110

110:                                              ; preds = %109, %96
  %.412 = phi i32 [ 8, %96 ], [ %.311, %109 ]
  br label %111

111:                                              ; preds = %110, %93
  %.513 = phi i32 [ 12, %93 ], [ %.412, %110 ]
  br label %112

112:                                              ; preds = %111, %90
  %.614 = phi i32 [ 13, %90 ], [ %.513, %111 ]
  br label %113

113:                                              ; preds = %112, %87
  %.715 = phi i32 [ 10, %87 ], [ %.614, %112 ]
  br label %114

114:                                              ; preds = %113, %84
  %.816 = phi i32 [ 9, %84 ], [ %.715, %113 ]
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %116 = call i32 @getc(%struct._IO_FILE* noundef %115) #7
  br label %117

117:                                              ; preds = %114, %81
  %.917 = phi i32 [ %.08, %81 ], [ %.816, %114 ]
  %.3 = phi i32 [ %.2, %81 ], [ %116, %114 ]
  br label %121

118:                                              ; preds = %53
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %120 = call i32 @getc(%struct._IO_FILE* noundef %119) #7
  br label %121

121:                                              ; preds = %118, %117
  %.1018 = phi i32 [ %.917, %117 ], [ %55, %118 ]
  %.4 = phi i32 [ %.3, %117 ], [ %120, %118 ]
  %.not20 = icmp eq i32 %.4, 39
  br i1 %.not20, label %123, label %122

122:                                              ; preds = %121
  call void @fatal(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0)) #7
  br label %123

123:                                              ; preds = %122, %121
  store i8 39, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), align 16
  %124 = icmp eq i32 %.1018, 92
  br i1 %124, label %125, label %126

125:                                              ; preds = %123
  store i8 92, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), align 1
  store i8 92, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 2), align 2
  br label %167

126:                                              ; preds = %123
  %127 = icmp eq i32 %.1018, 39
  br i1 %127, label %128, label %129

128:                                              ; preds = %126
  store i8 92, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), align 1
  store i8 39, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 2), align 2
  br label %166

129:                                              ; preds = %126
  %130 = icmp sgt i32 %.1018, 31
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %.not22 = icmp eq i32 %.1018, 127
  br i1 %.not22, label %134, label %132

132:                                              ; preds = %131
  %133 = trunc i32 %.1018 to i8
  store i8 %133, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), align 1
  br label %165

134:                                              ; preds = %131, %129
  %135 = icmp eq i32 %.1018, 9
  br i1 %135, label %136, label %137

136:                                              ; preds = %134
  store i8 92, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), align 1
  store i8 116, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 2), align 2
  br label %164

137:                                              ; preds = %134
  %138 = icmp eq i32 %.1018, 10
  br i1 %138, label %139, label %140

139:                                              ; preds = %137
  store i8 92, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), align 1
  store i8 110, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 2), align 2
  br label %163

140:                                              ; preds = %137
  %141 = icmp eq i32 %.1018, 13
  br i1 %141, label %142, label %143

142:                                              ; preds = %140
  store i8 92, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), align 1
  store i8 114, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 2), align 2
  br label %162

143:                                              ; preds = %140
  %144 = icmp eq i32 %.1018, 8
  br i1 %144, label %145, label %146

145:                                              ; preds = %143
  store i8 92, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), align 1
  store i8 98, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 2), align 2
  br label %161

146:                                              ; preds = %143
  %147 = icmp eq i32 %.1018, 12
  br i1 %147, label %148, label %149

148:                                              ; preds = %146
  store i8 92, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), align 1
  store i8 102, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 2), align 2
  br label %160

149:                                              ; preds = %146
  %150 = sdiv i32 %.1018, 64
  %151 = trunc i32 %150 to i8
  %152 = add i8 %151, 48
  store i8 %152, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), align 1
  %153 = sdiv i32 %.1018, 8
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 7
  %156 = or i8 %155, 48
  store i8 %156, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 2), align 2
  %157 = trunc i32 %.1018 to i8
  %158 = and i8 %157, 7
  %159 = or i8 %158, 48
  store i8 %159, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 3), align 1
  br label %160

160:                                              ; preds = %149, %148
  %.24 = phi i8* [ getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 3), %148 ], [ getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 4), %149 ]
  br label %161

161:                                              ; preds = %160, %145
  %.35 = phi i8* [ getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 3), %145 ], [ %.24, %160 ]
  br label %162

162:                                              ; preds = %161, %142
  %.46 = phi i8* [ getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 3), %142 ], [ %.35, %161 ]
  br label %163

163:                                              ; preds = %162, %139
  %.57 = phi i8* [ getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 3), %139 ], [ %.46, %162 ]
  br label %164

164:                                              ; preds = %163, %136
  %.6 = phi i8* [ getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 3), %136 ], [ %.57, %163 ]
  br label %165

165:                                              ; preds = %164, %132
  %.7 = phi i8* [ getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 2), %132 ], [ %.6, %164 ]
  br label %166

166:                                              ; preds = %165, %128
  %.8 = phi i8* [ getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 3), %128 ], [ %.7, %165 ]
  br label %167

167:                                              ; preds = %166, %125
  %.9 = phi i8* [ getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 3), %125 ], [ %.8, %166 ]
  %168 = getelementptr inbounds i8, i8* %.9, i64 1
  store i8 39, i8* %.9, align 1
  store i8 0, i8* %168, align 1
  %169 = call %struct.bucket* (i8*, ...) bitcast (%struct.bucket* (...)* @getsym to %struct.bucket* (i8*, ...)*)(i8* noundef getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0)) #7
  store %struct.bucket* %169, %struct.bucket** @symval, align 8
  %170 = getelementptr inbounds %struct.bucket, %struct.bucket* %169, i64 0, i32 8
  store i8 1, i8* %170, align 8
  %171 = getelementptr inbounds %struct.bucket, %struct.bucket* %169, i64 0, i32 7
  %172 = load i16, i16* %171, align 2
  %.not21 = icmp eq i16 %172, 0
  br i1 %.not21, label %173, label %177

173:                                              ; preds = %167
  %174 = trunc i32 %.1018 to i16
  %175 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %176 = getelementptr inbounds %struct.bucket, %struct.bucket* %175, i64 0, i32 7
  store i16 %174, i16* %176, align 2
  br label %177

177:                                              ; preds = %173, %167
  br label %226

178:                                              ; preds = %6
  br label %226

179:                                              ; preds = %6
  br label %226

180:                                              ; preds = %6
  br label %226

181:                                              ; preds = %6
  br label %226

182:                                              ; preds = %6
  br label %226

183:                                              ; preds = %6
  br label %184

184:                                              ; preds = %198, %183
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %186 = call i32 @getc(%struct._IO_FILE* noundef %185) #7
  %187 = icmp eq i32 %186, 10
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i32, i32* @lineno, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* @lineno, align 4
  br label %191

191:                                              ; preds = %188, %184
  br label %192

192:                                              ; preds = %191
  %193 = icmp eq i32 %186, 32
  br i1 %193, label %198, label %194

194:                                              ; preds = %192
  %195 = icmp eq i32 %186, 10
  br i1 %195, label %198, label %196

196:                                              ; preds = %194
  %197 = icmp eq i32 %186, 9
  br label %198

198:                                              ; preds = %196, %194, %192
  %199 = phi i1 [ true, %194 ], [ true, %192 ], [ %197, %196 ]
  br i1 %199, label %184, label %200, !llvm.loop !10

200:                                              ; preds = %198
  %201 = icmp eq i32 %186, 123
  br i1 %201, label %202, label %203

202:                                              ; preds = %200
  br label %226

203:                                              ; preds = %200
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %205 = call i32 @ungetc(i32 noundef %186, %struct._IO_FILE* noundef %204) #7
  br label %226

206:                                              ; preds = %6
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %208 = call i32 @getc(%struct._IO_FILE* noundef %207) #7
  br label %209

209:                                              ; preds = %217, %206
  %.10 = phi i8* [ getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), %206 ], [ %219, %217 ]
  %.5 = phi i32 [ %208, %206 ], [ %221, %217 ]
  %.not = icmp eq i32 %.5, 62
  br i1 %.not, label %222, label %210

210:                                              ; preds = %209
  %211 = icmp eq i32 %.5, 10
  br i1 %211, label %214, label %212

212:                                              ; preds = %210
  %213 = icmp eq i32 %.5, -1
  br i1 %213, label %214, label %215

214:                                              ; preds = %212, %210
  call void @fatal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0)) #7
  br label %215

215:                                              ; preds = %214, %212
  %.not19 = icmp ult i8* %.10, getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1023)
  br i1 %.not19, label %217, label %216

216:                                              ; preds = %215
  call void @fatals(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 noundef 1023, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %217

217:                                              ; preds = %216, %215
  %218 = trunc i32 %.5 to i8
  %219 = getelementptr inbounds i8, i8* %.10, i64 1
  store i8 %218, i8* %.10, align 1
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %221 = call i32 @getc(%struct._IO_FILE* noundef %220) #7
  br label %209, !llvm.loop !11

222:                                              ; preds = %209
  store i8 0, i8* %.10, align 1
  br label %226

223:                                              ; preds = %6
  %224 = call i32 @parse_percent_token()
  br label %226

225:                                              ; preds = %6
  br label %226

226:                                              ; preds = %225, %223, %222, %203, %202, %182, %181, %180, %179, %178, %177, %50, %31, %8, %3
  %.0 = phi i32 [ %5, %3 ], [ 24, %225 ], [ %224, %223 ], [ 21, %222 ], [ 6, %202 ], [ 24, %203 ], [ 6, %182 ], [ 5, %181 ], [ 4, %180 ], [ 3, %179 ], [ 2, %178 ], [ 1, %177 ], [ 22, %50 ], [ 1, %31 ], [ 0, %8 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #2

declare dso_local %struct.bucket* @getsym(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @parse_percent_token() #1 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %2 = call i32 @getc(%struct._IO_FILE* noundef %1) #7
  switch i32 %2, label %10 [
    i32 37, label %3
    i32 123, label %4
    i32 60, label %5
    i32 62, label %6
    i32 50, label %7
    i32 48, label %8
    i32 61, label %9
  ]

3:                                                ; preds = %0
  br label %84

4:                                                ; preds = %0
  br label %84

5:                                                ; preds = %0
  br label %84

6:                                                ; preds = %0
  br label %84

7:                                                ; preds = %0
  br label %84

8:                                                ; preds = %0
  br label %84

9:                                                ; preds = %0
  br label %84

10:                                               ; preds = %0
  %11 = call i16** @__ctype_b_loc() #8
  %12 = load i16*, i16** %11, align 8
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds i16, i16* %12, i64 %13
  %15 = load i16, i16* %14, align 2
  %16 = and i16 %15, 1024
  %.not = icmp eq i16 %16, 0
  br i1 %.not, label %17, label %18

17:                                               ; preds = %10
  br label %84

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %35, %18
  %.02 = phi i8* [ getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), %18 ], [ %.1, %35 ]
  %.01 = phi i32 [ %2, %18 ], [ %37, %35 ]
  %20 = call i16** @__ctype_b_loc() #8
  %21 = load i16*, i16** %20, align 8
  %22 = sext i32 %.01 to i64
  %23 = getelementptr inbounds i16, i16* %21, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = and i16 %24, 1024
  %.not3 = icmp eq i16 %25, 0
  br i1 %.not3, label %26, label %28

26:                                               ; preds = %19
  %27 = icmp eq i32 %.01, 95
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i1 [ true, %19 ], [ %27, %26 ]
  br i1 %29, label %30, label %38

30:                                               ; preds = %28
  %31 = icmp ult i8* %.02, getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1024)
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = trunc i32 %.01 to i8
  %34 = getelementptr inbounds i8, i8* %.02, i64 1
  store i8 %33, i8* %.02, align 1
  br label %35

35:                                               ; preds = %32, %30
  %.1 = phi i8* [ %34, %32 ], [ %.02, %30 ]
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %37 = call i32 @getc(%struct._IO_FILE* noundef %36) #7
  br label %19, !llvm.loop !12

38:                                               ; preds = %28
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %40 = call i32 @ungetc(i32 noundef %.01, %struct._IO_FILE* noundef %39) #7
  store i8 0, i8* %.02, align 1
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 6)
  %41 = icmp eq i32 %bcmp, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %bcmp4 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 5)
  %43 = icmp eq i32 %bcmp4, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %42, %38
  br label %84

45:                                               ; preds = %42
  %bcmp5 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 6)
  %46 = icmp eq i32 %bcmp5, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  br label %84

48:                                               ; preds = %45
  %bcmp6 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 5)
  %49 = icmp eq i32 %bcmp6, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  br label %84

51:                                               ; preds = %48
  %bcmp7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 6)
  %52 = icmp eq i32 %bcmp7, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  br label %84

54:                                               ; preds = %51
  %bcmp8 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 6)
  %55 = icmp eq i32 %bcmp8, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  br label %84

57:                                               ; preds = %54
  %bcmp9 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i64 7)
  %58 = icmp eq i32 %bcmp9, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  br label %84

60:                                               ; preds = %57
  %bcmp10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i64 6)
  %61 = icmp eq i32 %bcmp10, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  br label %84

63:                                               ; preds = %60
  %bcmp11 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i64 5)
  %64 = icmp eq i32 %bcmp11, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  br label %84

66:                                               ; preds = %63
  %bcmp12 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i64 6)
  %67 = icmp eq i32 %bcmp12, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %66
  br label %84

69:                                               ; preds = %66
  %bcmp13 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i64 9)
  %70 = icmp eq i32 %bcmp13, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %69
  %bcmp14 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i64 7)
  %72 = icmp eq i32 %bcmp14, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %71, %69
  br label %84

74:                                               ; preds = %71
  %bcmp15 = call i32 @bcmp(i8* noundef nonnull dereferenceable(16) getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i64 16)
  %75 = icmp eq i32 %bcmp15, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %74
  br label %84

77:                                               ; preds = %74
  %bcmp16 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i64 12)
  %78 = icmp eq i32 %bcmp16, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %77
  br label %84

80:                                               ; preds = %77
  %bcmp17 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i64 5)
  %81 = icmp eq i32 %bcmp17, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %80
  br label %84

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %83, %82, %79, %76, %73, %68, %65, %62, %59, %56, %53, %50, %47, %44, %17, %9, %8, %7, %6, %5, %4, %3
  %.0 = phi i32 [ 9, %44 ], [ 10, %47 ], [ 12, %50 ], [ 11, %53 ], [ 13, %56 ], [ 23, %59 ], [ 14, %62 ], [ 15, %65 ], [ 16, %68 ], [ 17, %73 ], [ 19, %76 ], [ 20, %79 ], [ 18, %82 ], [ 24, %83 ], [ 24, %17 ], [ 18, %9 ], [ 9, %8 ], [ 17, %7 ], [ 16, %6 ], [ 15, %5 ], [ 8, %4 ], [ 7, %3 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }

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
