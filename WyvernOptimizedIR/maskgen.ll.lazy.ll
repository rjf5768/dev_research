; ModuleID = './maskgen.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/maskgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.term = type { i32, [32 x i8] }

@endposition = external dso_local global i32, align 4
@NO_ERR_MASK = external dso_local global i32, align 4
@wildmask = external dso_local global i32, align 4
@NOUPPER = external dso_local global i32, align 4
@REGEX = external dso_local global i32, align 4
@Bit = external dso_local global [0 x i32], align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s: illegal pattern, unmatched '<', '>'\0A\00", align 1
@Progname = external dso_local global [0 x i8], align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: illegal pattern, unmatched '[', ']'\0A\00", align 1
@AND = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"illegal pattern \0A\00", align 1
@D_length = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%s: pattern too long\0A\00", align 1
@Init = external dso_local global [0 x i32], align 4
@Init1 = external dso_local global i32, align 4
@D_endpos = external dso_local global i32, align 4
@Mask = external dso_local global [0 x i32], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @maskgen(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca [42 x %struct.term], align 16
  br label %4

4:                                                ; preds = %9, %2
  %.05 = phi i32 [ 0, %2 ], [ %10, %9 ]
  %5 = icmp ult i32 %.05, 32
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  %7 = zext i32 %.05 to i64
  %8 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %7, i32 1, i64 0
  store i8 0, i8* %8, align 4
  br label %9

9:                                                ; preds = %6
  %10 = add nuw nsw i32 %.05, 1
  br label %4, !llvm.loop !4

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %17, %11
  %.16 = phi i32 [ 0, %11 ], [ %18, %17 ]
  %13 = icmp ult i32 %.16, 32
  br i1 %13, label %14, label %19

14:                                               ; preds = %12
  %15 = zext i32 %.16 to i64
  %16 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %15, i32 0
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %14
  %18 = add nuw nsw i32 %.16, 1
  br label %12, !llvm.loop !6

19:                                               ; preds = %12
  store i32 0, i32* @endposition, align 4
  store i32 0, i32* @NO_ERR_MASK, align 4
  store i32 0, i32* @wildmask, align 4
  %20 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #6
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @NOUPPER, align 4
  %.not = icmp eq i32 %22, 0
  br i1 %.not, label %60, label %23

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %57, %23
  %.2 = phi i32 [ 0, %23 ], [ %58, %57 ]
  %25 = icmp slt i32 %.2, %21
  br i1 %25, label %26, label %59

26:                                               ; preds = %24
  %27 = call i16** @__ctype_b_loc() #7
  %28 = load i16*, i16** %27, align 8
  %29 = zext i32 %.2 to i64
  %30 = getelementptr inbounds i8, i8* %0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds i16, i16* %28, i64 %32
  %34 = load i16, i16* %33, align 2
  %35 = and i16 %34, 1024
  %.not42 = icmp eq i16 %35, 0
  br i1 %.not42, label %56, label %36

36:                                               ; preds = %26
  %37 = call i16** @__ctype_b_loc() #7
  %38 = load i16*, i16** %37, align 8
  %39 = zext i32 %.2 to i64
  %40 = getelementptr inbounds i8, i8* %0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i16, i16* %38, i64 %42
  %44 = load i16, i16* %43, align 2
  %45 = and i16 %44, 256
  %.not43 = icmp eq i16 %45, 0
  br i1 %.not43, label %55, label %46

46:                                               ; preds = %36
  %47 = zext i32 %.2 to i64
  %48 = getelementptr inbounds i8, i8* %0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = call i32 @tolower(i32 noundef %50) #6
  %52 = trunc i32 %51 to i8
  %53 = zext i32 %.2 to i64
  %54 = getelementptr inbounds i8, i8* %0, i64 %53
  store i8 %52, i8* %54, align 1
  br label %55

55:                                               ; preds = %46, %36
  br label %56

56:                                               ; preds = %55, %26
  br label %57

57:                                               ; preds = %56
  %58 = add nuw nsw i32 %.2, 1
  br label %24, !llvm.loop !7

59:                                               ; preds = %24
  br label %60

60:                                               ; preds = %59, %19
  br label %61

61:                                               ; preds = %293, %60
  %.014 = phi i32 [ 0, %60 ], [ %.115, %293 ]
  %.07 = phi i32 [ 1, %60 ], [ %.18, %293 ]
  %.3 = phi i32 [ 0, %60 ], [ %294, %293 ]
  %.01 = phi i32 [ 0, %60 ], [ %.12, %293 ]
  %.0 = phi i32 [ 0, %60 ], [ %.1, %293 ]
  %62 = icmp slt i32 %.3, %21
  br i1 %62, label %63, label %295

63:                                               ; preds = %61
  %64 = sext i32 %.3 to i64
  %65 = getelementptr inbounds i8, i8* %0, i64 %64
  %66 = load i8, i8* %65, align 1
  switch i8 %66, label %266 [
    i8 -7, label %67
    i8 -3, label %84
    i8 -6, label %85
    i8 -14, label %86
    i8 -13, label %87
    i8 -10, label %88
    i8 -9, label %90
    i8 -12, label %97
    i8 -11, label %163
    i8 -5, label %166
    i8 -4, label %186
    i8 10, label %211
    i8 -15, label %224
    i8 -17, label %249
  ]

67:                                               ; preds = %63
  %68 = load i32, i32* @REGEX, align 4
  %.not41 = icmp eq i32 %68, 0
  br i1 %.not41, label %77, label %69

69:                                               ; preds = %67
  %70 = sext i32 %.07 to i64
  %71 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %70, i32 1, i64 0
  store i8 46, i8* %71, align 4
  %72 = sext i32 %.07 to i64
  %73 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %72, i32 1, i64 1
  store i8 46, i8* %73, align 1
  %74 = add nsw i32 %.07, 1
  %75 = sext i32 %.07 to i64
  %76 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %75, i32 1, i64 2
  store i8 0, i8* %76, align 2
  br label %287

77:                                               ; preds = %67
  %78 = load i32, i32* @wildmask, align 4
  %79 = add nsw i32 %.07, -1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %78, %82
  store i32 %83, i32* @wildmask, align 4
  br label %287

84:                                               ; preds = %63
  br label %287

85:                                               ; preds = %63
  br label %287

86:                                               ; preds = %63
  br label %287

87:                                               ; preds = %63
  br label %287

88:                                               ; preds = %63
  %89 = add nsw i32 %.01, 1
  br label %287

90:                                               ; preds = %63
  %91 = icmp slt i32 %.01, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i64 0, i64 0)) #8
  call void @exit(i32 noundef 2) #9
  br label %UnifiedUnreachableBlock

