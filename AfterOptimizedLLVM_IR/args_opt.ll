; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/voronoi/args.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/voronoi/args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag = external dso_local global i32, align 4
@NumNodes = external dso_local global i32, align 4
@NDim = external dso_local global i32, align 4
@.str = private unnamed_addr constant [44 x i8] c"Voronoi with %d size on %d procs of dim %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mylog(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %5

5:                                                ; preds = %9, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %5, !llvm.loop !4

14:                                               ; preds = %5
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dealwithargs(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 3
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 3
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @atoi(i8* noundef %11) #3
  store i32 %12, i32* @flag, align 4
  br label %14

13:                                               ; preds = %2
  store i32 1, i32* @flag, align 4
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @atoi(i8* noundef %20) #3
  store i32 %21, i32* @NumNodes, align 4
  br label %23

22:                                               ; preds = %14
  store i32 1, i32* @NumNodes, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @atoi(i8* noundef %29) #3
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %23
  store i32 32, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* @NumNodes, align 4
  %34 = call i32 @mylog(i32 noundef %33)
  store i32 %34, i32* @NDim, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @NumNodes, align 4
  %37 = load i32, i32* @NDim, align 4
  %38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 noundef %35, i32 noundef %36, i32 noundef %37)
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
