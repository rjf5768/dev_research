; ModuleID = './tv.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.colstr = type { i8*, i8* }

@instead = external dso_local global [0 x i8*], align 8
@tabout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c"\\h'%dp'\00", align 1
@nlin = external dso_local global i32, align 4
@fullbot = external dso_local global [0 x i32], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"1v-.5m\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".5m\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\\v'%s'\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\\v'%dp'\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\\s\\n(%d\00", align 1
@linsize = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"\\v'-\\n(%dp/6u'\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"\\h'-\\n(#~u'\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\\L'|\\n(#%cu-%s\00", align 1
@linestop = external dso_local global [0 x i32], align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"1v\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"\\n(35u\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"-(%s)\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s%dp\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"'\\s0\\v'\\n(\\*(#du-\\n(#%cu+%s\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"+%s\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"\\v'\\n(%dp/6u'\00", align 1
@table = external dso_local global [0 x %struct.colstr*], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @drawvert(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  br label %5

5:                                                ; preds = %9, %4
  %.01.in = phi i32 [ %1, %4 ], [ %.01, %9 ]
  %.01 = add nsw i32 %.01.in, 1
  %6 = sext i32 %.01 to i64
  %7 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %6
  %8 = load i8*, i8** %7, align 8
  %.not = icmp eq i8* %8, null
  br i1 %.not, label %10, label %9

9:                                                ; preds = %5
  br label %5, !llvm.loop !4

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %195, %10
  %.026 = phi i32 [ 0, %10 ], [ %196, %195 ]
  %.024 = phi i32 [ 0, %10 ], [ %16, %195 ]
  %.019 = phi i8* [ null, %10 ], [ %.423, %195 ]
  %.015 = phi i8* [ null, %10 ], [ %.318, %195 ]
  %.0 = phi i32 [ 118, %10 ], [ %.5, %195 ]
  %12 = icmp slt i32 %.026, %3
  br i1 %12, label %13, label %197

13:                                               ; preds = %11
  %14 = shl nuw nsw i32 %.026, 1
  %15 = sub nsw i32 %14, %3
  %16 = add nsw i32 %15, 1
  %.not27 = icmp eq i32 %16, %.024
  br i1 %.not27, label %21, label %17

17:                                               ; preds = %13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %19 = sub nsw i32 %16, %.024
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %19) #3
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @nlin, align 4
  %23 = icmp slt i32 %.01, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = sext i32 %.01 to i64
  %26 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %.not40 = icmp eq i32 %27, 0
  br i1 %.not40, label %28, label %34

28:                                               ; preds = %24
  %29 = sext i32 %.01 to i64
  %30 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %.not41 = icmp eq i8* %31, null
  br i1 %.not41, label %32, label %35

32:                                               ; preds = %28
  %33 = call i32 @allh(i32 noundef %.01) #3
  %.not42 = icmp eq i32 %33, 0
  br i1 %.not42, label %35, label %34

34:                                               ; preds = %32, %24
  br label %40

35:                                               ; preds = %32, %28
  %36 = call i32 @midbar(i32 noundef %.01, i32 noundef %2)
  switch i32 %36, label %39 [
    i32 45, label %37
    i32 61, label %38
  ]

37:                                               ; preds = %35
  br label %39

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %38, %37, %35
  %.116 = phi i8* [ %.015, %35 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %38 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %37 ]
  %.08 = phi i32 [ 0, %35 ], [ 1, %38 ], [ 0, %37 ]
  br label %40

40:                                               ; preds = %39, %34
  %.217 = phi i8* [ %.015, %34 ], [ %.116, %39 ]
  %.19 = phi i32 [ 2, %34 ], [ %.08, %39 ]
  br label %41

41:                                               ; preds = %40, %21
  %.318 = phi i8* [ %.217, %40 ], [ %.015, %21 ]
  %.210 = phi i32 [ %.19, %40 ], [ 0, %21 ]
  %42 = icmp sgt i32 %3, 1
  br i1 %42, label %43, label %56

43:                                               ; preds = %41
  %44 = call i32 @interh(i32 noundef %.01, i32 noundef %2) #3
  switch i32 %44, label %55 [
    i32 3, label %45
    i32 2, label %47
    i32 1, label %51
  ]

45:                                               ; preds = %43
  %46 = add nsw i32 %.210, -1
  br label %55

47:                                               ; preds = %43
  %48 = icmp eq i32 %.026, 0
  %49 = select i1 %48, i32 1, i32 -1
  %50 = add nsw i32 %.210, %49
  br label %55

51:                                               ; preds = %43
  %52 = icmp eq i32 %.026, 1
  %53 = select i1 %52, i32 1, i32 -1
  %54 = add nsw i32 %.210, %53
  br label %55

55:                                               ; preds = %51, %47, %45, %43
  %.311 = phi i32 [ %.210, %43 ], [ %54, %51 ], [ %50, %47 ], [ %46, %45 ]
  br label %56

56:                                               ; preds = %55, %41
  %.412 = phi i32 [ %.311, %55 ], [ %.210, %41 ]
  %57 = icmp eq i32 %3, 1
  br i1 %57, label %58, label %65

58:                                               ; preds = %56
  %59 = call i32 @interh(i32 noundef %.01, i32 noundef %2) #3
  switch i32 %59, label %64 [
    i32 3, label %60
    i32 2, label %62
    i32 1, label %62
  ]

60:                                               ; preds = %58
  %61 = add nsw i32 %.412, -1
  br label %64

62:                                               ; preds = %58, %58
  %63 = add nsw i32 %.412, 1
  br label %64

64:                                               ; preds = %62, %60, %58
  %.513 = phi i32 [ %.412, %58 ], [ %63, %62 ], [ %61, %60 ]
  br label %65

65:                                               ; preds = %64, %56
  %.614 = phi i32 [ %.513, %64 ], [ %.412, %56 ]
  %66 = icmp sgt i32 %0, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %77, %67
  %.025.in = phi i32 [ %0, %67 ], [ %.025, %77 ]
  %.025 = add nsw i32 %.025.in, -1
  %69 = icmp sgt i32 %.025.in, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  %71 = sext i32 %.025 to i64
  %72 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br label %75

75:                                               ; preds = %70, %68
  %76 = phi i1 [ false, %68 ], [ %74, %70 ]
  br i1 %76, label %77, label %78

77:                                               ; preds = %75
  br label %68, !llvm.loop !6

78:                                               ; preds = %75
  %79 = icmp sgt i32 %.025.in, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %78
  %81 = sext i32 %.025 to i64
  %82 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %.not38 = icmp eq i32 %83, 0
  br i1 %.not38, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 @allh(i32 noundef %.025) #3
  %.not39 = icmp eq i32 %85, 0
  br i1 %.not39, label %87, label %86

86:                                               ; preds = %84, %80
  br label %97

87:                                               ; preds = %84, %78
  %88 = icmp sgt i32 %.025.in, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %87
  %90 = call i32 @midbar(i32 noundef %.025, i32 noundef %2)
  switch i32 %90, label %93 [
    i32 45, label %91
    i32 61, label %92
  ]

91:                                               ; preds = %89
  br label %94

92:                                               ; preds = %89
  br label %94

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %92, %91
  %.120 = phi i8* [ %.019, %93 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %92 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %91 ]
  %.02 = phi i32 [ 0, %93 ], [ -1, %92 ], [ 0, %91 ]
  %.1 = phi i32 [ 109, %93 ], [ %.0, %92 ], [ %.0, %91 ]
  br label %96

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %94
  %.221 = phi i8* [ %.120, %94 ], [ %.019, %95 ]
  %.13 = phi i32 [ %.02, %94 ], [ -4, %95 ]
  %.2 = phi i32 [ %.1, %94 ], [ %.0, %95 ]
  br label %97

97:                                               ; preds = %96, %86
  %.322 = phi i8* [ %.019, %86 ], [ %.221, %96 ]
  %.24 = phi i32 [ 0, %86 ], [ %.13, %96 ]
  %.3 = phi i32 [ %.0, %86 ], [ %.2, %96 ]
  br label %104

98:                                               ; preds = %65
  %99 = icmp eq i32 %0, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = call i32 @allh(i32 noundef 0) #3
  %.not37 = icmp eq i32 %101, 0
  br i1 %.not37, label %103, label %102

102:                                              ; preds = %100
  br label %103

103:                                              ; preds = %102, %100, %98
  %.4 = phi i32 [ 109, %102 ], [ %.0, %100 ], [ %.0, %98 ]
  br label %104

104:                                              ; preds = %103, %97
  %.423 = phi i8* [ %.322, %97 ], [ %.019, %103 ]
  %.46 = phi i32 [ %.24, %97 ], [ 0, %103 ]
  %.5 = phi i32 [ %.3, %97 ], [ %.4, %103 ]
  %105 = icmp sgt i32 %3, 1
  br i1 %105, label %106, label %119

106:                                              ; preds = %104
  %107 = call i32 @interh(i32 noundef %0, i32 noundef %2) #3
  switch i32 %107, label %118 [
    i32 3, label %108
    i32 1, label %110
    i32 2, label %114
  ]

108:                                              ; preds = %106
  %109 = add nsw i32 %.46, 1
  br label %118

110:                                              ; preds = %106
  %111 = icmp eq i32 %.026, 0
  %112 = select i1 %111, i32 1, i32 -1
  %113 = add nsw i32 %.46, %112
  br label %118

114:                                              ; preds = %106
  %115 = icmp eq i32 %.026, 1
  %116 = select i1 %115, i32 1, i32 -1
  %117 = add nsw i32 %.46, %116
  br label %118

118:                                              ; preds = %114, %110, %108, %106
  %.57 = phi i32 [ %.46, %106 ], [ %117, %114 ], [ %113, %110 ], [ %109, %108 ]
  br label %129

119:                                              ; preds = %104
  %120 = icmp eq i32 %3, 1
  br i1 %120, label %121, label %128

121:                                              ; preds = %119
  %122 = call i32 @interh(i32 noundef %0, i32 noundef %2) #3
  switch i32 %122, label %127 [
    i32 3, label %123
    i32 1, label %125
    i32 2, label %125
  ]

123:                                              ; preds = %121
  %124 = add nsw i32 %.46, 1
  br label %127

125:                                              ; preds = %121, %121
  %126 = add nsw i32 %.46, -1
  br label %127

127:                                              ; preds = %125, %123, %121
  %.6 = phi i32 [ %.46, %121 ], [ %126, %125 ], [ %124, %123 ]
  br label %128

128:                                              ; preds = %127, %119
  %.7 = phi i32 [ %.6, %127 ], [ %.46, %119 ]
  br label %129

129:                                              ; preds = %128, %118
  %.8 = phi i32 [ %.57, %118 ], [ %.7, %128 ]
  %.not28 = icmp eq i8* %.318, null
  br i1 %.not28, label %133, label %130

130:                                              ; preds = %129
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %131, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %.318) #3
  br label %133

133:                                              ; preds = %130, %129
  %.not29 = icmp eq i32 %.614, 0
  br i1 %.not29, label %137, label %134

134:                                              ; preds = %133
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %135, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.614) #3
  br label %137

137:                                              ; preds = %134, %133
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %138, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef 33) #3
  %140 = load i32, i32* @linsize, align 4
  %.not30 = icmp eq i32 %140, 0
  br i1 %.not30, label %144, label %141

141:                                              ; preds = %137
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %142, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 33) #3
  br label %144

