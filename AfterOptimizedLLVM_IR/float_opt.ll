; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/spiff/float.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/spiff/float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.R_flstr = type { i32, i32, i8* }

@Z_err_buf = external dso_local global [0 x i8], align 1
@.str = private unnamed_addr constant [33 x i8] c"didn't use up all of %s in atocf\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@F_floatsub.result = internal global %struct.R_flstr* null, align 8
@F_floatsub.needinit = internal global i32 1, align 4
@F_floatsub.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatsub.man2 = internal global [200 x i8] zeroinitializer, align 16
@F_floatsub.diff = internal global [200 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [51 x i8] c"mantissas didn't get lined up properly in floatsub\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"lengths not equal in F_floatsub\00", align 1
@F_floatcmp.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatcmp.man2 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.prod = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.man2 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.result = internal global %struct.R_flstr* null, align 8
@F_floatmul.needinit = internal global i32 1, align 4
@F_floatmagadd.result = internal global %struct.R_flstr* null, align 8
@F_floatmagadd.needinit = internal global i32 1, align 4
@F_floatmagadd.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmagadd.man2 = internal global [200 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"numbers differ by too much in magnitude\00", align 1
@_F_stradd.result = internal global [200 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @F_isfloat(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 43, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 45, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18, %13
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %23, %18, %3
  br label %29

29:                                               ; preds = %41, %28
  %30 = call i16** @__ctype_b_loc() #5
  %31 = load i16*, i16** %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %31, i64 %35
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 2048
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %29, !llvm.loop !4

46:                                               ; preds = %29
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %61

56:                                               ; preds = %46
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %159

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60, %51
  br label %62

62:                                               ; preds = %74, %61
  %63 = call i16** @__ctype_b_loc() #5
  %64 = load i16*, i16** %63, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, i16* %64, i64 %68
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = and i32 %71, 2048
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %62
  store i32 1, i32* %10, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %62, !llvm.loop !6

79:                                               ; preds = %62
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %159

83:                                               ; preds = %79
  %84 = load i8*, i8** %5, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 101, %86
  br i1 %87, label %103, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %5, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 69, %91
  br i1 %92, label %103, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** %5, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 100, %96
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %5, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 68, %101
  br i1 %102, label %103, label %155

103:                                              ; preds = %98, %93, %88, %83
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %5, align 8
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  %108 = load i8*, i8** %5, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 43, %110
  br i1 %111, label %117, label %112

112:                                              ; preds = %103
  %113 = load i8*, i8** %5, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 45, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %112, %103
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %5, align 8
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %117, %112
  %123 = call i16** @__ctype_b_loc() #5
  %124 = load i16*, i16** %123, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i16, i16* %124, i64 %128
  %130 = load i16, i16* %129, align 2
  %131 = zext i16 %130 to i32
  %132 = and i32 %131, 2048
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %122
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %4, align 4
  br label %159

136:                                              ; preds = %122
  br label %137

137:                                              ; preds = %149, %136
  %138 = call i16** @__ctype_b_loc() #5
  %139 = load i16*, i16** %138, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i16, i16* %139, i64 %143
  %145 = load i16, i16* %144, align 2
  %146 = zext i16 %145 to i32
  %147 = and i32 %146, 2048
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %137
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %5, align 8
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %137, !llvm.loop !7

154:                                              ; preds = %137
  br label %155

155:                                              ; preds = %154, %98
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %156, %157
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %134, %82, %59
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.R_flstr* @F_atof(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.R_flstr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [200 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.R_flstr*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = call %struct.R_flstr* (...) @R_makefloat()
  store %struct.R_flstr* %14, %struct.R_flstr** %12, align 8
  %15 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  %16 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  store i32 0, i32* %11, align 4
  %17 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %17, align 16
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 43, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  br label %36

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 45, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  %32 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %42, %36
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 48, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %4, align 8
  br label %37, !llvm.loop !8

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %58, %45
  %47 = call i16** @__ctype_b_loc() #5
  %48 = load i16*, i16** %47, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16, i16* %48, i64 %52
  %54 = load i16, i16* %53, align 2
  %55 = zext i16 %54 to i32
  %56 = and i32 %55, 2048
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  %61 = load i8, i8* %59, align 1
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 %64
  store i8 %61, i8* %65, align 1
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 %67
  store i8 0, i8* %68, align 1
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %46, !llvm.loop !9

71:                                               ; preds = %46
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 46, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %4, align 8
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %88, %82
  %84 = load i8*, i8** %4, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 48, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %4, align 8
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %11, align 4
  br label %83, !llvm.loop !10

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %79
  br label %95

95:                                               ; preds = %107, %94
  %96 = call i16** @__ctype_b_loc() #5
  %97 = load i16*, i16** %96, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i16, i16* %97, i64 %101
  %103 = load i16, i16* %102, align 2
  %104 = zext i16 %103 to i32
  %105 = and i32 %104, 2048
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %95
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %4, align 8
  %110 = load i8, i8* %108, align 1
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 %113
  store i8 %110, i8* %114, align 1
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 %116
  store i8 0, i8* %117, align 1
  br label %95, !llvm.loop !11

118:                                              ; preds = %95
  %119 = load i8*, i8** %4, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 101, %121
  br i1 %122, label %138, label %123

123:                                              ; preds = %118
  %124 = load i8*, i8** %4, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 69, %126
  br i1 %127, label %138, label %128

128:                                              ; preds = %123
  %129 = load i8*, i8** %4, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 100, %131
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load i8*, i8** %4, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 68, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %133, %128, %123, %118
  %139 = load i8*, i8** %4, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %4, align 8
  %141 = load i8*, i8** %4, align 8
  %142 = call i32 @atoi(i8* noundef %141) #6
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %138, %133
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %186

148:                                              ; preds = %145
  %149 = load i8*, i8** %4, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 43, %151
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = load i8*, i8** %4, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 45, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %153, %148
  %159 = load i8*, i8** %4, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %4, align 8
  br label %161

161:                                              ; preds = %158, %153
  br label %162

162:                                              ; preds = %174, %161
  %163 = call i16** @__ctype_b_loc() #5
  %164 = load i16*, i16** %163, align 8
  %165 = load i8*, i8** %4, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i16, i16* %164, i64 %168
  %170 = load i16, i16* %169, align 2
  %171 = zext i16 %170 to i32
  %172 = and i32 %171, 2048
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %162
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %4, align 8
  br label %162, !llvm.loop !12

177:                                              ; preds = %162
  %178 = load i8*, i8** %4, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 0, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i8*, i8** %6, align 8
  %184 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* noundef %183) #7
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %177
  br label %186

186:                                              ; preds = %185, %145
  store i32 0, i32* %10, align 4
  br label %187

187:                                              ; preds = %210, %186
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %213

191:                                              ; preds = %187
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp ne i32 %196, 48
  br i1 %197, label %198, label %209

198:                                              ; preds = %191
  %199 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  call void (i8*, ...) bitcast (void (...)* @S_trimzeros to void (i8*, ...)*)(i8* noundef %199)
  %200 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  %201 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %200, i32 0, i32 2
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %204 = call i8* @strcpy(i8* noundef %202, i8* noundef %203) #7
  %205 = load i32, i32* %11, align 4
  %206 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  %207 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  store %struct.R_flstr* %208, %struct.R_flstr** %3, align 8
  br label %223

209:                                              ; preds = %191
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %187, !llvm.loop !13

213:                                              ; preds = %187
  %214 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  %215 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %214, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  %217 = call i8* @strcpy(i8* noundef %216, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7
  %218 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  %219 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %218, i32 0, i32 0
  store i32 0, i32* %219, align 8
  %220 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  %221 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %220, i32 0, i32 1
  store i32 0, i32* %221, align 4
  %222 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  store %struct.R_flstr* %222, %struct.R_flstr** %3, align 8
  br label %223

223:                                              ; preds = %213, %198
  %224 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  ret %struct.R_flstr* %224
}

declare dso_local %struct.R_flstr* @R_makefloat(...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #4

declare dso_local void @Z_fatal(...) #2

declare dso_local void @S_trimzeros(...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.R_flstr* @F_floatsub(%struct.R_flstr* noundef %0, %struct.R_flstr* noundef %1) #0 {
  %3 = alloca %struct.R_flstr*, align 8
  %4 = alloca %struct.R_flstr*, align 8
  %5 = alloca %struct.R_flstr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store %struct.R_flstr* %0, %struct.R_flstr** %4, align 8
  store %struct.R_flstr* %1, %struct.R_flstr** %5, align 8
  %15 = load i32, i32* @F_floatsub.needinit, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call %struct.R_flstr* (...) @R_makefloat()
  store %struct.R_flstr* %18, %struct.R_flstr** @F_floatsub.result, align 8
  store i32 0, i32* @F_floatsub.needinit, align 4
  br label %19

19:                                               ; preds = %17, %2
  store i8 0, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), align 16
  store i8 0, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), align 16
  %20 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %21 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %23 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %28, %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = call i8* @strcat(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %24, !llvm.loop !14

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %37, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = call i8* @strcat(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %33, !llvm.loop !15

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %45, %41
  %47 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %48 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @strcat(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), i8* noundef %49) #7
  %51 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %52 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @strcat(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), i8* noundef %53) #7
  %55 = call i32 @strcmp(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #6
  store i32 %55, i32* %11, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %46
  %58 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %59 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @strcpy(i8* noundef %60, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7
  %62 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %63 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %65 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  store %struct.R_flstr* %66, %struct.R_flstr** %3, align 8
  br label %192

67:                                               ; preds = %46
  %68 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0)) #6
  %69 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #6
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0)) #6
  %73 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #6
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  call void @addzeros(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), i32 noundef %75)
  br label %86

76:                                               ; preds = %67
  %77 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0)) #6
  %78 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #6
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #6
  %82 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0)) #6
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  call void @addzeros(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), i32 noundef %84)
  br label %85

