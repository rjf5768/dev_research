; ModuleID = './huffbench.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/huffbench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [33 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ012345\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"error: bit code overflow\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"error: file has only one value!\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"error: no compression\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"\0Ahuffbench (Std. C) run time: %f\0A\0A\00", align 1
@seed = internal global i64 1325, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @generate_test_data(i64 noundef %0) #0 {
  %2 = call noalias i8* @malloc(i64 noundef %0) #9
  br label %3

3:                                                ; preds = %10, %1
  %.01 = phi i8* [ %2, %1 ], [ %11, %10 ]
  %.0 = phi i32 [ 0, %1 ], [ %12, %10 ]
  %4 = zext i32 %.0 to i64
  %5 = icmp ult i64 %4, %0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = call i64 @random4()
  %8 = getelementptr inbounds [33 x i8], [33 x i8]* @.str, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %.01, align 1
  br label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %.01, i64 1
  %12 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

13:                                               ; preds = %3
  ret i8* %2
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @compdecomp(i8* nocapture noundef %0, i64 noundef %1) #0 {
  %3 = alloca [512 x i64], align 16
  %4 = alloca [256 x i64], align 16
  %5 = alloca [512 x i32], align 16
  %6 = alloca [256 x i64], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i64], align 16
  %9 = alloca [256 x i8], align 16
  %10 = add i64 %1, 1
  %11 = call noalias i8* @malloc(i64 noundef %10) #9
  %12 = add i64 %1, 1
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 %12, i1 false)
  %13 = bitcast [512 x i64]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(4096) %13, i8 0, i64 4096, i1 false)
  %14 = bitcast [256 x i64]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) %14, i8 0, i64 2048, i1 false)
  %15 = bitcast [512 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) %15, i8 0, i64 2048, i1 false)
  %16 = bitcast [256 x i64]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) %16, i8 0, i64 2048, i1 false)
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) %17, i8 0, i64 256, i1 false)
  br label %18

18:                                               ; preds = %26, %2
  %.033 = phi i8* [ %0, %2 ], [ %27, %26 ]
  %.02 = phi i64 [ 0, %2 ], [ %28, %26 ]
  %19 = icmp ult i64 %.02, %1
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  %21 = load i8, i8* %.033, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [512 x i64], [512 x i64]* %3, i64 0, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %23, align 8
  br label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, i8* %.033, i64 1
  %28 = add i64 %.02, 1
  br label %18, !llvm.loop !6

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %39, %29
  %.010 = phi i64 [ 0, %29 ], [ %.111, %39 ]
  %.13 = phi i64 [ 0, %29 ], [ %40, %39 ]
  %31 = icmp ult i64 %.13, 256
  br i1 %31, label %32, label %41

32:                                               ; preds = %30
  %33 = getelementptr inbounds [512 x i64], [512 x i64]* %3, i64 0, i64 %.13
  %34 = load i64, i64* %33, align 8
  %.not61 = icmp eq i64 %34, 0
  br i1 %.not61, label %38, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %.010
  store i64 %.13, i64* %36, align 8
  %37 = add i64 %.010, 1
  br label %38

38:                                               ; preds = %35, %32
  %.111 = phi i64 [ %37, %35 ], [ %.010, %32 ]
  br label %39

39:                                               ; preds = %38
  %40 = add i64 %.13, 1
  br label %30, !llvm.loop !7

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %48, %41
  %.24 = phi i64 [ %.010, %41 ], [ %49, %48 ]
  %.not = icmp eq i64 %.24, 0
  br i1 %.not, label %50, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds [512 x i64], [512 x i64]* %3, i64 0, i64 0
  %45 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0
  %46 = trunc i64 %.010 to i32
  %47 = trunc i64 %.24 to i32
  call void @heap_adjust(i64* noundef nonnull %44, i64* noundef nonnull %45, i32 noundef %46, i32 noundef %47)
  br label %48

48:                                               ; preds = %43
  %49 = add i64 %.24, -1
  br label %42, !llvm.loop !8

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %53, %50
  %.212 = phi i64 [ %.010, %50 ], [ %54, %53 ]
  %52 = icmp ugt i64 %.212, 1
  br i1 %52, label %53, label %85