95:                                               ; preds = %90
  %96 = add nsw i32 %.01, -1
  br label %287

97:                                               ; preds = %63
  %98 = icmp eq i32 %.0, 1
  br i1 %98, label %99, label %105

99:                                               ; preds = %97
  %100 = load i32, i32* @NO_ERR_MASK, align 4
  %101 = sext i32 %.07 to i64
  %102 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %100, %103
  store i32 %104, i32* @NO_ERR_MASK, align 4
  br label %105

105:                                              ; preds = %99, %97
  %106 = add nsw i32 %.3, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = icmp eq i8 %109, -8
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = sext i32 %.07 to i64
  %113 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %112, i32 0
  store i32 1, i32* %113, align 4
  %114 = add nsw i32 %.3, 2
  br label %115

115:                                              ; preds = %111, %105
  %.4 = phi i32 [ %114, %111 ], [ %106, %105 ]
  br label %116

116:                                              ; preds = %152, %115
  %.09 = phi i32 [ 0, %115 ], [ %.110, %152 ]
  %.5 = phi i32 [ %.4, %115 ], [ %.6, %152 ]
  %117 = sext i32 %.5 to i64
  %118 = getelementptr inbounds i8, i8* %0, i64 %117
  %119 = load i8, i8* %118, align 1
  %.not40 = icmp eq i8 %119, -11
  br i1 %.not40, label %122, label %120

