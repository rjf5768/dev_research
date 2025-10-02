; ModuleID = './drop3.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/BitBench/drop3/drop3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }

@__const.main.postfix = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Usage: drop_0XX [infile]\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Usage: drop_0XX [infile]\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @drop_0xx(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i64 noundef %2) #0 {
  %4 = trunc i64 %2 to i32
  br label %5

5:                                                ; preds = %167, %3
  %.019 = phi i16 [ 0, %3 ], [ %.827, %167 ]
  %.017 = phi i32 [ %4, %3 ], [ %147, %167 ]
  %.02 = phi i32 [ 0, %3 ], [ %.815, %167 ]
  %.01 = phi i8* [ %1, %3 ], [ %.16, %167 ]
  %.0 = phi i8* [ %0, %3 ], [ %110, %167 ]
  %6 = icmp slt i32 %.017, 3
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %168

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %.0, i64 1
  %10 = load i8, i8* %.0, align 1
  %11 = zext i8 %10 to i16
  %12 = shl nuw i16 %11, 8
  %13 = icmp slt i16 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = lshr i8 %10, 5
  %16 = shl i16 %.019, 3
  %17 = zext i8 %15 to i16
  %18 = or i16 %16, %17
  %19 = add nsw i32 %.02, 3
  %20 = and i32 %19, 7
  %21 = icmp ult i32 %20, 3
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = zext i16 %18 to i32
  %24 = and i32 %19, 7
  %25 = lshr i32 %23, %24
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %26, i8* %.01, align 1
  br label %28

28:                                               ; preds = %22, %14
  %.1 = phi i8* [ %27, %22 ], [ %.01, %14 ]
  br label %29

29:                                               ; preds = %28, %8
  %.120 = phi i16 [ %18, %28 ], [ %.019, %8 ]
  %.18 = phi i32 [ %19, %28 ], [ %.02, %8 ]
  %.2 = phi i8* [ %.1, %28 ], [ %.01, %8 ]
  %30 = shl i16 %11, 11
  %31 = icmp slt i32 %.017, 6
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %168

33:                                               ; preds = %29
  %34 = icmp slt i16 %30, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %33
  %36 = call i16 @llvm.fshl.i16(i16 %.120, i16 %30, i16 3)
  %37 = add nsw i32 %.18, 3
  %38 = and i32 %37, 7
  %39 = icmp ult i32 %38, 3
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = zext i16 %36 to i32
  %42 = and i32 %37, 7
  %43 = lshr i32 %41, %42
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds i8, i8* %.2, i64 1
  store i8 %44, i8* %.2, align 1
  br label %46

46:                                               ; preds = %40, %35
  %.3 = phi i8* [ %45, %40 ], [ %.2, %35 ]
  br label %47

47:                                               ; preds = %46, %33
  %.221 = phi i16 [ %36, %46 ], [ %.120, %33 ]
  %.29 = phi i32 [ %37, %46 ], [ %.18, %33 ]
  %.4 = phi i8* [ %.3, %46 ], [ %.2, %33 ]
  %48 = icmp slt i32 %.017, 9
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  br label %168

50:                                               ; preds = %47
  %51 = getelementptr inbounds i8, i8* %.0, i64 2
  %52 = load i8, i8* %9, align 1
  %53 = zext i8 %52 to i16
  %54 = or i16 %12, %53
  %55 = shl i16 %54, 6
  %56 = icmp slt i16 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = call i16 @llvm.fshl.i16(i16 %.221, i16 %55, i16 3)
  %59 = add nsw i32 %.29, 3
  %60 = and i32 %59, 7
  %61 = icmp ult i32 %60, 3
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = zext i16 %58 to i32
  %64 = and i32 %59, 7
  %65 = lshr i32 %63, %64
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds i8, i8* %.4, i64 1
  store i8 %66, i8* %.4, align 1
  br label %68

68:                                               ; preds = %62, %57
  %.5 = phi i8* [ %67, %62 ], [ %.4, %57 ]
  br label %69

69:                                               ; preds = %68, %50
  %.322 = phi i16 [ %58, %68 ], [ %.221, %50 ]
  %.310 = phi i32 [ %59, %68 ], [ %.29, %50 ]
  %.6 = phi i8* [ %.5, %68 ], [ %.4, %50 ]
  %70 = shl i16 %53, 9
  %71 = icmp slt i32 %.017, 12
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %168

73:                                               ; preds = %69
  %74 = icmp slt i16 %70, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %73
  %76 = call i16 @llvm.fshl.i16(i16 %.322, i16 %70, i16 3)
  %77 = add nsw i32 %.310, 3
  %78 = and i32 %77, 7
  %79 = icmp ult i32 %78, 3
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = zext i16 %76 to i32
  %82 = and i32 %77, 7
  %83 = lshr i32 %81, %82
  %84 = trunc i32 %83 to i8
  %85 = getelementptr inbounds i8, i8* %.6, i64 1
  store i8 %84, i8* %.6, align 1
  br label %86

