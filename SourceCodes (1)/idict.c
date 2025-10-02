; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/idict.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/idict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s }
%struct.pair_s = type { %struct.ref_s, %struct.ref_s }
%struct.name_s = type { %struct.name_s*, i16, i16, i8*, %struct.ref_s* }

@dict_max_size = dso_local global i32 32766, align 4
@.str = private unnamed_addr constant [12 x i8] c"dict_create\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"dict_create(pairs)\00", align 1
@dstack = external dso_local global [0 x %struct.ref_s], align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"dict_resize(old)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"dict_resize(new)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dict_create(i32 noundef %0, %struct.ref_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dict_s*, align 8
  %8 = alloca %struct.pair_s*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ref_s* %1, %struct.ref_s** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ 1, %11 ], [ %13, %12 ]
  %16 = add i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = call i8* @alloc(i32 noundef 1, i32 noundef 32, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = bitcast i8* %17 to %struct.dict_s*
  store %struct.dict_s* %18, %struct.dict_s** %7, align 8
  %19 = load %struct.dict_s*, %struct.dict_s** %7, align 8
  %20 = icmp eq %struct.dict_s* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 -25, i32* %3, align 4
  br label %80

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @alloc(i32 noundef %23, i32 noundef 32, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %25 = bitcast i8* %24 to %struct.pair_s*
  store %struct.pair_s* %25, %struct.pair_s** %8, align 8
  %26 = load %struct.pair_s*, %struct.pair_s** %8, align 8
  %27 = icmp eq %struct.pair_s* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.dict_s*, %struct.dict_s** %7, align 8
  %30 = bitcast %struct.dict_s* %29 to i8*
  call void @alloc_free(i8* noundef %30, i32 noundef 1, i32 noundef 32, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 -25, i32* %3, align 4
  br label %80

31:                                               ; preds = %22
  %32 = load %struct.dict_s*, %struct.dict_s** %7, align 8
  %33 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %35 = bitcast %union.v* %34 to i64*
  store i64 0, i64* %35, align 8
  %36 = load %struct.dict_s*, %struct.dict_s** %7, align 8
  %37 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  store i16 20, i16* %38, align 8
  %39 = load %struct.pair_s*, %struct.pair_s** %8, align 8
  %40 = bitcast %struct.pair_s* %39 to %struct.ref_s*
  %41 = load %struct.dict_s*, %struct.dict_s** %7, align 8
  %42 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %44 = bitcast %union.v* %43 to %struct.ref_s**
  store %struct.ref_s* %40, %struct.ref_s** %44, align 8
  %45 = load %struct.dict_s*, %struct.dict_s** %7, align 8
  %46 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  store i16 770, i16* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = mul i32 %48, 2
  %50 = trunc i32 %49 to i16
  %51 = load %struct.dict_s*, %struct.dict_s** %7, align 8
  %52 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 2
  store i16 %50, i16* %53, align 2
  %54 = load %struct.dict_s*, %struct.dict_s** %7, align 8
  %55 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %57 = bitcast %union.v* %56 to %struct.dict_s**
  store %struct.dict_s* %54, %struct.dict_s** %57, align 8
  %58 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 1
  store i16 778, i16* %59, align 8
  %60 = load %struct.dict_s*, %struct.dict_s** %7, align 8
  %61 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %63 = bitcast %union.v* %62 to %struct.ref_s**
  %64 = load %struct.ref_s*, %struct.ref_s** %63, align 8
  %65 = bitcast %struct.ref_s* %64 to %struct.pair_s*
  store %struct.pair_s* %65, %struct.pair_s** %8, align 8
  br label %66

66:                                               ; preds = %70, %31
  %67 = load i32, i32* %6, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* %6, align 4
  %69 = icmp ne i32 %67, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.pair_s*, %struct.pair_s** %8, align 8
  %72 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 1
  store i16 32, i16* %73, align 8
  %74 = load %struct.pair_s*, %struct.pair_s** %8, align 8
  %75 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 0, i32 1
  store i16 32, i16* %76, align 8
  %77 = load %struct.pair_s*, %struct.pair_s** %8, align 8
  %78 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %77, i32 1
  store %struct.pair_s* %78, %struct.pair_s** %8, align 8
  br label %66, !llvm.loop !4

79:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %28, %21
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %5 = bitcast %union.v* %4 to %struct.dict_s**
  %6 = load %struct.dict_s*, %struct.dict_s** %5, align 8
  %7 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %6, i32 0, i32 1
  ret %struct.ref_s* %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dict_lookup(%struct.ref_s* noundef %0, %struct.ref_s* noundef %1, %struct.ref_s* noundef %2, %struct.ref_s** noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_s*, align 8
  %7 = alloca %struct.ref_s*, align 8
  %8 = alloca %struct.ref_s*, align 8
  %9 = alloca %struct.ref_s**, align 8
  %10 = alloca %struct.ref_s*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.name_s*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ref_s, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dict_s*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.pair_s*, align 8
  %20 = alloca %struct.pair_s*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %6, align 8
  store %struct.ref_s* %1, %struct.ref_s** %7, align 8
  store %struct.ref_s* %2, %struct.ref_s** %8, align 8
  store %struct.ref_s** %3, %struct.ref_s*** %9, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  store %struct.ref_s* %23, %struct.ref_s** %10, align 8
  store i32 1, i32* %14, align 4
  %24 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %26 = load i16, i16* %25, align 8
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 255
  %29 = ashr i32 %28, 2
  switch i32 %29, label %59 [
    i32 7, label %30
    i32 13, label %41
  ]

30:                                               ; preds = %4
  %31 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %33 = bitcast %union.v* %32 to %struct.name_s**
  %34 = load %struct.name_s*, %struct.name_s** %33, align 8
  store %struct.name_s* %34, %struct.name_s** %13, align 8
  br label %35

35:                                               ; preds = %55, %30
  %36 = load %struct.name_s*, %struct.name_s** %13, align 8
  %37 = getelementptr inbounds %struct.name_s, %struct.name_s* %36, i32 0, i32 1
  %38 = load i16, i16* %37, align 8
  %39 = zext i16 %38 to i32
  %40 = mul nsw i32 %39, 40503
  store i32 %40, i32* %11, align 4
  store i32 7, i32* %12, align 4
  br label %78

41:                                               ; preds = %4
  %42 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %44 = bitcast %union.v* %43 to i8**
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 2
  %48 = load i16, i16* %47, align 2
  %49 = zext i16 %48 to i32
  %50 = call i32 @name_ref(i8* noundef %45, i32 noundef %49, %struct.ref_s* noundef %15, i32 noundef 1)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %5, align 4
  br label %181

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %57 = bitcast %union.v* %56 to %struct.name_s**
  %58 = load %struct.name_s*, %struct.name_s** %57, align 8
  store %struct.name_s* %58, %struct.name_s** %13, align 8
  br label %35

59:                                               ; preds = %4
  %60 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 0, i32 1
  %62 = load i16, i16* %61, align 8
  %63 = zext i16 %62 to i32
  %64 = and i32 %63, 255
  %65 = ashr i32 %64, 2
  %66 = icmp sge i32 %65, 16
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %75

68:                                               ; preds = %59
  %69 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 1
  %71 = load i16, i16* %70, align 8
  %72 = zext i16 %71 to i32
  %73 = and i32 %72, 255
  %74 = ashr i32 %73, 2
  br label %75

75:                                               ; preds = %68, %67
  %76 = phi i32 [ 9, %67 ], [ %74, %68 ]
  %77 = mul nsw i32 %76, 99
  store i32 %77, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  br label %78

78:                                               ; preds = %75, %35
  br label %79

79:                                               ; preds = %174, %78
  %80 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i32 0, i32 0
  %82 = bitcast %union.v* %81 to %struct.dict_s**
  %83 = load %struct.dict_s*, %struct.dict_s** %82, align 8
  store %struct.dict_s* %83, %struct.dict_s** %17, align 8
  %84 = load %struct.dict_s*, %struct.dict_s** %17, align 8
  %85 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i32 0, i32 2
  %87 = load i16, i16* %86, align 2
  %88 = zext i16 %87 to i32
  %89 = ashr i32 %88, 1
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %18, align 4
  %91 = load %struct.dict_s*, %struct.dict_s** %17, align 8
  %92 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i32 0, i32 0
  %94 = bitcast %union.v* %93 to %struct.ref_s**
  %95 = load %struct.ref_s*, %struct.ref_s** %94, align 8
  %96 = bitcast %struct.ref_s* %95 to %struct.pair_s*
  store %struct.pair_s* %96, %struct.pair_s** %19, align 8
  store i32 0, i32* %21, align 4
  %97 = load %struct.pair_s*, %struct.pair_s** %19, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %18, align 4
  %100 = urem i32 %98, %99
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %97, i64 %101
  %103 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %102, i64 2
  store %struct.pair_s* %103, %struct.pair_s** %20, align 8
  br label %104

104:                                              ; preds = %164, %79
  %105 = load %struct.pair_s*, %struct.pair_s** %20, align 8
  %106 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %105, i32 -1
  store %struct.pair_s* %106, %struct.pair_s** %20, align 8
  %107 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %107, i32 0, i32 1
  %109 = load i16, i16* %108, align 8
  %110 = zext i16 %109 to i32
  %111 = and i32 %110, 255
  %112 = ashr i32 %111, 2
  store i32 %112, i32* %22, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %104
  %116 = load %struct.pair_s*, %struct.pair_s** %20, align 8
  %117 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %117, i32 0, i32 0
  %119 = bitcast %union.v* %118 to %struct.name_s**
  %120 = load %struct.name_s*, %struct.name_s** %119, align 8
  %121 = load %struct.name_s*, %struct.name_s** %13, align 8
  %122 = icmp eq %struct.name_s* %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %115
  %124 = load %struct.pair_s*, %struct.pair_s** %20, align 8
  %125 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %124, i32 0, i32 1
  %126 = load %struct.ref_s**, %struct.ref_s*** %9, align 8
  store %struct.ref_s* %125, %struct.ref_s** %126, align 8
  store i32 1, i32* %5, align 4
  br label %181

127:                                              ; preds = %115
  br label %164

128:                                              ; preds = %104
  %129 = load i32, i32* %22, align 4
  %130 = icmp eq i32 %129, 8
  br i1 %130, label %131, label %152

131:                                              ; preds = %128
  %132 = load %struct.pair_s*, %struct.pair_s** %20, align 8
  %133 = load %struct.pair_s*, %struct.pair_s** %19, align 8
  %134 = icmp eq %struct.pair_s* %132, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %131
  %136 = load i32, i32* %21, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %21, align 4
  %138 = icmp ne i32 %136, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load i32, i32* %14, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 -2, i32* %14, align 4
  br label %143

143:                                              ; preds = %142, %139
  br label %173

144:                                              ; preds = %135
  %145 = load i32, i32* %18, align 4
  %146 = add i32 %145, 1
  %147 = load %struct.pair_s*, %struct.pair_s** %20, align 8
  %148 = zext i32 %146 to i64
  %149 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %147, i64 %148
  store %struct.pair_s* %149, %struct.pair_s** %20, align 8
  br label %151

150:                                              ; preds = %131
  br label %165

151:                                              ; preds = %144
  br label %163

152:                                              ; preds = %128
  %153 = load %struct.pair_s*, %struct.pair_s** %20, align 8
  %154 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %153, i32 0, i32 0
  %155 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %156 = call i32 (%struct.ref_s*, %struct.ref_s*, ...) bitcast (i32 (...)* @obj_eq to i32 (%struct.ref_s*, %struct.ref_s*, ...)*)(%struct.ref_s* noundef %154, %struct.ref_s* noundef %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load %struct.pair_s*, %struct.pair_s** %20, align 8
  %160 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %159, i32 0, i32 1
  %161 = load %struct.ref_s**, %struct.ref_s*** %9, align 8
  store %struct.ref_s* %160, %struct.ref_s** %161, align 8
  store i32 1, i32* %5, align 4
  br label %181

162:                                              ; preds = %152
  br label %163

163:                                              ; preds = %162, %151
  br label %164

164:                                              ; preds = %163, %127
  br label %104

165:                                              ; preds = %150
  %166 = load i32, i32* %14, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load %struct.pair_s*, %struct.pair_s** %20, align 8
  %170 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %169, i32 0, i32 1
  %171 = load %struct.ref_s**, %struct.ref_s*** %9, align 8
  store %struct.ref_s* %170, %struct.ref_s** %171, align 8
  store i32 0, i32* %14, align 4
  br label %172

172:                                              ; preds = %168, %165
  br label %173

173:                                              ; preds = %172, %143
  br label %174

174:                                              ; preds = %173
  %175 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %176 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %175, i32 -1
  store %struct.ref_s* %176, %struct.ref_s** %10, align 8
  %177 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %178 = icmp uge %struct.ref_s* %176, %177
  br i1 %178, label %79, label %179, !llvm.loop !6

179:                                              ; preds = %174
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %179, %158, %123, %53
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @name_ref(i8* noundef, i32 noundef, %struct.ref_s* noundef, i32 noundef) #1

declare dso_local i32 @obj_eq(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dict_put(%struct.ref_s* noundef %0, %struct.ref_s* noundef %1, %struct.ref_s* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca %struct.ref_s*, align 8
  %7 = alloca %struct.ref_s*, align 8
  %8 = alloca %struct.ref_s*, align 8
  %9 = alloca %struct.dict_s*, align 8
  %10 = alloca %struct.name_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %5, align 8
  store %struct.ref_s* %1, %struct.ref_s** %6, align 8
  store %struct.ref_s* %2, %struct.ref_s** %7, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %14 = call i32 @dict_lookup(%struct.ref_s* noundef %11, %struct.ref_s* noundef %12, %struct.ref_s* noundef %13, %struct.ref_s** noundef %8)
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %81

16:                                               ; preds = %3
  %17 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %19 = bitcast %union.v* %18 to %struct.dict_s**
  %20 = load %struct.dict_s*, %struct.dict_s** %19, align 8
  store %struct.dict_s* %20, %struct.dict_s** %9, align 8
  %21 = load %struct.dict_s*, %struct.dict_s** %9, align 8
  %22 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %24 = bitcast %union.v* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.dict_s*, %struct.dict_s** %9, align 8
  %27 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 2
  %29 = load i16, i16* %28, align 2
  %30 = zext i16 %29 to i32
  %31 = ashr i32 %30, 1
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %25, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %16
  store i32 -2, i32* %4, align 4
  br label %86

36:                                               ; preds = %16
  %37 = load %struct.dict_s*, %struct.dict_s** %9, align 8
  %38 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %40 = bitcast %union.v* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -1
  %45 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %46 = bitcast %struct.ref_s* %44 to i8*
  %47 = bitcast %struct.ref_s* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  %48 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 1
  %50 = load i16, i16* %49, align 8
  %51 = zext i16 %50 to i32
  %52 = and i32 %51, 255
  %53 = ashr i32 %52, 2
  %54 = icmp eq i32 %53, 7
  br i1 %54, label %55, label %80

55:                                               ; preds = %36
  %56 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 0
  %58 = bitcast %union.v* %57 to %struct.name_s**
  %59 = load %struct.name_s*, %struct.name_s** %58, align 8
  store %struct.name_s* %59, %struct.name_s** %10, align 8
  %60 = load %struct.name_s*, %struct.name_s** %10, align 8
  %61 = getelementptr inbounds %struct.name_s, %struct.name_s* %60, i32 0, i32 4
  %62 = load %struct.ref_s*, %struct.ref_s** %61, align 8
  %63 = icmp eq %struct.ref_s* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %55
  %65 = load %struct.dict_s*, %struct.dict_s** %9, align 8
  %66 = load %struct.dict_s*, %struct.dict_s** bitcast ([0 x %struct.ref_s]* @dstack to %struct.dict_s**), align 8
  %67 = icmp eq %struct.dict_s* %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load %struct.dict_s*, %struct.dict_s** %9, align 8
  %70 = load %struct.dict_s*, %struct.dict_s** bitcast (%union.v* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 1, i32 0) to %struct.dict_s**), align 8
  %71 = icmp eq %struct.dict_s* %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68, %64
  %73 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %74 = load %struct.name_s*, %struct.name_s** %10, align 8
  %75 = getelementptr inbounds %struct.name_s, %struct.name_s* %74, i32 0, i32 4
  store %struct.ref_s* %73, %struct.ref_s** %75, align 8
  br label %79

76:                                               ; preds = %68, %55
  %77 = load %struct.name_s*, %struct.name_s** %10, align 8
  %78 = getelementptr inbounds %struct.name_s, %struct.name_s* %77, i32 0, i32 4
  store %struct.ref_s* inttoptr (i64 1 to %struct.ref_s*), %struct.ref_s** %78, align 8
  br label %79

79:                                               ; preds = %76, %72
  br label %80

80:                                               ; preds = %79, %36
  br label %81

81:                                               ; preds = %80, %3
  %82 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %83 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %84 = bitcast %struct.ref_s* %82 to i8*
  %85 = bitcast %struct.ref_s* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %35
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dict_length(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %5 = bitcast %union.v* %4 to %struct.dict_s**
  %6 = load %struct.dict_s*, %struct.dict_s** %5, align 8
  %7 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %9 = bitcast %union.v* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dict_maxlength(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %5 = bitcast %union.v* %4 to %struct.dict_s**
  %6 = load %struct.dict_s*, %struct.dict_s** %5, align 8
  %7 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 2
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = ashr i32 %10, 1
  %12 = sub nsw i32 %11, 1
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dict_copy(%struct.ref_s* noundef %0, %struct.ref_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca %struct.dict_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pair_s*, align 8
  %9 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store %struct.ref_s* %1, %struct.ref_s** %5, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %12 = bitcast %union.v* %11 to %struct.dict_s**
  %13 = load %struct.dict_s*, %struct.dict_s** %12, align 8
  store %struct.dict_s* %13, %struct.dict_s** %6, align 8
  %14 = load %struct.dict_s*, %struct.dict_s** %6, align 8
  %15 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 2
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = ashr i32 %18, 1
  %20 = sub nsw i32 %19, 1
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = load %struct.dict_s*, %struct.dict_s** %6, align 8
  %23 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %25 = bitcast %union.v* %24 to %struct.ref_s**
  %26 = load %struct.ref_s*, %struct.ref_s** %25, align 8
  %27 = bitcast %struct.ref_s* %26 to %struct.pair_s*
  store %struct.pair_s* %27, %struct.pair_s** %8, align 8
  br label %28

28:                                               ; preds = %52, %2
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load %struct.pair_s*, %struct.pair_s** %8, align 8
  %34 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  %36 = load i16, i16* %35, align 8
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 255
  %39 = ashr i32 %38, 2
  %40 = icmp ne i32 %39, 8
  br i1 %40, label %41, label %52

41:                                               ; preds = %32
  %42 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %43 = load %struct.pair_s*, %struct.pair_s** %8, align 8
  %44 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %43, i32 0, i32 0
  %45 = load %struct.pair_s*, %struct.pair_s** %8, align 8
  %46 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %45, i32 0, i32 1
  %47 = call i32 @dict_put(%struct.ref_s* noundef %42, %struct.ref_s* noundef %44, %struct.ref_s* noundef %46)
  store i32 %47, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.pair_s*, %struct.pair_s** %8, align 8
  %54 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %53, i32 1
  store %struct.pair_s* %54, %struct.pair_s** %8, align 8
  br label %28, !llvm.loop !7

55:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dict_resize(%struct.ref_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dict_s*, align 8
  %7 = alloca %struct.ref_s, align 8
  %8 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %11 = bitcast %union.v* %10 to %struct.dict_s**
  %12 = load %struct.dict_s*, %struct.dict_s** %11, align 8
  store %struct.dict_s* %12, %struct.dict_s** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @dict_create(i32 noundef %13, %struct.ref_s* noundef %7)
  store i32 %14, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %20 = call i32 @dict_copy(%struct.ref_s* noundef %19, %struct.ref_s* noundef %7)
  %21 = load %struct.dict_s*, %struct.dict_s** %6, align 8
  %22 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %24 = bitcast %union.v* %23 to %struct.ref_s**
  %25 = load %struct.ref_s*, %struct.ref_s** %24, align 8
  %26 = bitcast %struct.ref_s* %25 to i8*
  %27 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %28 = call i32 @dict_maxlength(%struct.ref_s* noundef %27)
  call void @alloc_free(i8* noundef %26, i32 noundef %28, i32 noundef 32, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.dict_s*, %struct.dict_s** %6, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %31 = bitcast %union.v* %30 to %struct.dict_s**
  %32 = load %struct.dict_s*, %struct.dict_s** %31, align 8
  %33 = bitcast %struct.dict_s* %29 to i8*
  %34 = bitcast %struct.dict_s* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 32, i1 false)
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %36 = bitcast %union.v* %35 to %struct.dict_s**
  %37 = load %struct.dict_s*, %struct.dict_s** %36, align 8
  %38 = bitcast %struct.dict_s* %37 to i8*
  call void @alloc_free(i8* noundef %38, i32 noundef 1, i32 noundef 32, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %18, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dict_first(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %5 = bitcast %union.v* %4 to %struct.dict_s**
  %6 = load %struct.dict_s*, %struct.dict_s** %5, align 8
  %7 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 2
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = ashr i32 %10, 1
  %12 = sub nsw i32 %11, 1
  %13 = add nsw i32 %12, 1
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dict_next(%struct.ref_s* noundef %0, i32 noundef %1, %struct.ref_s* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref_s*, align 8
  %8 = alloca %struct.pair_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ref_s* %2, %struct.ref_s** %7, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %11 = bitcast %union.v* %10 to %struct.dict_s**
  %12 = load %struct.dict_s*, %struct.dict_s** %11, align 8
  %13 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %15 = bitcast %union.v* %14 to %struct.ref_s**
  %16 = load %struct.ref_s*, %struct.ref_s** %15, align 8
  %17 = bitcast %struct.ref_s* %16 to %struct.pair_s*
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %17, i64 %19
  store %struct.pair_s* %20, %struct.pair_s** %8, align 8
  br label %21

21:                                               ; preds = %50, %3
  %22 = load %struct.pair_s*, %struct.pair_s** %8, align 8
  %23 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %22, i32 -1
  store %struct.pair_s* %23, %struct.pair_s** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %6, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %21
  %28 = load %struct.pair_s*, %struct.pair_s** %8, align 8
  %29 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 8
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 255
  %34 = ashr i32 %33, 2
  %35 = icmp ne i32 %34, 8
  br i1 %35, label %36, label %50

36:                                               ; preds = %27
  %37 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 0
  %39 = load %struct.pair_s*, %struct.pair_s** %8, align 8
  %40 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %39, i32 0, i32 0
  %41 = bitcast %struct.ref_s* %38 to i8*
  %42 = bitcast %struct.ref_s* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 1
  %45 = load %struct.pair_s*, %struct.pair_s** %8, align 8
  %46 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %45, i32 0, i32 1
  %47 = bitcast %struct.ref_s* %44 to i8*
  %48 = bitcast %struct.ref_s* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 16, i1 false)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %4, align 4
  br label %52

50:                                               ; preds = %27
  br label %21, !llvm.loop !8

51:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