120:                                              ; preds = %116
  %121 = icmp slt i32 %.5, %21
  br label %122

122:                                              ; preds = %120, %116
  %123 = phi i1 [ false, %116 ], [ %121, %120 ]
  br i1 %123, label %124, label %153

124:                                              ; preds = %122
  %125 = sext i32 %.5 to i64
  %126 = getelementptr inbounds i8, i8* %0, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = icmp eq i8 %127, -19
  br i1 %128, label %129, label %139

129:                                              ; preds = %124
  %130 = add nsw i32 %.5, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %0, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i32 %.07 to i64
  %135 = add nsw i32 %.09, -1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %134, i32 1, i64 %136
  store i8 %133, i8* %137, align 1
  %138 = add nsw i32 %.5, 2
  br label %152

139:                                              ; preds = %124
  %140 = sext i32 %.5 to i64
  %141 = getelementptr inbounds i8, i8* %0, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i32 %.07 to i64
  %144 = add nsw i32 %.09, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %143, i32 1, i64 %145
  store i8 %142, i8* %146, align 1
  %147 = sext i32 %.07 to i64
  %148 = sext i32 %.09 to i64
  %149 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %147, i32 1, i64 %148
  store i8 %142, i8* %149, align 1
  %150 = add nsw i32 %.09, 2
  %151 = add nsw i32 %.5, 1
  br label %152

152:                                              ; preds = %139, %129
  %.110 = phi i32 [ %.09, %129 ], [ %150, %139 ]
  %.6 = phi i32 [ %138, %129 ], [ %151, %139 ]
  br label %116, !llvm.loop !8

153:                                              ; preds = %122
  %154 = icmp eq i32 %.5, %21
  br i1 %154, label %155, label %158

155:                                              ; preds = %153
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %156, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i64 0, i64 0)) #8
  call void @exit(i32 noundef 2) #9
  br label %UnifiedUnreachableBlock

158:                                              ; preds = %153
  %159 = sext i32 %.07 to i64
  %160 = sext i32 %.09 to i64
  %161 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %159, i32 1, i64 %160
  store i8 0, i8* %161, align 1
  %162 = add nsw i32 %.07, 1
  br label %287

163:                                              ; preds = %63
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %164, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i64 0, i64 0)) #8
  call void @exit(i32 noundef 2) #9
  br label %UnifiedUnreachableBlock

166:                                              ; preds = %63
  %167 = load i32, i32* @REGEX, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* @AND, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %175

172:                                              ; preds = %169, %166
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %174 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %173) #10
  call void @exit(i32 noundef 2) #9
  br label %UnifiedUnreachableBlock

175:                                              ; preds = %169
  %176 = sext i32 %.07 to i64
  %177 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %176, i32 0
  store i32 2, i32* %177, align 4
  %178 = sext i32 %.07 to i64
  %179 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %178, i32 1, i64 0
  store i8 0, i8* %179, align 4
  %180 = load i32, i32* @endposition, align 4
  %181 = add nsw i32 %.07, 1
  %182 = sext i32 %.07 to i64
  %183 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %180, %184
  store i32 %185, i32* @endposition, align 4
  br label %287

186:                                              ; preds = %63
  %187 = sext i32 %.07 to i64
  %188 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %187, i32 0
  store i32 2, i32* %188, align 4
  %189 = sext i32 %.07 to i64
  %190 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %189, i32 1, i64 0
  store i8 0, i8* %190, align 4
  %191 = load i32, i32* @D_length, align 4
  %192 = icmp sgt i32 %.07, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  store i32 1, i32* @AND, align 4
  br label %194

194:                                              ; preds = %193, %186
  %.not39 = icmp eq i32 %.014, 0
  br i1 %.not39, label %195, label %201

195:                                              ; preds = %194
  %196 = load i32, i32* @REGEX, align 4
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %204