53:                                               ; preds = %51
  %54 = add i64 %.212, -1
  %55 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0
  %56 = load i64, i64* %55, align 16
  %57 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %54
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0
  store i64 %58, i64* %59, align 16
  %60 = getelementptr inbounds [512 x i64], [512 x i64]* %3, i64 0, i64 0
  %61 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0
  %62 = trunc i64 %54 to i32
  call void @heap_adjust(i64* noundef nonnull %60, i64* noundef nonnull %61, i32 noundef %62, i32 noundef 1)
  %63 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0
  %64 = load i64, i64* %63, align 16
  %65 = getelementptr inbounds [512 x i64], [512 x i64]* %3, i64 0, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds [512 x i64], [512 x i64]* %3, i64 0, i64 %56
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %66, %68
  %70 = add i64 %.212, 255
  %71 = getelementptr inbounds [512 x i64], [512 x i64]* %3, i64 0, i64 %70
  store i64 %69, i64* %71, align 8
  %72 = trunc i64 %.212 to i32
  %73 = add i32 %72, 255
  %74 = getelementptr inbounds [512 x i32], [512 x i32]* %5, i64 0, i64 %56
  store i32 %73, i32* %74, align 4
  %75 = trunc i64 %.212 to i32
  %76 = sub i32 -255, %75
  %77 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0
  %78 = load i64, i64* %77, align 16
  %79 = getelementptr inbounds [512 x i32], [512 x i32]* %5, i64 0, i64 %78
  store i32 %76, i32* %79, align 4
  %80 = add i64 %.212, 255
  %81 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0
  store i64 %80, i64* %81, align 16
  %82 = getelementptr inbounds [512 x i64], [512 x i64]* %3, i64 0, i64 0
  %83 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0
  %84 = trunc i64 %54 to i32
  call void @heap_adjust(i64* noundef nonnull %82, i64* noundef nonnull %83, i32 noundef %84, i32 noundef 1)
  br label %51, !llvm.loop !9

85:                                               ; preds = %51
  %86 = add i64 %.212, 256
  %87 = getelementptr inbounds [512 x i32], [512 x i32]* %5, i64 0, i64 %86
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %118, %85
  %.045 = phi i64 [ 0, %85 ], [ %.247, %118 ]
  %.042 = phi i64 [ 0, %85 ], [ %119, %118 ]
  %.039 = phi i64 [ 0, %85 ], [ %.241, %118 ]
  %89 = icmp ult i64 %.042, 256
  br i1 %89, label %90, label %120

90:                                               ; preds = %88
  %91 = getelementptr inbounds [512 x i64], [512 x i64]* %3, i64 0, i64 %.042
  %92 = load i64, i64* %91, align 8
  %.not59 = icmp eq i64 %92, 0
  br i1 %.not59, label %93, label %96

93:                                               ; preds = %90
  %94 = getelementptr inbounds [256 x i64], [256 x i64]* %6, i64 0, i64 %.042
  store i64 0, i64* %94, align 8
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %.042
  store i8 0, i8* %95, align 1
  br label %117

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %103, %96
  %.043 = phi i64 [ 0, %96 ], [ %.144, %103 ]
  %.042.pn = phi i64 [ %.042, %96 ], [ %104, %103 ]
  %.05 = phi i64 [ 1, %96 ], [ %105, %103 ]
  %.3 = phi i64 [ 0, %96 ], [ %106, %103 ]
  %.037.in = getelementptr inbounds [512 x i32], [512 x i32]* %5, i64 0, i64 %.042.pn
  %.037 = load i32, i32* %.037.in, align 4
  %.not60 = icmp eq i32 %.037, 0
  br i1 %.not60, label %107, label %98

98:                                               ; preds = %97
  %99 = icmp slt i32 %.037, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = add i64 %.043, %.05
  %102 = sub nsw i32 0, %.037
  br label %103

103:                                              ; preds = %100, %98
  %.144 = phi i64 [ %101, %100 ], [ %.043, %98 ]
  %.138 = phi i32 [ %102, %100 ], [ %.037, %98 ]
  %104 = sext i32 %.138 to i64
  %105 = shl i64 %.05, 1
  %106 = add i64 %.3, 1
  br label %97, !llvm.loop !10