86:                                               ; preds = %80, %75
  %.7 = phi i8* [ %85, %80 ], [ %.6, %75 ]
  br label %87

87:                                               ; preds = %86, %73
  %.423 = phi i16 [ %76, %86 ], [ %.322, %73 ]
  %.411 = phi i32 [ %77, %86 ], [ %.310, %73 ]
  %.8 = phi i8* [ %.7, %86 ], [ %.6, %73 ]
  %88 = shl i16 %53, 12
  %89 = icmp slt i32 %.017, 15
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %168

91:                                               ; preds = %87
  %92 = icmp slt i16 %88, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %91
  %94 = call i16 @llvm.fshl.i16(i16 %.423, i16 %88, i16 3)
  %95 = add nsw i32 %.411, 3
  %96 = and i32 %95, 7
  %97 = icmp ult i32 %96, 3
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = zext i16 %94 to i32
  %100 = and i32 %95, 7
  %101 = lshr i32 %99, %100
  %102 = trunc i32 %101 to i8
  %103 = getelementptr inbounds i8, i8* %.8, i64 1
  store i8 %102, i8* %.8, align 1
  br label %104

104:                                              ; preds = %98, %93
  %.9 = phi i8* [ %103, %98 ], [ %.8, %93 ]
  br label %105

105:                                              ; preds = %104, %91
  %.524 = phi i16 [ %94, %104 ], [ %.423, %91 ]
  %.512 = phi i32 [ %95, %104 ], [ %.411, %91 ]
  %.10 = phi i8* [ %.9, %104 ], [ %.8, %91 ]
  %106 = icmp slt i32 %.017, 18
  br i1 %106, label %107, label %108

107:                                              ; preds = %105
  br label %168

108:                                              ; preds = %105
  %109 = shl i16 %53, 15
  %110 = getelementptr inbounds i8, i8* %.0, i64 3
  %111 = load i8, i8* %51, align 1
  %112 = zext i8 %111 to i16
  %113 = shl nuw nsw i16 %112, 7
  %114 = or i16 %113, %109
  %115 = icmp slt i16 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %108
  %117 = call i16 @llvm.fshl.i16(i16 %.524, i16 %114, i16 3)
  %118 = add nsw i32 %.512, 3
  %119 = and i32 %118, 7
  %120 = icmp ult i32 %119, 3
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = zext i16 %117 to i32
  %123 = and i32 %118, 7
  %124 = lshr i32 %122, %123
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds i8, i8* %.10, i64 1
  store i8 %125, i8* %.10, align 1
  br label %127

127:                                              ; preds = %121, %116
  %.11 = phi i8* [ %126, %121 ], [ %.10, %116 ]
  br label %128

128:                                              ; preds = %127, %108
  %.625 = phi i16 [ %117, %127 ], [ %.524, %108 ]
  %.613 = phi i32 [ %118, %127 ], [ %.512, %108 ]
  %.12 = phi i8* [ %.11, %127 ], [ %.10, %108 ]
  %129 = shl i16 %112, 10
  %130 = icmp slt i32 %.017, 21
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %168

132:                                              ; preds = %128
  %133 = icmp slt i16 %129, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %132
  %135 = call i16 @llvm.fshl.i16(i16 %.625, i16 %129, i16 3)
  %136 = add nsw i32 %.613, 3
  %137 = and i32 %136, 7
  %138 = icmp ult i32 %137, 3
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = zext i16 %135 to i32
  %141 = and i32 %136, 7
  %142 = lshr i32 %140, %141
  %143 = trunc i32 %142 to i8
  %144 = getelementptr inbounds i8, i8* %.12, i64 1
  store i8 %143, i8* %.12, align 1
  br label %145

145:                                              ; preds = %139, %134
  %.13 = phi i8* [ %144, %139 ], [ %.12, %134 ]
  br label %146

146:                                              ; preds = %145, %132
  %.726 = phi i16 [ %135, %145 ], [ %.625, %132 ]
  %.714 = phi i32 [ %136, %145 ], [ %.613, %132 ]
  %.14 = phi i8* [ %.13, %145 ], [ %.12, %132 ]
  %147 = add nsw i32 %.017, -24
  %148 = icmp slt i32 %.017, 24
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  br label %168

150:                                              ; preds = %146
  %151 = and i8 %111, 7
  %152 = icmp ugt i8 %151, 3
  br i1 %152, label %153, label %167

153:                                              ; preds = %150
  %154 = shl i16 %.726, 3
  %155 = zext i8 %151 to i16
  %156 = or i16 %154, %155
  %157 = add nsw i32 %.714, 3
  %158 = and i32 %157, 7
  %159 = icmp ult i32 %158, 3
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = zext i16 %156 to i32
  %162 = and i32 %157, 7
  %163 = lshr i32 %161, %162
  %164 = trunc i32 %163 to i8
  %165 = getelementptr inbounds i8, i8* %.14, i64 1
  store i8 %164, i8* %.14, align 1
  br label %166

