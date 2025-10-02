; ModuleID = './bitap.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/bitap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@D_length = external dso_local global i32, align 4
@REGEX = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [75 x i8] c"%s: the maximum number of erorrs allowed for full regular expression is 4\0A\00", align 1
@Progname = external dso_local global [0 x i8], align 1
@JUMP = external dso_local global i32, align 4
@I = external dso_local global i32, align 4
@Init1 = external dso_local global i32, align 4
@Init = external dso_local global [0 x i32], align 4
@D_endpos = external dso_local global i32, align 4
@DELIMITER = external dso_local global i32, align 4
@Mask = external dso_local global [0 x i32], align 4
@AND = external dso_local global i32, align 4
@endposition = external dso_local global i32, align 4
@INVERSE = external dso_local global i32, align 4
@FILENAMEONLY = external dso_local global i32, align 4
@num_of_matched = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@CurrentFileName = external dso_local global [0 x i8], align 1
@TRUNCATE = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @bitap(i8* noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca [147456 x i8], align 16
  %7 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #6
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* @D_length, align 4
  br label %9

9:                                                ; preds = %26, %5
  %.013 = phi i32 [ 0, %5 ], [ %27, %26 ]
  %10 = load i32, i32* @D_length, align 4
  %11 = icmp ult i32 %.013, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = zext i32 %.013 to i64
  %14 = getelementptr inbounds i8, i8* %0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = icmp eq i8 %15, 94
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = zext i32 %.013 to i64
  %19 = getelementptr inbounds i8, i8* %0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = icmp eq i8 %20, 36
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %12
  %23 = zext i32 %.013 to i64
  %24 = getelementptr inbounds i8, i8* %0, i64 %23
  store i8 10, i8* %24, align 1
  br label %25

25:                                               ; preds = %22, %17
  br label %26

26:                                               ; preds = %25
  %27 = add i32 %.013, 1
  br label %9, !llvm.loop !4

28:                                               ; preds = %9
  %29 = load i32, i32* @REGEX, align 4
  %.not = icmp eq i32 %29, 0
  br i1 %.not, label %39, label %30

30:                                               ; preds = %28
  %31 = icmp sgt i32 %4, 4
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i64 0, i64 0)) #7
  call void @exit(i32 noundef 2) #8
  unreachable

35:                                               ; preds = %30
  %36 = icmp slt i32 %3, 16
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  call void @re(i32 noundef %2, i32 noundef %3, i32 noundef %4) #9
  br label %241

38:                                               ; preds = %35
  call void @re1(i32 noundef %2, i32 noundef %3, i32 noundef %4) #9
  br label %241

39:                                               ; preds = %28
  %40 = icmp sgt i32 %4, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = load i32, i32* @JUMP, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @asearch1(i8* noundef %0, i32 noundef %2, i32 noundef %4) #9
  br label %241

45:                                               ; preds = %41, %39
  %46 = icmp sgt i32 %4, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  call void @asearch(i8* noundef %0, i32 noundef %2, i32 noundef %4) #9
  br label %241

48:                                               ; preds = %45
  %49 = load i32, i32* @I, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 -1, i32* @Init1, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = getelementptr inbounds [147456 x i8], [147456 x i8]* %6, i64 0, i64 49151
  store i8 10, i8* %53, align 1
  %54 = load i32, i32* @Init1, align 4
  %55 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %56 = load i32, i32* @D_endpos, align 4
  %57 = getelementptr inbounds [147456 x i8], [147456 x i8]* %6, i64 0, i64 49151
  store i8 10, i8* %57, align 1
  br label %58

58:                                               ; preds = %62, %52
  %.019 = phi i32 [ %56, %52 ], [ %64, %62 ]
  %.114 = phi i32 [ 1, %52 ], [ %65, %62 ]
  %59 = load i32, i32* @D_length, align 4
  %60 = icmp ult i32 %.114, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61
  %63 = shl i32 %.019, 1
  %64 = or i32 %63, %.019
  %65 = add i32 %.114, 1
  br label %58, !llvm.loop !6