107:                                              ; preds = %97
  %108 = getelementptr inbounds [256 x i64], [256 x i64]* %6, i64 0, i64 %.042
  store i64 %.043, i64* %108, align 8
  %109 = trunc i64 %.3 to i8
  %110 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %.042
  store i8 %109, i8* %110, align 1
  %111 = icmp ugt i64 %.043, %.045
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %107
  %.146 = phi i64 [ %.043, %112 ], [ %.045, %107 ]
  %114 = icmp ugt i64 %.3, %.039
  br i1 %114, label %115, label %116

115:                                              ; preds = %113
  br label %116

116:                                              ; preds = %115, %113
  %.140 = phi i64 [ %.3, %115 ], [ %.039, %113 ]
  br label %117

117:                                              ; preds = %116, %93
  %.247 = phi i64 [ %.146, %116 ], [ %.045, %93 ]
  %.241 = phi i64 [ %.140, %116 ], [ %.039, %93 ]
  br label %118

118:                                              ; preds = %117
  %119 = add i64 %.042, 1
  br label %88, !llvm.loop !11

120:                                              ; preds = %88
  %121 = icmp ugt i64 %.039, 64
  br i1 %121, label %122, label %125

122:                                              ; preds = %120
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %124 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %123) #10
  call void @exit(i32 noundef 1) #11
  br label %UnifiedUnreachableBlock

125:                                              ; preds = %120
  %126 = icmp eq i64 %.045, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %125
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %129 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %128) #10
  call void @exit(i32 noundef 1) #11
  br label %UnifiedUnreachableBlock

130:                                              ; preds = %125
  br label %131

131:                                              ; preds = %175, %130
  %.134 = phi i8* [ %0, %130 ], [ %176, %175 ]
  %.028 = phi i64 [ 0, %130 ], [ %.129, %175 ]
  %.024 = phi i8 [ 0, %130 ], [ %.125, %175 ]
  %.16 = phi i64 [ 0, %130 ], [ %177, %175 ]
  %.01 = phi i32 [ -1, %130 ], [ %.1, %175 ]
  %132 = icmp ult i64 %.16, %1
  br i1 %132, label %133, label %178

133:                                              ; preds = %131
  %134 = load i8, i8* %.134, align 1
  %135 = zext i8 %134 to i64
  %136 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = add nsw i32 %138, -1
  %140 = shl i32 1, %139
  %141 = sext i32 %140 to i64
  br label %142

142:                                              ; preds = %171, %133
  %.129 = phi i64 [ %.028, %133 ], [ %.230, %171 ]
  %.125 = phi i8 [ %.024, %133 ], [ %.327, %171 ]
  %.015 = phi i64 [ %141, %133 ], [ %172, %171 ]
  %.4 = phi i64 [ 0, %133 ], [ %173, %171 ]
  %.1 = phi i32 [ %.01, %133 ], [ %.2, %171 ]
  %143 = load i8, i8* %.134, align 1
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i64
  %148 = icmp ult i64 %.4, %147
  br i1 %148, label %149, label %174

149:                                              ; preds = %142
  %150 = icmp eq i32 %.1, 7
  br i1 %150, label %151, label %159

151:                                              ; preds = %149
  %152 = getelementptr inbounds i8, i8* %11, i64 %.129
  store i8 %.125, i8* %152, align 1
  %153 = add i64 %.129, 1
  %154 = icmp eq i64 %153, %1
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %157 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %156) #10
  call void @exit(i32 noundef 1) #11
  br label %UnifiedUnreachableBlock

158:                                              ; preds = %151
  br label %162

159:                                              ; preds = %149
  %160 = add nsw i32 %.1, 1
  %161 = shl i8 %.125, 1
  br label %162

162:                                              ; preds = %159, %158
  %.230 = phi i64 [ %153, %158 ], [ %.129, %159 ]
  %.226 = phi i8 [ 0, %158 ], [ %161, %159 ]
  %.2 = phi i32 [ 0, %158 ], [ %160, %159 ]
  %163 = load i8, i8* %.134, align 1
  %164 = zext i8 %163 to i64
  %165 = getelementptr inbounds [256 x i64], [256 x i64]* %6, i64 0, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = and i64 %166, %.015
  %.not58 = icmp eq i64 %167, 0
  br i1 %.not58, label %170, label %168

