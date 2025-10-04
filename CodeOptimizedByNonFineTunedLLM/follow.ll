; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/follow.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/follow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i16, %union.anon.0 }
%union.anon.0 = type { %struct.ch_set* }
%struct.ch_set = type { %struct.anon.1*, %struct.ch_set* }
%struct.anon.1 = type { i8, i8 }
%struct.rnode = type { i16, %union.anon, i16, %struct.pnode*, %struct.pnode* }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.rnode*, %struct.rnode* }
%struct.pnode = type { i32, %struct.pnode* }

@.str = private unnamed_addr constant [4 x i8] c".*(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"mk_followpos: unknown node type %d\0A\00", align 1
@pos_cnt = external dso_local global i32, align 4
@lpos = dso_local global [0 x %struct.anon*]* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @extend_re(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* noundef %4) #4
  %6 = trunc i64 %5 to i32
  %7 = add i32 %6, 4
  %8 = add i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call noalias i8* @malloc(i64 noundef %9) #5
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @strcpy(i8* noundef %11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #5
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @strcat(i8* noundef %12, i8* noundef %13) #5
  %15 = call i8* @strcat(i8* noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5
  ret i8* %15
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @mk_followpos_1(%struct.rnode* noundef %0, [0 x %struct.pnode*]* noundef %1) #0 {
  %3 = alloca %struct.rnode*, align 8
  %4 = alloca [0 x %struct.pnode*]*, align 8
  %5 = alloca %struct.pnode*, align 8
  %6 = alloca i32, align 4
  store %struct.rnode* %0, %struct.rnode** %3, align 8
  store [0 x %struct.pnode*]* %1, [0 x %struct.pnode*]** %4, align 8
  %7 = load %struct.rnode*, %struct.rnode** %3, align 8
  %8 = getelementptr inbounds %struct.rnode, %struct.rnode* %7, i32 0, i32 0
  %9 = load i16, i16* %8, align 8
  %10 = sext i16 %9 to i32
  switch i32 %10, label %113 [
    i32 0, label %11
    i32 2, label %12
    i32 5, label %45
    i32 4, label %93
    i32 3, label %99
    i32 1, label %112
  ]

11:                                               ; preds = %2
  br label %119

12:                                               ; preds = %2
  %13 = load %struct.rnode*, %struct.rnode** %3, align 8
  %14 = getelementptr inbounds %struct.rnode, %struct.rnode* %13, i32 0, i32 4
  %15 = load %struct.pnode*, %struct.pnode** %14, align 8
  store %struct.pnode* %15, %struct.pnode** %5, align 8
  br label %16

16:                                               ; preds = %19, %12
  %17 = load %struct.pnode*, %struct.pnode** %5, align 8
  %18 = icmp ne %struct.pnode* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load %struct.pnode*, %struct.pnode** %5, align 8
  %21 = getelementptr inbounds %struct.pnode, %struct.pnode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.rnode*, %struct.rnode** %3, align 8
  %24 = getelementptr inbounds %struct.rnode, %struct.rnode* %23, i32 0, i32 3
  %25 = load %struct.pnode*, %struct.pnode** %24, align 8
  %26 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %26, i64 0, i64 %28
  %30 = load %struct.pnode*, %struct.pnode** %29, align 8
  %31 = call %struct.pnode* @pset_union(%struct.pnode* noundef %25, %struct.pnode* noundef %30)
  %32 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %32, i64 0, i64 %34
  store %struct.pnode* %31, %struct.pnode** %35, align 8
  %36 = load %struct.pnode*, %struct.pnode** %5, align 8
  %37 = getelementptr inbounds %struct.pnode, %struct.pnode* %36, i32 0, i32 1
  %38 = load %struct.pnode*, %struct.pnode** %37, align 8
  store %struct.pnode* %38, %struct.pnode** %5, align 8
  br label %16, !llvm.loop !4

39:                                               ; preds = %16
  %40 = load %struct.rnode*, %struct.rnode** %3, align 8
  %41 = getelementptr inbounds %struct.rnode, %struct.rnode* %40, i32 0, i32 1
  %42 = bitcast %union.anon* %41 to %struct.rnode**
  %43 = load %struct.rnode*, %struct.rnode** %42, align 8
  %44 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  call void @mk_followpos_1(%struct.rnode* noundef %43, [0 x %struct.pnode*]* noundef %44)
  br label %119

45:                                               ; preds = %2
  %46 = load %struct.rnode*, %struct.rnode** %3, align 8
  %47 = getelementptr inbounds %struct.rnode, %struct.rnode* %46, i32 0, i32 1
  %48 = bitcast %union.anon* %47 to %struct.anon.2*
  %49 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %48, i32 0, i32 0
  %50 = load %struct.rnode*, %struct.rnode** %49, align 8
  %51 = getelementptr inbounds %struct.rnode, %struct.rnode* %50, i32 0, i32 4
  %52 = load %struct.pnode*, %struct.pnode** %51, align 8
  store %struct.pnode* %52, %struct.pnode** %5, align 8
  br label %53

53:                                               ; preds = %56, %45
  %54 = load %struct.pnode*, %struct.pnode** %5, align 8
  %55 = icmp ne %struct.pnode* %54, null
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = load %struct.pnode*, %struct.pnode** %5, align 8
  %58 = getelementptr inbounds %struct.pnode, %struct.pnode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %6, align 4
  %60 = load %struct.rnode*, %struct.rnode** %3, align 8
  %61 = getelementptr inbounds %struct.rnode, %struct.rnode* %60, i32 0, i32 1
  %62 = bitcast %union.anon* %61 to %struct.anon.2*
  %63 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %62, i32 0, i32 1
  %64 = load %struct.rnode*, %struct.rnode** %63, align 8
  %65 = getelementptr inbounds %struct.rnode, %struct.rnode* %64, i32 0, i32 3
  %66 = load %struct.pnode*, %struct.pnode** %65, align 8
  %67 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %67, i64 0, i64 %69
  %71 = load %struct.pnode*, %struct.pnode** %70, align 8
  %72 = call %struct.pnode* @pset_union(%struct.pnode* noundef %66, %struct.pnode* noundef %71)
  %73 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %73, i64 0, i64 %75
  store %struct.pnode* %72, %struct.pnode** %76, align 8
  %77 = load %struct.pnode*, %struct.pnode** %5, align 8
  %78 = getelementptr inbounds %struct.pnode, %struct.pnode* %77, i32 0, i32 1
  %79 = load %struct.pnode*, %struct.pnode** %78, align 8
  store %struct.pnode* %79, %struct.pnode** %5, align 8
  br label %53, !llvm.loop !6

80:                                               ; preds = %53
  %81 = load %struct.rnode*, %struct.rnode** %3, align 8
  %82 = getelementptr inbounds %struct.rnode, %struct.rnode* %81, i32 0, i32 1
  %83 = bitcast %union.anon* %82 to %struct.anon.2*
  %84 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %83, i32 0, i32 0
  %85 = load %struct.rnode*, %struct.rnode** %84, align 8
  %86 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  call void @mk_followpos_1(%struct.rnode* noundef %85, [0 x %struct.pnode*]* noundef %86)
  %87 = load %struct.rnode*, %struct.rnode** %3, align 8
  %88 = getelementptr inbounds %struct.rnode, %struct.rnode* %87, i32 0, i32 1
  %89 = bitcast %union.anon* %88 to %struct.anon.2*
  %90 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %89, i32 0, i32 1
  %91 = load %struct.rnode*, %struct.rnode** %90, align 8
  %92 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  call void @mk_followpos_1(%struct.rnode* noundef %91, [0 x %struct.pnode*]* noundef %92)
  br label %119

93:                                               ; preds = %2
  %94 = load %struct.rnode*, %struct.rnode** %3, align 8
  %95 = getelementptr inbounds %struct.rnode, %struct.rnode* %94, i32 0, i32 1
  %96 = bitcast %union.anon* %95 to %struct.rnode**
  %97 = load %struct.rnode*, %struct.rnode** %96, align 8
  %98 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  call void @mk_followpos_1(%struct.rnode* noundef %97, [0 x %struct.pnode*]* noundef %98)
  br label %119

99:                                               ; preds = %2
  %100 = load %struct.rnode*, %struct.rnode** %3, align 8
  %101 = getelementptr inbounds %struct.rnode, %struct.rnode* %100, i32 0, i32 1
  %102 = bitcast %union.anon* %101 to %struct.anon.2*
  %103 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %102, i32 0, i32 0
  %104 = load %struct.rnode*, %struct.rnode** %103, align 8
  %105 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  call void @mk_followpos_1(%struct.rnode* noundef %104, [0 x %struct.pnode*]* noundef %105)
  %106 = load %struct.rnode*, %struct.rnode** %3, align 8
  %107 = getelementptr inbounds %struct.rnode, %struct.rnode* %106, i32 0, i32 1
  %108 = bitcast %union.anon* %107 to %struct.anon.2*
  %109 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %108, i32 0, i32 1
  %110 = load %struct.rnode*, %struct.rnode** %109, align 8
  %111 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  call void @mk_followpos_1(%struct.rnode* noundef %110, [0 x %struct.pnode*]* noundef %111)
  br label %119

112:                                              ; preds = %2
  br label %119

113:                                              ; preds = %2
  %114 = load %struct.rnode*, %struct.rnode** %3, align 8
  %115 = getelementptr inbounds %struct.rnode, %struct.rnode* %114, i32 0, i32 0
  %116 = load i16, i16* %115, align 8
  %117 = sext i16 %116 to i32
  %118 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef %117)
  br label %119

119:                                              ; preds = %113, %112, %99, %93, %80, %39, %11
  ret void
}