85:                                               ; preds = %80, %76
  br label %86

86:                                               ; preds = %85, %71
  %87 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0)) #6
  %88 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #6
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %90, %86
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), i8** %10, align 8
  br label %96

95:                                               ; preds = %91
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), i8** %10, align 8
  br label %96

96:                                               ; preds = %95, %94
  %97 = load i8*, i8** %9, align 8
  %98 = call i64 @strlen(i8* noundef %97) #6
  %99 = sub i64 %98, 1
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %101 = load i8*, i8** %9, align 8
  %102 = call i64 @strlen(i8* noundef %101) #6
  %103 = getelementptr inbounds [200 x i8], [200 x i8]* @F_floatsub.diff, i64 0, i64 %102
  store i8 0, i8* %103, align 1
  br label %104

104:                                              ; preds = %166, %96
  %105 = load i32, i32* %12, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %169

107:                                              ; preds = %104
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %107
  %111 = load i8*, i8** %9, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 48
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  store i8 57, i8* %14, align 1
  br label %128

119:                                              ; preds = %110
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = sub nsw i32 %125, 1
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %14, align 1
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %119, %118
  br label %151

129:                                              ; preds = %107
  %130 = load i8*, i8** %9, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = load i8*, i8** %10, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp slt i32 %135, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %129
  store i8 58, i8* %14, align 1
  store i32 1, i32* %13, align 4
  br label %150