168:                                              ; preds = %162
  %169 = or i8 %.226, 1
  br label %170

170:                                              ; preds = %168, %162
  %.327 = phi i8 [ %169, %168 ], [ %.226, %162 ]
  br label %171

171:                                              ; preds = %170
  %172 = lshr i64 %.015, 1
  %173 = add i64 %.4, 1
  br label %142, !llvm.loop !12

174:                                              ; preds = %142
  br label %175

175:                                              ; preds = %174
  %176 = getelementptr inbounds i8, i8* %.134, i64 1
  %177 = add i64 %.16, 1
  br label %131, !llvm.loop !13

178:                                              ; preds = %131
  %179 = sub nsw i32 7, %.01
  %180 = zext i8 %.024 to i32
  %181 = shl i32 %180, %179
  %182 = trunc i32 %181 to i8
  %183 = getelementptr inbounds i8, i8* %11, i64 %.028
  store i8 %182, i8* %183, align 1
  %184 = bitcast [256 x i64]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) %184, i8 0, i64 2048, i1 false)
  %185 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  br label %186

186:                                              ; preds = %224, %178
  %.27 = phi i64 [ 0, %178 ], [ %225, %224 ]
  %.0 = phi i8* [ %185, %178 ], [ %190, %224 ]
  %187 = icmp ult i64 %.27, 256
  br i1 %187, label %188, label %226

188:                                              ; preds = %186
  %189 = trunc i64 %.27 to i8
  store i8 %189, i8* %.0, align 1
  %190 = getelementptr inbounds i8, i8* %.0, i64 1
  %191 = getelementptr inbounds [256 x i64], [256 x i64]* %6, i64 0, i64 %.27
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %.27
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i64
  %196 = or i64 %192, %195
  %.not56 = icmp eq i64 %196, 0
  br i1 %.not56, label %223, label %197

197:                                              ; preds = %188
  %198 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %.27
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = add nsw i32 %200, -1
  %202 = shl i32 1, %201
  %203 = sext i32 %202 to i64
  br label %204

204:                                              ; preds = %218, %197
  %.019 = phi i64 [ 0, %197 ], [ %.120, %218 ]
  %.116 = phi i64 [ %203, %197 ], [ %219, %218 ]
  %.5 = phi i64 [ 0, %197 ], [ %220, %218 ]
  %205 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %.27
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i64
  %208 = icmp ult i64 %.5, %207
  br i1 %208, label %209, label %221

209:                                              ; preds = %204
  %210 = shl i64 %.019, 1
  %211 = or i64 %210, 1
  %212 = getelementptr inbounds [256 x i64], [256 x i64]* %6, i64 0, i64 %.27
  %213 = load i64, i64* %212, align 8
  %214 = and i64 %213, %.116
  %.not57 = icmp eq i64 %214, 0
  br i1 %.not57, label %217, label %215

215:                                              ; preds = %209
  %216 = add i64 %210, 2
  br label %217

217:                                              ; preds = %215, %209
  %.120 = phi i64 [ %216, %215 ], [ %211, %209 ]
  br label %218

218:                                              ; preds = %217
  %219 = lshr i64 %.116, 1
  %220 = add i64 %.5, 1
  br label %204, !llvm.loop !14

221:                                              ; preds = %204
  %222 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 %.27
  store i64 %.019, i64* %222, align 8
  br label %223

223:                                              ; preds = %221, %188
  br label %224

224:                                              ; preds = %223
  %225 = add i64 %.27, 1
  br label %186, !llvm.loop !15

226:                                              ; preds = %186
  br label %227

227:                                              ; preds = %255, %226
  %.6 = phi i64 [ 1, %226 ], [ %256, %255 ]
  %228 = icmp ult i64 %.6, 256
  br i1 %228, label %229, label %257

229:                                              ; preds = %227
  %230 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 %.6
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %.6
  %233 = load i8, i8* %232, align 1
  br label %234

234:                                              ; preds = %242, %229
  %.38 = phi i64 [ %.6, %229 ], [ %251, %242 ]
  %.not55 = icmp eq i64 %.38, 0
  br i1 %.not55, label %240, label %235

