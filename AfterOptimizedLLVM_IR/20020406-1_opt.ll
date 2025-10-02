; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020406-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020406-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DUPFFstruct = type { i32, i32, i32* }

@.str = private unnamed_addr constant [40 x i8] c"DUPFFexgcd called on degrees %d and %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"calling DUPFFexgcd on degrees %d and %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FFmul(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %0) #0 {
  %2 = alloca %struct.DUPFFstruct*, align 8
  store %struct.DUPFFstruct* %0, %struct.DUPFFstruct** %2, align 8
  %3 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %2, align 8
  %4 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DUPFFstruct* @DUPFFnew(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.DUPFFstruct*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i8* @malloc(i64 noundef 16)
  %5 = bitcast i8* %4 to %struct.DUPFFstruct*
  store %struct.DUPFFstruct* %5, %struct.DUPFFstruct** %3, align 8
  %6 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %3, align 8
  %7 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %6, i32 0, i32 2
  store i32* null, i32** %7, align 8
  %8 = load i32, i32* %2, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = call i8* @calloc(i64 noundef %13, i64 noundef 4)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %3, align 8
  %17 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  br label %18

18:                                               ; preds = %10, %1
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %3, align 8
  %21 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %3, align 8
  %23 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %22, i32 0, i32 1
  store i32 -1, i32* %23, align 4
  %24 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %3, align 8
  ret %struct.DUPFFstruct* %24
}

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @DUPFFfree(%struct.DUPFFstruct* noundef %0) #0 {
  %2 = alloca %struct.DUPFFstruct*, align 8
  store %struct.DUPFFstruct* %0, %struct.DUPFFstruct** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DUPFFswap(%struct.DUPFFstruct* noundef %0, %struct.DUPFFstruct* noundef %1) #0 {
  %3 = alloca %struct.DUPFFstruct*, align 8
  %4 = alloca %struct.DUPFFstruct*, align 8
  store %struct.DUPFFstruct* %0, %struct.DUPFFstruct** %3, align 8
  store %struct.DUPFFstruct* %1, %struct.DUPFFstruct** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DUPFFstruct* @DUPFFcopy(%struct.DUPFFstruct* noundef %0) #0 {
  %2 = alloca %struct.DUPFFstruct*, align 8
  store %struct.DUPFFstruct* %0, %struct.DUPFFstruct** %2, align 8
  %3 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %2, align 8
  ret %struct.DUPFFstruct* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DUPFFshift_add(%struct.DUPFFstruct* noundef %0, %struct.DUPFFstruct* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.DUPFFstruct*, align 8
  %6 = alloca %struct.DUPFFstruct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.DUPFFstruct* %0, %struct.DUPFFstruct** %5, align 8
  store %struct.DUPFFstruct* %1, %struct.DUPFFstruct** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DUPFFstruct* @DUPFFexgcd(%struct.DUPFFstruct** noundef %0, %struct.DUPFFstruct** noundef %1, %struct.DUPFFstruct* noundef %2, %struct.DUPFFstruct* noundef %3) #0 {
  %5 = alloca %struct.DUPFFstruct*, align 8
  %6 = alloca %struct.DUPFFstruct**, align 8
  %7 = alloca %struct.DUPFFstruct**, align 8
  %8 = alloca %struct.DUPFFstruct*, align 8
  %9 = alloca %struct.DUPFFstruct*, align 8
  %10 = alloca %struct.DUPFFstruct*, align 8
  %11 = alloca %struct.DUPFFstruct*, align 8
  %12 = alloca %struct.DUPFFstruct*, align 8
  %13 = alloca %struct.DUPFFstruct*, align 8
  %14 = alloca %struct.DUPFFstruct*, align 8
  %15 = alloca %struct.DUPFFstruct*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.DUPFFstruct** %0, %struct.DUPFFstruct*** %6, align 8
  store %struct.DUPFFstruct** %1, %struct.DUPFFstruct*** %7, align 8
  store %struct.DUPFFstruct* %2, %struct.DUPFFstruct** %8, align 8
  store %struct.DUPFFstruct* %3, %struct.DUPFFstruct** %9, align 8
  %24 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %8, align 8
  %25 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %24)
  %26 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %9, align 8
  %27 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %26)
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 noundef %25, i32 noundef %27)
  %29 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %8, align 8
  %30 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %29)
  %31 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %9, align 8
  %32 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %4
  %35 = load %struct.DUPFFstruct**, %struct.DUPFFstruct*** %7, align 8
  %36 = load %struct.DUPFFstruct**, %struct.DUPFFstruct*** %6, align 8
  %37 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %9, align 8
  %38 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %8, align 8
  %39 = call %struct.DUPFFstruct* @DUPFFexgcd(%struct.DUPFFstruct** noundef %35, %struct.DUPFFstruct** noundef %36, %struct.DUPFFstruct* noundef %37, %struct.DUPFFstruct* noundef %38)
  store %struct.DUPFFstruct* %39, %struct.DUPFFstruct** %5, align 8
  br label %179

