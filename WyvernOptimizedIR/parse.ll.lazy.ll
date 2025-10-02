; ModuleID = './parse.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rnode = type { i16, %union.anon, i16, %struct.pnode*, %struct.pnode* }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.rnode*, %struct.rnode* }
%struct.pnode = type { i32, %struct.pnode* }
%struct.ch_set = type { %struct.anon.1*, %struct.ch_set* }
%struct.anon.1 = type { i8, i8 }
%struct.anon = type { i32, i16, %union.anon.0 }
%union.anon.0 = type { %struct.ch_set* }
%struct.anon.3 = type { i16, %struct.rnode* }
%struct.snode = type { %struct.rnode*, i32, %struct.snode* }

@pos_cnt = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"parse_re: unknown token type %d\0A\00", align 1
@final_pos = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.rnode* @mk_leaf(i16 noundef signext %0, i16 noundef signext %1, i8 noundef signext %2, %struct.ch_set* noundef %3) #0 {
  %5 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %6 = bitcast i8* %5 to %struct.anon*
  %7 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #3
  %8 = bitcast i8* %7 to %struct.rnode*
  %9 = icmp eq i8* %5, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = icmp eq i8* %7, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10, %4
  br label %34

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %6, i64 0, i32 1
  store i16 %1, i16* %14, align 4
  %15 = load i32, i32* @pos_cnt, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @pos_cnt, align 4
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %6, i64 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = icmp eq i16 %1, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %6, i64 0, i32 2, i32 0
  store %struct.ch_set* %3, %struct.ch_set** %20, align 8
  br label %24

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %6, i64 0, i32 2
  %23 = bitcast %union.anon.0* %22 to i8*
  store i8 %2, i8* %23, align 8
  br label %24

24:                                               ; preds = %21, %19
  %25 = getelementptr inbounds %struct.rnode, %struct.rnode* %8, i64 0, i32 0
  store i16 %0, i16* %25, align 8
  %26 = getelementptr inbounds %struct.rnode, %struct.rnode* %8, i64 0, i32 1
  %27 = bitcast %union.anon* %26 to i8**
  store i8* %5, i8** %27, align 8
  %28 = getelementptr inbounds %struct.rnode, %struct.rnode* %8, i64 0, i32 2
  store i16 0, i16* %28, align 8
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %6, i64 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.pnode* @create_pos(i32 noundef %30) #3
  %32 = getelementptr inbounds %struct.rnode, %struct.rnode* %8, i64 0, i32 3
  store %struct.pnode* %31, %struct.pnode** %32, align 8
  %33 = getelementptr inbounds %struct.rnode, %struct.rnode* %8, i64 0, i32 4
  store %struct.pnode* %31, %struct.pnode** %33, align 8
  br label %34

34:                                               ; preds = %24, %12
  %.0 = phi %struct.rnode* [ null, %12 ], [ %8, %24 ]
  ret %struct.rnode* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local %struct.pnode* @create_pos(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.rnode* @parse_cset(i8** nocapture noundef %0) #0 {
  %2 = load i8*, i8** %0, align 8
  %3 = load i8, i8* %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load i8*, i8** %0, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 93
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  br label %82

10:                                               ; preds = %5
  %11 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %12 = bitcast i8* %11 to %struct.ch_set*
  br label %13

13:                                               ; preds = %69, %10
  %.02 = phi %struct.ch_set* [ %12, %10 ], [ %71, %69 ]
  %.01 = phi %struct.ch_set* [ undef, %10 ], [ %.02, %69 ]
  %14 = load i8*, i8** %0, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %0, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp eq i8 %19, 93
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ true, %13 ], [ %20, %17 ]
  br i1 %22, label %74, label %23

23:                                               ; preds = %21
  %24 = call noalias dereferenceable_or_null(2) i8* @malloc(i64 noundef 2) #3
  %25 = bitcast i8* %24 to %struct.anon.1*
  %26 = bitcast %struct.ch_set* %.02 to i8**
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %0, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %28, i8** %0, align 8
  %29 = load i8, i8* %27, align 1
  %30 = icmp eq i8 %29, 45
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %82

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %25, i64 0, i32 0
  store i8 %29, i8* %33, align 1
  %34 = load i8*, i8** %0, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %82