66:                                               ; preds = %58
  %67 = xor i32 %.019, -1
  br label %68

68:                                               ; preds = %239, %66
  %.010 = phi i32 [ %55, %66 ], [ %.111, %239 ]
  %.07 = phi i32 [ 1, %66 ], [ %.18, %239 ]
  %.02 = phi i32 [ 49152, %66 ], [ %.46, %239 ]
  %.01 = phi i32 [ 0, %66 ], [ %.4, %239 ]
  %69 = getelementptr inbounds [147456 x i8], [147456 x i8]* %6, i64 0, i64 49152
  %70 = call i32 @fill_buf(i32 noundef %2, i8* noundef nonnull %69, i32 noundef 49152)
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %240

72:                                               ; preds = %68
  %73 = add nsw i32 %70, 49152
  %.not28 = icmp eq i32 %.07, 0
  br i1 %.not28, label %98, label %74

74:                                               ; preds = %72
  %75 = load i32, i32* @DELIMITER, align 4
  %.not38 = icmp eq i32 %75, 0
  br i1 %.not38, label %97, label %76

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %90, %76
  %.0 = phi i32 [ 0, %76 ], [ %91, %90 ]
  %78 = load i32, i32* @D_length, align 4
  %79 = icmp slt i32 %.0, %78
  br i1 %79, label %80, label %.loopexit

80:                                               ; preds = %77
  %81 = zext i32 %.0 to i64
  %82 = getelementptr inbounds i8, i8* %0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = add nuw nsw i32 %.0, 49152
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [147456 x i8], [147456 x i8]* %6, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %.not40 = icmp eq i8 %83, %87
  br i1 %.not40, label %89, label %88

88:                                               ; preds = %80
  br label %92

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89
  %91 = add nuw nsw i32 %.0, 1
  br label %77, !llvm.loop !7

.loopexit:                                        ; preds = %77
  br label %92

92:                                               ; preds = %.loopexit, %88
  %93 = load i32, i32* @D_length, align 4
  %.not39 = icmp slt i32 %.0, %93
  br i1 %.not39, label %96, label %94

94:                                               ; preds = %92
  %95 = add nsw i32 %.01, -1
  br label %96

96:                                               ; preds = %94, %92
  %.1 = phi i32 [ %95, %94 ], [ %.01, %92 ]
  br label %97

97:                                               ; preds = %96, %74
  %.2 = phi i32 [ %.1, %96 ], [ %.01, %74 ]
  br label %98

98:                                               ; preds = %97, %72
  %.215 = phi i32 [ 49151, %97 ], [ 49152, %72 ]
  %.18 = phi i32 [ 0, %97 ], [ %.07, %72 ]
  %.3 = phi i32 [ %.2, %97 ], [ %.01, %72 ]
  %99 = icmp slt i32 %70, 49152
  br i1 %99, label %100, label %111

100:                                              ; preds = %98
  %101 = getelementptr inbounds [147456 x i8], [147456 x i8]* %6, i64 0, i64 49152
  %102 = sext i32 %70 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = load i32, i32* @D_length, align 4
  %105 = sext i32 %104 to i64
  %106 = call i8* @strncpy(i8* noundef nonnull %103, i8* noundef %0, i64 noundef %105) #9
  %107 = load i32, i32* @D_length, align 4
  %108 = add i32 %73, %107
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [147456 x i8], [147456 x i8]* %6, i64 0, i64 %109
  store i8 0, i8* %110, align 1
  br label %111

111:                                              ; preds = %100, %98
  %.017 = phi i32 [ %108, %100 ], [ %73, %98 ]
  br label %112

112:                                              ; preds = %221, %111
  %.316 = phi i32 [ %.215, %111 ], [ %168, %221 ]
  %.111 = phi i32 [ %.010, %111 ], [ %.212, %221 ]
  %.13 = phi i32 [ %.02, %111 ], [ %.35, %221 ]
  %.4 = phi i32 [ %.3, %111 ], [ %.6, %221 ]
  %113 = icmp ult i32 %.316, %.017
  br i1 %113, label %114, label %222