144:                                              ; preds = %141, %137
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %146 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %145)
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %148 = sext i32 %0 to i64
  %149 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 96
  %152 = icmp eq i32 %.5, 118
  %153 = select i1 %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %147, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 noundef %151, i8* noundef %153) #3
  %.not31 = icmp eq i8* %.423, null
  br i1 %.not31, label %158, label %155

155:                                              ; preds = %144
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %156, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %.423) #3
  br label %158

158:                                              ; preds = %155, %144
  %.not32 = icmp eq i8* %.318, null
  br i1 %.not32, label %162, label %159

159:                                              ; preds = %158
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %160, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %.318) #3
  br label %162

162:                                              ; preds = %159, %158
  %163 = sub nsw i32 %.8, %.614
  %.not33 = icmp eq i32 %163, 0
  br i1 %.not33, label %169, label %164

164:                                              ; preds = %162
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %166 = icmp sgt i32 %163, -1
  %167 = select i1 %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %165, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %167, i32 noundef %163) #3
  br label %169

169:                                              ; preds = %164, %162
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %171 = sext i32 %0 to i64
  %172 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 96
  %175 = icmp eq i32 %.5, 118
  %176 = select i1 %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %170, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 noundef %174, i8* noundef %176) #3
  %.not34 = icmp eq i8* %.423, null
  br i1 %.not34, label %181, label %178