38:                                               ; preds = %32
  %39 = load i8*, i8** %0, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp eq i8 %40, 45
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load i8*, i8** %0, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8* %44, i8** %0, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %0, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp eq i8 %49, 45
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %0, align 8
  %53 = load i8, i8* %52, align 1
  %54 = icmp eq i8 %53, 93
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %0, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp slt i8 %57, %29
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51, %47, %42
  br label %82

60:                                               ; preds = %55
  %61 = load i8*, i8** %0, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %0, align 8
  %63 = load i8, i8* %61, align 1
  %64 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %25, i64 0, i32 1
  store i8 %63, i8* %64, align 1
  br label %65

65:                                               ; preds = %60
  br label %68

66:                                               ; preds = %38
  %67 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %25, i64 0, i32 1
  store i8 %29, i8* %67, align 1
  br label %68

68:                                               ; preds = %66, %65
  br label %69

69:                                               ; preds = %68
  %70 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %71 = bitcast i8* %70 to %struct.ch_set*
  %72 = getelementptr inbounds %struct.ch_set, %struct.ch_set* %.02, i64 0, i32 1
  %73 = bitcast %struct.ch_set** %72 to i8**
  store i8* %70, i8** %73, align 8
  br label %13, !llvm.loop !4

74:                                               ; preds = %21
  %75 = load i8*, i8** %0, align 8
  %76 = load i8, i8* %75, align 1
  %77 = icmp eq i8 %76, 93
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ch_set, %struct.ch_set* %.01, i64 0, i32 1
  store %struct.ch_set* null, %struct.ch_set** %79, align 8
  %80 = call %struct.rnode* @mk_leaf(i16 noundef signext 1, i16 noundef signext 1, i8 noundef signext 0, %struct.ch_set* noundef %12)
  br label %82

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %78, %59, %37, %31, %9
  %.0 = phi %struct.rnode* [ null, %9 ], [ null, %31 ], [ null, %37 ], [ null, %59 ], [ %80, %78 ], [ null, %81 ]
  ret %struct.rnode* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.rnode* @parse_wildcard() #0 {
  %1 = call noalias dereferenceable_or_null(2) i8* @malloc(i64 noundef 2) #3
  %2 = bitcast i8* %1 to %struct.anon.1*
  %3 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %2, i64 0, i32 0
  store i8 1, i8* %3, align 1
  %4 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %2, i64 0, i32 1
  store i8 127, i8* %4, align 1
  %5 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %6 = bitcast i8* %5 to %struct.ch_set*
  %7 = bitcast i8* %5 to i8**
  store i8* %1, i8** %7, align 8
  %8 = getelementptr inbounds %struct.ch_set, %struct.ch_set* %6, i64 0, i32 1
  store %struct.ch_set* null, %struct.ch_set** %8, align 8
  %9 = call %struct.rnode* @mk_leaf(i16 noundef signext 1, i16 noundef signext 1, i8 noundef signext 0, %struct.ch_set* noundef %6)
  ret %struct.rnode* %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.rnode* @parse_chlit(i8 noundef signext %0) #0 {
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %6

4:                                                ; preds = %1
  %5 = call %struct.rnode* @mk_leaf(i16 noundef signext 1, i16 noundef signext 0, i8 noundef signext %0, %struct.ch_set* noundef null)
  br label %6

6:                                                ; preds = %4, %3
  %.0 = phi %struct.rnode* [ null, %3 ], [ %5, %4 ]
  ret %struct.rnode* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.anon.3* @get_token(i8** noundef %0) #0 {
  %2 = icmp eq i8** %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8*, i8** %0, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3, %1
  br label %61

7:                                                ; preds = %3
  %8 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %9 = bitcast i8* %8 to %struct.anon.3*
  %10 = load i8*, i8** %0, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %9, i64 0, i32 0
  store i16 0, i16* %14, align 8
  br label %60

15:                                               ; preds = %7
  %16 = load i8*, i8** %0, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %48 [
    i32 46, label %19
    i32 91, label %26
    i32 40, label %35
    i32 41, label %37
    i32 42, label %39
    i32 124, label %41
    i32 63, label %43
    i32 92, label %45
  ]

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %9, i64 0, i32 0
  store i16 1, i16* %20, align 8
  %21 = call %struct.rnode* @parse_wildcard()
  %22 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %9, i64 0, i32 1
  store %struct.rnode* %21, %struct.rnode** %22, align 8
  %23 = icmp eq %struct.rnode* %21, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %61

