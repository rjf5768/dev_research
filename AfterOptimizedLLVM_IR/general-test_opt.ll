; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/general-test.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/general-test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MyStruct = type { %struct.MyStruct*, i8, i16, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"sizeof(MyStruct) == %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"sizeof(My17BitInt) == %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"sizeof(j) == %d\0A\00", align 1
@Data1 = dso_local global %struct.MyStruct zeroinitializer, align 8
@Data2 = dso_local global %struct.MyStruct zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"j = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"size sum is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"rand = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"argc = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"num  = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"val  = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"that.i4Field  = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"that.i12Field = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"that.i17Field = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"that.i37Field = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"next.i4Field  = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"next.i12Field = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"next.i17Field = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"next.i37Field = %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.MyStruct* @getSizes(i16 noundef signext %0, i64* noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i64* %1, i64** %4, align 8
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 noundef 24)
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 noundef 4)
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 noundef 2)
  %10 = load i64*, i64** %4, align 8
  store i64 30, i64* %10, align 8
  %11 = load i16, i16* %3, align 2
  %12 = trunc i16 %11 to i8
  store i8 %12, i8* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data1, i32 0, i32 1), align 8
  %13 = load i16, i16* %3, align 2
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %14, 1
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data1, i32 0, i32 2), align 2
  %17 = load i16, i16* %3, align 2
  %18 = sext i16 %17 to i32
  %19 = add nsw i32 %18, 2
  store i32 %19, i32* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data1, i32 0, i32 3), align 4
  %20 = load i16, i16* %3, align 2
  %21 = sext i16 %20 to i32
  %22 = add nsw i32 %21, 3
  %23 = sext i32 %22 to i64
  store i64 %23, i64* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data1, i32 0, i32 4), align 8
  store %struct.MyStruct* null, %struct.MyStruct** getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data1, i32 0, i32 0), align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.MyStruct* @Data2 to i8*), i8* align 8 bitcast (%struct.MyStruct* @Data1 to i8*), i64 24, i1 false)
  %24 = load i8, i8* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i32 0, i32 1), align 8
  %25 = zext i8 %24 to i32
  %26 = mul nsw i32 %25, 7
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i32 0, i32 1), align 8
  %28 = load i16, i16* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i32 0, i32 2), align 2
  %29 = zext i16 %28 to i32
  %30 = mul nsw i32 %29, 7
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i32 0, i32 2), align 2
  %32 = load i32, i32* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i32 0, i32 3), align 4
  %33 = mul i32 %32, 7
  store i32 %33, i32* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i32 0, i32 3), align 4
  %34 = load i64, i64* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i32 0, i32 4), align 8
  %35 = mul i64 %34, 7
  store i64 %35, i64* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i32 0, i32 4), align 8
  store %struct.MyStruct* @Data1, %struct.MyStruct** getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i32 0, i32 0), align 8
  %36 = load i16, i16* %3, align 2
  %37 = sext i16 %36 to i32
  %38 = mul nsw i32 %37, 2
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %6, align 2
  %40 = load i16, i16* %6, align 2
  %41 = sext i16 %40 to i32
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %41)
  %43 = load i64*, i64** %4, align 8
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef %45)
  ret %struct.MyStruct* @Data2
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.MyStruct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.MyStruct*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @srand(i32 noundef 0) #5
  %12 = call noalias i8* @malloc(i64 noundef 24) #5
  %13 = bitcast i8* %12 to %struct.MyStruct*
  store %struct.MyStruct* %13, %struct.MyStruct** %6, align 8
  %14 = call i32 @rand() #5
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 noundef %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 noundef %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @atoi(i8* noundef %24) #6
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %21, %2
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 noundef %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 noundef %34)
  %36 = load i32, i32* %9, align 4
  %37 = trunc i32 %36 to i16
  %38 = call %struct.MyStruct* @getSizes(i16 noundef signext %37, i64* noundef %10)
  store %struct.MyStruct* %38, %struct.MyStruct** %11, align 8
  %39 = load %struct.MyStruct*, %struct.MyStruct** %11, align 8
  %40 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 8
  %42 = zext i8 %41 to i32
  %43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 noundef %42)
  %44 = load %struct.MyStruct*, %struct.MyStruct** %11, align 8
  %45 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %44, i32 0, i32 2
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 noundef %47)
  %49 = load %struct.MyStruct*, %struct.MyStruct** %11, align 8
  %50 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %51)
  %53 = load %struct.MyStruct*, %struct.MyStruct** %11, align 8
  %54 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 noundef %56)
  %58 = load %struct.MyStruct*, %struct.MyStruct** %11, align 8
  %59 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %58, i32 0, i32 0
  %60 = load %struct.MyStruct*, %struct.MyStruct** %59, align 8
  %61 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %60, i32 0, i32 1
  %62 = load i8, i8* %61, align 8
  %63 = zext i8 %62 to i32
  %64 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef %63)
  %65 = load %struct.MyStruct*, %struct.MyStruct** %11, align 8
  %66 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %65, i32 0, i32 0
  %67 = load %struct.MyStruct*, %struct.MyStruct** %66, align 8
  %68 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %67, i32 0, i32 2
  %69 = load i16, i16* %68, align 2
  %70 = zext i16 %69 to i32
  %71 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef %70)
  %72 = load %struct.MyStruct*, %struct.MyStruct** %11, align 8
  %73 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %72, i32 0, i32 0
  %74 = load %struct.MyStruct*, %struct.MyStruct** %73, align 8
  %75 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 noundef %76)
  %78 = load %struct.MyStruct*, %struct.MyStruct** %11, align 8
  %79 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %78, i32 0, i32 0
  %80 = load %struct.MyStruct*, %struct.MyStruct** %79, align 8
  %81 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 noundef %83)
  %85 = load i64, i64* %10, align 8
  %86 = trunc i64 %85 to i32
  %87 = and i32 %86, 1
  ret i32 %87
}

; Function Attrs: nounwind
declare dso_local void @srand(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