144:                                              ; preds = %129
  %145 = load i8*, i8** %9, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  store i8 %149, i8* %14, align 1
  br label %150

150:                                              ; preds = %144, %143
  br label %151

151:                                              ; preds = %150, %128
  %152 = load i8, i8* %14, align 1
  %153 = sext i8 %152 to i32
  %154 = load i8*, i8** %10, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = sub nsw i32 %153, %159
  %161 = add nsw i32 %160, 48
  %162 = trunc i32 %161 to i8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [200 x i8], [200 x i8]* @F_floatsub.diff, i64 0, i64 %164
  store i8 %162, i8* %165, align 1
  br label %166

166:                                              ; preds = %151
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %12, align 4
  br label %104, !llvm.loop !16

169:                                              ; preds = %104
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.diff, i64 0, i64 0), i8** %8, align 8
  br label %170

170:                                              ; preds = %175, %169
  %171 = load i8*, i8** %8, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 48, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load i8*, i8** %8, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %8, align 8
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %6, align 4
  br label %170, !llvm.loop !17

180:                                              ; preds = %170
  %181 = load i32, i32* %6, align 4
  %182 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %183 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %185 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = load i8*, i8** %8, align 8
  %188 = call i8* @strcpy(i8* noundef %186, i8* noundef %187) #7
  %189 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %190 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %189, i32 0, i32 1
  store i32 0, i32* %190, align 4
  %191 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  store %struct.R_flstr* %191, %struct.R_flstr** %3, align 8
  br label %192

