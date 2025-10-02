; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/CpuArch.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/CpuArch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Cx86cpuid = type { i32, [3 x i32], i32, i32, i32, i32 }

@kVendors = internal global [3 x [3 x i32]] [[3 x i32] [i32 1970169159, i32 1231384169, i32 1818588270], [3 x i32] [i32 1752462657, i32 1769238117, i32 1145913699], [3 x i32] [i32 1953391939, i32 1215460705, i32 1936487777]], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @x86cpuid_CheckAndRead(%struct.Cx86cpuid* noundef %0) #0 {
  %2 = alloca %struct.Cx86cpuid*, align 8
  store %struct.Cx86cpuid* %0, %struct.Cx86cpuid** %2, align 8
  %3 = load %struct.Cx86cpuid*, %struct.Cx86cpuid** %2, align 8
  %4 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %3, i32 0, i32 0
  %5 = load %struct.Cx86cpuid*, %struct.Cx86cpuid** %2, align 8
  %6 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %5, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %8 = load %struct.Cx86cpuid*, %struct.Cx86cpuid** %2, align 8
  %9 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %8, i32 0, i32 1
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %11 = load %struct.Cx86cpuid*, %struct.Cx86cpuid** %2, align 8
  %12 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %11, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  call void @MyCPUID(i32 noundef 0, i32* noundef %4, i32* noundef %7, i32* noundef %10, i32* noundef %13)
  %14 = load %struct.Cx86cpuid*, %struct.Cx86cpuid** %2, align 8
  %15 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %14, i32 0, i32 2
  %16 = load %struct.Cx86cpuid*, %struct.Cx86cpuid** %2, align 8
  %17 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %16, i32 0, i32 3
  %18 = load %struct.Cx86cpuid*, %struct.Cx86cpuid** %2, align 8
  %19 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %18, i32 0, i32 4
  %20 = load %struct.Cx86cpuid*, %struct.Cx86cpuid** %2, align 8
  %21 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %20, i32 0, i32 5
  call void @MyCPUID(i32 noundef 1, i32* noundef %15, i32* noundef %17, i32* noundef %19, i32* noundef %21)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @MyCPUID(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32* noundef %3, i32* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %15) #1, !srcloc !4
  %17 = extractvalue { i32, i32, i32, i32 } %16, 0
  %18 = extractvalue { i32, i32, i32, i32 } %16, 1
  %19 = extractvalue { i32, i32, i32, i32 } %16, 2
  %20 = extractvalue { i32, i32, i32, i32 } %16, 3
  store i32 %17, i32* %11, align 4
  store i32 %18, i32* %12, align 4
  store i32 %19, i32* %13, align 4
  store i32 %20, i32* %14, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @x86cpuid_GetFirm(%struct.Cx86cpuid* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Cx86cpuid*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.Cx86cpuid* %0, %struct.Cx86cpuid** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %44, %1
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  %9 = icmp ult i64 %8, 3
  br i1 %9, label %10, label %47

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @kVendors, i64 0, i64 %12
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.Cx86cpuid*, %struct.Cx86cpuid** %3, align 8
  %19 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %18, i32 0, i32 1
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %10
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.Cx86cpuid*, %struct.Cx86cpuid** %3, align 8
  %28 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %27, i32 0, i32 1
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %26, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %23
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.Cx86cpuid*, %struct.Cx86cpuid** %3, align 8
  %37 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %36, i32 0, i32 1
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %37, i64 0, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %48

43:                                               ; preds = %32, %23, %10
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %6, !llvm.loop !5

47:                                               ; preds = %6
  store i32 -1, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CPU_Is_InOrder() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Cx86cpuid, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @x86cpuid_CheckAndRead(%struct.Cx86cpuid* noundef %2)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %68

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %2, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = lshr i32 %11, 8
  %13 = and i32 %12, 1044495
  store i32 %13, i32* %4, align 4
  %14 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %2, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = lshr i32 %15, 4
  %17 = and i32 %16, 61455
  store i32 %17, i32* %5, align 4
  %18 = call i32 @x86cpuid_GetFirm(%struct.Cx86cpuid* noundef %2)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  switch i32 %19, label %67 [
    i32 0, label %20
    i32 1, label %34
    i32 2, label %53
  ]

20:                                               ; preds = %9
  %21 = load i32, i32* %4, align 4
  %22 = icmp ult i32 %21, 6
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 6
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 4108
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br label %31

31:                                               ; preds = %29, %20
  %32 = phi i1 [ true, %20 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %1, align 4
  br label %68

34:                                               ; preds = %9
  %35 = load i32, i32* %4, align 4
  %36 = icmp ult i32 %35, 5
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = icmp ult i32 %41, 6
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 10
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i1 [ true, %40 ], [ %45, %43 ]
  br label %48

48:                                               ; preds = %46, %37
  %49 = phi i1 [ false, %37 ], [ %47, %46 ]
  br label %50

50:                                               ; preds = %48, %34
  %51 = phi i1 [ true, %34 ], [ %49, %48 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %1, align 4
  br label %68

53:                                               ; preds = %9
  %54 = load i32, i32* %4, align 4
  %55 = icmp ult i32 %54, 6
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 6
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = icmp ult i32 %60, 15
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i1 [ false, %56 ], [ %61, %59 ]
  br label %64

64:                                               ; preds = %62, %53
  %65 = phi i1 [ true, %53 ], [ %63, %62 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %1, align 4
  br label %68

67:                                               ; preds = %9
  store i32 1, i32* %1, align 4
  br label %68

68:                                               ; preds = %67, %64, %50, %31, %8
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CPU_Is_Aes_Supported() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Cx86cpuid, align 4
  %3 = call i32 @x86cpuid_CheckAndRead(%struct.Cx86cpuid* noundef %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %11

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %2, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = lshr i32 %8, 25
  %10 = and i32 %9, 1
  store i32 %10, i32* %1, align 4
  br label %11

11:                                               ; preds = %6, %5
  %12 = load i32, i32* %1, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 1462}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
