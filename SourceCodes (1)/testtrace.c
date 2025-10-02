; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/testtrace.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/testtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DummyStruct = type { %struct.DummyStruct*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"&S1 = %p\09&S2 = %p\09&S3 = %p\0A\00", align 1
@testAllocaOrder.count = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sum = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AddCounts(%struct.DummyStruct* noundef %0, %struct.DummyStruct* noundef %1, %struct.DummyStruct* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.DummyStruct*, align 8
  %6 = alloca %struct.DummyStruct*, align 8
  %7 = alloca %struct.DummyStruct*, align 8
  %8 = alloca i32, align 4
  store %struct.DummyStruct* %0, %struct.DummyStruct** %5, align 8
  store %struct.DummyStruct* %1, %struct.DummyStruct** %6, align 8
  store %struct.DummyStruct* %2, %struct.DummyStruct** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = load %struct.DummyStruct*, %struct.DummyStruct** %5, align 8
  %13 = load %struct.DummyStruct*, %struct.DummyStruct** %6, align 8
  %14 = load %struct.DummyStruct*, %struct.DummyStruct** %7, align 8
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.DummyStruct* noundef %12, %struct.DummyStruct* noundef %13, %struct.DummyStruct* noundef %14)
  br label %16

16:                                               ; preds = %11, %4
  %17 = load %struct.DummyStruct*, %struct.DummyStruct** %5, align 8
  %18 = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.DummyStruct*, %struct.DummyStruct** %6, align 8
  %21 = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %19, %22
  %24 = load %struct.DummyStruct*, %struct.DummyStruct** %7, align 8
  %25 = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %23, %26
  ret i32 %27
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testAllocaOrder(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.DummyStruct, align 8
  %4 = alloca %struct.DummyStruct, align 8
  %5 = alloca %struct.DummyStruct, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @testAllocaOrder.count, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @testAllocaOrder.count, align 4
  %8 = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %3, i32 0, i32 1
  store i32 %7, i32* %8, align 8
  %9 = load i32, i32* @testAllocaOrder.count, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @testAllocaOrder.count, align 4
  %11 = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %4, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* @testAllocaOrder.count, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @testAllocaOrder.count, align 4
  %14 = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %5, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @AddCounts(%struct.DummyStruct* noundef %3, %struct.DummyStruct* noundef %4, %struct.DummyStruct* noundef %5, i32 noundef %15)
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef %16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strcmp(i8* noundef %13, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %10, %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %23, %17
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %19, 10
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  call void @testAllocaOrder(i32 noundef %22)
  br label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %6, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %18, !llvm.loop !4

26:                                               ; preds = %18
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