192:                                              ; preds = %180, %57
  %193 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  ret %struct.R_flstr* %193
}

declare dso_local i32 @R_getexp(...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @addzeros(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %11, %2
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strcat(i8* noundef %9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7
  br label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %4, align 4
  br label %5, !llvm.loop !18

14:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @F_floatcmp(%struct.R_flstr* noundef %0, %struct.R_flstr* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.R_flstr*, align 8
  %5 = alloca %struct.R_flstr*, align 8
  store %struct.R_flstr* %0, %struct.R_flstr** %4, align 8
  store %struct.R_flstr* %1, %struct.R_flstr** %5, align 8
  %6 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %7 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 0, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %12 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strcmp(i8* noundef %13, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  %17 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %18 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 0, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %23 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcmp(i8* noundef %24, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %66

28:                                               ; preds = %21, %16
  store i32 -1, i32* %3, align 4
  br label %66

29:                                               ; preds = %10, %2
  %30 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %31 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 0, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %36 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* noundef %37, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %66

41:                                               ; preds = %34, %29
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %44 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %43)
  %45 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %46 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %66

49:                                               ; preds = %42
  %50 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %51 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %50)
  %52 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %53 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %52)
  %54 = icmp sgt i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %66

56:                                               ; preds = %49
  %57 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %58 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @strcpy(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man1, i64 0, i64 0), i8* noundef %59) #7
  call void (i8*, ...) bitcast (void (...)* @S_trimzeros to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man1, i64 0, i64 0))
  %61 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %62 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @strcpy(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man2, i64 0, i64 0), i8* noundef %63) #7
  call void (i8*, ...) bitcast (void (...)* @S_trimzeros to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man2, i64 0, i64 0))
  %65 = call i32 @strcmp(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man1, i64 0, i64 0), i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man2, i64 0, i64 0)) #6
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %56, %55, %48, %40, %28, %27
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.R_flstr* @F_floatmul(%struct.R_flstr* noundef %0, %struct.R_flstr* noundef %1) #0 {
  %3 = alloca %struct.R_flstr*, align 8
  %4 = alloca %struct.R_flstr*, align 8
  %5 = alloca %struct.R_flstr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.R_flstr* %0, %struct.R_flstr** %4, align 8
  store %struct.R_flstr* %1, %struct.R_flstr** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @F_floatmul.needinit, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call %struct.R_flstr* (...) @R_makefloat()
  store %struct.R_flstr* %18, %struct.R_flstr** @F_floatmul.result, align 8
  store i32 0, i32* @F_floatmul.needinit, align 4
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %21 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 0, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %26 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* noundef %27, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24, %19
  %31 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %32 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 0, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %37 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcmp(i8* noundef %38, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %35, %24
  %42 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %43 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @strcpy(i8* noundef %44, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7
  %46 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %47 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %49 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  store %struct.R_flstr* %50, %struct.R_flstr** %3, align 8
  br label %166

51:                                               ; preds = %35, %30
  %52 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %53 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @strcpy(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0), i8* noundef %54) #7
  %56 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %57 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @strcpy(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0), i8* noundef %58) #7
  %60 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0)) #6
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds i8, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0), i64 %61
  store i8* %62, i8** %11, align 8
  %63 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0)) #6
  %64 = sub i64 %63, 1
  %65 = getelementptr inbounds i8, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0), i64 %64
  store i8* %65, i8** %12, align 8
  br label %66

66:                                               ; preds = %69, %51
  %67 = load i8*, i8** %11, align 8
  %68 = icmp uge i8* %67, getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0)
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i8*, i8** %11, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = sub nsw i32 %72, 48
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %77, i8** %11, align 8
  br label %66, !llvm.loop !19

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %82, %78
  %80 = load i8*, i8** %12, align 8
  %81 = icmp uge i8* %80, getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0)
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i8*, i8** %12, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = sub nsw i32 %85, 48
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load i8*, i8** %12, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 -1
  store i8* %90, i8** %12, align 8
  br label %79, !llvm.loop !20

91:                                               ; preds = %79
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0), i8** %14, align 8
  br label %97