declare dso_local %struct.pnode* @pset_union(%struct.pnode* noundef, %struct.pnode* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local [0 x %struct.pnode*]* @mk_followpos(%struct.rnode* noundef %0, i32 noundef %1) #0 {
  %3 = alloca [0 x %struct.pnode*]*, align 8
  %4 = alloca %struct.rnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [0 x %struct.pnode*]*, align 8
  store %struct.rnode* %0, %struct.rnode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rnode*, %struct.rnode** %4, align 8
  %9 = icmp eq %struct.rnode* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store [0 x %struct.pnode*]* null, [0 x %struct.pnode*]** %3, align 8
  br label %41

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = call noalias i8* @malloc(i64 noundef %18) #5
  %20 = bitcast i8* %19 to [0 x %struct.pnode*]*
  store [0 x %struct.pnode*]* %20, [0 x %struct.pnode*]** %7, align 8
  %21 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %7, align 8
  %22 = icmp eq [0 x %struct.pnode*]* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store [0 x %struct.pnode*]* null, [0 x %struct.pnode*]** %3, align 8
  br label %41

24:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %34, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %30, i64 0, i64 %32
  store %struct.pnode* null, %struct.pnode** %33, align 8
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %25, !llvm.loop !7

37:                                               ; preds = %25
  %38 = load %struct.rnode*, %struct.rnode** %4, align 8
  %39 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %7, align 8
  call void @mk_followpos_1(%struct.rnode* noundef %38, [0 x %struct.pnode*]* noundef %39)
  %40 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %7, align 8
  store [0 x %struct.pnode*]* %40, [0 x %struct.pnode*]** %3, align 8
  br label %41

41:                                               ; preds = %37, %23, %13
  %42 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %3, align 8
  ret [0 x %struct.pnode*]* %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @init(i8* noundef %0, [32 x i32]* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [32 x i32]*, align 8
  %6 = alloca [0 x %struct.pnode*]*, align 8
  %7 = alloca %struct.rnode*, align 8
  %8 = alloca %struct.pnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store [32 x i32]* %1, [32 x i32]** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @extend_re(i8* noundef %11)
  %13 = call %struct.rnode* @parse(i8* noundef %12)
  store %struct.rnode* %13, %struct.rnode** %7, align 8
  %14 = icmp eq %struct.rnode* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = load %struct.rnode*, %struct.rnode** %7, align 8
  %18 = load i32, i32* @pos_cnt, align 4
  %19 = call [0 x %struct.pnode*]* @mk_followpos(%struct.rnode* noundef %17, i32 noundef %18)
  store [0 x %struct.pnode*]* %19, [0 x %struct.pnode*]** %6, align 8
  %20 = icmp eq [0 x %struct.pnode*]* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %59

22:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %54, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @pos_cnt, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %28, i64 0, i64 %30
  %32 = load %struct.pnode*, %struct.pnode** %31, align 8
  store %struct.pnode* %32, %struct.pnode** %8, align 8
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %49, %27
  %34 = load %struct.pnode*, %struct.pnode** %8, align 8
  %35 = icmp ne %struct.pnode* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load %struct.pnode*, %struct.pnode** %8, align 8
  %38 = getelementptr inbounds %struct.pnode, %struct.pnode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load [32 x i32]*, [32 x i32]** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32 x i32], [32 x i32]* %40, i64 %42
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32 x i32], [32 x i32]* %43, i64 0, i64 %45
  store i32 %39, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %36
  %50 = load %struct.pnode*, %struct.pnode** %8, align 8
  %51 = getelementptr inbounds %struct.pnode, %struct.pnode* %50, i32 0, i32 1
  %52 = load %struct.pnode*, %struct.pnode** %51, align 8
  store %struct.pnode* %52, %struct.pnode** %8, align 8
  br label %33, !llvm.loop !8

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %23, !llvm.loop !9

57:                                               ; preds = %23
  %58 = load i32, i32* @pos_cnt, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %21, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.rnode* @parse(i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

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
!9 = distinct !{!9, !5}