235:                                              ; preds = %234
  %236 = add i64 %.38, -1
  %237 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = icmp ugt i64 %238, %231
  br label %240

240:                                              ; preds = %235, %234
  %241 = phi i1 [ false, %234 ], [ %239, %235 ]
  br i1 %241, label %242, label %252

242:                                              ; preds = %240
  %243 = add i64 %.38, -1
  %244 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 %.38
  store i64 %245, i64* %246, align 8
  %247 = add i64 %.38, -1
  %248 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %.38
  store i8 %249, i8* %250, align 1
  %251 = add i64 %.38, -1
  br label %234, !llvm.loop !16

252:                                              ; preds = %240
  %253 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 %.38
  store i64 %231, i64* %253, align 8
  %254 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %.38
  store i8 %233, i8* %254, align 1
  br label %255

255:                                              ; preds = %252
  %256 = add i64 %.6, 1
  br label %227, !llvm.loop !17

257:                                              ; preds = %227
  br label %258

258:                                              ; preds = %263, %257
  %.49 = phi i64 [ 0, %257 ], [ %264, %263 ]
  %259 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 %.49
  %260 = load i64, i64* %259, align 8
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %258
  br label %263

263:                                              ; preds = %262
  %264 = add i64 %.49, 1
  br label %258, !llvm.loop !18

265:                                              ; preds = %258
  br label %266

266:                                              ; preds = %298, %265
  %.235 = phi i8* [ %0, %265 ], [ %.336, %298 ]
  %.031 = phi i8* [ %11, %265 ], [ %.132, %298 ]
  %.221 = phi i64 [ 0, %265 ], [ %.423, %298 ]
  %.217 = phi i64 [ 128, %265 ], [ %.318, %298 ]
  %.313 = phi i64 [ 0, %265 ], [ %.414, %298 ]
  %.7 = phi i64 [ %.49, %265 ], [ %.9, %298 ]
  %267 = icmp ult i64 %.313, %1
  br i1 %267, label %268, label %299

268:                                              ; preds = %266
  %269 = shl i64 %.221, 1
  %270 = or i64 %269, 1
  %271 = load i8, i8* %.031, align 1
  %272 = zext i8 %271 to i64
  %273 = and i64 %.217, %272
  %.not54 = icmp eq i64 %273, 0
  br i1 %.not54, label %276, label %274

274:                                              ; preds = %268
  %275 = add i64 %269, 2
  br label %276

276:                                              ; preds = %274, %268
  %.322 = phi i64 [ %275, %274 ], [ %270, %268 ]
  br label %277

277:                                              ; preds = %281, %276
  %.8 = phi i64 [ %.7, %276 ], [ %282, %281 ]
  %278 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 %.8
  %279 = load i64, i64* %278, align 8
  %280 = icmp ult i64 %279, %.322
  br i1 %280, label %281, label %283

281:                                              ; preds = %277
  %282 = add i64 %.8, 1
  br label %277, !llvm.loop !19

283:                                              ; preds = %277
  %284 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 %.8
  %285 = load i64, i64* %284, align 8
  %286 = icmp eq i64 %.322, %285
  br i1 %286, label %287, label %292

287:                                              ; preds = %283
  %288 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %.8
  %289 = load i8, i8* %288, align 1
  store i8 %289, i8* %.235, align 1
  %290 = getelementptr inbounds i8, i8* %.235, i64 1
  %291 = add i64 %.313, 1
  br label %292

292:                                              ; preds = %287, %283
  %.336 = phi i8* [ %290, %287 ], [ %.235, %283 ]
  %.423 = phi i64 [ 0, %287 ], [ %.322, %283 ]
  %.414 = phi i64 [ %291, %287 ], [ %.313, %283 ]
  %.9 = phi i64 [ %.49, %287 ], [ %.8, %283 ]
  %293 = icmp ugt i64 %.217, 1
  br i1 %293, label %294, label %296

294:                                              ; preds = %292
  %295 = lshr i64 %.217, 1
  br label %298

296:                                              ; preds = %292
  %297 = getelementptr inbounds i8, i8* %.031, i64 1
  br label %298

