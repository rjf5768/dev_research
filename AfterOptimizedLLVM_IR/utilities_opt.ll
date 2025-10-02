; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/utilities.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/utilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snode = type { %struct.rnode*, i32, %struct.snode* }
%struct.rnode = type { i16, %union.anon, i16, %struct.pnode*, %struct.pnode* }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.rnode*, %struct.rnode* }
%struct.pnode = type { i32, %struct.pnode* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.snode* @Push(%struct.snode** noundef %0, %struct.rnode* noundef %1) #0 {
  %3 = alloca %struct.snode*, align 8
  %4 = alloca %struct.snode**, align 8
  %5 = alloca %struct.rnode*, align 8
  %6 = alloca %struct.snode*, align 8
  store %struct.snode** %0, %struct.snode*** %4, align 8
  store %struct.rnode* %1, %struct.rnode** %5, align 8
  %7 = call noalias i8* @malloc(i64 noundef 24) #2
  %8 = bitcast i8* %7 to %struct.snode*
  store %struct.snode* %8, %struct.snode** %6, align 8
  %9 = load %struct.snode**, %struct.snode*** %4, align 8
  %10 = icmp eq %struct.snode** %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.snode*, %struct.snode** %6, align 8
  %13 = icmp eq %struct.snode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store %struct.snode* null, %struct.snode** %3, align 8
  br label %42

15:                                               ; preds = %11
  %16 = load %struct.snode**, %struct.snode*** %4, align 8
  %17 = load %struct.snode*, %struct.snode** %16, align 8
  %18 = load %struct.snode*, %struct.snode** %6, align 8
  %19 = getelementptr inbounds %struct.snode, %struct.snode* %18, i32 0, i32 2
  store %struct.snode* %17, %struct.snode** %19, align 8
  %20 = load %struct.rnode*, %struct.rnode** %5, align 8
  %21 = load %struct.snode*, %struct.snode** %6, align 8
  %22 = getelementptr inbounds %struct.snode, %struct.snode* %21, i32 0, i32 0
  store %struct.rnode* %20, %struct.rnode** %22, align 8
  %23 = load %struct.snode**, %struct.snode*** %4, align 8
  %24 = load %struct.snode*, %struct.snode** %23, align 8
  %25 = icmp eq %struct.snode* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load %struct.snode*, %struct.snode** %6, align 8
  %28 = getelementptr inbounds %struct.snode, %struct.snode* %27, i32 0, i32 1
  store i32 1, i32* %28, align 8
  br label %37

29:                                               ; preds = %15
  %30 = load %struct.snode**, %struct.snode*** %4, align 8
  %31 = load %struct.snode*, %struct.snode** %30, align 8
  %32 = getelementptr inbounds %struct.snode, %struct.snode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = load %struct.snode*, %struct.snode** %6, align 8
  %36 = getelementptr inbounds %struct.snode, %struct.snode* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %29, %26
  %38 = load %struct.snode*, %struct.snode** %6, align 8
  %39 = load %struct.snode**, %struct.snode*** %4, align 8
  store %struct.snode* %38, %struct.snode** %39, align 8
  %40 = load %struct.snode**, %struct.snode*** %4, align 8
  %41 = load %struct.snode*, %struct.snode** %40, align 8
  store %struct.snode* %41, %struct.snode** %3, align 8
  br label %42

42:                                               ; preds = %37, %14
  %43 = load %struct.snode*, %struct.snode** %3, align 8
  ret %struct.snode* %43
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @Pop(%struct.snode** noundef %0) #0 {
  %2 = alloca %struct.rnode*, align 8
  %3 = alloca %struct.snode**, align 8
  %4 = alloca %struct.rnode*, align 8
  %5 = alloca %struct.snode*, align 8
  store %struct.snode** %0, %struct.snode*** %3, align 8
  %6 = load %struct.snode**, %struct.snode*** %3, align 8
  %7 = icmp eq %struct.snode** %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.snode**, %struct.snode*** %3, align 8
  %10 = load %struct.snode*, %struct.snode** %9, align 8
  %11 = icmp eq %struct.snode* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %28

13:                                               ; preds = %8
  %14 = load %struct.snode**, %struct.snode*** %3, align 8
  %15 = load %struct.snode*, %struct.snode** %14, align 8
  store %struct.snode* %15, %struct.snode** %5, align 8
  %16 = load %struct.snode**, %struct.snode*** %3, align 8
  %17 = load %struct.snode*, %struct.snode** %16, align 8
  %18 = getelementptr inbounds %struct.snode, %struct.snode* %17, i32 0, i32 0
  %19 = load %struct.rnode*, %struct.rnode** %18, align 8
  store %struct.rnode* %19, %struct.rnode** %4, align 8
  %20 = load %struct.snode**, %struct.snode*** %3, align 8
  %21 = load %struct.snode*, %struct.snode** %20, align 8
  %22 = getelementptr inbounds %struct.snode, %struct.snode* %21, i32 0, i32 2
  %23 = load %struct.snode*, %struct.snode** %22, align 8
  %24 = load %struct.snode**, %struct.snode*** %3, align 8
  store %struct.snode* %23, %struct.snode** %24, align 8
  %25 = load %struct.snode*, %struct.snode** %5, align 8
  %26 = bitcast %struct.snode* %25 to i8*
  call void @free(i8* noundef %26) #2
  %27 = load %struct.rnode*, %struct.rnode** %4, align 8
  store %struct.rnode* %27, %struct.rnode** %2, align 8
  br label %28

28:                                               ; preds = %13, %12
  %29 = load %struct.rnode*, %struct.rnode** %2, align 8
  ret %struct.rnode* %29
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @Top(%struct.snode* noundef %0) #0 {
  %2 = alloca %struct.rnode*, align 8
  %3 = alloca %struct.snode*, align 8
  store %struct.snode* %0, %struct.snode** %3, align 8
  %4 = load %struct.snode*, %struct.snode** %3, align 8
  %5 = icmp eq %struct.snode* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.snode*, %struct.snode** %3, align 8
  %9 = getelementptr inbounds %struct.snode, %struct.snode* %8, i32 0, i32 0
  %10 = load %struct.rnode*, %struct.rnode** %9, align 8
  store %struct.rnode* %10, %struct.rnode** %2, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load %struct.rnode*, %struct.rnode** %2, align 8
  ret %struct.rnode* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Size(%struct.snode* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snode*, align 8
  store %struct.snode* %0, %struct.snode** %3, align 8
  %4 = load %struct.snode*, %struct.snode** %3, align 8
  %5 = icmp eq %struct.snode* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.snode*, %struct.snode** %3, align 8
  %9 = getelementptr inbounds %struct.snode, %struct.snode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %7, %6
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @occurs_in(i32 noundef %0, %struct.pnode* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnode*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pnode* %1, %struct.pnode** %5, align 8
  br label %6

6:                                                ; preds = %20, %2
  %7 = load %struct.pnode*, %struct.pnode** %5, align 8
  %8 = icmp ne %struct.pnode* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.pnode*, %struct.pnode** %5, align 8
  %12 = getelementptr inbounds %struct.pnode, %struct.pnode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %22

16:                                               ; preds = %9
  %17 = load %struct.pnode*, %struct.pnode** %5, align 8
  %18 = getelementptr inbounds %struct.pnode, %struct.pnode* %17, i32 0, i32 1
  %19 = load %struct.pnode*, %struct.pnode** %18, align 8
  store %struct.pnode* %19, %struct.pnode** %5, align 8
  br label %20

20:                                               ; preds = %16
  br label %6, !llvm.loop !4

21:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.pnode* @pset_union(%struct.pnode* noundef %0, %struct.pnode* noundef %1) #0 {
  %3 = alloca %struct.pnode*, align 8
  %4 = alloca %struct.pnode*, align 8
  %5 = alloca %struct.pnode*, align 8
  %6 = alloca %struct.pnode*, align 8
  %7 = alloca %struct.pnode*, align 8
  %8 = alloca %struct.pnode*, align 8
  store %struct.pnode* %0, %struct.pnode** %4, align 8
  store %struct.pnode* %1, %struct.pnode** %5, align 8
  store %struct.pnode* null, %struct.pnode** %6, align 8
  store %struct.pnode* null, %struct.pnode** %7, align 8
  br label %9

9:                                                ; preds = %40, %2
  %10 = load %struct.pnode*, %struct.pnode** %4, align 8
  %11 = icmp ne %struct.pnode* %10, null
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  %13 = load %struct.pnode*, %struct.pnode** %4, align 8
  %14 = getelementptr inbounds %struct.pnode, %struct.pnode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.pnode*, %struct.pnode** %5, align 8
  %17 = call i32 @occurs_in(i32 noundef %15, %struct.pnode* noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %12
  %20 = call noalias i8* @malloc(i64 noundef 16) #2
  %21 = bitcast i8* %20 to %struct.pnode*
  store %struct.pnode* %21, %struct.pnode** %8, align 8
  %22 = load %struct.pnode*, %struct.pnode** %8, align 8
  %23 = icmp eq %struct.pnode* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.pnode* null, %struct.pnode** %3, align 8
  br label %56

25:                                               ; preds = %19
  %26 = load %struct.pnode*, %struct.pnode** %4, align 8
  %27 = getelementptr inbounds %struct.pnode, %struct.pnode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pnode*, %struct.pnode** %8, align 8
  %30 = getelementptr inbounds %struct.pnode, %struct.pnode* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.pnode*, %struct.pnode** %6, align 8
  %32 = icmp eq %struct.pnode* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load %struct.pnode*, %struct.pnode** %8, align 8
  store %struct.pnode* %34, %struct.pnode** %6, align 8
  br label %39

35:                                               ; preds = %25
  %36 = load %struct.pnode*, %struct.pnode** %8, align 8
  %37 = load %struct.pnode*, %struct.pnode** %7, align 8
  %38 = getelementptr inbounds %struct.pnode, %struct.pnode* %37, i32 0, i32 1
  store %struct.pnode* %36, %struct.pnode** %38, align 8
  br label %39

39:                                               ; preds = %35, %33
  br label %40

40:                                               ; preds = %39, %12
  %41 = load %struct.pnode*, %struct.pnode** %8, align 8
  store %struct.pnode* %41, %struct.pnode** %7, align 8
  %42 = load %struct.pnode*, %struct.pnode** %4, align 8
  %43 = getelementptr inbounds %struct.pnode, %struct.pnode* %42, i32 0, i32 1
  %44 = load %struct.pnode*, %struct.pnode** %43, align 8
  store %struct.pnode* %44, %struct.pnode** %4, align 8
  br label %9, !llvm.loop !6

45:                                               ; preds = %9
  %46 = load %struct.pnode*, %struct.pnode** %6, align 8
  %47 = icmp eq %struct.pnode* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load %struct.pnode*, %struct.pnode** %5, align 8
  store %struct.pnode* %49, %struct.pnode** %6, align 8
  br label %54

50:                                               ; preds = %45
  %51 = load %struct.pnode*, %struct.pnode** %5, align 8
  %52 = load %struct.pnode*, %struct.pnode** %7, align 8
  %53 = getelementptr inbounds %struct.pnode, %struct.pnode* %52, i32 0, i32 1
  store %struct.pnode* %51, %struct.pnode** %53, align 8
  br label %54

54:                                               ; preds = %50, %48
  %55 = load %struct.pnode*, %struct.pnode** %6, align 8
  store %struct.pnode* %55, %struct.pnode** %3, align 8
  br label %56

56:                                               ; preds = %54, %24
  %57 = load %struct.pnode*, %struct.pnode** %3, align 8
  ret %struct.pnode* %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.pnode* @create_pos(i32 noundef %0) #0 {
  %2 = alloca %struct.pnode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnode*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call noalias i8* @malloc(i64 noundef 16) #2
  %6 = bitcast i8* %5 to %struct.pnode*
  store %struct.pnode* %6, %struct.pnode** %4, align 8
  %7 = load %struct.pnode*, %struct.pnode** %4, align 8
  %8 = icmp eq %struct.pnode* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.pnode* null, %struct.pnode** %2, align 8
  br label %17

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.pnode*, %struct.pnode** %4, align 8
  %13 = getelementptr inbounds %struct.pnode, %struct.pnode* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.pnode*, %struct.pnode** %4, align 8
  %15 = getelementptr inbounds %struct.pnode, %struct.pnode* %14, i32 0, i32 1
  store %struct.pnode* null, %struct.pnode** %15, align 8
  %16 = load %struct.pnode*, %struct.pnode** %4, align 8
  store %struct.pnode* %16, %struct.pnode** %2, align 8
  br label %17

17:                                               ; preds = %10, %9
  %18 = load %struct.pnode*, %struct.pnode** %2, align 8
  ret %struct.pnode* %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subset_pset(%struct.pnode* noundef %0, %struct.pnode* noundef %1) #0 {
  %3 = alloca %struct.pnode*, align 8
  %4 = alloca %struct.pnode*, align 8
  %5 = alloca i32, align 4
  store %struct.pnode* %0, %struct.pnode** %3, align 8
  store %struct.pnode* %1, %struct.pnode** %4, align 8
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %37, %2
  %7 = load %struct.pnode*, %struct.pnode** %3, align 8
  %8 = icmp ne %struct.pnode* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ false, %6 ], [ %11, %9 ]
  br i1 %13, label %14, label %41

14:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %36, %14
  %16 = load %struct.pnode*, %struct.pnode** %4, align 8
  %17 = icmp ne %struct.pnode* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 1
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ false, %15 ], [ %20, %18 ]
  br i1 %22, label %23, label %37

23:                                               ; preds = %21
  %24 = load %struct.pnode*, %struct.pnode** %3, align 8
  %25 = getelementptr inbounds %struct.pnode, %struct.pnode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.pnode*, %struct.pnode** %4, align 8
  %28 = getelementptr inbounds %struct.pnode, %struct.pnode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %36

32:                                               ; preds = %23
  %33 = load %struct.pnode*, %struct.pnode** %4, align 8
  %34 = getelementptr inbounds %struct.pnode, %struct.pnode* %33, i32 0, i32 1
  %35 = load %struct.pnode*, %struct.pnode** %34, align 8
  store %struct.pnode* %35, %struct.pnode** %4, align 8
  br label %36

36:                                               ; preds = %32, %31
  br label %15, !llvm.loop !7

37:                                               ; preds = %21
  %38 = load %struct.pnode*, %struct.pnode** %3, align 8
  %39 = getelementptr inbounds %struct.pnode, %struct.pnode* %38, i32 0, i32 1
  %40 = load %struct.pnode*, %struct.pnode** %39, align 8
  store %struct.pnode* %40, %struct.pnode** %3, align 8
  br label %6, !llvm.loop !8

41:                                               ; preds = %12
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @eq_pset(%struct.pnode* noundef %0, %struct.pnode* noundef %1) #0 {
  %3 = alloca %struct.pnode*, align 8
  %4 = alloca %struct.pnode*, align 8
  store %struct.pnode* %0, %struct.pnode** %3, align 8
  store %struct.pnode* %1, %struct.pnode** %4, align 8
  %5 = load %struct.pnode*, %struct.pnode** %3, align 8
  %6 = load %struct.pnode*, %struct.pnode** %4, align 8
  %7 = call i32 @subset_pset(%struct.pnode* noundef %5, %struct.pnode* noundef %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.pnode*, %struct.pnode** %4, align 8
  %11 = load %struct.pnode*, %struct.pnode** %3, align 8
  %12 = call i32 @subset_pset(%struct.pnode* noundef %10, %struct.pnode* noundef %11)
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ false, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
