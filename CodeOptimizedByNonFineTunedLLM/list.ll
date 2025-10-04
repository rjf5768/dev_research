; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/list.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myList = type { %struct.myStruct, %struct.myList* }
%struct.myStruct = type { i32, i32 }

@array = dso_local global [192 x i32] [i32 103, i32 198, i32 105, i32 115, i32 81, i32 255, i32 74, i32 236, i32 41, i32 205, i32 186, i32 171, i32 242, i32 251, i32 227, i32 70, i32 124, i32 194, i32 84, i32 248, i32 27, i32 232, i32 231, i32 141, i32 118, i32 90, i32 46, i32 99, i32 51, i32 159, i32 201, i32 154, i32 102, i32 50, i32 13, i32 183, i32 49, i32 88, i32 163, i32 90, i32 37, i32 93, i32 5, i32 23, i32 88, i32 233, i32 94, i32 212, i32 171, i32 178, i32 205, i32 198, i32 155, i32 180, i32 84, i32 17, i32 14, i32 130, i32 116, i32 65, i32 33, i32 61, i32 220, i32 135, i32 112, i32 233, i32 62, i32 161, i32 65, i32 225, i32 252, i32 103, i32 62, i32 1, i32 126, i32 151, i32 234, i32 220, i32 107, i32 150, i32 143, i32 56, i32 92, i32 42, i32 236, i32 176, i32 59, i32 251, i32 50, i32 175, i32 60, i32 84, i32 236, i32 24, i32 219, i32 92, i32 2, i32 26, i32 254, i32 67, i32 251, i32 250, i32 170, i32 58, i32 251, i32 41, i32 209, i32 230, i32 5, i32 60, i32 124, i32 148, i32 117, i32 216, i32 190, i32 97, i32 137, i32 249, i32 92, i32 187, i32 168, i32 153, i32 15, i32 149, i32 177, i32 235, i32 241, i32 179, i32 5, i32 239, i32 247, i32 0, i32 233, i32 161, i32 58, i32 229, i32 202, i32 11, i32 203, i32 208, i32 72, i32 71, i32 100, i32 189, i32 31, i32 35, i32 30, i32 168, i32 28, i32 123, i32 100, i32 197, i32 20, i32 115, i32 90, i32 197, i32 94, i32 75, i32 121, i32 99, i32 59, i32 112, i32 100, i32 36, i32 17, i32 158, i32 9, i32 220, i32 170, i32 212, i32 172, i32 242, i32 27, i32 16, i32 175, i32 59, i32 51, i32 205, i32 227, i32 80, i32 72, i32 71, i32 21, i32 92, i32 187, i32 111, i32 34, i32 25, i32 186, i32 155, i32 125, i32 245], align 16
@.str = private unnamed_addr constant [35 x i8] c"error: i = %d, x = %d, array = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"error: i = %d, y = %hhd, expected = %hhd\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.myList*, align 8
  %4 = alloca %struct.myList*, align 8
  %5 = alloca %struct.myList*, align 8
  store i32 0, i32* %1, align 4
  store i32 192, i32* %2, align 4
  store %struct.myList* null, %struct.myList** %3, align 8
  %6 = load i32, i32* %1, align 4
  br label %7

7:                                                ; preds = %33, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  %12 = call noalias i8* @malloc(i64 noundef 16) #3
  %13 = bitcast i8* %12 to %struct.myList*
  store %struct.myList* %13, %struct.myList** %4, align 8
  %14 = load %struct.myList*, %struct.myList** %3, align 8
  %15 = load %struct.myList*, %struct.myList** %4, align 8
  %16 = getelementptr inbounds %struct.myList, %struct.myList* %15, i32 0, i32 1
  store %struct.myList* %14, %struct.myList** %16, align 8
  %17 = load %struct.myList*, %struct.myList** %4, align 8
  store %struct.myList* %17, %struct.myList** %3, align 8
  %18 = load i32, i32* %1, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [192 x i32], [192 x i32]* @array, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.myList*, %struct.myList** %4, align 8
  %23 = getelementptr inbounds %struct.myList, %struct.myList* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* %1, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [192 x i32], [192 x i32]* @array, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.myList*, %struct.myList** %4, align 8
  %31 = getelementptr inbounds %struct.myList, %struct.myList* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %11
  %34 = load i32, i32* %1, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %7, !llvm.loop !4

36:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %95, %36
  %38 = load %struct.myList*, %struct.myList** %3, align 8
  %39 = icmp ne %struct.myList* %38, null
  br i1 %39, label %40, label %102

40:                                               ; preds = %37
  %41 = load i32, i32* %1, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %1, align 4
  %43 = load %struct.myList*, %struct.myList** %3, align 8
  %44 = getelementptr inbounds %struct.myList, %struct.myList* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sub i32 192, %47
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [192 x i32], [192 x i32]* @array, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %46, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %40
  %54 = load i32, i32* %1, align 4
  %55 = load %struct.myList*, %struct.myList** %3, align 8
  %56 = getelementptr inbounds %struct.myList, %struct.myList* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sub i32 192, %59
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [192 x i32], [192 x i32]* @array, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef %54, i32 noundef %58, i32 noundef %63)
  br label %65

65:                                               ; preds = %53, %40
  %66 = load %struct.myList*, %struct.myList** %3, align 8
  %67 = getelementptr inbounds %struct.myList, %struct.myList* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %1, align 4
  %71 = sub i32 192, %70
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [192 x i32], [192 x i32]* @array, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = and i32 %75, 127
  %77 = xor i32 %69, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %65
  %80 = load i32, i32* %1, align 4
  %81 = load %struct.myList*, %struct.myList** %3, align 8
  %82 = getelementptr inbounds %struct.myList, %struct.myList* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = trunc i32 %84 to i8
  %86 = zext i8 %85 to i32
  %87 = load i32, i32* %1, align 4
  %88 = sub i32 192, %87
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [192 x i32], [192 x i32]* @array, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, 1
  %93 = and i32 %92, 127
  %94 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 noundef %80, i32 noundef %86, i32 noundef %93)
  br label %95

95:                                               ; preds = %79, %65
  %96 = load %struct.myList*, %struct.myList** %3, align 8
  store %struct.myList* %96, %struct.myList** %5, align 8
  %97 = load %struct.myList*, %struct.myList** %3, align 8
  %98 = getelementptr inbounds %struct.myList, %struct.myList* %97, i32 0, i32 1
  %99 = load %struct.myList*, %struct.myList** %98, align 8
  store %struct.myList* %99, %struct.myList** %3, align 8
  %100 = load %struct.myList*, %struct.myList** %5, align 8
  %101 = bitcast %struct.myList* %100 to i8*
  call void @free(i8* noundef %101) #3
  br label %37, !llvm.loop !6

102:                                              ; preds = %37
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @test()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