298:                                              ; preds = %296, %294
  %.132 = phi i8* [ %.031, %294 ], [ %297, %296 ]
  %.318 = phi i64 [ %295, %294 ], [ 128, %296 ]
  br label %266, !llvm.loop !20

299:                                              ; preds = %266
  call void @free(i8* noundef %11) #9
  ret void

UnifiedUnreachableBlock:                          ; preds = %155, %127, %122
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @heap_adjust(i64* nocapture noundef readonly %0, i64* nocapture noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = add nsw i32 %3, -1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i64, i64* %1, i64 %6
  %8 = load i64, i64* %7, align 8
  br label %9

9:                                                ; preds = %41, %4
  %.01 = phi i32 [ %3, %4 ], [ %.0, %41 ]
  %10 = sdiv i32 %2, 2
  %.not = icmp sgt i32 %.01, %10
  br i1 %.not, label %.loopexit, label %11

11:                                               ; preds = %9
  %12 = shl nsw i32 %.01, 1
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = add nsw i32 %12, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %1, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i64, i64* %0, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = sext i32 %12 to i64
  %22 = getelementptr inbounds i64, i64* %1, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i64, i64* %0, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %20, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = or i32 %12, 1
  br label %29

29:                                               ; preds = %27, %14, %11
  %.0 = phi i32 [ %28, %27 ], [ %12, %14 ], [ %12, %11 ]
  %sext4 = shl i64 %8, 32
  %30 = ashr exact i64 %sext4, 32
  %31 = getelementptr inbounds i64, i64* %0, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i32 %.0, -1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %1, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %0, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %32, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %49

41:                                               ; preds = %29
  %42 = add nsw i32 %.0, -1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %1, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i32 %.01, -1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %1, i64 %47
  store i64 %45, i64* %48, align 8
  br label %9, !llvm.loop !21

.loopexit:                                        ; preds = %9
  br label %49

49:                                               ; preds = %.loopexit, %40
  %sext = shl i64 %8, 32
  %50 = ashr exact i64 %sext, 32
  %51 = add nsw i32 %.01, -1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %1, i64 %52
  store i64 %50, i64* %53, align 8
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %13, %4
  %.01 = phi i32 [ 1, %4 ], [ %14, %13 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8*, i8** %1, i64 1
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %9, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #12
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %11, label %12

11:                                               ; preds = %7
  br label %15

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !22

.loopexit:                                        ; preds = %5
  br label %15

15:                                               ; preds = %.loopexit, %11
  br label %16

16:                                               ; preds = %15, %2
  %.1 = phi i1 [ %6, %15 ], [ false, %2 ]
  %17 = call i8* @generate_test_data(i64 noundef 10000000)
  br label %18

18:                                               ; preds = %21, %16
  %.12 = phi i32 [ 0, %16 ], [ %22, %21 ]
  %19 = icmp ult i32 %.12, 30
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  call void @compdecomp(i8* noundef %17, i64 noundef 10000000)
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.12, 1
  br label %18, !llvm.loop !23

23:                                               ; preds = %18
  call void @free(i8* noundef %17) #9
  br i1 %.1, label %24, label %27

24:                                               ; preds = %23
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), double noundef 0.000000e+00) #9
  br label %30

27:                                               ; preds = %23
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), double noundef 0.000000e+00) #9
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = call i32 @fflush(%struct._IO_FILE* noundef %31) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #6

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i64 @random4() #7 {
  %1 = load i64, i64* @seed, align 8
  %2 = xor i64 %1, 123459876
  store i64 %2, i64* @seed, align 8
  %3 = sdiv i64 %2, 127773
  %.neg = mul i64 %3, -127773
  %4 = add i64 %.neg, %2
  %5 = mul nsw i64 %4, 16807
  %.neg1 = mul nsw i64 %3, -2836
  %6 = add i64 %.neg1, %5
  store i64 %6, i64* @seed, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i64, i64* @seed, align 8
  %10 = add nsw i64 %9, 2147483647
  store i64 %10, i64* @seed, align 8
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i64, i64* @seed, align 8
  %13 = srem i64 %12, 32
  %14 = xor i64 %12, 123459876
  store i64 %14, i64* @seed, align 8
  ret i64 %13
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readonly willreturn }

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