25:                                               ; preds = %19
  br label %57

26:                                               ; preds = %15
  %27 = load i8*, i8** %0, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %28, i8** %0, align 8
  %29 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %9, i64 0, i32 0
  store i16 1, i16* %29, align 8
  %30 = call %struct.rnode* @parse_cset(i8** noundef nonnull %0)
  %31 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %9, i64 0, i32 1
  store %struct.rnode* %30, %struct.rnode** %31, align 8
  %32 = icmp eq %struct.rnode* %30, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %61

34:                                               ; preds = %26
  br label %57

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %9, i64 0, i32 0
  store i16 6, i16* %36, align 8
  br label %57

37:                                               ; preds = %15
  %38 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %9, i64 0, i32 0
  store i16 7, i16* %38, align 8
  br label %57

39:                                               ; preds = %15
  %40 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %9, i64 0, i32 0
  store i16 2, i16* %40, align 8
  br label %57

41:                                               ; preds = %15
  %42 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %9, i64 0, i32 0
  store i16 3, i16* %42, align 8
  br label %57

43:                                               ; preds = %15
  %44 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %9, i64 0, i32 0
  store i16 4, i16* %44, align 8
  br label %57

45:                                               ; preds = %15
  %46 = load i8*, i8** %0, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %0, align 8
  br label %48

48:                                               ; preds = %45, %15
  %49 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %9, i64 0, i32 0
  store i16 1, i16* %49, align 8
  %50 = load i8*, i8** %0, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call %struct.rnode* @parse_chlit(i8 noundef signext %51)
  %53 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %9, i64 0, i32 1
  store %struct.rnode* %52, %struct.rnode** %53, align 8
  %54 = icmp eq %struct.rnode* %52, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %61

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %43, %41, %39, %37, %35, %34, %25
  %58 = load i8*, i8** %0, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8* %59, i8** %0, align 8
  br label %60

60:                                               ; preds = %57, %13
  br label %61

61:                                               ; preds = %60, %55, %33, %24, %6
  %.0 = phi %struct.anon.3* [ null, %6 ], [ %9, %60 ], [ null, %55 ], [ null, %33 ], [ null, %24 ]
  ret %struct.anon.3* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.snode* @cat2(%struct.snode** noundef %0) #0 {
  %2 = icmp eq %struct.snode** %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %87

4:                                                ; preds = %1
  %5 = load %struct.snode*, %struct.snode** %0, align 8
  %6 = icmp eq %struct.snode* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = load %struct.snode*, %struct.snode** %0, align 8
  %9 = getelementptr inbounds %struct.snode, %struct.snode* %8, i64 0, i32 2
  %10 = load %struct.snode*, %struct.snode** %9, align 8
  %11 = icmp eq %struct.snode* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7, %4
  %13 = load %struct.snode*, %struct.snode** %0, align 8
  br label %87

14:                                               ; preds = %7
  %15 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #3
  %16 = bitcast i8* %15 to %struct.rnode*
  %17 = icmp eq i8* %15, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %87

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 0
  store i16 5, i16* %20, align 8
  %21 = call %struct.rnode* @Pop(%struct.snode** noundef nonnull %0) #3
  %22 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 1, i32 0, i32 1
  store %struct.rnode* %21, %struct.rnode** %22, align 8
  %23 = call %struct.rnode* @Pop(%struct.snode** noundef nonnull %0) #3
  %24 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 1, i32 0, i32 0
  store %struct.rnode* %23, %struct.rnode** %24, align 8
  %25 = call %struct.snode* @Push(%struct.snode** noundef nonnull %0, %struct.rnode* noundef nonnull %16) #3
  %26 = icmp eq %struct.snode* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %87

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 1, i32 0, i32 0
  %30 = load %struct.rnode*, %struct.rnode** %29, align 8
  %31 = getelementptr inbounds %struct.rnode, %struct.rnode* %30, i64 0, i32 2
  %32 = load i16, i16* %31, align 8
  %.not = icmp eq i16 %32, 0
  br i1 %.not, label %39, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 1, i32 0, i32 1
  %35 = load %struct.rnode*, %struct.rnode** %34, align 8
  %36 = getelementptr inbounds %struct.rnode, %struct.rnode* %35, i64 0, i32 2
  %37 = load i16, i16* %36, align 8
  %38 = icmp ne i16 %37, 0
  %phi.cast = zext i1 %38 to i16
  br label %39

