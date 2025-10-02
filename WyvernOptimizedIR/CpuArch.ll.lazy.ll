; ModuleID = './CpuArch.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/CpuArch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Cx86cpuid = type { i32, [3 x i32], i32, i32, i32, i32 }

@kVendors = internal global [3 x [3 x i32]] [[3 x i32] [i32 1970169159, i32 1231384169, i32 1818588270], [3 x i32] [i32 1752462657, i32 1769238117, i32 1145913699], [3 x i32] [i32 1953391939, i32 1215460705, i32 1936487777]], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @x86cpuid_CheckAndRead(%struct.Cx86cpuid* nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %0, i64 0, i32 0
  %3 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %0, i64 0, i32 1, i64 0
  %4 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %0, i64 0, i32 1, i64 2
  %5 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %0, i64 0, i32 1, i64 1
  call void @MyCPUID(i32 noundef 0, i32* noundef %2, i32* noundef nonnull %3, i32* noundef nonnull %4, i32* noundef nonnull %5)
  %6 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %0, i64 0, i32 4
  %9 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %0, i64 0, i32 5
  call void @MyCPUID(i32 noundef 1, i32* noundef nonnull %6, i32* noundef nonnull %7, i32* noundef nonnull %8, i32* noundef nonnull %9)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @MyCPUID(i32 noundef %0, i32* nocapture noundef writeonly %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3, i32* nocapture noundef writeonly %4) #0 {
  %6 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #2, !srcloc !4
  %7 = extractvalue { i32, i32, i32, i32 } %6, 0
  %8 = extractvalue { i32, i32, i32, i32 } %6, 1
  %9 = extractvalue { i32, i32, i32, i32 } %6, 2
  %10 = extractvalue { i32, i32, i32, i32 } %6, 3
  store i32 %7, i32* %1, align 4
  store i32 %8, i32* %2, align 4
  store i32 %9, i32* %3, align 4
  store i32 %10, i32* %4, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @x86cpuid_GetFirm(%struct.Cx86cpuid* nocapture noundef readonly %0) #1 {
  br label %2

2:                                                ; preds = %25, %1
  %.01 = phi i32 [ 0, %1 ], [ %26, %25 ]
  %3 = icmp ult i32 %.01, 3
  br i1 %3, label %4, label %27

4:                                                ; preds = %2
  %5 = zext i32 %.01 to i64
  %6 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @kVendors, i64 0, i64 %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %0, i64 0, i32 1, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %4
  %12 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @kVendors, i64 0, i64 %5, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %0, i64 0, i32 1, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @kVendors, i64 0, i64 %5, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %0, i64 0, i32 1, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %28

24:                                               ; preds = %17, %11, %4
  br label %25

25:                                               ; preds = %24
  %26 = add i32 %.01, 1
  br label %2, !llvm.loop !5

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %23
  %.0 = phi i32 [ %.01, %23 ], [ -1, %27 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CPU_Is_InOrder() #0 {
  %1 = alloca %struct.Cx86cpuid, align 4
  %2 = call i32 @x86cpuid_CheckAndRead(%struct.Cx86cpuid* noundef nonnull %1)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %4

3:                                                ; preds = %0
  br label %47

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %1, i64 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = lshr i32 %6, 8
  %8 = and i32 %7, 1044495
  %9 = lshr i32 %6, 4
  %10 = and i32 %9, 61455
  %11 = call i32 @x86cpuid_GetFirm(%struct.Cx86cpuid* noundef nonnull %1)
  switch i32 %11, label %46 [
    i32 0, label %12
    i32 1, label %22
    i32 2, label %36
  ]

12:                                               ; preds = %4
  %13 = icmp ult i32 %8, 6
  br i1 %13, label %20, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %8, 6
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = icmp eq i32 %10, 4108
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i1 [ false, %14 ], [ %17, %16 ]
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi i1 [ true, %12 ], [ %19, %18 ]
  br label %47

22:                                               ; preds = %4
  %23 = icmp ult i32 %8, 5
  br i1 %23, label %34, label %24

24:                                               ; preds = %22
  %25 = icmp eq i32 %8, 5
  br i1 %25, label %26, label %32

26:                                               ; preds = %24
  %27 = icmp ult i32 %10, 6
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = icmp eq i32 %10, 10
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i1 [ true, %26 ], [ %29, %28 ]
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi i1 [ false, %24 ], [ %31, %30 ]
  br label %34

34:                                               ; preds = %32, %22
  %35 = phi i1 [ true, %22 ], [ %33, %32 ]
  br label %47

36:                                               ; preds = %4
  %37 = icmp ult i32 %8, 6
  br i1 %37, label %44, label %38

38:                                               ; preds = %36
  %39 = icmp eq i32 %8, 6
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = icmp ult i32 %10, 15
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i1 [ false, %38 ], [ %41, %40 ]
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi i1 [ true, %36 ], [ %43, %42 ]
  br label %47

46:                                               ; preds = %4
  br label %47

47:                                               ; preds = %46, %44, %34, %20, %3
  %.0.shrunk = phi i1 [ true, %46 ], [ %45, %44 ], [ %35, %34 ], [ %21, %20 ], [ true, %3 ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CPU_Is_Aes_Supported() #0 {
  %1 = alloca %struct.Cx86cpuid, align 4
  %2 = call i32 @x86cpuid_CheckAndRead(%struct.Cx86cpuid* noundef nonnull %1)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %4

3:                                                ; preds = %0
  br label %9

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.Cx86cpuid, %struct.Cx86cpuid* %1, i64 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = lshr i32 %6, 25
  %8 = and i32 %7, 1
  br label %9

9:                                                ; preds = %4, %3
  %.0 = phi i32 [ %8, %4 ], [ 0, %3 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 1462}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
