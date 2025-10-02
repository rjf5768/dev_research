; ModuleID = './rbt.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/NPB-serial/dc/rbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.RBTree = type { %struct.treeNode, %struct.treeNode*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.treeNode**, i8* }
%struct.treeNode = type { %struct.treeNode*, %struct.treeNode*, i32, [1 x i64] }
%struct.ADC_VIEW_CNTL = type { [512 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i8*, i32*, %struct.RBTree*, i32, %struct.chunks*, [512 x i8], [512 x i8], [512 x i8], [512 x i8], [512 x i8], [512 x i8], [512 x i8], %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, [4 x i64], [20 x i32], [4 x i64], [4 x i64], %struct.job_pool*, %struct.layer*, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.chunks = type { i32, i64, i32, i32 }
%struct.job_pool = type { i32, i32, i32, i64 }
%struct.layer = type { i32, i32, i32 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [34 x i8] c"\0A Write error from WriteToFile()\0A\00", align 1
@measbound = internal global i32 31415, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @KeyComp(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %26, %3
  %.01 = phi i32 [ 0, %3 ], [ %27, %26 ]
  %5 = icmp ult i32 %.01, %2
  br i1 %5, label %6, label %28

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds i32, i32* %1, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  br label %29

15:                                               ; preds = %6
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds i32, i32* %0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = zext i32 %.01 to i64
  %20 = getelementptr inbounds i32, i32* %1, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ugt i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %29

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  %27 = add i32 %.01, 1
  br label %4, !llvm.loop !4

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %28, %23, %14
  %.0 = phi i32 [ -1, %14 ], [ 1, %23 ], [ 0, %28 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @TreeInsert(%struct.RBTree* noundef %0, i32* nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 0, i32 0
  %4 = load %struct.treeNode*, %struct.treeNode** %3, align 8
  %5 = icmp eq %struct.treeNode* %4, null
  br i1 %5, label %6, label %42

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = add i32 %8, 1
  store i32 %9, i32* %7, align 8
  %10 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 14
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  %16 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 1
  %17 = bitcast %struct.treeNode** %16 to i8**
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = add i32 %21, %19
  store i32 %22, i32* %20, align 8
  %23 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = add i32 %24, -1
  store i32 %25, i32* %23, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 7
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %6
  %30 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 1
  %31 = load %struct.treeNode*, %struct.treeNode** %30, align 8
  %32 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 0, i32 0
  store %struct.treeNode* %31, %struct.treeNode** %32, align 8
  %33 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %31, i64 0, i32 3, i64 0
  %34 = bitcast i64* %33 to i8*
  %35 = bitcast i32* %1 to i8*
  %36 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = zext i32 %37 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %34, i8* align 4 %35, i64 %38, i1 false)
  %39 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %31, i64 0, i32 1
  store %struct.treeNode* null, %struct.treeNode** %39, align 8
  %40 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %31, i64 0, i32 0
  store %struct.treeNode* null, %struct.treeNode** %40, align 8
  %41 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %31, i64 0, i32 2
  store i32 0, i32* %41, align 8
  br label %396

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 12
  %44 = load i32*, i32** %43, align 8
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 0
  %46 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %47 = load %struct.treeNode**, %struct.treeNode*** %46, align 8
  store %struct.treeNode* %45, %struct.treeNode** %47, align 8
  br label %48

48:                                               ; preds = %155, %42
  %.06 = phi %struct.treeNode* [ %4, %42 ], [ %.02, %155 ]
  %.03 = phi i32 [ 1, %42 ], [ %.14, %155 ]
  %49 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 11
  %50 = load i32, i32* %49, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %.06, i64 0, i32 3, i64 %51
  %53 = bitcast i64* %52 to i32*
  %54 = shl i32 %50, 1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %1, i64 %55
  %57 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 10
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @KeyComp(i32* noundef %56, i32* noundef nonnull %53, i32 noundef %58)
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %63 = load %struct.treeNode**, %struct.treeNode*** %62, align 8
  %64 = zext i32 %.03 to i64
  %65 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %63, i64 %64
  store %struct.treeNode* %.06, %struct.treeNode** %65, align 8
  %66 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 12
  %67 = load i32*, i32** %66, align 8
  %68 = add i32 %.03, 1
  %69 = zext i32 %.03 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 0, i32* %70, align 4
  %71 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %.06, i64 0, i32 0
  %72 = load %struct.treeNode*, %struct.treeNode** %71, align 8
  %73 = icmp eq %struct.treeNode* %72, null
  br i1 %73, label %74, label %98

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 14
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 1
  %82 = bitcast %struct.treeNode** %81 to i8**
  store i8* %80, i8** %82, align 8
  %83 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = add i32 %86, %84
  store i32 %87, i32* %85, align 8
  %88 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 8
  %89 = load i32, i32* %88, align 8
  %90 = add i32 %89, -1
  store i32 %90, i32* %88, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %74
  %93 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 7
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %92, %74
  %95 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 1
  %96 = load %struct.treeNode*, %struct.treeNode** %95, align 8
  %97 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %.06, i64 0, i32 0
  store %struct.treeNode* %96, %struct.treeNode** %97, align 8
  br label %156

98:                                               ; preds = %61
  br label %155

99:                                               ; preds = %48
  %.not = icmp eq i32 %59, 0
  br i1 %.not, label %138, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %102 = load %struct.treeNode**, %struct.treeNode*** %101, align 8
  %103 = zext i32 %.03 to i64
  %104 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %102, i64 %103
  store %struct.treeNode* %.06, %struct.treeNode** %104, align 8
  %105 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 12
  %106 = load i32*, i32** %105, align 8
  %107 = add i32 %.03, 1
  %108 = zext i32 %.03 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 1, i32* %109, align 4
  %110 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %.06, i64 0, i32 1
  %111 = load %struct.treeNode*, %struct.treeNode** %110, align 8
  %112 = icmp eq %struct.treeNode* %111, null
  br i1 %112, label %113, label %137

113:                                              ; preds = %100
  %114 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 14
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 1
  %121 = bitcast %struct.treeNode** %120 to i8**
  store i8* %119, i8** %121, align 8
  %122 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = add i32 %125, %123
  store i32 %126, i32* %124, align 8
  %127 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 8
  %128 = load i32, i32* %127, align 8
  %129 = add i32 %128, -1
  store i32 %129, i32* %127, align 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %113
  %132 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 7
  store i32 1, i32* %132, align 4
  br label %133

133:                                              ; preds = %131, %113
  %134 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 1
  %135 = load %struct.treeNode*, %struct.treeNode** %134, align 8
  %136 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %.06, i64 0, i32 1
  store %struct.treeNode* %135, %struct.treeNode** %136, align 8
  br label %156

137:                                              ; preds = %100
  br label %154

138:                                              ; preds = %99
  %139 = bitcast i32* %1 to i64*
  br label %140

140:                                              ; preds = %151, %138
  %.01 = phi i64 [ 0, %138 ], [ %152, %151 ]
  %141 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 11
  %142 = load i32, i32* %141, align 4
  %143 = zext i32 %142 to i64
  %144 = icmp ult i64 %.01, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = getelementptr inbounds i64, i64* %139, i64 %.01
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %.06, i64 0, i32 3, i64 %.01
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, %147
  store i64 %150, i64* %148, align 8
  br label %151

151:                                              ; preds = %145
  %152 = add i64 %.01, 1
  br label %140, !llvm.loop !6

153:                                              ; preds = %140
  br label %396

154:                                              ; preds = %137
  br label %155

155:                                              ; preds = %154, %98
  %.14 = phi i32 [ %68, %98 ], [ %107, %154 ]
  %.02 = phi %struct.treeNode* [ %72, %98 ], [ %111, %154 ]
  br label %48

156:                                              ; preds = %133, %94
  %.17 = phi %struct.treeNode* [ %96, %94 ], [ %135, %133 ]
  %.25 = phi i32 [ %68, %94 ], [ %107, %133 ]
  %157 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = add i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %.17, i64 0, i32 3, i64 0
  %161 = bitcast i64* %160 to i8*
  %162 = bitcast i32* %1 to i8*
  %163 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = zext i32 %164 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %161, i8* align 4 %162, i64 %165, i1 false)
  %166 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %.17, i64 0, i32 1
  store %struct.treeNode* null, %struct.treeNode** %166, align 8
  %167 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %.17, i64 0, i32 0
  store %struct.treeNode* null, %struct.treeNode** %167, align 8
  %168 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %.17, i64 0, i32 2
  store i32 1, i32* %168, align 8
  br label %169

169:                                              ; preds = %391, %156
  %.3 = phi i32 [ %.25, %156 ], [ %.4, %391 ]
  %170 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %171 = load %struct.treeNode**, %struct.treeNode*** %170, align 8
  %172 = add i32 %.3, -1
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %171, i64 %173
  %175 = load %struct.treeNode*, %struct.treeNode** %174, align 8
  %176 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %175, i64 0, i32 2
  %177 = load i32, i32* %176, align 8
  %.not15 = icmp eq i32 %177, 1
  br i1 %.not15, label %178, label %180

178:                                              ; preds = %169
  %179 = icmp ult i32 %.3, 3
  br i1 %179, label %180, label %181

180:                                              ; preds = %178, %169
  br label %392

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 12
  %183 = load i32*, i32** %182, align 8
  %184 = add i32 %.3, -2
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %290

189:                                              ; preds = %181
  %190 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %191 = load %struct.treeNode**, %struct.treeNode*** %190, align 8
  %192 = add i32 %.3, -2
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %191, i64 %193
  %195 = load %struct.treeNode*, %struct.treeNode** %194, align 8
  %196 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %195, i64 0, i32 1
  %197 = load %struct.treeNode*, %struct.treeNode** %196, align 8
  %.not18 = icmp eq %struct.treeNode* %197, null
  br i1 %.not18, label %218, label %198

198:                                              ; preds = %189
  %199 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %197, i64 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %218

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %204 = load %struct.treeNode**, %struct.treeNode*** %203, align 8
  %205 = add i32 %.3, -1
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %204, i64 %206
  %208 = load %struct.treeNode*, %struct.treeNode** %207, align 8
  %209 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %208, i64 0, i32 2
  store i32 0, i32* %209, align 8
  %210 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %197, i64 0, i32 2
  store i32 0, i32* %210, align 8
  %211 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %212 = load %struct.treeNode**, %struct.treeNode*** %211, align 8
  %213 = add i32 %.3, -2
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %212, i64 %214
  %216 = load %struct.treeNode*, %struct.treeNode** %215, align 8
  %217 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %216, i64 0, i32 2
  store i32 1, i32* %217, align 8
  br label %289

218:                                              ; preds = %198, %189
  %219 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 12
  %220 = load i32*, i32** %219, align 8
  %221 = add i32 %.3, -1
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %246

226:                                              ; preds = %218
  %227 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %228 = load %struct.treeNode**, %struct.treeNode*** %227, align 8
  %229 = add i32 %.3, -1
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %228, i64 %230
  %232 = load %struct.treeNode*, %struct.treeNode** %231, align 8
  %233 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %232, i64 0, i32 1
  %234 = load %struct.treeNode*, %struct.treeNode** %233, align 8
  %235 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %234, i64 0, i32 0
  %236 = load %struct.treeNode*, %struct.treeNode** %235, align 8
  %237 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %232, i64 0, i32 1
  store %struct.treeNode* %236, %struct.treeNode** %237, align 8
  %238 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %234, i64 0, i32 0
  store %struct.treeNode* %232, %struct.treeNode** %238, align 8
  %239 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %240 = load %struct.treeNode**, %struct.treeNode*** %239, align 8
  %241 = add i32 %.3, -2
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %240, i64 %242
  %244 = load %struct.treeNode*, %struct.treeNode** %243, align 8
  %245 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %244, i64 0, i32 0
  store %struct.treeNode* %234, %struct.treeNode** %245, align 8
  br label %253

246:                                              ; preds = %218
  %247 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %248 = load %struct.treeNode**, %struct.treeNode*** %247, align 8
  %249 = add i32 %.3, -1
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %248, i64 %250
  %252 = load %struct.treeNode*, %struct.treeNode** %251, align 8
  br label %253

253:                                              ; preds = %246, %226
  %.1 = phi %struct.treeNode* [ %234, %226 ], [ %252, %246 ]
  %254 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %255 = load %struct.treeNode**, %struct.treeNode*** %254, align 8
  %256 = add i32 %.3, -2
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %255, i64 %257
  %259 = load %struct.treeNode*, %struct.treeNode** %258, align 8
  %260 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %259, i64 0, i32 2
  store i32 1, i32* %260, align 8
  %261 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %.1, i64 0, i32 2
  store i32 0, i32* %261, align 8
  %262 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %.1, i64 0, i32 1
  %263 = load %struct.treeNode*, %struct.treeNode** %262, align 8
  %264 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %259, i64 0, i32 0
  store %struct.treeNode* %263, %struct.treeNode** %264, align 8
  %265 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %.1, i64 0, i32 1
  store %struct.treeNode* %259, %struct.treeNode** %265, align 8
  %266 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 12
  %267 = load i32*, i32** %266, align 8
  %268 = add i32 %.3, -3
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %.not19 = icmp eq i32 %271, 0
  br i1 %.not19, label %280, label %272

272:                                              ; preds = %253
  %273 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %274 = load %struct.treeNode**, %struct.treeNode*** %273, align 8
  %275 = add i32 %.3, -3
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %274, i64 %276
  %278 = load %struct.treeNode*, %struct.treeNode** %277, align 8
  %279 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %278, i64 0, i32 1
  store %struct.treeNode* %.1, %struct.treeNode** %279, align 8
  br label %288

280:                                              ; preds = %253
  %281 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %282 = load %struct.treeNode**, %struct.treeNode*** %281, align 8
  %283 = add i32 %.3, -3
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %282, i64 %284
  %286 = load %struct.treeNode*, %struct.treeNode** %285, align 8
  %287 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %286, i64 0, i32 0
  store %struct.treeNode* %.1, %struct.treeNode** %287, align 8
  br label %288

288:                                              ; preds = %280, %272
  br label %392

289:                                              ; preds = %202
  br label %391

290:                                              ; preds = %181
  %291 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %292 = load %struct.treeNode**, %struct.treeNode*** %291, align 8
  %293 = add i32 %.3, -2
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %292, i64 %294
  %296 = load %struct.treeNode*, %struct.treeNode** %295, align 8
  %297 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %296, i64 0, i32 0
  %298 = load %struct.treeNode*, %struct.treeNode** %297, align 8
  %.not16 = icmp eq %struct.treeNode* %298, null
  br i1 %.not16, label %319, label %299

299:                                              ; preds = %290
  %300 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %298, i64 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = icmp eq i32 %301, 1
  br i1 %302, label %303, label %319

303:                                              ; preds = %299
  %304 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %305 = load %struct.treeNode**, %struct.treeNode*** %304, align 8
  %306 = add i32 %.3, -1
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %305, i64 %307
  %309 = load %struct.treeNode*, %struct.treeNode** %308, align 8
  %310 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %309, i64 0, i32 2
  store i32 0, i32* %310, align 8
  %311 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %298, i64 0, i32 2
  store i32 0, i32* %311, align 8
  %312 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %313 = load %struct.treeNode**, %struct.treeNode*** %312, align 8
  %314 = add i32 %.3, -2
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %313, i64 %315
  %317 = load %struct.treeNode*, %struct.treeNode** %316, align 8
  %318 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %317, i64 0, i32 2
  store i32 1, i32* %318, align 8
  br label %390

319:                                              ; preds = %299, %290
  %320 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 12
  %321 = load i32*, i32** %320, align 8
  %322 = add i32 %.3, -1
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %347

327:                                              ; preds = %319
  %328 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %329 = load %struct.treeNode**, %struct.treeNode*** %328, align 8
  %330 = add i32 %.3, -1
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %329, i64 %331
  %333 = load %struct.treeNode*, %struct.treeNode** %332, align 8
  %334 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %333, i64 0, i32 0
  %335 = load %struct.treeNode*, %struct.treeNode** %334, align 8
  %336 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %335, i64 0, i32 1
  %337 = load %struct.treeNode*, %struct.treeNode** %336, align 8
  %338 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %333, i64 0, i32 0
  store %struct.treeNode* %337, %struct.treeNode** %338, align 8
  %339 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %335, i64 0, i32 1
  store %struct.treeNode* %333, %struct.treeNode** %339, align 8
  %340 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %341 = load %struct.treeNode**, %struct.treeNode*** %340, align 8
  %342 = add i32 %.3, -2
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %341, i64 %343
  %345 = load %struct.treeNode*, %struct.treeNode** %344, align 8
  %346 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %345, i64 0, i32 1
  store %struct.treeNode* %335, %struct.treeNode** %346, align 8
  br label %354

347:                                              ; preds = %319
  %348 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %349 = load %struct.treeNode**, %struct.treeNode*** %348, align 8
  %350 = add i32 %.3, -1
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %349, i64 %351
  %353 = load %struct.treeNode*, %struct.treeNode** %352, align 8
  br label %354

354:                                              ; preds = %347, %327
  %.2 = phi %struct.treeNode* [ %335, %327 ], [ %353, %347 ]
  %355 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %356 = load %struct.treeNode**, %struct.treeNode*** %355, align 8
  %357 = add i32 %.3, -2
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %356, i64 %358
  %360 = load %struct.treeNode*, %struct.treeNode** %359, align 8
  %361 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %360, i64 0, i32 2
  store i32 1, i32* %361, align 8
  %362 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %.2, i64 0, i32 2
  store i32 0, i32* %362, align 8
  %363 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %.2, i64 0, i32 0
  %364 = load %struct.treeNode*, %struct.treeNode** %363, align 8
  %365 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %360, i64 0, i32 1
  store %struct.treeNode* %364, %struct.treeNode** %365, align 8
  %366 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %.2, i64 0, i32 0
  store %struct.treeNode* %360, %struct.treeNode** %366, align 8
  %367 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 12
  %368 = load i32*, i32** %367, align 8
  %369 = add i32 %.3, -3
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  %372 = load i32, i32* %371, align 4
  %.not17 = icmp eq i32 %372, 0
  br i1 %.not17, label %381, label %373

373:                                              ; preds = %354
  %374 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %375 = load %struct.treeNode**, %struct.treeNode*** %374, align 8
  %376 = add i32 %.3, -3
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %375, i64 %377
  %379 = load %struct.treeNode*, %struct.treeNode** %378, align 8
  %380 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %379, i64 0, i32 1
  store %struct.treeNode* %.2, %struct.treeNode** %380, align 8
  br label %389

381:                                              ; preds = %354
  %382 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %383 = load %struct.treeNode**, %struct.treeNode*** %382, align 8
  %384 = add i32 %.3, -3
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %383, i64 %385
  %387 = load %struct.treeNode*, %struct.treeNode** %386, align 8
  %388 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %387, i64 0, i32 0
  store %struct.treeNode* %.2, %struct.treeNode** %388, align 8
  br label %389

389:                                              ; preds = %381, %373
  br label %392

390:                                              ; preds = %303
  br label %391

391:                                              ; preds = %390, %289
  %.4 = add i32 %.3, -2
  br label %169

392:                                              ; preds = %389, %288, %180
  %393 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 0, i32 0
  %394 = load %struct.treeNode*, %struct.treeNode** %393, align 8
  %395 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %394, i64 0, i32 2
  store i32 0, i32* %395, align 8
  br label %396

396:                                              ; preds = %392, %153, %29
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WriteViewToDisk(%struct.ADC_VIEW_CNTL* noundef %0, %struct.treeNode* noundef %1) #3 {
  %.not = icmp eq %struct.treeNode* %1, null
  br i1 %.not, label %3, label %4

3:                                                ; preds = %2
  br label %42

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %1, i64 0, i32 0
  %6 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %7 = call i32 @WriteViewToDisk(%struct.ADC_VIEW_CNTL* noundef %0, %struct.treeNode* noundef %6)
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %4
  br label %42

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %22, %9
  %.01 = phi i32 [ 0, %9 ], [ %23, %22 ]
  %11 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %0, i64 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %.01, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %1, i64 0, i32 3, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %0, i64 0, i32 39, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, %17
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %14
  %23 = add i32 %.01, 1
  br label %10, !llvm.loop !7

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %1, i64 0, i32 3, i64 0
  %26 = bitcast i64* %25 to i8*
  %27 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %0, i64 0, i32 18
  %28 = load i32, i32* %27, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %0, i64 0, i32 34
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %30, align 8
  %32 = call i64 @fwrite(i8* noundef nonnull %26, i64 noundef %29, i64 noundef 1, %struct._IO_FILE* noundef %31) #8
  %.not3 = icmp eq i64 %32, 1
  br i1 %.not3, label %36, label %33

33:                                               ; preds = %24
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %34) #9
  br label %42

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %1, i64 0, i32 1
  %38 = load %struct.treeNode*, %struct.treeNode** %37, align 8
  %39 = call i32 @WriteViewToDisk(%struct.ADC_VIEW_CNTL* noundef %0, %struct.treeNode* noundef %38)
  %.not4 = icmp eq i32 %39, 0
  br i1 %.not4, label %41, label %40

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %40, %33, %8, %3
  %.0 = phi i32 [ 1, %8 ], [ 1, %33 ], [ 1, %40 ], [ 0, %41 ], [ 0, %3 ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WriteViewToDiskCS(%struct.ADC_VIEW_CNTL* noundef %0, %struct.treeNode* noundef %1, i64* noundef %2) #3 {
  %.not = icmp eq %struct.treeNode* %1, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %3
  br label %56

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %1, i64 0, i32 0
  %7 = load %struct.treeNode*, %struct.treeNode** %6, align 8
  %8 = call i32 @WriteViewToDiskCS(%struct.ADC_VIEW_CNTL* noundef %0, %struct.treeNode* noundef %7, i64* noundef %2)
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %10, label %9

9:                                                ; preds = %5
  br label %56

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %36, %10
  %.01 = phi i32 [ 0, %10 ], [ %37, %36 ]
  %12 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %0, i64 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %.01, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %1, i64 0, i32 3, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = zext i32 %.01 to i64
  %20 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %0, i64 0, i32 39, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, %18
  store i64 %22, i64* %20, align 8
  %23 = load i64, i64* %2, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %2, align 8
  %25 = zext i32 %.01 to i64
  %26 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %1, i64 0, i32 3, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = mul i64 %24, %27
  %29 = load i32, i32* @measbound, align 4
  %30 = sext i32 %29 to i64
  %31 = urem i64 %28, %30
  %32 = zext i32 %.01 to i64
  %33 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %0, i64 0, i32 41, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %31
  store i64 %35, i64* %33, align 8
  br label %36

36:                                               ; preds = %15
  %37 = add i32 %.01, 1
  br label %11, !llvm.loop !8

38:                                               ; preds = %11
  %39 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %1, i64 0, i32 3, i64 0
  %40 = bitcast i64* %39 to i8*
  %41 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %0, i64 0, i32 18
  %42 = load i32, i32* %41, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %0, i64 0, i32 34
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %44, align 8
  %46 = call i64 @fwrite(i8* noundef nonnull %40, i64 noundef %43, i64 noundef 1, %struct._IO_FILE* noundef %45)
  %.not3 = icmp eq i64 %46, 1
  br i1 %.not3, label %50, label %47

47:                                               ; preds = %38
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %48) #9
  br label %56

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %1, i64 0, i32 1
  %52 = load %struct.treeNode*, %struct.treeNode** %51, align 8
  %53 = call i32 @WriteViewToDiskCS(%struct.ADC_VIEW_CNTL* noundef %0, %struct.treeNode* noundef %52, i64* noundef %2)
  %.not4 = icmp eq i32 %53, 0
  br i1 %.not4, label %55, label %54

54:                                               ; preds = %50
  br label %56

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %54, %47, %9, %4
  %.0 = phi i32 [ 1, %9 ], [ 1, %47 ], [ 1, %54 ], [ 0, %55 ], [ 0, %4 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @computeChecksum(%struct.ADC_VIEW_CNTL* noundef %0, %struct.treeNode* noundef readonly %1, i64* noundef %2) #1 {
  %.not = icmp eq %struct.treeNode* %1, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %3
  br label %37

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %1, i64 0, i32 0
  %7 = load %struct.treeNode*, %struct.treeNode** %6, align 8
  %8 = call i32 @computeChecksum(%struct.ADC_VIEW_CNTL* noundef %0, %struct.treeNode* noundef %7, i64* noundef %2)
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %10, label %9

9:                                                ; preds = %5
  br label %37

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %29, %10
  %.01 = phi i32 [ 0, %10 ], [ %30, %29 ]
  %12 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %0, i64 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %.01, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i64, i64* %2, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %2, align 8
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %1, i64 0, i32 3, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = mul i64 %17, %20
  %22 = load i32, i32* @measbound, align 4
  %23 = sext i32 %22 to i64
  %24 = urem i64 %21, %23
  %25 = zext i32 %.01 to i64
  %26 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %0, i64 0, i32 41, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, %24
  store i64 %28, i64* %26, align 8
  br label %29

29:                                               ; preds = %15
  %30 = add i32 %.01, 1
  br label %11, !llvm.loop !9

31:                                               ; preds = %11
  %32 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %1, i64 0, i32 1
  %33 = load %struct.treeNode*, %struct.treeNode** %32, align 8
  %34 = call i32 @computeChecksum(%struct.ADC_VIEW_CNTL* noundef %0, %struct.treeNode* noundef %33, i64* noundef %2)
  %.not3 = icmp eq i32 %34, 0
  br i1 %.not3, label %36, label %35

35:                                               ; preds = %31
  br label %37

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %35, %9, %4
  %.0 = phi i32 [ 1, %9 ], [ 1, %35 ], [ 0, %36 ], [ 0, %4 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WriteChunkToDisk(i32 noundef %0, %struct._IO_FILE* noundef %1, %struct.treeNode* noundef %2, %struct._IO_FILE* noundef %3) #3 {
  %.not = icmp eq %struct.treeNode* %2, null
  br i1 %.not, label %5, label %6

5:                                                ; preds = %4
  br label %25

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %2, i64 0, i32 0
  %8 = load %struct.treeNode*, %struct.treeNode** %7, align 8
  %9 = call i32 @WriteChunkToDisk(i32 noundef %0, %struct._IO_FILE* noundef %1, %struct.treeNode* noundef %8, %struct._IO_FILE* noundef %3)
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %6
  br label %25

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %2, i64 0, i32 3, i64 0
  %13 = bitcast i64* %12 to i8*
  %14 = zext i32 %0 to i64
  %15 = call i64 @fwrite(i8* noundef nonnull %13, i64 noundef %14, i64 noundef 1, %struct._IO_FILE* noundef %1)
  %.not2 = icmp eq i64 %15, 1
  br i1 %.not2, label %19, label %16

16:                                               ; preds = %11
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %17) #9
  br label %25

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %2, i64 0, i32 1
  %21 = load %struct.treeNode*, %struct.treeNode** %20, align 8
  %22 = call i32 @WriteChunkToDisk(i32 noundef %0, %struct._IO_FILE* noundef %1, %struct.treeNode* noundef %21, %struct._IO_FILE* noundef %3)
  %.not3 = icmp eq i32 %22, 0
  br i1 %.not3, label %24, label %23

23:                                               ; preds = %19
  br label %25

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %23, %16, %10, %5
  %.0 = phi i32 [ 1, %10 ], [ 1, %16 ], [ 1, %23 ], [ 0, %24 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.RBTree* @CreateEmptyTree(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3) #3 {
  %5 = call noalias dereferenceable_or_null(104) i8* @malloc(i64 noundef 104) #8
  %6 = bitcast i8* %5 to %struct.RBTree*
  %.not = icmp eq i8* %5, null
  br i1 %.not, label %7, label %8

7:                                                ; preds = %4
  br label %51

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 0, i32 0
  store %struct.treeNode* null, %struct.treeNode** %9, align 8
  %10 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 0, i32 1
  store %struct.treeNode* null, %struct.treeNode** %10, align 8
  %11 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 2
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 6
  store i32 0, i32* %12, align 8
  %13 = shl i32 %0, 2
  %14 = add i32 %13, 28
  %15 = shl i32 %1, 3
  %16 = add i32 %14, %15
  %17 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = and i32 %16, 4
  %.not1 = icmp eq i32 %18, 0
  br i1 %.not1, label %23, label %19

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = add i32 %21, 4
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %19, %8
  %24 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 5
  store i32 %2, i32* %24, align 4
  %25 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 7
  store i32 0, i32* %25, align 4
  %26 = shl i32 %0, 2
  %27 = shl i32 %1, 3
  %28 = add i32 %26, %27
  %29 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 1
  store %struct.treeNode* null, %struct.treeNode** %30, align 8
  %31 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = udiv i32 %32, %34
  %36 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 9
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 8
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 10
  store i32 %0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 11
  store i32 %1, i32* %39, align 4
  %40 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 14
  store i8* %3, i8** %40, align 8
  %41 = call noalias dereferenceable_or_null(512) i8* @malloc(i64 noundef 512) #8
  %42 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 13
  %43 = bitcast %struct.treeNode*** %42 to i8**
  store i8* %41, i8** %43, align 8
  %.not2 = icmp eq i8* %41, null
  br i1 %.not2, label %44, label %45

44:                                               ; preds = %23
  br label %51

45:                                               ; preds = %23
  %46 = call noalias dereferenceable_or_null(256) i8* @malloc(i64 noundef 256) #8
  %47 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %6, i64 0, i32 12
  %48 = bitcast i32** %47 to i8**
  store i8* %46, i8** %48, align 8
  %.not3 = icmp eq i8* %46, null
  br i1 %.not3, label %49, label %50

49:                                               ; preds = %45
  br label %51

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %49, %44, %7
  %.0 = phi %struct.RBTree* [ %6, %50 ], [ null, %49 ], [ null, %44 ], [ null, %7 ]
  ret %struct.RBTree* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @InitializeTree(%struct.RBTree* nocapture noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 0, i32 0
  store %struct.treeNode* null, %struct.treeNode** %4, align 8
  %5 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 0, i32 1
  store %struct.treeNode* null, %struct.treeNode** %5, align 8
  %6 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 2
  store i32 0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 6
  store i32 0, i32* %7, align 8
  %8 = shl i32 %1, 2
  %9 = add i32 %8, 28
  %10 = shl i32 %2, 3
  %11 = add i32 %9, %10
  %12 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = and i32 %11, 4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %18, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = add i32 %16, 4
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %14, %3
  %19 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 7
  store i32 0, i32* %19, align 4
  %20 = shl i32 %1, 2
  %21 = shl i32 %2, 3
  %22 = add i32 %20, %21
  %23 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 4
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 1
  store %struct.treeNode* null, %struct.treeNode** %24, align 8
  %25 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = udiv i32 %26, %28
  %30 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 9
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 8
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 10
  store i32 %1, i32* %32, align 8
  %33 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 11
  store i32 %2, i32* %33, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @DestroyTree(%struct.RBTree* noundef %0) #3 {
  %2 = icmp eq %struct.RBTree* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %26

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 14
  %6 = load i8*, i8** %5, align 8
  %.not = icmp eq i8* %6, null
  br i1 %.not, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 14
  %9 = load i8*, i8** %8, align 8
  call void @free(i8* noundef %9) #8
  br label %10

10:                                               ; preds = %7, %4
  %11 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %12 = load %struct.treeNode**, %struct.treeNode*** %11, align 8
  %.not1 = icmp eq %struct.treeNode** %12, null
  br i1 %.not1, label %17, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 13
  %15 = bitcast %struct.treeNode*** %14 to i8**
  %16 = load i8*, i8** %15, align 8
  call void @free(i8* noundef %16) #8
  br label %17

17:                                               ; preds = %13, %10
  %18 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 12
  %19 = load i32*, i32** %18, align 8
  %.not2 = icmp eq i32* %19, null
  br i1 %.not2, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %0, i64 0, i32 12
  %22 = bitcast i32** %21 to i8**
  %23 = load i8*, i8** %22, align 8
  call void @free(i8* noundef %23) #8
  br label %24

24:                                               ; preds = %20, %17
  %25 = bitcast %struct.RBTree* %0 to i8*
  call void @free(i8* noundef %25) #8
  br label %26

26:                                               ; preds = %24, %3
  %.0 = phi i32 [ 3, %3 ], [ 0, %24 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #6

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { cold }

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