39:                                               ; preds = %33, %28
  %40 = phi i16 [ 0, %28 ], [ %phi.cast, %33 ]
  %41 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 2
  store i16 %40, i16* %41, align 8
  %42 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 1, i32 0, i32 0
  %43 = load %struct.rnode*, %struct.rnode** %42, align 8
  %44 = getelementptr inbounds %struct.rnode, %struct.rnode* %43, i64 0, i32 2
  %45 = load i16, i16* %44, align 8
  %.not1 = icmp eq i16 %45, 0
  br i1 %.not1, label %57, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 1, i32 0, i32 0
  %48 = load %struct.rnode*, %struct.rnode** %47, align 8
  %49 = getelementptr inbounds %struct.rnode, %struct.rnode* %48, i64 0, i32 3
  %50 = load %struct.pnode*, %struct.pnode** %49, align 8
  %51 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 1, i32 0, i32 1
  %52 = load %struct.rnode*, %struct.rnode** %51, align 8
  %53 = getelementptr inbounds %struct.rnode, %struct.rnode* %52, i64 0, i32 3
  %54 = load %struct.pnode*, %struct.pnode** %53, align 8
  %55 = call %struct.pnode* @pset_union(%struct.pnode* noundef %50, %struct.pnode* noundef %54) #3
  %56 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 3
  store %struct.pnode* %55, %struct.pnode** %56, align 8
  br label %63

57:                                               ; preds = %39
  %58 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 1, i32 0, i32 0
  %59 = load %struct.rnode*, %struct.rnode** %58, align 8
  %60 = getelementptr inbounds %struct.rnode, %struct.rnode* %59, i64 0, i32 3
  %61 = load %struct.pnode*, %struct.pnode** %60, align 8
  %62 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 3
  store %struct.pnode* %61, %struct.pnode** %62, align 8
  br label %63

63:                                               ; preds = %57, %46
  %64 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 1, i32 0, i32 1
  %65 = load %struct.rnode*, %struct.rnode** %64, align 8
  %66 = getelementptr inbounds %struct.rnode, %struct.rnode* %65, i64 0, i32 2
  %67 = load i16, i16* %66, align 8
  %.not2 = icmp eq i16 %67, 0
  br i1 %.not2, label %79, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 1, i32 0, i32 0
  %70 = load %struct.rnode*, %struct.rnode** %69, align 8
  %71 = getelementptr inbounds %struct.rnode, %struct.rnode* %70, i64 0, i32 4
  %72 = load %struct.pnode*, %struct.pnode** %71, align 8
  %73 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 1, i32 0, i32 1
  %74 = load %struct.rnode*, %struct.rnode** %73, align 8
  %75 = getelementptr inbounds %struct.rnode, %struct.rnode* %74, i64 0, i32 4
  %76 = load %struct.pnode*, %struct.pnode** %75, align 8
  %77 = call %struct.pnode* @pset_union(%struct.pnode* noundef %72, %struct.pnode* noundef %76) #3
  %78 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 4
  store %struct.pnode* %77, %struct.pnode** %78, align 8
  br label %85

79:                                               ; preds = %63
  %80 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 1, i32 0, i32 1
  %81 = load %struct.rnode*, %struct.rnode** %80, align 8
  %82 = getelementptr inbounds %struct.rnode, %struct.rnode* %81, i64 0, i32 4
  %83 = load %struct.pnode*, %struct.pnode** %82, align 8
  %84 = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i64 0, i32 4
  store %struct.pnode* %83, %struct.pnode** %84, align 8
  br label %85

85:                                               ; preds = %79, %68
  %86 = load %struct.snode*, %struct.snode** %0, align 8
  br label %87