198:                                              ; preds = %195
  %199 = load i32, i32* @D_length, align 4
  %200 = icmp sgt i32 %.07, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %198, %194
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %203 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %202) #10
  call void @exit(i32 noundef 2) #9
  br label %UnifiedUnreachableBlock

204:                                              ; preds = %198, %195
  %205 = load i32, i32* @endposition, align 4
  %206 = add nsw i32 %.07, 1
  %207 = sext i32 %.07 to i64
  %208 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %205, %209
  store i32 %210, i32* @endposition, align 4
  br label %287

211:                                              ; preds = %63
  %212 = load i32, i32* @NO_ERR_MASK, align 4
  %213 = sext i32 %.07 to i64
  %214 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %212, %215
  store i32 %216, i32* @NO_ERR_MASK, align 4
  %217 = sext i32 %.07 to i64
  %218 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %217, i32 1, i64 1
  store i8 10, i8* %218, align 1
  %219 = sext i32 %.07 to i64
  %220 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %219, i32 1, i64 0
  store i8 10, i8* %220, align 4
  %221 = add nsw i32 %.07, 1
  %222 = sext i32 %.07 to i64
  %223 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %222, i32 1, i64 2
  store i8 0, i8* %223, align 2
  br label %287

224:                                              ; preds = %63
  %225 = load i32, i32* @NO_ERR_MASK, align 4
  %226 = sext i32 %.07 to i64
  %227 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %225, %228
  store i32 %229, i32* @NO_ERR_MASK, align 4
  %230 = sext i32 %.07 to i64
  %231 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %230, i32 1, i64 0
  store i8 1, i8* %231, align 4
  %232 = sext i32 %.07 to i64
  %233 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %232, i32 1, i64 1
  store i8 47, i8* %233, align 1
  %234 = sext i32 %.07 to i64
  %235 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %234, i32 1, i64 2
  store i8 58, i8* %235, align 2
  %236 = sext i32 %.07 to i64
  %237 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %236, i32 1, i64 3
  store i8 64, i8* %237, align 1
  %238 = sext i32 %.07 to i64
  %239 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %238, i32 1, i64 4
  store i8 91, i8* %239, align 4
  %240 = sext i32 %.07 to i64
  %241 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %240, i32 1, i64 5
  store i8 96, i8* %241, align 1
  %242 = sext i32 %.07 to i64
  %243 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %242, i32 1, i64 6
  store i8 123, i8* %243, align 2
  %244 = sext i32 %.07 to i64
  %245 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %244, i32 1, i64 7
  store i8 127, i8* %245, align 1
  %246 = add nsw i32 %.07, 1
  %247 = sext i32 %.07 to i64
  %248 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %247, i32 1, i64 8
  store i8 0, i8* %248, align 4
  br label %287

249:                                              ; preds = %63
  %250 = sext i32 %.07 to i64
  %251 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @NO_ERR_MASK, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* @NO_ERR_MASK, align 4
  %255 = sext i32 %.07 to i64
  %256 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %255, i32 1, i64 1
  store i8 10, i8* %256, align 1
  %257 = sext i32 %.07 to i64
  %258 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %257, i32 1, i64 0
  store i8 10, i8* %258, align 4
  %259 = sext i32 %.07 to i64
  %260 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %259, i32 1, i64 3
  store i8 -17, i8* %260, align 1
  %261 = sext i32 %.07 to i64
  %262 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %261, i32 1, i64 2
  store i8 -17, i8* %262, align 2
  %263 = add nsw i32 %.07, 1
  %264 = sext i32 %.07 to i64
  %265 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %264, i32 1, i64 4
  store i8 0, i8* %265, align 4
  br label %287

266:                                              ; preds = %63
  %267 = icmp eq i32 %.0, 1
  br i1 %267, label %268, label %274

268:                                              ; preds = %266
  %269 = load i32, i32* @NO_ERR_MASK, align 4
  %270 = sext i32 %.07 to i64
  %271 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = or i32 %269, %272
  store i32 %273, i32* @NO_ERR_MASK, align 4
  br label %274

