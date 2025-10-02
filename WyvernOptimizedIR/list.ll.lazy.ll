; ModuleID = './list.ll'
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
  br label %1

1:                                                ; preds = %16, %0
  %.01 = phi %struct.myList* [ null, %0 ], [ %5, %16 ]
  %.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %2 = icmp ult i32 %.0, 192
  br i1 %2, label %3, label %18

3:                                                ; preds = %1
  %4 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %5 = bitcast i8* %4 to %struct.myList*
  %6 = getelementptr inbounds %struct.myList, %struct.myList* %5, i64 0, i32 1
  store %struct.myList* %.01, %struct.myList** %6, align 8
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [192 x i32], [192 x i32]* @array, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.myList, %struct.myList* %5, i64 0, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [192 x i32], [192 x i32]* @array, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -1
  %15 = getelementptr inbounds %struct.myList, %struct.myList* %5, i64 0, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  br label %16

16:                                               ; preds = %3
  %17 = add i32 %.0, 1
  br label %1, !llvm.loop !4

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %56, %18
  %.12 = phi %struct.myList* [ %.01, %18 ], [ %58, %56 ]
  %.1 = phi i32 [ 0, %18 ], [ %21, %56 ]
  %.not = icmp eq %struct.myList* %.12, null
  br i1 %.not, label %60, label %20

20:                                               ; preds = %19
  %21 = add i32 %.1, 1
  %22 = getelementptr inbounds %struct.myList, %struct.myList* %.12, i64 0, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub i32 191, %.1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [192 x i32], [192 x i32]* @array, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %.not3 = icmp eq i32 %23, %27
  br i1 %.not3, label %36, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.myList, %struct.myList* %.12, i64 0, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub i32 191, %.1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [192 x i32], [192 x i32]* @array, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef %21, i32 noundef %30, i32 noundef %34) #3
  br label %36

36:                                               ; preds = %28, %20
  %37 = getelementptr inbounds %struct.myList, %struct.myList* %.12, i64 0, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub i32 191, %.1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [192 x i32], [192 x i32]* @array, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add i32 %42, 127
  %44 = and i32 %43, 127
  %.not4 = icmp eq i32 %38, %44
  br i1 %.not4, label %56, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.myList, %struct.myList* %.12, i64 0, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 255
  %49 = sub i32 191, %.1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [192 x i32], [192 x i32]* @array, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %52, 127
  %54 = and i32 %53, 127
  %55 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 noundef %21, i32 noundef %48, i32 noundef %54) #3
  br label %56

56:                                               ; preds = %45, %36
  %57 = getelementptr inbounds %struct.myList, %struct.myList* %.12, i64 0, i32 1
  %58 = load %struct.myList*, %struct.myList** %57, align 8
  %59 = bitcast %struct.myList* %.12 to i8*
  call void @free(i8* noundef %59) #3
  br label %19, !llvm.loop !6

60:                                               ; preds = %19
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
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