87:                                               ; preds = %85, %27, %18, %12, %3
  %.0 = phi %struct.snode* [ null, %3 ], [ %13, %12 ], [ null, %18 ], [ null, %27 ], [ %86, %85 ]
  ret %struct.snode* %.0
}

declare dso_local %struct.rnode* @Pop(%struct.snode** noundef) #2

declare dso_local %struct.snode* @Push(%struct.snode** noundef, %struct.rnode* noundef) #2

declare dso_local %struct.pnode* @pset_union(%struct.pnode* noundef, %struct.pnode* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.snode* @wrap(%struct.snode** noundef %0, i16 noundef signext %1) #0 {
  %3 = icmp eq %struct.snode** %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load %struct.snode*, %struct.snode** %0, align 8
  %6 = icmp eq %struct.snode* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %2
  br label %31

8:                                                ; preds = %4
  %9 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #3
  %10 = bitcast i8* %9 to %struct.rnode*
  %11 = icmp eq i8* %9, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %31

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rnode, %struct.rnode* %10, i64 0, i32 0
  store i16 %1, i16* %14, align 8
  %15 = call %struct.rnode* @Pop(%struct.snode** noundef nonnull %0) #3
  %16 = getelementptr inbounds %struct.rnode, %struct.rnode* %10, i64 0, i32 1, i32 0, i32 0
  store %struct.rnode* %15, %struct.rnode** %16, align 8
  %17 = call %struct.snode* @Push(%struct.snode** noundef nonnull %0, %struct.rnode* noundef nonnull %10) #3
  %18 = icmp eq %struct.snode* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %31

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rnode, %struct.rnode* %10, i64 0, i32 2
  store i16 1, i16* %21, align 8
  %22 = getelementptr inbounds %struct.rnode, %struct.rnode* %10, i64 0, i32 1, i32 0, i32 0
  %23 = load %struct.rnode*, %struct.rnode** %22, align 8
  %24 = getelementptr inbounds %struct.rnode, %struct.rnode* %23, i64 0, i32 3
  %25 = load %struct.pnode*, %struct.pnode** %24, align 8
  %26 = getelementptr inbounds %struct.rnode, %struct.rnode* %10, i64 0, i32 3
  store %struct.pnode* %25, %struct.pnode** %26, align 8
  %27 = getelementptr inbounds %struct.rnode, %struct.rnode* %23, i64 0, i32 4
  %28 = load %struct.pnode*, %struct.pnode** %27, align 8
  %29 = getelementptr inbounds %struct.rnode, %struct.rnode* %10, i64 0, i32 4
  store %struct.pnode* %28, %struct.pnode** %29, align 8
  %30 = load %struct.snode*, %struct.snode** %0, align 8
  br label %31

31:                                               ; preds = %20, %19, %12, %7
  %.0 = phi %struct.snode* [ null, %7 ], [ null, %12 ], [ null, %19 ], [ %30, %20 ]
  ret %struct.snode* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.snode* @mk_alt(%struct.snode** noundef %0, %struct.rnode* noundef %1) #0 {
  %3 = icmp eq %struct.snode** %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = load %struct.snode*, %struct.snode** %0, align 8
  %6 = icmp eq %struct.snode* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = icmp eq %struct.rnode* %1, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %7, %4, %2
  br label %58

10:                                               ; preds = %7
  %11 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #3
  %12 = bitcast i8* %11 to %struct.rnode*
  %13 = icmp eq i8* %11, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %58

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rnode, %struct.rnode* %12, i64 0, i32 0
  store i16 3, i16* %16, align 8
  %17 = call %struct.rnode* @Pop(%struct.snode** noundef nonnull %0) #3
  %18 = getelementptr inbounds %struct.rnode, %struct.rnode* %12, i64 0, i32 1, i32 0, i32 0
  store %struct.rnode* %17, %struct.rnode** %18, align 8
  %19 = getelementptr inbounds %struct.rnode, %struct.rnode* %12, i64 0, i32 1, i32 0, i32 1
  store %struct.rnode* %1, %struct.rnode** %19, align 8
  %20 = call %struct.snode* @Push(%struct.snode** noundef nonnull %0, %struct.rnode* noundef nonnull %12) #3
  %21 = icmp eq %struct.snode* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %58

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.rnode, %struct.rnode* %12, i64 0, i32 1, i32 0, i32 0
  %25 = load %struct.rnode*, %struct.rnode** %24, align 8
  %26 = getelementptr inbounds %struct.rnode, %struct.rnode* %25, i64 0, i32 2
  %27 = load i16, i16* %26, align 8
  %.not = icmp eq i16 %27, 0
  br i1 %.not, label %28, label %34

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rnode, %struct.rnode* %12, i64 0, i32 1, i32 0, i32 1
  %30 = load %struct.rnode*, %struct.rnode** %29, align 8
  %31 = getelementptr inbounds %struct.rnode, %struct.rnode* %30, i64 0, i32 2
  %32 = load i16, i16* %31, align 8
  %33 = icmp ne i16 %32, 0
  %phi.cast = zext i1 %33 to i16
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i16 [ 1, %23 ], [ %phi.cast, %28 ]
  %36 = getelementptr inbounds %struct.rnode, %struct.rnode* %12, i64 0, i32 2
  store i16 %35, i16* %36, align 8
  %37 = getelementptr inbounds %struct.rnode, %struct.rnode* %12, i64 0, i32 1, i32 0, i32 0
  %38 = load %struct.rnode*, %struct.rnode** %37, align 8
  %39 = getelementptr inbounds %struct.rnode, %struct.rnode* %38, i64 0, i32 3
  %40 = load %struct.pnode*, %struct.pnode** %39, align 8
  %41 = getelementptr inbounds %struct.rnode, %struct.rnode* %12, i64 0, i32 1, i32 0, i32 1
  %42 = load %struct.rnode*, %struct.rnode** %41, align 8
  %43 = getelementptr inbounds %struct.rnode, %struct.rnode* %42, i64 0, i32 3
  %44 = load %struct.pnode*, %struct.pnode** %43, align 8
  %45 = call %struct.pnode* @pset_union(%struct.pnode* noundef %40, %struct.pnode* noundef %44) #3
  %46 = getelementptr inbounds %struct.rnode, %struct.rnode* %12, i64 0, i32 3
  store %struct.pnode* %45, %struct.pnode** %46, align 8
  %47 = getelementptr inbounds %struct.rnode, %struct.rnode* %12, i64 0, i32 1, i32 0, i32 0
  %48 = load %struct.rnode*, %struct.rnode** %47, align 8
  %49 = getelementptr inbounds %struct.rnode, %struct.rnode* %48, i64 0, i32 4
  %50 = load %struct.pnode*, %struct.pnode** %49, align 8
  %51 = getelementptr inbounds %struct.rnode, %struct.rnode* %12, i64 0, i32 1, i32 0, i32 1
  %52 = load %struct.rnode*, %struct.rnode** %51, align 8
  %53 = getelementptr inbounds %struct.rnode, %struct.rnode* %52, i64 0, i32 4
  %54 = load %struct.pnode*, %struct.pnode** %53, align 8
  %55 = call %struct.pnode* @pset_union(%struct.pnode* noundef %50, %struct.pnode* noundef %54) #3
  %56 = getelementptr inbounds %struct.rnode, %struct.rnode* %12, i64 0, i32 4
  store %struct.pnode* %55, %struct.pnode** %56, align 8
  %57 = load %struct.snode*, %struct.snode** %0, align 8
  br label %58

58:                                               ; preds = %34, %22, %14, %9
  %.0 = phi %struct.snode* [ null, %9 ], [ null, %14 ], [ null, %22 ], [ %57, %34 ]
  ret %struct.snode* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @parse_re(i8** noundef %0, i16 noundef signext %1) #0 {
  %3 = alloca %struct.snode*, align 8
  %4 = alloca %struct.snode*, align 8
  store %struct.snode* null, %struct.snode** %3, align 8
  %5 = icmp eq i8** %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i8*, i8** %0, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %2
  br label %123

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %122, %10
  %12 = call %struct.anon.3* @get_token(i8** noundef nonnull %0)
  %13 = icmp eq %struct.anon.3* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %123

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %12, i64 0, i32 0
  %17 = load i16, i16* %16, align 8
  %18 = sext i16 %17 to i32
  switch i32 %18, label %117 [
    i32 7, label %19
    i32 0, label %.loopexit
    i32 6, label %30
    i32 2, label %65
    i32 4, label %70
    i32 3, label %75
    i32 1, label %88
  ]

19:                                               ; preds = %15
  %20 = load i8*, i8** %0, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 -1
  store i8* %21, i8** %0, align 8
  br label %22

.loopexit:                                        ; preds = %15
  br label %22

22:                                               ; preds = %.loopexit, %19
  %23 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %12, i64 0, i32 0
  %24 = load i16, i16* %23, align 8
  %25 = icmp eq i16 %24, %1
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = call %struct.snode* @cat2(%struct.snode** noundef nonnull %3)
  %28 = call %struct.rnode* @Top(%struct.snode* noundef %27) #3
  br label %123

29:                                               ; preds = %22
  br label %123

30:                                               ; preds = %15
  %31 = call %struct.rnode* @parse_re(i8** noundef nonnull %0, i16 noundef signext 7)
  %32 = call %struct.snode* @Push(%struct.snode** noundef nonnull %3, %struct.rnode* noundef %31) #3
  %33 = icmp eq %struct.snode* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %123

35:                                               ; preds = %30
  %36 = call %struct.anon.3* @get_token(i8** noundef nonnull %0)
  %37 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %36, i64 0, i32 0
  %38 = load i16, i16* %37, align 8
  %.not = icmp eq i16 %38, 7
  br i1 %.not, label %39, label %41

39:                                               ; preds = %35
  %40 = icmp eq %struct.rnode* %31, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %39, %35
  br label %123

42:                                               ; preds = %39
  %43 = load %struct.snode*, %struct.snode** %3, align 8
  %44 = call i32 @Size(%struct.snode* noundef %43) #3
  %45 = icmp sgt i32 %44, 2
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load %struct.snode*, %struct.snode** %3, align 8
  %48 = getelementptr inbounds %struct.snode, %struct.snode* %47, i64 0, i32 2
  %49 = load %struct.snode*, %struct.snode** %48, align 8
  store %struct.snode* %49, %struct.snode** %4, align 8
  %50 = call %struct.snode* @cat2(%struct.snode** noundef nonnull %4)
  %51 = load %struct.snode*, %struct.snode** %3, align 8
  %52 = getelementptr inbounds %struct.snode, %struct.snode* %51, i64 0, i32 2
  store %struct.snode* %50, %struct.snode** %52, align 8
  %53 = icmp eq %struct.snode* %50, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %123

55:                                               ; preds = %46
  %56 = load %struct.snode*, %struct.snode** %3, align 8
  %57 = getelementptr inbounds %struct.snode, %struct.snode* %56, i64 0, i32 2
  %58 = load %struct.snode*, %struct.snode** %57, align 8
  %59 = getelementptr inbounds %struct.snode, %struct.snode* %58, i64 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = getelementptr inbounds %struct.snode, %struct.snode* %56, i64 0, i32 1
  store i32 %61, i32* %62, align 8
  br label %63

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %42
  br label %122

65:                                               ; preds = %15
  %66 = call %struct.snode* @wrap(%struct.snode** noundef nonnull %3, i16 noundef signext 2)
  %67 = icmp eq %struct.snode* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %123

69:                                               ; preds = %65
  br label %122

70:                                               ; preds = %15
  %71 = call %struct.snode* @wrap(%struct.snode** noundef nonnull %3, i16 noundef signext 4)
  %72 = icmp eq %struct.snode* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %123

74:                                               ; preds = %70
  br label %122

75:                                               ; preds = %15
  %76 = call %struct.snode* @cat2(%struct.snode** noundef nonnull %3)
  %77 = icmp eq %struct.snode* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %123

79:                                               ; preds = %75
  %80 = call %struct.rnode* @parse_re(i8** noundef nonnull %0, i16 noundef signext %1)
  %81 = icmp eq %struct.rnode* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %123

83:                                               ; preds = %79
  %84 = call %struct.snode* @mk_alt(%struct.snode** noundef nonnull %3, %struct.rnode* noundef nonnull %80)
  %85 = icmp eq %struct.snode* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %123

87:                                               ; preds = %83
  br label %122

88:                                               ; preds = %15
  %89 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %12, i64 0, i32 1
  %90 = load %struct.rnode*, %struct.rnode** %89, align 8
  %91 = call %struct.snode* @Push(%struct.snode** noundef nonnull %3, %struct.rnode* noundef %90) #3
  %92 = icmp eq %struct.snode* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %123

94:                                               ; preds = %88
  %95 = load %struct.snode*, %struct.snode** %3, align 8
  %96 = call i32 @Size(%struct.snode* noundef %95) #3
  %97 = icmp sgt i32 %96, 2
  br i1 %97, label %98, label %116

98:                                               ; preds = %94
  %99 = load %struct.snode*, %struct.snode** %3, align 8
  %100 = getelementptr inbounds %struct.snode, %struct.snode* %99, i64 0, i32 2
  %101 = load %struct.snode*, %struct.snode** %100, align 8
  store %struct.snode* %101, %struct.snode** %4, align 8
  %102 = call %struct.snode* @cat2(%struct.snode** noundef nonnull %4)
  %103 = load %struct.snode*, %struct.snode** %3, align 8
  %104 = getelementptr inbounds %struct.snode, %struct.snode* %103, i64 0, i32 2
  store %struct.snode* %102, %struct.snode** %104, align 8
  %105 = icmp eq %struct.snode* %102, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %123

107:                                              ; preds = %98
  %108 = load %struct.snode*, %struct.snode** %3, align 8
  %109 = getelementptr inbounds %struct.snode, %struct.snode* %108, i64 0, i32 2
  %110 = load %struct.snode*, %struct.snode** %109, align 8
  %111 = getelementptr inbounds %struct.snode, %struct.snode* %110, i64 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  %114 = getelementptr inbounds %struct.snode, %struct.snode* %108, i64 0, i32 1
  store i32 %113, i32* %114, align 8
  br label %115

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115, %94
  br label %122

117:                                              ; preds = %15
  %118 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %12, i64 0, i32 0
  %119 = load i16, i16* %118, align 8
  %120 = sext i16 %119 to i32
  %121 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef %120) #3
  br label %122