114:                                              ; preds = %112
  %115 = add i32 %.316, 1
  %116 = zext i32 %.316 to i64
  %117 = getelementptr inbounds [147456 x i8], [147456 x i8]* %6, i64 0, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i64
  %120 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %54, %.111
  %123 = lshr i32 %.111, 1
  %124 = and i32 %123, %121
  %125 = or i32 %124, %122
  %126 = and i32 %125, %56
  %.not29 = icmp eq i32 %126, 0
  br i1 %.not29, label %167, label %127

127:                                              ; preds = %114
  %128 = add nsw i32 %.4, 1
  %129 = load i32, i32* @AND, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32, i32* @endposition, align 4
  %133 = and i32 %125, %132
  %134 = icmp eq i32 %133, %132
  br i1 %134, label %146, label %135

135:                                              ; preds = %131, %127
  %136 = load i32, i32* @AND, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* @endposition, align 4
  %140 = and i32 %125, %139
  %141 = icmp ne i32 %140, 0
  br label %142

142:                                              ; preds = %138, %135
  %143 = phi i1 [ false, %135 ], [ %141, %138 ]
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* @INVERSE, align 4
  %.not34 = icmp eq i32 %145, %144
  br i1 %.not34, label %158, label %146

146:                                              ; preds = %142, %131
  %147 = load i32, i32* @FILENAMEONLY, align 4
  %.not35 = icmp eq i32 %147, 0
  br i1 %.not35, label %151, label %148

148:                                              ; preds = %146
  %149 = load i32, i32* @num_of_matched, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* @num_of_matched, align 4
  %puts37 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %241

151:                                              ; preds = %146
  %152 = add nsw i32 %70, 49151
  %.not36 = icmp slt i32 %.13, %152
  br i1 %.not36, label %153, label %157

153:                                              ; preds = %151
  %154 = load i32, i32* @D_length, align 4
  %155 = sub i32 %.316, %154
  %156 = getelementptr inbounds [147456 x i8], [147456 x i8]* %6, i64 0, i64 0
  call void @output(i8* noundef nonnull %156, i32 noundef %.13, i32 noundef %155, i32 noundef %128) #9
  br label %157

157:                                              ; preds = %153, %151
  br label %158

158:                                              ; preds = %157, %142
  %159 = load i32, i32* @D_length, align 4
  %160 = sub i32 %115, %159
  store i32 0, i32* @TRUNCATE, align 4
  %161 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %162 = and i32 %54, %161
  %163 = lshr i32 %161, 1
  %164 = and i32 %163, %121
  %165 = or i32 %164, %162
  %166 = and i32 %165, %67
  br label %167

167:                                              ; preds = %158, %114
  %.09 = phi i32 [ %166, %158 ], [ %125, %114 ]
  %.24 = phi i32 [ %160, %158 ], [ %.13, %114 ]
  %.5 = phi i32 [ %128, %158 ], [ %.4, %114 ]
  %168 = add i32 %.316, 2
  %169 = zext i32 %115 to i64
  %170 = getelementptr inbounds [147456 x i8], [147456 x i8]* %6, i64 0, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i64
  %173 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %54, %.09
  %176 = lshr i32 %.09, 1
  %177 = and i32 %176, %174
  %178 = or i32 %177, %175
  %179 = and i32 %178, %56
  %.not30 = icmp eq i32 %179, 0
  br i1 %.not30, label %221, label %180

180:                                              ; preds = %167
  %181 = add nsw i32 %.5, 1
  %182 = load i32, i32* @AND, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i32, i32* @endposition, align 4
  %186 = and i32 %178, %185
  %187 = icmp eq i32 %186, %185
  br i1 %187, label %199, label %188

188:                                              ; preds = %184, %180
  %189 = load i32, i32* @AND, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load i32, i32* @endposition, align 4
  %193 = and i32 %178, %192
  %194 = icmp ne i32 %193, 0
  br label %195

195:                                              ; preds = %191, %188
  %196 = phi i1 [ false, %188 ], [ %194, %191 ]
  %197 = zext i1 %196 to i32
  %198 = load i32, i32* @INVERSE, align 4
  %.not31 = icmp eq i32 %198, %197
  br i1 %.not31, label %212, label %199