274:                                              ; preds = %268, %266
  %275 = sext i32 %.07 to i64
  %276 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %275, i32 0
  store i32 0, i32* %276, align 4
  %277 = sext i32 %.3 to i64
  %278 = getelementptr inbounds i8, i8* %0, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = sext i32 %.07 to i64
  %281 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %280, i32 1, i64 1
  store i8 %279, i8* %281, align 1
  %282 = sext i32 %.07 to i64
  %283 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %282, i32 1, i64 0
  store i8 %279, i8* %283, align 4
  %284 = add nsw i32 %.07, 1
  %285 = sext i32 %.07 to i64
  %286 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %285, i32 1, i64 2
  store i8 0, i8* %286, align 2
  br label %287

287:                                              ; preds = %274, %249, %224, %211, %204, %175, %158, %95, %88, %87, %86, %85, %84, %77, %69
  %.115 = phi i32 [ %.014, %274 ], [ %.014, %249 ], [ %.014, %224 ], [ %.014, %211 ], [ %.014, %204 ], [ 1, %175 ], [ %.014, %158 ], [ %.014, %95 ], [ %.014, %88 ], [ %.014, %87 ], [ %.014, %86 ], [ %.014, %85 ], [ %.014, %84 ], [ %.014, %69 ], [ %.014, %77 ]
  %.18 = phi i32 [ %284, %274 ], [ %263, %249 ], [ %246, %224 ], [ %221, %211 ], [ %206, %204 ], [ %181, %175 ], [ %162, %158 ], [ %.07, %95 ], [ %.07, %88 ], [ %.07, %87 ], [ %.07, %86 ], [ %.07, %85 ], [ %.07, %84 ], [ %74, %69 ], [ %.07, %77 ]
  %.7 = phi i32 [ %.3, %274 ], [ %.3, %249 ], [ %.3, %224 ], [ %.3, %211 ], [ %.3, %204 ], [ %.3, %175 ], [ %.5, %158 ], [ %.3, %95 ], [ %.3, %88 ], [ %.3, %87 ], [ %.3, %86 ], [ %.3, %85 ], [ %.3, %84 ], [ %.3, %69 ], [ %.3, %77 ]
  %.12 = phi i32 [ %.01, %274 ], [ %.01, %249 ], [ %.01, %224 ], [ %.01, %211 ], [ %.01, %204 ], [ %.01, %175 ], [ %.01, %158 ], [ %96, %95 ], [ %89, %88 ], [ %.01, %87 ], [ %.01, %86 ], [ %.01, %85 ], [ %.01, %84 ], [ %.01, %69 ], [ %.01, %77 ]
  %.1 = phi i32 [ %.0, %274 ], [ %.0, %249 ], [ %.0, %224 ], [ %.0, %211 ], [ %.0, %204 ], [ %.0, %175 ], [ %.0, %158 ], [ 0, %95 ], [ 1, %88 ], [ %.0, %87 ], [ %.0, %86 ], [ %.0, %85 ], [ %.0, %84 ], [ %.0, %69 ], [ %.0, %77 ]
  %288 = icmp sgt i32 %.18, 32
  br i1 %288, label %289, label %292

289:                                              ; preds = %287
  %290 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %291 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %290, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i64 0, i64 0)) #8
  call void @exit(i32 noundef 2) #9
  br label %UnifiedUnreachableBlock

292:                                              ; preds = %287
  br label %293

293:                                              ; preds = %292
  %294 = add nsw i32 %.7, 1
  br label %61, !llvm.loop !9

295:                                              ; preds = %61
  %.not28 = icmp eq i32 %.01, 0
  br i1 %.not28, label %299, label %296

296:                                              ; preds = %295
  %297 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %298 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %297, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i64 0, i64 0)) #8
  call void @exit(i32 noundef 2) #9
  br label %UnifiedUnreachableBlock

