; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/field.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myStruct = type { i32, [3 x i8], i8 }
%struct.myStruct2 = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"error:  offset1=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"error: x.c = %x, y.c = %x\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.myStruct, align 4
  %3 = alloca %struct.myStruct2, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %10 = getelementptr inbounds %struct.myStruct2, %struct.myStruct2* %3, i32 0, i32 0
  %11 = bitcast i32* %10 to i8*
  store i8* %11, i8** %6, align 8
  %12 = getelementptr inbounds %struct.myStruct2, %struct.myStruct2* %3, i32 0, i32 3
  %13 = bitcast i32* %12 to i8*
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ne i64 %21, 9
  br i1 %22, label %23, label %26

23:                                               ; preds = %0
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %24)
  br label %26

26:                                               ; preds = %23, %0
  %27 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %2, i32 0, i32 1
  %28 = bitcast [3 x i8]* %27 to i24*
  %29 = load i24, i24* %28, align 4
  %30 = and i24 %29, -128
  %31 = or i24 %30, 127
  store i24 %31, i24* %28, align 4
  %32 = getelementptr inbounds %struct.myStruct2, %struct.myStruct2* %3, i32 0, i32 2
  store i32 -1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %2, i32 0, i32 1
  %34 = bitcast [3 x i8]* %33 to i24*
  %35 = load i24, i24* %34, align 4
  %36 = shl i24 %35, 17
  %37 = ashr i24 %36, 17
  %38 = trunc i24 %37 to i8
  %39 = sext i8 %38 to i32
  %40 = getelementptr inbounds %struct.myStruct2, %struct.myStruct2* %3, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %2, i32 0, i32 1
  %45 = bitcast [3 x i8]* %44 to i24*
  %46 = load i24, i24* %45, align 4
  %47 = shl i24 %46, 17
  %48 = ashr i24 %47, 17
  %49 = trunc i24 %48 to i8
  %50 = sext i8 %49 to i32
  %51 = getelementptr inbounds %struct.myStruct2, %struct.myStruct2* %3, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef %50, i32 noundef %52)
  br label %54

54:                                               ; preds = %43, %26
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