199:                                              ; preds = %195, %184
  %200 = load i32, i32* @FILENAMEONLY, align 4
  %.not32 = icmp eq i32 %200, 0
  br i1 %.not32, label %204, label %201

201:                                              ; preds = %199
  %202 = load i32, i32* @num_of_matched, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* @num_of_matched, align 4
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %241

204:                                              ; preds = %199
  %205 = add nsw i32 %70, 49151
  %.not33 = icmp slt i32 %.24, %205
  br i1 %.not33, label %206, label %211

206:                                              ; preds = %204
  %207 = load i32, i32* @D_length, align 4
  %208 = xor i32 %207, -1
  %209 = add i32 %168, %208
  %210 = getelementptr inbounds [147456 x i8], [147456 x i8]* %6, i64 0, i64 0
  call void @output(i8* noundef nonnull %210, i32 noundef %.24, i32 noundef %209, i32 noundef %181) #9
  br label %211

211:                                              ; preds = %206, %204
  br label %212

212:                                              ; preds = %211, %195
  %213 = load i32, i32* @D_length, align 4
  %214 = sub i32 %168, %213
  store i32 0, i32* @TRUNCATE, align 4
  %215 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %216 = and i32 %54, %215
  %217 = lshr i32 %215, 1
  %218 = and i32 %217, %174
  %219 = or i32 %218, %216
  %220 = and i32 %219, %67
  br label %221

221:                                              ; preds = %212, %167
  %.212 = phi i32 [ %220, %212 ], [ %178, %167 ]
  %.35 = phi i32 [ %214, %212 ], [ %.24, %167 ]
  %.6 = phi i32 [ %181, %212 ], [ %.5, %167 ]
  br label %112, !llvm.loop !8

222:                                              ; preds = %112
  %223 = add nsw i32 %70, 49152
  %224 = sub nsw i32 %223, %.13
  %225 = icmp sgt i32 %224, 49152
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  store i32 1, i32* @TRUNCATE, align 4
  br label %227

227:                                              ; preds = %226, %222
  %.018 = phi i32 [ 49152, %226 ], [ %224, %222 ]
  %228 = getelementptr inbounds [147456 x i8], [147456 x i8]* %6, i64 0, i64 49152
  %229 = sext i32 %.018 to i64
  %230 = sub nsw i64 0, %229
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = sext i32 %.13 to i64
  %233 = getelementptr inbounds [147456 x i8], [147456 x i8]* %6, i64 0, i64 %232
  %234 = sext i32 %.018 to i64
  %235 = call i8* @strncpy(i8* noundef nonnull %231, i8* noundef nonnull %233, i64 noundef %234) #9
  %236 = sub nsw i32 49152, %.018
  %237 = icmp sgt i32 %.018, 49152
  br i1 %237, label %238, label %239

238:                                              ; preds = %227
  br label %239

239:                                              ; preds = %238, %227
  %.46 = phi i32 [ 1, %238 ], [ %236, %227 ]
  br label %68, !llvm.loop !9

240:                                              ; preds = %68
  br label %241

241:                                              ; preds = %240, %201, %148, %47, %44, %38, %37
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local void @re(i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @re1(i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @asearch1(i8* noundef, i32 noundef, i32 noundef) #2

declare dso_local void @asearch(i8* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fill_buf(i32 noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %10, %3
  %.01 = phi i32 [ 1, %3 ], [ %14, %10 ]
  %.0 = phi i32 [ 0, %3 ], [ %15, %10 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = icmp sgt i32 %.01, 0
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i1 [ false, %4 ], [ %7, %6 ]
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds i8, i8* %1, i64 %11
  %13 = call i64 @read(i32 noundef %0, i8* noundef %12, i64 noundef 4096) #9
  %14 = trunc i64 %13 to i32
  %15 = add nsw i32 %.0, %14
  br label %4, !llvm.loop !10

16:                                               ; preds = %8
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #4

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local void @output(i8* noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { cold nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

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