96:                                               ; preds = %91
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0), i8** %14, align 8
  br label %97

97:                                               ; preds = %96, %95
  %98 = load i8*, i8** %13, align 8
  call void (i8*, ...) bitcast (void (...)* @S_trimzeros to void (i8*, ...)*)(i8* noundef %98)
  %99 = load i8*, i8** %14, align 8
  call void (i8*, ...) bitcast (void (...)* @S_trimzeros to void (i8*, ...)*)(i8* noundef %99)
  %100 = load i8*, i8** %13, align 8
  %101 = call i64 @strlen(i8* noundef %100) #6
  %102 = load i8*, i8** %14, align 8
  %103 = call i64 @strlen(i8* noundef %102) #6
  %104 = add i64 %101, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %10, align 4
  %106 = load i8*, i8** %14, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = call i64 @strlen(i8* noundef %107) #6
  %109 = sub i64 %108, 1
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  store i8* %110, i8** %6, align 8
  %111 = call i8* @strcpy(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.prod, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7
  br label %112

112:                                              ; preds = %129, %97
  %113 = load i8*, i8** %6, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = icmp uge i8* %113, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %112
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %126, %116
  %118 = load i32, i32* %9, align 4
  %119 = load i8*, i8** %6, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = sub nsw i32 %121, 48
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load i8*, i8** %13, align 8
  call void @_F_stradd(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.prod, i64 0, i64 0), i8* noundef %125)
  br label %126

126:                                              ; preds = %124
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %117, !llvm.loop !21

129:                                              ; preds = %117
  %130 = load i8*, i8** %13, align 8
  call void @addzeros(i8* noundef %130, i32 noundef 1)
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 -1
  store i8* %132, i8** %6, align 8
  br label %112, !llvm.loop !22

133:                                              ; preds = %112
  %134 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %135 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = call i8* @strcpy(i8* noundef %136, i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.prod, i64 0, i64 0)) #7
  %138 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %139 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %138)
  %140 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %141 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %140)
  %142 = add nsw i32 %139, %141
  %143 = load i32, i32* %10, align 4
  %144 = sub nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.prod, i64 0, i64 0)) #6
  %147 = add i64 %145, %146
  %148 = trunc i64 %147 to i32
  %149 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %150 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %152 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %155 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %153, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %133
  %159 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %160 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %159, i32 0, i32 1
  store i32 0, i32* %160, align 4
  br label %164

161:                                              ; preds = %133
  %162 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %163 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %162, i32 0, i32 1
  store i32 1, i32* %163, align 4
  br label %164

164:                                              ; preds = %161, %158
  %165 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  store %struct.R_flstr* %165, %struct.R_flstr** %3, align 8
  br label %166

166:                                              ; preds = %164, %41
  %167 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  ret %struct.R_flstr* %167
}

; Function Attrs: noinline nounwind uwtable
define internal void @_F_stradd(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strlen(i8* noundef %13) #6
  %15 = sub i64 %14, 1
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strlen(i8* noundef %18) #6
  %20 = sub i64 %19, 1
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8* %21, i8** %6, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @_F_stradd.result, i64 0, i64 199), i8** %7, align 8
  store i32 0, i32* %8, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %23, i8** %7, align 8
  store i8 0, i8* %22, align 1
  br label %24

24:                                               ; preds = %70, %2
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = icmp uge i8* %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp uge i8* %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ true, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %76

34:                                               ; preds = %32
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = icmp uge i8* %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = sub nsw i32 %41, 48
  store i32 %42, i32* %10, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %44, i8** %5, align 8
  br label %46

45:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %45, %38
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = icmp uge i8* %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = sub nsw i32 %53, 48
  store i32 %54, i32* %11, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 -1
  store i8* %56, i8** %6, align 8
  br label %58

57:                                               ; preds = %46
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp sgt i32 %64, 9
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  store i32 1, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %67, 10
  store i32 %68, i32* %9, align 4
  br label %70

69:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 48
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %75, i8** %7, align 8
  store i8 %73, i8* %74, align 1
  br label %24, !llvm.loop !23

76:                                               ; preds = %32
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i8*, i8** %7, align 8
  store i8 49, i8* %80, align 1
  br label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %7, align 8
  br label %84