178:                                              ; preds = %169
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %179, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef nonnull %.423) #3
  br label %181

181:                                              ; preds = %178, %169
  %.not35 = icmp eq i32 %.8, 0
  br i1 %.not35, label %188, label %182

182:                                              ; preds = %181
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %184 = icmp slt i32 %.8, 0
  %185 = select i1 %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %186 = sub nsw i32 0, %.8
  %187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %183, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %185, i32 noundef %186) #3
  br label %188

188:                                              ; preds = %182, %181
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %fputc = call i32 @fputc(i32 39, %struct._IO_FILE* %189)
  %190 = load i32, i32* @linsize, align 4
  %.not36 = icmp eq i32 %190, 0
  br i1 %.not36, label %194, label %191

191:                                              ; preds = %188
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %192, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 noundef 33) #3
  br label %194

194:                                              ; preds = %191, %188
  br label %195

195:                                              ; preds = %194
  %196 = add nuw nsw i32 %.026, 1
  br label %11, !llvm.loop !7

197:                                              ; preds = %11
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @allh(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @midbar(i32 noundef %0, i32 noundef %1) #0 {
  %3 = call i32 @midbcol(i32 noundef %0, i32 noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = add nsw i32 %1, -1
  %9 = call i32 @midbcol(i32 noundef %0, i32 noundef %8)
  br label %10

10:                                               ; preds = %7, %5, %2
  %.0 = phi i32 [ %9, %7 ], [ %3, %5 ], [ %3, %2 ]
  ret i32 %.0
}

declare dso_local i32 @interh(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @midbcol(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %6, %2
  %.01 = phi i32 [ %1, %2 ], [ %7, %6 ]
  %4 = call i32 @ctype(i32 noundef %0, i32 noundef %.01) #3
  %5 = icmp eq i32 %4, 115
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = add nsw i32 %.01, -1
  br label %3, !llvm.loop !8

8:                                                ; preds = %3
  %9 = icmp eq i32 %4, 45
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %4, 61
  br i1 %11, label %12, label %13

12:                                               ; preds = %10, %8
  br label %23

13:                                               ; preds = %10
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %14
  %16 = load %struct.colstr*, %struct.colstr** %15, align 8
  %17 = sext i32 %.01 to i64
  %18 = getelementptr inbounds %struct.colstr, %struct.colstr* %16, i64 %17, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @barent(i8* noundef %19)
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %22, label %21

21:                                               ; preds = %13
  br label %23

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %21, %12
  %.0 = phi i32 [ %4, %12 ], [ %20, %21 ], [ 0, %22 ]
  ret i32 %.0
}

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @barent(i8* noundef %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %24

4:                                                ; preds = %1
  %5 = ptrtoint i8* %0 to i64
  %6 = trunc i64 %5 to i32
  %7 = call i32 @point(i32 noundef %6) #3
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %4
  br label %24

9:                                                ; preds = %4
  %10 = load i8, i8* %0, align 1
  %11 = icmp eq i8 %10, 92
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, i8* %0, i64 1
  br label %14

14:                                               ; preds = %12, %9
  %.01 = phi i8* [ %13, %12 ], [ %0, %9 ]
  %15 = getelementptr inbounds i8, i8* %.01, i64 1
  %16 = load i8, i8* %15, align 1
  %.not2 = icmp eq i8 %16, 0
  br i1 %.not2, label %18, label %17

17:                                               ; preds = %14
  br label %24

18:                                               ; preds = %14
  %19 = load i8, i8* %.01, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %23 [
    i32 95, label %21
    i32 61, label %22
  ]

21:                                               ; preds = %18
  br label %24

22:                                               ; preds = %18
  br label %24

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %22, %21, %17, %8, %3
  %.0 = phi i32 [ 1, %3 ], [ 0, %17 ], [ 0, %23 ], [ 61, %22 ], [ 45, %21 ], [ 1, %8 ]
  ret i32 %.0
}

declare dso_local i32 @point(i32 noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

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
