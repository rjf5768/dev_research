; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/NPB-serial/dc/rbt.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @KeyComp(i32* noundef %0, i32* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %41, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %45

26:                                               ; preds = %13
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ugt i32 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %45

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %9, !llvm.loop !4

44:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %38, %25
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @TreeInsert(%struct.RBTree* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.RBTree*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.treeNode*, align 8
  %10 = alloca %struct.treeNode*, align 8
  %11 = alloca %struct.treeNode*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store %struct.RBTree* %0, %struct.RBTree** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %6, align 4
  %14 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %15 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %14, i32 0, i32 0
  store %struct.treeNode* %15, %struct.treeNode** %11, align 8
  %16 = load %struct.treeNode*, %struct.treeNode** %11, align 8
  %17 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %16, i32 0, i32 0
  %18 = load %struct.treeNode*, %struct.treeNode** %17, align 8
  store %struct.treeNode* %18, %struct.treeNode** %9, align 8
  %19 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %20 = icmp eq %struct.treeNode* %19, null
  br i1 %20, label %21, label %78

21:                                               ; preds = %2
  %22 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %23 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = add i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %27 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %26, i32 0, i32 14
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %30 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = bitcast i8* %33 to %struct.treeNode*
  %35 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %36 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %35, i32 0, i32 1
  store %struct.treeNode* %34, %struct.treeNode** %36, align 8
  %37 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %38 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %41 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = add i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %45 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = add i32 %46, -1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %49 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %21
  %53 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %54 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %53, i32 0, i32 7
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %21
  %56 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %57 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %56, i32 0, i32 1
  %58 = load %struct.treeNode*, %struct.treeNode** %57, align 8
  %59 = load %struct.treeNode*, %struct.treeNode** %11, align 8
  %60 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %59, i32 0, i32 0
  store %struct.treeNode* %58, %struct.treeNode** %60, align 8
  store %struct.treeNode* %58, %struct.treeNode** %9, align 8
  %61 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %62 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %61, i32 0, i32 3
  %63 = getelementptr inbounds [1 x i64], [1 x i64]* %62, i64 0, i64 0
  %64 = bitcast i64* %63 to i8*
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = bitcast i32* %66 to i8*
  %68 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %69 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = zext i32 %70 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 4 %67, i64 %71, i1 false)
  %72 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %73 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %72, i32 0, i32 1
  store %struct.treeNode* null, %struct.treeNode** %73, align 8
  %74 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %75 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %74, i32 0, i32 0
  store %struct.treeNode* null, %struct.treeNode** %75, align 8
  %76 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %77 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %76, i32 0, i32 2
  store i32 0, i32* %77, align 8
  store i32 0, i32* %3, align 4
  br label %601

78:                                               ; preds = %2
  %79 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %80 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %79, i32 0, i32 12
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 0, i32* %82, align 4
  %83 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %84 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %83, i32 0, i32 0
  %85 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %86 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %85, i32 0, i32 13
  %87 = load %struct.treeNode**, %struct.treeNode*** %86, align 8
  %88 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %87, i64 0
  store %struct.treeNode* %84, %struct.treeNode** %88, align 8
  br label %89

89:                                               ; preds = %78, %256
  %90 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %91 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %90, i32 0, i32 3
  %92 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %93 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [1 x i64], [1 x i64]* %91, i64 0, i64 %95
  %97 = bitcast i64* %96 to i32*
  store i32* %97, i32** %7, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %100 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %99, i32 0, i32 11
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 1
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %98, i64 %103
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %107 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %106, i32 0, i32 10
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @KeyComp(i32* noundef %104, i32* noundef %105, i32 noundef %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %169

112:                                              ; preds = %89
  %113 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %114 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %115 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %114, i32 0, i32 13
  %116 = load %struct.treeNode**, %struct.treeNode*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %116, i64 %118
  store %struct.treeNode* %113, %struct.treeNode** %119, align 8
  %120 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %121 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %120, i32 0, i32 12
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %6, align 4
  %125 = zext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  store i32 0, i32* %126, align 4
  %127 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %128 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %127, i32 0, i32 0
  %129 = load %struct.treeNode*, %struct.treeNode** %128, align 8
  store %struct.treeNode* %129, %struct.treeNode** %10, align 8
  %130 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %131 = icmp eq %struct.treeNode* %130, null
  br i1 %131, label %132, label %168

132:                                              ; preds = %112
  %133 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %134 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %133, i32 0, i32 14
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %137 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %135, i64 %139
  %141 = bitcast i8* %140 to %struct.treeNode*
  %142 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %143 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %142, i32 0, i32 1
  store %struct.treeNode* %141, %struct.treeNode** %143, align 8
  %144 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %145 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %148 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = add i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %152 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 8
  %154 = add i32 %153, -1
  store i32 %154, i32* %152, align 8
  %155 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %156 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %132
  %160 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %161 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %160, i32 0, i32 7
  store i32 1, i32* %161, align 4
  br label %162

162:                                              ; preds = %159, %132
  %163 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %164 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %163, i32 0, i32 1
  %165 = load %struct.treeNode*, %struct.treeNode** %164, align 8
  %166 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %167 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %166, i32 0, i32 0
  store %struct.treeNode* %165, %struct.treeNode** %167, align 8
  store %struct.treeNode* %165, %struct.treeNode** %9, align 8
  br label %258

168:                                              ; preds = %112
  br label %256

169:                                              ; preds = %89
  %170 = load i32, i32* %8, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %229

172:                                              ; preds = %169
  %173 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %174 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %175 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %174, i32 0, i32 13
  %176 = load %struct.treeNode**, %struct.treeNode*** %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %176, i64 %178
  store %struct.treeNode* %173, %struct.treeNode** %179, align 8
  %180 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %181 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %180, i32 0, i32 12
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %6, align 4
  %185 = zext i32 %183 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  store i32 1, i32* %186, align 4
  %187 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %188 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %187, i32 0, i32 1
  %189 = load %struct.treeNode*, %struct.treeNode** %188, align 8
  store %struct.treeNode* %189, %struct.treeNode** %10, align 8
  %190 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %191 = icmp eq %struct.treeNode* %190, null
  br i1 %191, label %192, label %228

192:                                              ; preds = %172
  %193 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %194 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %193, i32 0, i32 14
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %197 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 8
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %195, i64 %199
  %201 = bitcast i8* %200 to %struct.treeNode*
  %202 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %203 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %202, i32 0, i32 1
  store %struct.treeNode* %201, %struct.treeNode** %203, align 8
  %204 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %205 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %208 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = add i32 %209, %206
  store i32 %210, i32* %208, align 8
  %211 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %212 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %211, i32 0, i32 8
  %213 = load i32, i32* %212, align 8
  %214 = add i32 %213, -1
  store i32 %214, i32* %212, align 8
  %215 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %216 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %192
  %220 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %221 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %220, i32 0, i32 7
  store i32 1, i32* %221, align 4
  br label %222

222:                                              ; preds = %219, %192
  %223 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %224 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %223, i32 0, i32 1
  %225 = load %struct.treeNode*, %struct.treeNode** %224, align 8
  %226 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %227 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %226, i32 0, i32 1
  store %struct.treeNode* %225, %struct.treeNode** %227, align 8
  store %struct.treeNode* %225, %struct.treeNode** %9, align 8
  br label %258

228:                                              ; preds = %172
  br label %255

229:                                              ; preds = %169
  %230 = load i32*, i32** %5, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = bitcast i32* %231 to i64*
  store i64* %232, i64** %13, align 8
  store i64 0, i64* %12, align 8
  br label %233

233:                                              ; preds = %251, %229
  %234 = load i64, i64* %12, align 8
  %235 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %236 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %235, i32 0, i32 11
  %237 = load i32, i32* %236, align 4
  %238 = zext i32 %237 to i64
  %239 = icmp ult i64 %234, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %233
  %241 = load i64*, i64** %13, align 8
  %242 = load i64, i64* %12, align 8
  %243 = getelementptr inbounds i64, i64* %241, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %246 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %245, i32 0, i32 3
  %247 = load i64, i64* %12, align 8
  %248 = getelementptr inbounds [1 x i64], [1 x i64]* %246, i64 0, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %249, %244
  store i64 %250, i64* %248, align 8
  br label %251

251:                                              ; preds = %240
  %252 = load i64, i64* %12, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %12, align 8
  br label %233, !llvm.loop !6

254:                                              ; preds = %233
  store i32 0, i32* %3, align 4
  br label %601

255:                                              ; preds = %228
  br label %256

256:                                              ; preds = %255, %168
  %257 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  store %struct.treeNode* %257, %struct.treeNode** %9, align 8
  br label %89

258:                                              ; preds = %222, %162
  %259 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %260 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = add i32 %261, 1
  store i32 %262, i32* %260, align 8
  %263 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %264 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %263, i32 0, i32 3
  %265 = getelementptr inbounds [1 x i64], [1 x i64]* %264, i64 0, i64 0
  %266 = bitcast i64* %265 to i8*
  %267 = load i32*, i32** %5, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  %269 = bitcast i32* %268 to i8*
  %270 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %271 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = zext i32 %272 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %266, i8* align 4 %269, i64 %273, i1 false)
  %274 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %275 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %274, i32 0, i32 1
  store %struct.treeNode* null, %struct.treeNode** %275, align 8
  %276 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %277 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %276, i32 0, i32 0
  store %struct.treeNode* null, %struct.treeNode** %277, align 8
  %278 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %279 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %278, i32 0, i32 2
  store i32 1, i32* %279, align 8
  br label %280

280:                                              ; preds = %258, %594
  %281 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %282 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %281, i32 0, i32 13
  %283 = load %struct.treeNode**, %struct.treeNode*** %282, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sub i32 %284, 1
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %283, i64 %286
  %288 = load %struct.treeNode*, %struct.treeNode** %287, align 8
  %289 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = icmp ne i32 %290, 1
  br i1 %291, label %295, label %292

292:                                              ; preds = %280
  %293 = load i32, i32* %6, align 4
  %294 = icmp ult i32 %293, 3
  br i1 %294, label %295, label %296

295:                                              ; preds = %292, %280
  br label %595

296:                                              ; preds = %292
  %297 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %298 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %297, i32 0, i32 12
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %6, align 4
  %301 = sub i32 %300, 2
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %299, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %450

306:                                              ; preds = %296
  %307 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %308 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %307, i32 0, i32 13
  %309 = load %struct.treeNode**, %struct.treeNode*** %308, align 8
  %310 = load i32, i32* %6, align 4
  %311 = sub i32 %310, 2
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %309, i64 %312
  %314 = load %struct.treeNode*, %struct.treeNode** %313, align 8
  %315 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %314, i32 0, i32 1
  %316 = load %struct.treeNode*, %struct.treeNode** %315, align 8
  store %struct.treeNode* %316, %struct.treeNode** %10, align 8
  %317 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %318 = icmp ne %struct.treeNode* %317, null
  br i1 %318, label %319, label %347

319:                                              ; preds = %306
  %320 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %321 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = icmp eq i32 %322, 1
  br i1 %323, label %324, label %347

324:                                              ; preds = %319
  %325 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %326 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %325, i32 0, i32 13
  %327 = load %struct.treeNode**, %struct.treeNode*** %326, align 8
  %328 = load i32, i32* %6, align 4
  %329 = sub i32 %328, 1
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %327, i64 %330
  %332 = load %struct.treeNode*, %struct.treeNode** %331, align 8
  %333 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %332, i32 0, i32 2
  store i32 0, i32* %333, align 8
  %334 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %335 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %334, i32 0, i32 2
  store i32 0, i32* %335, align 8
  %336 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %337 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %336, i32 0, i32 13
  %338 = load %struct.treeNode**, %struct.treeNode*** %337, align 8
  %339 = load i32, i32* %6, align 4
  %340 = sub i32 %339, 2
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %338, i64 %341
  %343 = load %struct.treeNode*, %struct.treeNode** %342, align 8
  %344 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %343, i32 0, i32 2
  store i32 1, i32* %344, align 8
  %345 = load i32, i32* %6, align 4
  %346 = sub i32 %345, 2
  store i32 %346, i32* %6, align 4
  br label %449

347:                                              ; preds = %319, %306
  %348 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %349 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %348, i32 0, i32 12
  %350 = load i32*, i32** %349, align 8
  %351 = load i32, i32* %6, align 4
  %352 = sub i32 %351, 1
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %350, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = icmp eq i32 %355, 1
  br i1 %356, label %357, label %387

357:                                              ; preds = %347
  %358 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %359 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %358, i32 0, i32 13
  %360 = load %struct.treeNode**, %struct.treeNode*** %359, align 8
  %361 = load i32, i32* %6, align 4
  %362 = sub i32 %361, 1
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %360, i64 %363
  %365 = load %struct.treeNode*, %struct.treeNode** %364, align 8
  store %struct.treeNode* %365, %struct.treeNode** %9, align 8
  %366 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %367 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %366, i32 0, i32 1
  %368 = load %struct.treeNode*, %struct.treeNode** %367, align 8
  store %struct.treeNode* %368, %struct.treeNode** %10, align 8
  %369 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %370 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %369, i32 0, i32 0
  %371 = load %struct.treeNode*, %struct.treeNode** %370, align 8
  %372 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %373 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %372, i32 0, i32 1
  store %struct.treeNode* %371, %struct.treeNode** %373, align 8
  %374 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %375 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %376 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %375, i32 0, i32 0
  store %struct.treeNode* %374, %struct.treeNode** %376, align 8
  %377 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %378 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %379 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %378, i32 0, i32 13
  %380 = load %struct.treeNode**, %struct.treeNode*** %379, align 8
  %381 = load i32, i32* %6, align 4
  %382 = sub i32 %381, 2
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %380, i64 %383
  %385 = load %struct.treeNode*, %struct.treeNode** %384, align 8
  %386 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %385, i32 0, i32 0
  store %struct.treeNode* %377, %struct.treeNode** %386, align 8
  br label %396

387:                                              ; preds = %347
  %388 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %389 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %388, i32 0, i32 13
  %390 = load %struct.treeNode**, %struct.treeNode*** %389, align 8
  %391 = load i32, i32* %6, align 4
  %392 = sub i32 %391, 1
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %390, i64 %393
  %395 = load %struct.treeNode*, %struct.treeNode** %394, align 8
  store %struct.treeNode* %395, %struct.treeNode** %10, align 8
  br label %396

396:                                              ; preds = %387, %357
  %397 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %398 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %397, i32 0, i32 13
  %399 = load %struct.treeNode**, %struct.treeNode*** %398, align 8
  %400 = load i32, i32* %6, align 4
  %401 = sub i32 %400, 2
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %399, i64 %402
  %404 = load %struct.treeNode*, %struct.treeNode** %403, align 8
  store %struct.treeNode* %404, %struct.treeNode** %9, align 8
  %405 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %406 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %405, i32 0, i32 2
  store i32 1, i32* %406, align 8
  %407 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %408 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %407, i32 0, i32 2
  store i32 0, i32* %408, align 8
  %409 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %410 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %409, i32 0, i32 1
  %411 = load %struct.treeNode*, %struct.treeNode** %410, align 8
  %412 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %413 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %412, i32 0, i32 0
  store %struct.treeNode* %411, %struct.treeNode** %413, align 8
  %414 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %415 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %416 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %415, i32 0, i32 1
  store %struct.treeNode* %414, %struct.treeNode** %416, align 8
  %417 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %418 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %417, i32 0, i32 12
  %419 = load i32*, i32** %418, align 8
  %420 = load i32, i32* %6, align 4
  %421 = sub i32 %420, 3
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %419, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %437

426:                                              ; preds = %396
  %427 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %428 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %429 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %428, i32 0, i32 13
  %430 = load %struct.treeNode**, %struct.treeNode*** %429, align 8
  %431 = load i32, i32* %6, align 4
  %432 = sub i32 %431, 3
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %430, i64 %433
  %435 = load %struct.treeNode*, %struct.treeNode** %434, align 8
  %436 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %435, i32 0, i32 1
  store %struct.treeNode* %427, %struct.treeNode** %436, align 8
  br label %448

437:                                              ; preds = %396
  %438 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %439 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %440 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %439, i32 0, i32 13
  %441 = load %struct.treeNode**, %struct.treeNode*** %440, align 8
  %442 = load i32, i32* %6, align 4
  %443 = sub i32 %442, 3
  %444 = zext i32 %443 to i64
  %445 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %441, i64 %444
  %446 = load %struct.treeNode*, %struct.treeNode** %445, align 8
  %447 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %446, i32 0, i32 0
  store %struct.treeNode* %438, %struct.treeNode** %447, align 8
  br label %448

448:                                              ; preds = %437, %426
  br label %595

449:                                              ; preds = %324
  br label %594

450:                                              ; preds = %296
  %451 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %452 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %451, i32 0, i32 13
  %453 = load %struct.treeNode**, %struct.treeNode*** %452, align 8
  %454 = load i32, i32* %6, align 4
  %455 = sub i32 %454, 2
  %456 = zext i32 %455 to i64
  %457 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %453, i64 %456
  %458 = load %struct.treeNode*, %struct.treeNode** %457, align 8
  %459 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %458, i32 0, i32 0
  %460 = load %struct.treeNode*, %struct.treeNode** %459, align 8
  store %struct.treeNode* %460, %struct.treeNode** %10, align 8
  %461 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %462 = icmp ne %struct.treeNode* %461, null
  br i1 %462, label %463, label %491

463:                                              ; preds = %450
  %464 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %465 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 8
  %467 = icmp eq i32 %466, 1
  br i1 %467, label %468, label %491

468:                                              ; preds = %463
  %469 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %470 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %469, i32 0, i32 13
  %471 = load %struct.treeNode**, %struct.treeNode*** %470, align 8
  %472 = load i32, i32* %6, align 4
  %473 = sub i32 %472, 1
  %474 = zext i32 %473 to i64
  %475 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %471, i64 %474
  %476 = load %struct.treeNode*, %struct.treeNode** %475, align 8
  %477 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %476, i32 0, i32 2
  store i32 0, i32* %477, align 8
  %478 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %479 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %478, i32 0, i32 2
  store i32 0, i32* %479, align 8
  %480 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %481 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %480, i32 0, i32 13
  %482 = load %struct.treeNode**, %struct.treeNode*** %481, align 8
  %483 = load i32, i32* %6, align 4
  %484 = sub i32 %483, 2
  %485 = zext i32 %484 to i64
  %486 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %482, i64 %485
  %487 = load %struct.treeNode*, %struct.treeNode** %486, align 8
  %488 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %487, i32 0, i32 2
  store i32 1, i32* %488, align 8
  %489 = load i32, i32* %6, align 4
  %490 = sub i32 %489, 2
  store i32 %490, i32* %6, align 4
  br label %593

491:                                              ; preds = %463, %450
  %492 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %493 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %492, i32 0, i32 12
  %494 = load i32*, i32** %493, align 8
  %495 = load i32, i32* %6, align 4
  %496 = sub i32 %495, 1
  %497 = zext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %494, i64 %497
  %499 = load i32, i32* %498, align 4
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %531

501:                                              ; preds = %491
  %502 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %503 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %502, i32 0, i32 13
  %504 = load %struct.treeNode**, %struct.treeNode*** %503, align 8
  %505 = load i32, i32* %6, align 4
  %506 = sub i32 %505, 1
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %504, i64 %507
  %509 = load %struct.treeNode*, %struct.treeNode** %508, align 8
  store %struct.treeNode* %509, %struct.treeNode** %9, align 8
  %510 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %511 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %510, i32 0, i32 0
  %512 = load %struct.treeNode*, %struct.treeNode** %511, align 8
  store %struct.treeNode* %512, %struct.treeNode** %10, align 8
  %513 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %514 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %513, i32 0, i32 1
  %515 = load %struct.treeNode*, %struct.treeNode** %514, align 8
  %516 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %517 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %516, i32 0, i32 0
  store %struct.treeNode* %515, %struct.treeNode** %517, align 8
  %518 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %519 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %520 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %519, i32 0, i32 1
  store %struct.treeNode* %518, %struct.treeNode** %520, align 8
  %521 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %522 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %523 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %522, i32 0, i32 13
  %524 = load %struct.treeNode**, %struct.treeNode*** %523, align 8
  %525 = load i32, i32* %6, align 4
  %526 = sub i32 %525, 2
  %527 = zext i32 %526 to i64
  %528 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %524, i64 %527
  %529 = load %struct.treeNode*, %struct.treeNode** %528, align 8
  %530 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %529, i32 0, i32 1
  store %struct.treeNode* %521, %struct.treeNode** %530, align 8
  br label %540

531:                                              ; preds = %491
  %532 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %533 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %532, i32 0, i32 13
  %534 = load %struct.treeNode**, %struct.treeNode*** %533, align 8
  %535 = load i32, i32* %6, align 4
  %536 = sub i32 %535, 1
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %534, i64 %537
  %539 = load %struct.treeNode*, %struct.treeNode** %538, align 8
  store %struct.treeNode* %539, %struct.treeNode** %10, align 8
  br label %540

540:                                              ; preds = %531, %501
  %541 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %542 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %541, i32 0, i32 13
  %543 = load %struct.treeNode**, %struct.treeNode*** %542, align 8
  %544 = load i32, i32* %6, align 4
  %545 = sub i32 %544, 2
  %546 = zext i32 %545 to i64
  %547 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %543, i64 %546
  %548 = load %struct.treeNode*, %struct.treeNode** %547, align 8
  store %struct.treeNode* %548, %struct.treeNode** %9, align 8
  %549 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %550 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %549, i32 0, i32 2
  store i32 1, i32* %550, align 8
  %551 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %552 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %551, i32 0, i32 2
  store i32 0, i32* %552, align 8
  %553 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %554 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %553, i32 0, i32 0
  %555 = load %struct.treeNode*, %struct.treeNode** %554, align 8
  %556 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %557 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %556, i32 0, i32 1
  store %struct.treeNode* %555, %struct.treeNode** %557, align 8
  %558 = load %struct.treeNode*, %struct.treeNode** %9, align 8
  %559 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %560 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %559, i32 0, i32 0
  store %struct.treeNode* %558, %struct.treeNode** %560, align 8
  %561 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %562 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %561, i32 0, i32 12
  %563 = load i32*, i32** %562, align 8
  %564 = load i32, i32* %6, align 4
  %565 = sub i32 %564, 3
  %566 = zext i32 %565 to i64
  %567 = getelementptr inbounds i32, i32* %563, i64 %566
  %568 = load i32, i32* %567, align 4
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %581

570:                                              ; preds = %540
  %571 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %572 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %573 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %572, i32 0, i32 13
  %574 = load %struct.treeNode**, %struct.treeNode*** %573, align 8
  %575 = load i32, i32* %6, align 4
  %576 = sub i32 %575, 3
  %577 = zext i32 %576 to i64
  %578 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %574, i64 %577
  %579 = load %struct.treeNode*, %struct.treeNode** %578, align 8
  %580 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %579, i32 0, i32 1
  store %struct.treeNode* %571, %struct.treeNode** %580, align 8
  br label %592

581:                                              ; preds = %540
  %582 = load %struct.treeNode*, %struct.treeNode** %10, align 8
  %583 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %584 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %583, i32 0, i32 13
  %585 = load %struct.treeNode**, %struct.treeNode*** %584, align 8
  %586 = load i32, i32* %6, align 4
  %587 = sub i32 %586, 3
  %588 = zext i32 %587 to i64
  %589 = getelementptr inbounds %struct.treeNode*, %struct.treeNode** %585, i64 %588
  %590 = load %struct.treeNode*, %struct.treeNode** %589, align 8
  %591 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %590, i32 0, i32 0
  store %struct.treeNode* %582, %struct.treeNode** %591, align 8
  br label %592

592:                                              ; preds = %581, %570
  br label %595

593:                                              ; preds = %468
  br label %594

594:                                              ; preds = %593, %449
  br label %280

595:                                              ; preds = %592, %448, %295
  %596 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %597 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %596, i32 0, i32 0
  %598 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %597, i32 0, i32 0
  %599 = load %struct.treeNode*, %struct.treeNode** %598, align 8
  %600 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %599, i32 0, i32 2
  store i32 0, i32* %600, align 8
  store i32 0, i32* %3, align 4
  br label %601

601:                                              ; preds = %595, %254, %55
  %602 = load i32, i32* %3, align 4
  ret i32 %602
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WriteViewToDisk(%struct.ADC_VIEW_CNTL* noundef %0, %struct.treeNode* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ADC_VIEW_CNTL*, align 8
  %5 = alloca %struct.treeNode*, align 8
  %6 = alloca i32, align 4
  store %struct.ADC_VIEW_CNTL* %0, %struct.ADC_VIEW_CNTL** %4, align 8
  store %struct.treeNode* %1, %struct.treeNode** %5, align 8
  %7 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %8 = icmp ne %struct.treeNode* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

10:                                               ; preds = %2
  %11 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %4, align 8
  %12 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %13 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %12, i32 0, i32 0
  %14 = load %struct.treeNode*, %struct.treeNode** %13, align 8
  %15 = call i32 @WriteViewToDisk(%struct.ADC_VIEW_CNTL* noundef %11, %struct.treeNode* noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %68

18:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %4, align 8
  %22 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %27 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %26, i32 0, i32 3
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [1 x i64], [1 x i64]* %27, i64 0, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %4, align 8
  %33 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %32, i32 0, i32 39
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %33, i64 0, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %31
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %19, !llvm.loop !7

42:                                               ; preds = %19
  %43 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %44 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %43, i32 0, i32 3
  %45 = getelementptr inbounds [1 x i64], [1 x i64]* %44, i64 0, i64 0
  %46 = bitcast i64* %45 to i8*
  %47 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %4, align 8
  %48 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %47, i32 0, i32 18
  %49 = load i32, i32* %48, align 4
  %50 = zext i32 %49 to i64
  %51 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %4, align 8
  %52 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %51, i32 0, i32 34
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %52, align 8
  %54 = call i64 @fwrite(i8* noundef %46, i64 noundef %50, i64 noundef 1, %struct._IO_FILE* noundef %53)
  %55 = icmp ne i64 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %68

59:                                               ; preds = %42
  %60 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %4, align 8
  %61 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %62 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %61, i32 0, i32 1
  %63 = load %struct.treeNode*, %struct.treeNode** %62, align 8
  %64 = call i32 @WriteViewToDisk(%struct.ADC_VIEW_CNTL* noundef %60, %struct.treeNode* noundef %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %68

67:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %66, %56, %17, %9
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WriteViewToDiskCS(%struct.ADC_VIEW_CNTL* noundef %0, %struct.treeNode* noundef %1, i64* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ADC_VIEW_CNTL*, align 8
  %6 = alloca %struct.treeNode*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.ADC_VIEW_CNTL* %0, %struct.ADC_VIEW_CNTL** %5, align 8
  store %struct.treeNode* %1, %struct.treeNode** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.treeNode*, %struct.treeNode** %6, align 8
  %10 = icmp ne %struct.treeNode* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

12:                                               ; preds = %3
  %13 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %5, align 8
  %14 = load %struct.treeNode*, %struct.treeNode** %6, align 8
  %15 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %14, i32 0, i32 0
  %16 = load %struct.treeNode*, %struct.treeNode** %15, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = call i32 @WriteViewToDiskCS(%struct.ADC_VIEW_CNTL* noundef %13, %struct.treeNode* noundef %16, i64* noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %92

21:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %62, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %5, align 8
  %25 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %22
  %29 = load %struct.treeNode*, %struct.treeNode** %6, align 8
  %30 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %29, i32 0, i32 3
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [1 x i64], [1 x i64]* %30, i64 0, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %5, align 8
  %36 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %35, i32 0, i32 39
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %36, i64 0, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, %34
  store i64 %41, i64* %39, align 8
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.treeNode*, %struct.treeNode** %6, align 8
  %46 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %45, i32 0, i32 3
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [1 x i64], [1 x i64]* %46, i64 0, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = mul i64 %44, %50
  %52 = load i32, i32* @measbound, align 4
  %53 = sext i32 %52 to i64
  %54 = urem i64 %51, %53
  %55 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %5, align 8
  %56 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %55, i32 0, i32 41
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %56, i64 0, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %54
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %28
  %63 = load i32, i32* %8, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %22, !llvm.loop !8

65:                                               ; preds = %22
  %66 = load %struct.treeNode*, %struct.treeNode** %6, align 8
  %67 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %66, i32 0, i32 3
  %68 = getelementptr inbounds [1 x i64], [1 x i64]* %67, i64 0, i64 0
  %69 = bitcast i64* %68 to i8*
  %70 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %5, align 8
  %71 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %70, i32 0, i32 18
  %72 = load i32, i32* %71, align 4
  %73 = zext i32 %72 to i64
  %74 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %5, align 8
  %75 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %74, i32 0, i32 34
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %75, align 8
  %77 = call i64 @fwrite(i8* noundef %69, i64 noundef %73, i64 noundef 1, %struct._IO_FILE* noundef %76)
  %78 = icmp ne i64 %77, 1
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %80, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %92

82:                                               ; preds = %65
  %83 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %5, align 8
  %84 = load %struct.treeNode*, %struct.treeNode** %6, align 8
  %85 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %84, i32 0, i32 1
  %86 = load %struct.treeNode*, %struct.treeNode** %85, align 8
  %87 = load i64*, i64** %7, align 8
  %88 = call i32 @WriteViewToDiskCS(%struct.ADC_VIEW_CNTL* noundef %83, %struct.treeNode* noundef %86, i64* noundef %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 1, i32* %4, align 4
  br label %92

91:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %90, %79, %20, %11
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @computeChecksum(%struct.ADC_VIEW_CNTL* noundef %0, %struct.treeNode* noundef %1, i64* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ADC_VIEW_CNTL*, align 8
  %6 = alloca %struct.treeNode*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.ADC_VIEW_CNTL* %0, %struct.ADC_VIEW_CNTL** %5, align 8
  store %struct.treeNode* %1, %struct.treeNode** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.treeNode*, %struct.treeNode** %6, align 8
  %10 = icmp ne %struct.treeNode* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

12:                                               ; preds = %3
  %13 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %5, align 8
  %14 = load %struct.treeNode*, %struct.treeNode** %6, align 8
  %15 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %14, i32 0, i32 0
  %16 = load %struct.treeNode*, %struct.treeNode** %15, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = call i32 @computeChecksum(%struct.ADC_VIEW_CNTL* noundef %13, %struct.treeNode* noundef %16, i64* noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %62

21:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %49, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %5, align 8
  %25 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %22
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.treeNode*, %struct.treeNode** %6, align 8
  %33 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %32, i32 0, i32 3
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [1 x i64], [1 x i64]* %33, i64 0, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = mul i64 %31, %37
  %39 = load i32, i32* @measbound, align 4
  %40 = sext i32 %39 to i64
  %41 = urem i64 %38, %40
  %42 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %5, align 8
  %43 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %42, i32 0, i32 41
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %43, i64 0, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, %41
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %28
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %22, !llvm.loop !9

52:                                               ; preds = %22
  %53 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %5, align 8
  %54 = load %struct.treeNode*, %struct.treeNode** %6, align 8
  %55 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %54, i32 0, i32 1
  %56 = load %struct.treeNode*, %struct.treeNode** %55, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = call i32 @computeChecksum(%struct.ADC_VIEW_CNTL* noundef %53, %struct.treeNode* noundef %56, i64* noundef %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 1, i32* %4, align 4
  br label %62

61:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %60, %20, %11
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WriteChunkToDisk(i32 noundef %0, %struct._IO_FILE* noundef %1, %struct.treeNode* noundef %2, %struct._IO_FILE* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca %struct.treeNode*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  store i32 %0, i32* %6, align 4
  store %struct._IO_FILE* %1, %struct._IO_FILE** %7, align 8
  store %struct.treeNode* %2, %struct.treeNode** %8, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %9, align 8
  %10 = load %struct.treeNode*, %struct.treeNode** %8, align 8
  %11 = icmp ne %struct.treeNode* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %47

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %16 = load %struct.treeNode*, %struct.treeNode** %8, align 8
  %17 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %16, i32 0, i32 0
  %18 = load %struct.treeNode*, %struct.treeNode** %17, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %20 = call i32 @WriteChunkToDisk(i32 noundef %14, %struct._IO_FILE* noundef %15, %struct.treeNode* noundef %18, %struct._IO_FILE* noundef %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 1, i32* %5, align 4
  br label %47

23:                                               ; preds = %13
  %24 = load %struct.treeNode*, %struct.treeNode** %8, align 8
  %25 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %24, i32 0, i32 3
  %26 = getelementptr inbounds [1 x i64], [1 x i64]* %25, i64 0, i64 0
  %27 = bitcast i64* %26 to i8*
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %31 = call i64 @fwrite(i8* noundef %27, i64 noundef %29, i64 noundef 1, %struct._IO_FILE* noundef %30)
  %32 = icmp ne i64 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %47

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %39 = load %struct.treeNode*, %struct.treeNode** %8, align 8
  %40 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %39, i32 0, i32 1
  %41 = load %struct.treeNode*, %struct.treeNode** %40, align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %43 = call i32 @WriteChunkToDisk(i32 noundef %37, %struct._IO_FILE* noundef %38, %struct.treeNode* noundef %41, %struct._IO_FILE* noundef %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %47

46:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %45, %33, %22, %12
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.RBTree* @CreateEmptyTree(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3) #0 {
  %5 = alloca %struct.RBTree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.RBTree*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = call noalias i8* @malloc(i64 noundef 104) #4
  %12 = bitcast i8* %11 to %struct.RBTree*
  store %struct.RBTree* %12, %struct.RBTree** %10, align 8
  %13 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %14 = icmp ne %struct.RBTree* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.RBTree* null, %struct.RBTree** %5, align 8
  br label %108

16:                                               ; preds = %4
  %17 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %18 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %18, i32 0, i32 0
  store %struct.treeNode* null, %struct.treeNode** %19, align 8
  %20 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %21 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %21, i32 0, i32 1
  store %struct.treeNode* null, %struct.treeNode** %22, align 8
  %23 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %24 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %23, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %26 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %25, i32 0, i32 6
  store i32 0, i32* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sub i32 %27, 1
  %29 = mul i32 4, %28
  %30 = zext i32 %29 to i64
  %31 = add i64 32, %30
  %32 = load i32, i32* %7, align 4
  %33 = mul i32 8, %32
  %34 = zext i32 %33 to i64
  %35 = add i64 %31, %34
  %36 = trunc i64 %35 to i32
  %37 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %38 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %40 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = urem i32 %41, 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %16
  %45 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %46 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %47, 4
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %16
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %52 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %54 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %53, i32 0, i32 7
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = mul i32 4, %55
  %57 = load i32, i32* %7, align 4
  %58 = mul i32 8, %57
  %59 = add i32 %56, %58
  %60 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %61 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %63 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %62, i32 0, i32 1
  store %struct.treeNode* null, %struct.treeNode** %63, align 8
  %64 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %65 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %68 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = udiv i32 %66, %69
  %71 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %72 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 4
  %73 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %74 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %77 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %80 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %79, i32 0, i32 10
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %83 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %82, i32 0, i32 11
  store i32 %81, i32* %83, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %86 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %85, i32 0, i32 14
  store i8* %84, i8** %86, align 8
  %87 = call noalias i8* @malloc(i64 noundef 512) #4
  %88 = bitcast i8* %87 to %struct.treeNode**
  %89 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %90 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %89, i32 0, i32 13
  store %struct.treeNode** %88, %struct.treeNode*** %90, align 8
  %91 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %92 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %91, i32 0, i32 13
  %93 = load %struct.treeNode**, %struct.treeNode*** %92, align 8
  %94 = icmp ne %struct.treeNode** %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %49
  store %struct.RBTree* null, %struct.RBTree** %5, align 8
  br label %108

96:                                               ; preds = %49
  %97 = call noalias i8* @malloc(i64 noundef 256) #4
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %100 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %99, i32 0, i32 12
  store i32* %98, i32** %100, align 8
  %101 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  %102 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %101, i32 0, i32 12
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %96
  store %struct.RBTree* null, %struct.RBTree** %5, align 8
  br label %108

106:                                              ; preds = %96
  %107 = load %struct.RBTree*, %struct.RBTree** %10, align 8
  store %struct.RBTree* %107, %struct.RBTree** %5, align 8
  br label %108

108:                                              ; preds = %106, %105, %95, %15
  %109 = load %struct.RBTree*, %struct.RBTree** %5, align 8
  ret %struct.RBTree* %109
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitializeTree(%struct.RBTree* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.RBTree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.RBTree* %0, %struct.RBTree** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %8 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %8, i32 0, i32 0
  store %struct.treeNode* null, %struct.treeNode** %9, align 8
  %10 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %11 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %11, i32 0, i32 1
  store %struct.treeNode* null, %struct.treeNode** %12, align 8
  %13 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %14 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %13, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %16 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %15, i32 0, i32 6
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sub i32 %17, 1
  %19 = mul i32 4, %18
  %20 = zext i32 %19 to i64
  %21 = add i64 32, %20
  %22 = load i32, i32* %6, align 4
  %23 = mul i32 8, %22
  %24 = zext i32 %23 to i64
  %25 = add i64 %21, %24
  %26 = trunc i64 %25 to i32
  %27 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %28 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %30 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = urem i32 %31, 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %36 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %37, 4
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %3
  %40 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %41 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %40, i32 0, i32 7
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = mul i32 4, %42
  %44 = load i32, i32* %6, align 4
  %45 = mul i32 8, %44
  %46 = add i32 %43, %45
  %47 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %48 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %50 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %49, i32 0, i32 1
  store %struct.treeNode* null, %struct.treeNode** %50, align 8
  %51 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %52 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %55 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = udiv i32 %53, %56
  %58 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %59 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %58, i32 0, i32 9
  store i32 %57, i32* %59, align 4
  %60 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %61 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %64 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %67 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %66, i32 0, i32 10
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.RBTree*, %struct.RBTree** %4, align 8
  %70 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %69, i32 0, i32 11
  store i32 %68, i32* %70, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @DestroyTree(%struct.RBTree* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.RBTree*, align 8
  store %struct.RBTree* %0, %struct.RBTree** %3, align 8
  %4 = load %struct.RBTree*, %struct.RBTree** %3, align 8
  %5 = icmp eq %struct.RBTree* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 3, i32* %2, align 4
  br label %39

7:                                                ; preds = %1
  %8 = load %struct.RBTree*, %struct.RBTree** %3, align 8
  %9 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %8, i32 0, i32 14
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.RBTree*, %struct.RBTree** %3, align 8
  %14 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %13, i32 0, i32 14
  %15 = load i8*, i8** %14, align 8
  call void @free(i8* noundef %15) #4
  br label %16

16:                                               ; preds = %12, %7
  %17 = load %struct.RBTree*, %struct.RBTree** %3, align 8
  %18 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %17, i32 0, i32 13
  %19 = load %struct.treeNode**, %struct.treeNode*** %18, align 8
  %20 = icmp ne %struct.treeNode** %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.RBTree*, %struct.RBTree** %3, align 8
  %23 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %22, i32 0, i32 13
  %24 = load %struct.treeNode**, %struct.treeNode*** %23, align 8
  %25 = bitcast %struct.treeNode** %24 to i8*
  call void @free(i8* noundef %25) #4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.RBTree*, %struct.RBTree** %3, align 8
  %28 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %27, i32 0, i32 12
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.RBTree*, %struct.RBTree** %3, align 8
  %33 = getelementptr inbounds %struct.RBTree, %struct.RBTree* %32, i32 0, i32 12
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to i8*
  call void @free(i8* noundef %35) #4
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.RBTree*, %struct.RBTree** %3, align 8
  %38 = bitcast %struct.RBTree* %37 to i8*
  call void @free(i8* noundef %38) #4
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %6
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