299:                                              ; preds = %295
  %300 = add nsw i32 %.07, -1
  %301 = sub i32 33, %.07
  %302 = load i32, i32* @wildmask, align 4
  %303 = lshr i32 %302, %301
  store i32 %303, i32* @wildmask, align 4
  %304 = load i32, i32* @endposition, align 4
  %305 = lshr i32 %304, %301
  store i32 %305, i32* @endposition, align 4
  %306 = load i32, i32* @NO_ERR_MASK, align 4
  %307 = ashr i32 %306, 1
  %308 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Bit, i64 0, i64 1), align 4
  %309 = xor i32 %308, -1
  %310 = and i32 %307, %309
  %311 = sub i32 32, %.07
  %.not29 = ashr i32 %310, %311
  %312 = xor i32 %.not29, -1
  store i32 %312, i32* @NO_ERR_MASK, align 4
  br label %313

313:                                              ; preds = %321, %299
  %.8 = phi i32 [ 1, %299 ], [ %322, %321 ]
  %314 = sub i32 33, %.07
  %.not30 = icmp sgt i32 %.8, %314
  br i1 %.not30, label %323, label %315

315:                                              ; preds = %313
  %316 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %317 = zext i32 %.8 to i64
  %318 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = or i32 %316, %319
  store i32 %320, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  br label %321

321:                                              ; preds = %315
  %322 = add nuw nsw i32 %.8, 1
  br label %313, !llvm.loop !10

323:                                              ; preds = %313
  %324 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %325 = load i32, i32* @endposition, align 4
  %326 = or i32 %324, %325
  store i32 %326, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %327 = shl i32 %325, 1
  %328 = or i32 %327, 1
  store i32 %328, i32* @endposition, align 4
  %329 = load i32, i32* @wildmask, align 4
  %330 = or i32 %326, %329
  %331 = or i32 %330, %328
  store i32 %331, i32* @Init1, align 4
  %332 = load i32, i32* @D_length, align 4
  %333 = sub nsw i32 %300, %332
  %334 = lshr i32 %328, %333
  %335 = sub nsw i32 %300, %332
  %336 = shl i32 %334, %335
  store i32 %336, i32* @D_endpos, align 4
  %337 = load i32, i32* @endposition, align 4
  %338 = xor i32 %337, %336
  store i32 %338, i32* @endposition, align 4
  br label %339

339:                                              ; preds = %413, %323
  %.9 = phi i32 [ 0, %323 ], [ %415, %413 ]
  %.03 = phi i8 [ 0, %323 ], [ %414, %413 ]
  %340 = icmp ult i32 %.9, 256
  br i1 %340, label %341, label %416

341:                                              ; preds = %339
  br label %342

342:                                              ; preds = %410, %341
  %.211 = phi i32 [ 1, %341 ], [ %411, %410 ]
  %.not33.not = icmp slt i32 %.211, %.07
  br i1 %.not33.not, label %343, label %412

343:                                              ; preds = %342
  br label %344

344:                                              ; preds = %391, %343
  %.113 = phi i32 [ 0, %343 ], [ %392, %391 ]
  %345 = zext i32 %.211 to i64
  %346 = zext i32 %.113 to i64
  %347 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %345, i32 1, i64 %346
  %348 = load i8, i8* %347, align 2
  %.not34 = icmp eq i8 %348, 0
  br i1 %.not34, label %.loopexit, label %349

349:                                              ; preds = %344
  %350 = zext i32 %.211 to i64
  %351 = zext i32 %.113 to i64
  %352 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %350, i32 1, i64 %351
  %353 = load i8, i8* %352, align 2
  %354 = icmp eq i8 %353, -18
  br i1 %354, label %355, label %369

355:                                              ; preds = %349
  %.not37 = icmp eq i8 %.03, 10
  br i1 %.not37, label %356, label %358

356:                                              ; preds = %355
  %357 = load i32, i32* @REGEX, align 4
  %.not38 = icmp eq i32 %357, 0
  br i1 %.not38, label %369, label %358