84:                                               ; preds = %81, %79
  %85 = load i8*, i8** %3, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i8* @strcpy(i8* noundef %85, i8* noundef %86) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_F_xor(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7, %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi i1 [ true, %7 ], [ %17, %16 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_F_ABSDIFF(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 0, %9
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %10, %8 ], [ %12, %11 ]
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 0, %18
  br label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %19, %17 ], [ %21, %20 ]
  %24 = icmp slt i32 %14, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 0, %29
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ %30, %28 ], [ %32, %31 ]
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 0, %38
  br label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ %39, %37 ], [ %41, %40 ]
  %44 = sub nsw i32 %34, %43
  store i32 %44, i32* %3, align 4
  br label %65

45:                                               ; preds = %22
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 0, %49
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi i32 [ %50, %48 ], [ %52, %51 ]
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 0, %58
  br label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i32 [ %59, %57 ], [ %61, %60 ]
  %64 = sub nsw i32 %54, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %42
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.R_flstr* @F_floatmagadd(%struct.R_flstr* noundef %0, %struct.R_flstr* noundef %1) #0 {
  %3 = alloca %struct.R_flstr*, align 8
  %4 = alloca %struct.R_flstr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.R_flstr* %0, %struct.R_flstr** %3, align 8
  store %struct.R_flstr* %1, %struct.R_flstr** %4, align 8
  %9 = load i32, i32* @F_floatmagadd.needinit, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call %struct.R_flstr* (...) @R_makefloat()
  store %struct.R_flstr* %12, %struct.R_flstr** @F_floatmagadd.result, align 8
  store i32 0, i32* @F_floatmagadd.needinit, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = call i8* @strcpy(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #7
  %15 = call i8* @strcpy(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #7
  %16 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %17 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %16)
  %18 = icmp slt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %21 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %20)
  %22 = icmp slt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @_F_xor(i32 noundef %19, i32 noundef %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %13
  %27 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %28 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %27)
  %29 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %30 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %29)
  %31 = call i32 @_F_ABSDIFF(i32 noundef %28, i32 noundef %30)
  store i32 %31, i32* %5, align 4
  br label %58

32:                                               ; preds = %13
  %33 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %34 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %33)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %38 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %37)
  %39 = sub nsw i32 0, %38
  br label %43

40:                                               ; preds = %32
  %41 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %42 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i32 [ %39, %36 ], [ %42, %40 ]
  %45 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %46 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %45)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %50 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %49)
  %51 = sub nsw i32 0, %50
  br label %55

52:                                               ; preds = %43
  %53 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %54 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %53)
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i32 [ %51, %48 ], [ %54, %52 ]
  %57 = add nsw i32 %44, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %26
  %59 = load i32, i32* %5, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %58
  %62 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %63 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %62)
  %64 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %65 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %64)
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %71 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strlen(i8* noundef %72) #6
  %74 = add i64 %69, %73
  %75 = icmp ugt i64 %74, 199
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0)) #7
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %67
  br label %91

79:                                               ; preds = %61
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %83 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strlen(i8* noundef %84) #6
  %86 = add i64 %81, %85
  %87 = icmp ugt i64 %86, 199
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0)) #7
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %79
  br label %91

91:                                               ; preds = %90, %78
  br label %118

92:                                               ; preds = %58
  %93 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %94 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strlen(i8* noundef %95) #6
  %97 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %98 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @strlen(i8* noundef %99) #6
  %101 = icmp ugt i64 %96, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %104 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @strlen(i8* noundef %105) #6
  br label %112

107:                                              ; preds = %92
  %108 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %109 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @strlen(i8* noundef %110) #6
  br label %112

112:                                              ; preds = %107, %102
  %113 = phi i64 [ %106, %102 ], [ %111, %107 ]
  %114 = icmp ugt i64 %113, 198
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0)) #7
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %112
  br label %118

118:                                              ; preds = %117, %91
  %119 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %120 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %119)
  %121 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %122 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %121)
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, i32* %5, align 4
  call void @addzeros(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0), i32 noundef %125)
  %126 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %127 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %126)
  store i32 %127, i32* %6, align 4
  br label %132

