; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/memory.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myStruct = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @mem_test(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 4, %8
  %10 = call noalias i8* @malloc(i64 noundef %9) #3
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %5, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %22, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %12, !llvm.loop !4

25:                                               ; preds = %12
  %26 = load i32*, i32** %5, align 8
  %27 = bitcast i32* %26 to i8*
  call void @free(i8* noundef %27) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @mem_test2() #0 {
  %1 = alloca %struct.myStruct*, align 8
  %2 = call noalias i8* @malloc(i64 noundef 8) #3
  %3 = bitcast i8* %2 to %struct.myStruct*
  store %struct.myStruct* %3, %struct.myStruct** %1, align 8
  %4 = load %struct.myStruct*, %struct.myStruct** %1, align 8
  %5 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %4, i32 0, i32 1
  store i32 0, i32* %5, align 4
  %6 = load %struct.myStruct*, %struct.myStruct** %1, align 8
  %7 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load %struct.myStruct*, %struct.myStruct** %1, align 8
  %14 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.myStruct*, %struct.myStruct** %1, align 8
  %18 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.myStruct*, %struct.myStruct** %1, align 8
  %20 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 2
  store i32 %22, i32* %20, align 4
  %23 = load %struct.myStruct*, %struct.myStruct** %1, align 8
  %24 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.myStruct*, %struct.myStruct** %1, align 8
  %27 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %12
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %12
  %34 = load %struct.myStruct*, %struct.myStruct** %1, align 8
  %35 = bitcast %struct.myStruct* %34 to i8*
  call void @free(i8* noundef %35) #3
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @mem_test(i32 noundef 255)
  call void @mem_test2()
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