40:                                               ; preds = %4
  %41 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %8, align 8
  %42 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %41)
  %43 = icmp ne i32 %42, 2
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %9, align 8
  %46 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %45)
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %40
  call void @abort() #3
  unreachable

49:                                               ; preds = %44
  %50 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %8, align 8
  %51 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %8, align 8
  store %struct.DUPFFstruct* %57, %struct.DUPFFstruct** %5, align 8
  br label %179

58:                                               ; preds = %49
  store i32 2, i32* %19, align 4
  %59 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %8, align 8
  %60 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %59)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %20, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %20, align 4
  br label %64

64:                                               ; preds = %63, %58
  %65 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %9, align 8
  %66 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %65)
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %21, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %21, align 4
  br label %70

70:                                               ; preds = %69, %64
  %71 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %8, align 8
  %72 = call %struct.DUPFFstruct* @DUPFFcopy(%struct.DUPFFstruct* noundef %71)
  store %struct.DUPFFstruct* %72, %struct.DUPFFstruct** %10, align 8
  %73 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %9, align 8
  %74 = call %struct.DUPFFstruct* @DUPFFcopy(%struct.DUPFFstruct* noundef %73)
  store %struct.DUPFFstruct* %74, %struct.DUPFFstruct** %11, align 8
  %75 = load i32, i32* %21, align 4
  %76 = call %struct.DUPFFstruct* @DUPFFnew(i32 noundef %75)
  store %struct.DUPFFstruct* %76, %struct.DUPFFstruct** %12, align 8
  %77 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %12, align 8
  %78 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 1, i32* %80, align 4
  %81 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %12, align 8
  %82 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %81, i32 0, i32 1
  store i32 0, i32* %82, align 4
  %83 = load i32, i32* %20, align 4
  %84 = call %struct.DUPFFstruct* @DUPFFnew(i32 noundef %83)
  store %struct.DUPFFstruct* %84, %struct.DUPFFstruct** %13, align 8
  %85 = load i32, i32* %21, align 4
  %86 = call %struct.DUPFFstruct* @DUPFFnew(i32 noundef %85)
  store %struct.DUPFFstruct* %86, %struct.DUPFFstruct** %14, align 8
  %87 = load i32, i32* %20, align 4
  %88 = call %struct.DUPFFstruct* @DUPFFnew(i32 noundef %87)
  store %struct.DUPFFstruct* %88, %struct.DUPFFstruct** %15, align 8
  %89 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %15, align 8
  %90 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 1, i32* %92, align 4
  %93 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %15, align 8
  %94 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %152, %70
  %96 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %11, align 8
  %97 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %96)
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %159

99:                                               ; preds = %95
  %100 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %11, align 8
  %101 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %100)
  store i32 %101, i32* %23, align 4
  %102 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %11, align 8
  %103 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %23, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @FFmul(i32 noundef 1, i32 noundef %108)
  store i32 %109, i32* %18, align 4
  br label %110

110:                                              ; preds = %115, %99
  %111 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %10, align 8
  %112 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %111)
  %113 = load i32, i32* %23, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %152

115:                                              ; preds = %110
  %116 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %10, align 8
  %117 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %116)
  store i32 %117, i32* %22, align 4
  %118 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %10, align 8
  %119 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %22, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @FFmul(i32 noundef %125, i32 noundef %126)
  store i32 %127, i32* %16, align 4
  %128 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %10, align 8
  %129 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %11, align 8
  %130 = load i32, i32* %22, align 4
  %131 = load i32, i32* %23, align 4
  %132 = sub nsw i32 %130, %131
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %16, align 4
  %135 = sub i32 %133, %134
  call void @DUPFFshift_add(%struct.DUPFFstruct* noundef %128, %struct.DUPFFstruct* noundef %129, i32 noundef %132, i32 noundef %135)
  %136 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %12, align 8
  %137 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %14, align 8
  %138 = load i32, i32* %22, align 4
  %139 = load i32, i32* %23, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* %16, align 4
  %143 = sub i32 %141, %142
  call void @DUPFFshift_add(%struct.DUPFFstruct* noundef %136, %struct.DUPFFstruct* noundef %137, i32 noundef %140, i32 noundef %143)
  %144 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %13, align 8
  %145 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %15, align 8
  %146 = load i32, i32* %22, align 4
  %147 = load i32, i32* %23, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* %16, align 4
  %151 = sub i32 %149, %150
  call void @DUPFFshift_add(%struct.DUPFFstruct* noundef %144, %struct.DUPFFstruct* noundef %145, i32 noundef %148, i32 noundef %151)
  br label %110, !llvm.loop !4