128:                                              ; preds = %118
  %129 = load i32, i32* %5, align 4
  call void @addzeros(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0), i32 noundef %129)
  %130 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %131 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* noundef %130)
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %128, %124
  %133 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %134 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = call i8* @strcat(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0), i8* noundef %135) #7
  %137 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %138 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = call i8* @strcat(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0), i8* noundef %139) #7
  %141 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0)) #6
  %142 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0)) #6
  %143 = icmp ugt i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %132
  %145 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0)) #6
  br label %148

146:                                              ; preds = %132
  %147 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0)) #6
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i64 [ %145, %144 ], [ %147, %146 ]
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %7, align 4
  call void @_F_stradd(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0), i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0))
  %151 = call i64 @strlen(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0)) #6
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = sub i64 %151, %153
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = add i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %6, align 4
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0), i8** %8, align 8
  br label %159

159:                                              ; preds = %164, %148
  %160 = load i8*, i8** %8, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 48, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load i8*, i8** %8, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %8, align 8
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %6, align 4
  br label %159, !llvm.loop !24

169:                                              ; preds = %159
  %170 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmagadd.result, align 8
  %171 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = load i8*, i8** %8, align 8
  %174 = call i8* @strcpy(i8* noundef %172, i8* noundef %173) #7
  %175 = load i32, i32* %6, align 4
  %176 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmagadd.result, align 8
  %177 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmagadd.result, align 8
  %179 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %178, i32 0, i32 1
  store i32 0, i32* %179, align 4
  %180 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmagadd.result, align 8
  ret %struct.R_flstr* %180
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind readonly willreturn }
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
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !5}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
!85 = distinct !{!85, !5}
!86 = distinct !{!86, !5}
!87 = distinct !{!87, !5}
!88 = distinct !{!88, !5}
!89 = distinct !{!89, !5}
!90 = distinct !{!90, !5}
!91 = distinct !{!91, !5}
!92 = distinct !{!92, !5}
!93 = distinct !{!93, !5}
!94 = distinct !{!94, !5}
!95 = distinct !{!95, !5}
!96 = distinct !{!96, !5}
!97 = distinct !{!97, !5}
!98 = distinct !{!98, !5}
!99 = distinct !{!99, !5}
!100 = distinct !{!100, !5}
!101 = distinct !{!101, !5}
!102 = distinct !{!102, !5}
!103 = distinct !{!103, !5}
!104 = distinct !{!104, !5}
!105 = distinct !{!105, !5}
!106 = distinct !{!106, !5}
!107 = distinct !{!107, !5}
!108 = distinct !{!108, !5}
!109 = distinct !{!109, !5}
!110 = distinct !{!110, !5}
!111 = distinct !{!111, !5}
!112 = distinct !{!112, !5}
!113 = distinct !{!113, !5}
!114 = distinct !{!114, !5}
!115 = distinct !{!115, !5}
!116 = distinct !{!116, !5}
!117 = distinct !{!117, !5}
!118 = distinct !{!118, !5}
!119 = distinct !{!119, !5}
!120 = distinct !{!120, !5}
!121 = distinct !{!121, !5}
!122 = distinct !{!122, !5}
!123 = distinct !{!123, !5}
!124 = distinct !{!124, !5}
!125 = distinct !{!125, !5}
!126 = distinct !{!126, !5}
!127 = distinct !{!127, !5}
!128 = distinct !{!128, !5}
!129 = distinct !{!129, !5}
!130 = distinct !{!130, !5}
!131 = distinct !{!131, !5}
!132 = distinct !{!132, !5}
!133 = distinct !{!133, !5}
!134 = distinct !{!134, !5}
!135 = distinct !{!135, !5}
!136 = distinct !{!136, !5}
!137 = distinct !{!137, !5}
!138 = distinct !{!138, !5}
!139 = distinct !{!139, !5}
!140 = distinct !{!140, !5}
!141 = distinct !{!141, !5}
!142 = distinct !{!142, !5}
!143 = distinct !{!143, !5}
!144 = distinct !{!144, !5}
!145 = distinct !{!145, !5}
!146 = distinct !{!146, !5}
!147 = distinct !{!147, !5}
!148 = distinct !{!148, !5}
!149 = distinct !{!149, !5}
!150 = distinct !{!150, !5}
!151 = distinct !{!151, !5}
!152 = distinct !{!152, !5}
!153 = distinct !{!153, !5}