166:                                              ; preds = %160, %153
  %.15 = phi i8* [ %165, %160 ], [ %.14, %153 ]
  br label %167

167:                                              ; preds = %166, %150
  %.827 = phi i16 [ %156, %166 ], [ %.726, %150 ]
  %.815 = phi i32 [ %157, %166 ], [ %.714, %150 ]
  %.16 = phi i8* [ %.15, %166 ], [ %.14, %150 ]
  br label %5

168:                                              ; preds = %149, %131, %107, %90, %72, %49, %32, %7
  %.928 = phi i16 [ %.019, %7 ], [ %.120, %32 ], [ %.221, %49 ], [ %.322, %72 ], [ %.423, %90 ], [ %.524, %107 ], [ %.625, %131 ], [ %.726, %149 ]
  %.916 = phi i32 [ %.02, %7 ], [ %.18, %32 ], [ %.29, %49 ], [ %.310, %72 ], [ %.411, %90 ], [ %.512, %107 ], [ %.613, %131 ], [ %.714, %149 ]
  %.17 = phi i8* [ %.01, %7 ], [ %.2, %32 ], [ %.4, %49 ], [ %.6, %72 ], [ %.8, %90 ], [ %.10, %107 ], [ %.12, %131 ], [ %.14, %149 ]
  %169 = and i32 %.916, 7
  %.not = icmp eq i32 %169, 0
  br i1 %.not, label %176, label %170

170:                                              ; preds = %168
  %171 = zext i16 %.928 to i32
  %172 = and i32 %.916, 7
  %173 = sub nuw nsw i32 8, %172
  %174 = shl i32 %171, %173
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %.17, align 1
  br label %176

176:                                              ; preds = %170, %168
  %177 = ashr i32 %.916, 3
  ret i32 %177
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #1 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %6, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @__const.main.postfix, i64 0, i64 0), i64 3, i1 false)
  %7 = call noalias dereferenceable_or_null(4000000) i8* @malloc(i64 noundef 4000000) #10
  %8 = call noalias dereferenceable_or_null(4000000) i8* @malloc(i64 noundef 4000000) #10
  %9 = icmp sgt i32 %0, 1
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8*, i8** %1, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = call noalias %struct._IO_FILE* @fopen(i8* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #10
  %14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8*, i8** %1, i64 1
  %17 = load i8*, i8** %16, align 8
  call void @perror(i8* noundef %17) #11
  call void @exit(i32 noundef 1) #12
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8*, i8** %1, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %20) #13
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %23 = call i64 @strlen(i8* noundef nonnull %22) #13
  %24 = add i64 %21, %23
  %25 = add i64 %24, 1
  %26 = call noalias i8* @malloc(i64 noundef %25) #10
  %27 = getelementptr inbounds i8*, i8** %1, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %26, i8* noundef nonnull dereferenceable(1) %28) #10
  %30 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %31 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) %26, i8* noundef nonnull %30) #10
  call void @free(i8* noundef %26) #10
  %32 = add nsw i32 %0, -1
  br label %35

33:                                               ; preds = %2
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %35

35:                                               ; preds = %33, %18
  %.02 = phi %struct._IO_FILE* [ %13, %18 ], [ %34, %33 ]
  %.01 = phi i32 [ %32, %18 ], [ %0, %33 ]
  %.not = icmp eq i32 %.01, 1
  br i1 %.not, label %37, label %36

36:                                               ; preds = %35
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 noundef 2) #12
  br label %UnifiedUnreachableBlock

37:                                               ; preds = %35
  %38 = call i64 @read_data(%struct._IO_FILE* noundef %.02, i8* noundef %7)
  %39 = call i32 @gettimeofday(%struct.timeval* noundef nonnull %4, i8* noundef null) #10
  br label %40

40:                                               ; preds = %45, %37
  %.03 = phi i32 [ 0, %37 ], [ %46, %45 ]
  %.0 = phi i32 [ undef, %37 ], [ %44, %45 ]
  %41 = icmp ult i32 %.03, 20
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = shl i64 %38, 3
  %44 = call i32 @drop_0xx(i8* noundef %7, i8* noundef %8, i64 noundef %43)
  br label %45

45:                                               ; preds = %42
  %46 = add nuw nsw i32 %.03, 1
  br label %40, !llvm.loop !4

47:                                               ; preds = %40
  %48 = call i32 @gettimeofday(%struct.timeval* noundef nonnull %5, i8* noundef null) #10
  %49 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.0) #10
  call void @exit(i32 noundef 0) #12
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %47, %36, %15
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #4

declare dso_local void @perror(i8* noundef) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #6

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @read_data(%struct._IO_FILE* noundef %0, i8* noundef %1) #7 {
  %3 = call i64 @fread(i8* noundef %1, i64 noundef 1, i64 noundef 4000000, %struct._IO_FILE* noundef %0) #10
  ret i64 %3
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) #3

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #9

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
