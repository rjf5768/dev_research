; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/union2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/union2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.myUnion = type { i32 }
%struct.myStruct = type { i32*, i16 }

@uu = internal global %union.myUnion zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"uu.i  = %hd\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"uu.i9 = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"uu.i31= %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"error: s.i=%x\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local { i32*, i16 } @test(%union.myUnion* noundef %0) #0 {
  %2 = alloca %struct.myStruct, align 8
  %3 = alloca %union.myUnion*, align 8
  %4 = alloca i32*, align 8
  store %union.myUnion* %0, %union.myUnion** %3, align 8
  %5 = load %union.myUnion*, %union.myUnion** %3, align 8
  %6 = bitcast %union.myUnion* %5 to i32*
  store i32 -1, i32* %6, align 4
  %7 = load %union.myUnion*, %union.myUnion** %3, align 8
  %8 = bitcast %union.myUnion* %7 to i16*
  store i16 0, i16* %8, align 4
  %9 = load %union.myUnion*, %union.myUnion** %3, align 8
  %10 = bitcast %union.myUnion* %9 to i32*
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  store i32 -1, i32* %11, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %2, i32 0, i32 0
  store i32* %12, i32** %13, align 8
  %14 = load %union.myUnion*, %union.myUnion** %3, align 8
  %15 = bitcast %union.myUnion* %14 to i16*
  %16 = load i16, i16* %15, align 4
  %17 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %2, i32 0, i32 1
  store i16 %16, i16* %17, align 8
  %18 = bitcast %struct.myStruct* %2 to { i32*, i16 }*
  %19 = load { i32*, i16 }, { i32*, i16 }* %18, align 8
  ret { i32*, i16 } %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.myStruct, align 8
  store i32 0, i32* %1, align 4
  %3 = call { i32*, i16 } @test(%union.myUnion* noundef @uu)
  %4 = bitcast %struct.myStruct* %2 to { i32*, i16 }*
  %5 = getelementptr inbounds { i32*, i16 }, { i32*, i16 }* %4, i32 0, i32 0
  %6 = extractvalue { i32*, i16 } %3, 0
  store i32* %6, i32** %5, align 8
  %7 = getelementptr inbounds { i32*, i16 }, { i32*, i16 }* %4, i32 0, i32 1
  %8 = extractvalue { i32*, i16 } %3, 1
  store i16 %8, i16* %7, align 8
  %9 = load i16, i16* bitcast (%union.myUnion* @uu to i16*), align 4
  %10 = sext i16 %9 to i32
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef %10)
  %12 = load i32, i32* getelementptr inbounds (%union.myUnion, %union.myUnion* @uu, i32 0, i32 0), align 4
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef %12)
  %14 = load i32, i32* getelementptr inbounds (%union.myUnion, %union.myUnion* @uu, i32 0, i32 0), align 4
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef %14)
  %16 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %2, i32 0, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = sext i16 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %0
  %21 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %2, i32 0, i32 1
  %22 = load i16, i16* %21, align 8
  %23 = sext i16 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef %23)
  br label %25

25:                                               ; preds = %20, %0
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