152:                                              ; preds = %110
  %153 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %10, align 8
  %154 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %11, align 8
  call void @DUPFFswap(%struct.DUPFFstruct* noundef %153, %struct.DUPFFstruct* noundef %154)
  %155 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %12, align 8
  %156 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %14, align 8
  call void @DUPFFswap(%struct.DUPFFstruct* noundef %155, %struct.DUPFFstruct* noundef %156)
  %157 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %13, align 8
  %158 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %15, align 8
  call void @DUPFFswap(%struct.DUPFFstruct* noundef %157, %struct.DUPFFstruct* noundef %158)
  br label %95, !llvm.loop !6

159:                                              ; preds = %95
  %160 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %11, align 8
  %161 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %160)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %10, align 8
  %165 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %11, align 8
  call void @DUPFFswap(%struct.DUPFFstruct* noundef %164, %struct.DUPFFstruct* noundef %165)
  %166 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %12, align 8
  %167 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %14, align 8
  call void @DUPFFswap(%struct.DUPFFstruct* noundef %166, %struct.DUPFFstruct* noundef %167)
  %168 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %13, align 8
  %169 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %15, align 8
  call void @DUPFFswap(%struct.DUPFFstruct* noundef %168, %struct.DUPFFstruct* noundef %169)
  br label %170

170:                                              ; preds = %163, %159
  %171 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %14, align 8
  call void @DUPFFfree(%struct.DUPFFstruct* noundef %171)
  %172 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %15, align 8
  call void @DUPFFfree(%struct.DUPFFstruct* noundef %172)
  %173 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %11, align 8
  call void @DUPFFfree(%struct.DUPFFstruct* noundef %173)
  %174 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %12, align 8
  %175 = load %struct.DUPFFstruct**, %struct.DUPFFstruct*** %6, align 8
  store %struct.DUPFFstruct* %174, %struct.DUPFFstruct** %175, align 8
  %176 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %13, align 8
  %177 = load %struct.DUPFFstruct**, %struct.DUPFFstruct*** %7, align 8
  store %struct.DUPFFstruct* %176, %struct.DUPFFstruct** %177, align 8
  %178 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %10, align 8
  store %struct.DUPFFstruct* %178, %struct.DUPFFstruct** %5, align 8
  br label %179

179:                                              ; preds = %170, %56, %34
  %180 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %5, align 8
  ret %struct.DUPFFstruct* %180
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.DUPFFstruct*, align 8
  %3 = alloca %struct.DUPFFstruct*, align 8
  %4 = alloca %struct.DUPFFstruct*, align 8
  %5 = alloca %struct.DUPFFstruct*, align 8
  %6 = alloca %struct.DUPFFstruct*, align 8
  store i32 0, i32* %1, align 4
  %7 = call %struct.DUPFFstruct* @DUPFFnew(i32 noundef 1)
  store %struct.DUPFFstruct* %7, %struct.DUPFFstruct** %2, align 8
  %8 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %2, align 8
  %9 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 1, i32* %11, align 4
  %12 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %2, align 8
  %13 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = call %struct.DUPFFstruct* @DUPFFnew(i32 noundef 2)
  store %struct.DUPFFstruct* %14, %struct.DUPFFstruct** %3, align 8
  %15 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %3, align 8
  %16 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 1, i32* %18, align 4
  %19 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %3, align 8
  %20 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %19, i32 0, i32 1
  store i32 2, i32* %20, align 4
  %21 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %2, align 8
  %22 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %21)
  %23 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %3, align 8
  %24 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %23)
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 noundef %22, i32 noundef %24)
  %26 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %2, align 8
  %27 = load %struct.DUPFFstruct*, %struct.DUPFFstruct** %3, align 8
  %28 = call %struct.DUPFFstruct* @DUPFFexgcd(%struct.DUPFFstruct** noundef %4, %struct.DUPFFstruct** noundef %5, %struct.DUPFFstruct* noundef %26, %struct.DUPFFstruct* noundef %27)
  store %struct.DUPFFstruct* %28, %struct.DUPFFstruct** %6, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