358:                                              ; preds = %356, %355
  %359 = zext i8 %.03 to i64
  %360 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %301, %.211
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = or i32 %361, %365
  %367 = zext i8 %.03 to i64
  %368 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %367
  store i32 %366, i32* %368, align 4
  br label %393

369:                                              ; preds = %356, %349
  %370 = zext i32 %.211 to i64
  %371 = zext i32 %.113 to i64
  %372 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %370, i32 1, i64 %371
  %373 = load i8, i8* %372, align 2
  %.not35 = icmp ult i8 %.03, %373
  br i1 %.not35, label %391, label %374

374:                                              ; preds = %369
  %375 = zext i32 %.211 to i64
  %376 = or i32 %.113, 1
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %375, i32 1, i64 %377
  %379 = load i8, i8* %378, align 1
  %.not36 = icmp ugt i8 %.03, %379
  br i1 %.not36, label %391, label %380

380:                                              ; preds = %374
  %381 = zext i8 %.03 to i64
  %382 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = add nsw i32 %301, %.211
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = or i32 %383, %387
  %389 = zext i8 %.03 to i64
  %390 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %389
  store i32 %388, i32* %390, align 4
  br label %393

391:                                              ; preds = %374, %369
  %392 = add nuw nsw i32 %.113, 2
  br label %344, !llvm.loop !11

.loopexit:                                        ; preds = %344
  br label %393

393:                                              ; preds = %.loopexit, %380, %358
  %394 = zext i32 %.211 to i64
  %395 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %3, i64 0, i64 %394, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = icmp eq i32 %396, 1
  br i1 %397, label %398, label %409

398:                                              ; preds = %393
  %399 = zext i8 %.03 to i64
  %400 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = add nsw i32 %301, %.211
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = xor i32 %401, %405
  %407 = zext i8 %.03 to i64
  %408 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %407
  store i32 %406, i32* %408, align 4
  br label %409

409:                                              ; preds = %398, %393
  br label %410

410:                                              ; preds = %409
  %411 = add nuw nsw i32 %.211, 1
  br label %342, !llvm.loop !12

412:                                              ; preds = %342
  br label %413

413:                                              ; preds = %412
  %414 = add i8 %.03, 1
  %415 = add nuw nsw i32 %.9, 1
  br label %339, !llvm.loop !13

416:                                              ; preds = %339
  %417 = load i32, i32* @NOUPPER, align 4
  %.not31 = icmp eq i32 %417, 0
  br i1 %.not31, label %440, label %418

418:                                              ; preds = %416
  br label %419

419:                                              ; preds = %437, %418
  %.14 = phi i8 [ 65, %418 ], [ %438, %437 ]
  %420 = icmp ult i8 %.14, 91
  br i1 %420, label %421, label %439

421:                                              ; preds = %419
  %422 = call i16** @__ctype_b_loc() #7
  %423 = load i16*, i16** %422, align 8
  %424 = zext i8 %.14 to i64
  %425 = getelementptr inbounds i16, i16* %423, i64 %424
  %426 = load i16, i16* %425, align 2
  %427 = and i16 %426, 256
  %.not32 = icmp eq i16 %427, 0
  br i1 %.not32, label %436, label %428

428:                                              ; preds = %421
  %429 = zext i8 %.14 to i32
  %430 = call i32 @tolower(i32 noundef %429) #6
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = zext i8 %.14 to i64
  %435 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %434
  store i32 %433, i32* %435, align 4
  br label %436

436:                                              ; preds = %428, %421
  br label %437

437:                                              ; preds = %436
  %438 = add i8 %.14, 1
  br label %419, !llvm.loop !14

439:                                              ; preds = %419
  br label %440

440:                                              ; preds = %439, %416
  ret i32 %300

UnifiedUnreachableBlock:                          ; preds = %296, %289, %201, %172, %163, %155, %92
  unreachable
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @tolower(i32 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { cold nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { cold }

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