122:                                              ; preds = %117, %116, %87, %74, %69, %64
  br label %11

123:                                              ; preds = %106, %93, %86, %82, %78, %73, %68, %54, %41, %34, %29, %26, %14, %9
  %.0 = phi %struct.rnode* [ null, %9 ], [ null, %14 ], [ null, %93 ], [ null, %106 ], [ null, %78 ], [ null, %82 ], [ null, %86 ], [ null, %73 ], [ null, %68 ], [ null, %34 ], [ null, %41 ], [ null, %54 ], [ %28, %26 ], [ null, %29 ]
  ret %struct.rnode* %.0
}

declare dso_local %struct.rnode* @Top(%struct.snode* noundef) #2

declare dso_local i32 @Size(%struct.snode* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @parse(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.snode*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.snode* null, %struct.snode** %3, align 8
  %4 = call %struct.rnode* @parse_re(i8** noundef nonnull %2, i16 noundef signext 0)
  %5 = icmp eq %struct.rnode* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = call %struct.snode* @Push(%struct.snode** noundef nonnull %3, %struct.rnode* noundef nonnull %4) #3
  %8 = icmp eq %struct.snode* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %1
  br label %22

10:                                               ; preds = %6
  %11 = call %struct.rnode* @mk_leaf(i16 noundef signext 0, i16 noundef signext 0, i8 noundef signext 0, %struct.ch_set* noundef null)
  %12 = icmp eq %struct.rnode* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = call %struct.snode* @Push(%struct.snode** noundef nonnull %3, %struct.rnode* noundef nonnull %11) #3
  %15 = icmp eq %struct.snode* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10
  br label %22

17:                                               ; preds = %13
  %18 = load i32, i32* @pos_cnt, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @pos_cnt, align 4
  store i32 %19, i32* @final_pos, align 4
  %20 = call %struct.snode* @cat2(%struct.snode** noundef nonnull %3)
  %21 = call %struct.rnode* @Top(%struct.snode* noundef %20) #3
  br label %22

22:                                               ; preds = %17, %16, %9
  %.0 = phi %struct.rnode* [ null, %9 ], [ null, %16 ], [ %21, %17 ]
  ret %struct.rnode* %.0
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
