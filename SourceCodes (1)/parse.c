; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/parse.c'
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
define dso_local %struct.rnode* @mk_leaf(i16 noundef signext %0, i16 noundef signext %1, i8 noundef signext %2, %struct.ch_set* noundef %3) #0 {
  %5 = alloca %struct.rnode*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca %struct.ch_set*, align 8
  %10 = alloca %struct.rnode*, align 8
  %11 = alloca %struct.anon*, align 8
  store i16 %0, i16* %6, align 2
  store i16 %1, i16* %7, align 2
  store i8 %2, i8* %8, align 1
  store %struct.ch_set* %3, %struct.ch_set** %9, align 8
  %12 = call noalias i8* @malloc(i64 noundef 16) #3
  %13 = bitcast i8* %12 to %struct.anon*
  store %struct.anon* %13, %struct.anon** %11, align 8
  %14 = call noalias i8* @malloc(i64 noundef 48) #3
  %15 = bitcast i8* %14 to %struct.rnode*
  store %struct.rnode* %15, %struct.rnode** %10, align 8
  %16 = load %struct.anon*, %struct.anon** %11, align 8
  %17 = icmp eq %struct.anon* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load %struct.rnode*, %struct.rnode** %10, align 8
  %20 = icmp eq %struct.rnode* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %4
  store %struct.rnode* null, %struct.rnode** %5, align 8
  br label %65

22:                                               ; preds = %18
  %23 = load i16, i16* %7, align 2
  %24 = load %struct.anon*, %struct.anon** %11, align 8
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 1
  store i16 %23, i16* %25, align 4
  %26 = load i32, i32* @pos_cnt, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @pos_cnt, align 4
  %28 = load %struct.anon*, %struct.anon** %11, align 8
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i16, i16* %7, align 2
  %31 = sext i16 %30 to i32
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.ch_set*, %struct.ch_set** %9, align 8
  %35 = load %struct.anon*, %struct.anon** %11, align 8
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 2
  %37 = bitcast %union.anon.0* %36 to %struct.ch_set**
  store %struct.ch_set* %34, %struct.ch_set** %37, align 8
  br label %43

38:                                               ; preds = %22
  %39 = load i8, i8* %8, align 1
  %40 = load %struct.anon*, %struct.anon** %11, align 8
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 2
  %42 = bitcast %union.anon.0* %41 to i8*
  store i8 %39, i8* %42, align 8
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i16, i16* %6, align 2
  %45 = load %struct.rnode*, %struct.rnode** %10, align 8
  %46 = getelementptr inbounds %struct.rnode, %struct.rnode* %45, i32 0, i32 0
  store i16 %44, i16* %46, align 8
  %47 = load %struct.anon*, %struct.anon** %11, align 8
  %48 = load %struct.rnode*, %struct.rnode** %10, align 8
  %49 = getelementptr inbounds %struct.rnode, %struct.rnode* %48, i32 0, i32 1
  %50 = bitcast %union.anon* %49 to %struct.anon**
  store %struct.anon* %47, %struct.anon** %50, align 8
  %51 = load %struct.rnode*, %struct.rnode** %10, align 8
  %52 = getelementptr inbounds %struct.rnode, %struct.rnode* %51, i32 0, i32 2
  store i16 0, i16* %52, align 8
  %53 = load %struct.anon*, %struct.anon** %11, align 8
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.pnode* @create_pos(i32 noundef %55)
  %57 = load %struct.rnode*, %struct.rnode** %10, align 8
  %58 = getelementptr inbounds %struct.rnode, %struct.rnode* %57, i32 0, i32 3
  store %struct.pnode* %56, %struct.pnode** %58, align 8
  %59 = load %struct.rnode*, %struct.rnode** %10, align 8
  %60 = getelementptr inbounds %struct.rnode, %struct.rnode* %59, i32 0, i32 3
  %61 = load %struct.pnode*, %struct.pnode** %60, align 8
  %62 = load %struct.rnode*, %struct.rnode** %10, align 8
  %63 = getelementptr inbounds %struct.rnode, %struct.rnode* %62, i32 0, i32 4
  store %struct.pnode* %61, %struct.pnode** %63, align 8
  %64 = load %struct.rnode*, %struct.rnode** %10, align 8
  store %struct.rnode* %64, %struct.rnode** %5, align 8
  br label %65

65:                                               ; preds = %43, %21
  %66 = load %struct.rnode*, %struct.rnode** %5, align 8
  ret %struct.rnode* %66
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local %struct.pnode* @create_pos(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @parse_cset(i8** noundef %0) #0 {
  %2 = alloca %struct.rnode*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca %struct.ch_set*, align 8
  %5 = alloca %struct.ch_set*, align 8
  %6 = alloca %struct.ch_set*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.anon.1*, align 8
  store i8** %0, i8*** %3, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load i8**, i8*** %3, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 93
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %1
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %132

21:                                               ; preds = %14
  %22 = call noalias i8* @malloc(i64 noundef 16) #3
  %23 = bitcast i8* %22 to %struct.ch_set*
  store %struct.ch_set* %23, %struct.ch_set** %5, align 8
  %24 = load %struct.ch_set*, %struct.ch_set** %5, align 8
  store %struct.ch_set* %24, %struct.ch_set** %4, align 8
  br label %25

25:                                               ; preds = %113, %21
  %26 = load i8**, i8*** %3, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load i8**, i8*** %3, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 93
  br label %37

37:                                               ; preds = %31, %25
  %38 = phi i1 [ true, %25 ], [ %36, %31 ]
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %120

40:                                               ; preds = %37
  %41 = call noalias i8* @malloc(i64 noundef 2) #3
  %42 = bitcast i8* %41 to %struct.anon.1*
  store %struct.anon.1* %42, %struct.anon.1** %8, align 8
  %43 = load %struct.anon.1*, %struct.anon.1** %8, align 8
  %44 = load %struct.ch_set*, %struct.ch_set** %5, align 8
  %45 = getelementptr inbounds %struct.ch_set, %struct.ch_set* %44, i32 0, i32 0
  store %struct.anon.1* %43, %struct.anon.1** %45, align 8
  %46 = load i8**, i8*** %3, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %46, align 8
  %49 = load i8, i8* %47, align 1
  store i8 %49, i8* %7, align 1
  %50 = load i8, i8* %7, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 45
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %132

54:                                               ; preds = %40
  %55 = load i8, i8* %7, align 1
  %56 = load %struct.anon.1*, %struct.anon.1** %8, align 8
  %57 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %56, i32 0, i32 0
  store i8 %55, i8* %57, align 1
  %58 = load i8**, i8*** %3, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %132

64:                                               ; preds = %54
  %65 = load i8**, i8*** %3, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 45
  br i1 %69, label %70, label %108

70:                                               ; preds = %64
  %71 = load i8**, i8*** %3, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %71, align 8
  %74 = load i8**, i8*** %3, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %99, label %79

79:                                               ; preds = %70
  %80 = load i8**, i8*** %3, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 45
  br i1 %84, label %99, label %85

85:                                               ; preds = %79
  %86 = load i8**, i8*** %3, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 93
  br i1 %90, label %99, label %91

91:                                               ; preds = %85
  %92 = load i8**, i8*** %3, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = load i8, i8* %7, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91, %85, %79, %70
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %132

100:                                              ; preds = %91
  %101 = load i8**, i8*** %3, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %101, align 8
  %104 = load i8, i8* %102, align 1
  %105 = load %struct.anon.1*, %struct.anon.1** %8, align 8
  %106 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %105, i32 0, i32 1
  store i8 %104, i8* %106, align 1
  br label %107

107:                                              ; preds = %100
  br label %112

108:                                              ; preds = %64
  %109 = load i8, i8* %7, align 1
  %110 = load %struct.anon.1*, %struct.anon.1** %8, align 8
  %111 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %110, i32 0, i32 1
  store i8 %109, i8* %111, align 1
  br label %112

112:                                              ; preds = %108, %107
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.ch_set*, %struct.ch_set** %5, align 8
  store %struct.ch_set* %114, %struct.ch_set** %6, align 8
  %115 = call noalias i8* @malloc(i64 noundef 16) #3
  %116 = bitcast i8* %115 to %struct.ch_set*
  store %struct.ch_set* %116, %struct.ch_set** %5, align 8
  %117 = load %struct.ch_set*, %struct.ch_set** %5, align 8
  %118 = load %struct.ch_set*, %struct.ch_set** %6, align 8
  %119 = getelementptr inbounds %struct.ch_set, %struct.ch_set* %118, i32 0, i32 1
  store %struct.ch_set* %117, %struct.ch_set** %119, align 8
  br label %25, !llvm.loop !4

120:                                              ; preds = %37
  %121 = load i8**, i8*** %3, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 93
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load %struct.ch_set*, %struct.ch_set** %6, align 8
  %128 = getelementptr inbounds %struct.ch_set, %struct.ch_set* %127, i32 0, i32 1
  store %struct.ch_set* null, %struct.ch_set** %128, align 8
  %129 = load %struct.ch_set*, %struct.ch_set** %4, align 8
  %130 = call %struct.rnode* @mk_leaf(i16 noundef signext 1, i16 noundef signext 1, i8 noundef signext 0, %struct.ch_set* noundef %129)
  store %struct.rnode* %130, %struct.rnode** %2, align 8
  br label %132

131:                                              ; preds = %120
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %132

132:                                              ; preds = %131, %126, %99, %63, %53, %20
  %133 = load %struct.rnode*, %struct.rnode** %2, align 8
  ret %struct.rnode* %133
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @parse_wildcard() #0 {
  %1 = alloca %struct.ch_set*, align 8
  %2 = alloca %struct.anon.1*, align 8
  %3 = call noalias i8* @malloc(i64 noundef 2) #3
  %4 = bitcast i8* %3 to %struct.anon.1*
  store %struct.anon.1* %4, %struct.anon.1** %2, align 8
  %5 = load %struct.anon.1*, %struct.anon.1** %2, align 8
  %6 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %5, i32 0, i32 0
  store i8 1, i8* %6, align 1
  %7 = load %struct.anon.1*, %struct.anon.1** %2, align 8
  %8 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %7, i32 0, i32 1
  store i8 127, i8* %8, align 1
  %9 = call noalias i8* @malloc(i64 noundef 16) #3
  %10 = bitcast i8* %9 to %struct.ch_set*
  store %struct.ch_set* %10, %struct.ch_set** %1, align 8
  %11 = load %struct.anon.1*, %struct.anon.1** %2, align 8
  %12 = load %struct.ch_set*, %struct.ch_set** %1, align 8
  %13 = getelementptr inbounds %struct.ch_set, %struct.ch_set* %12, i32 0, i32 0
  store %struct.anon.1* %11, %struct.anon.1** %13, align 8
  %14 = load %struct.ch_set*, %struct.ch_set** %1, align 8
  %15 = getelementptr inbounds %struct.ch_set, %struct.ch_set* %14, i32 0, i32 1
  store %struct.ch_set* null, %struct.ch_set** %15, align 8
  %16 = load %struct.ch_set*, %struct.ch_set** %1, align 8
  %17 = call %struct.rnode* @mk_leaf(i16 noundef signext 1, i16 noundef signext 1, i8 noundef signext 0, %struct.ch_set* noundef %16)
  ret %struct.rnode* %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @parse_chlit(i8 noundef signext %0) #0 {
  %2 = alloca %struct.rnode*, align 8
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %11

8:                                                ; preds = %1
  %9 = load i8, i8* %3, align 1
  %10 = call %struct.rnode* @mk_leaf(i16 noundef signext 1, i16 noundef signext 0, i8 noundef signext %9, %struct.ch_set* noundef null)
  store %struct.rnode* %10, %struct.rnode** %2, align 8
  br label %11

11:                                               ; preds = %8, %7
  %12 = load %struct.rnode*, %struct.rnode** %2, align 8
  ret %struct.rnode* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.anon.3* @get_token(i8** noundef %0) #0 {
  %2 = alloca %struct.anon.3*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca %struct.anon.3*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.anon.3* null, %struct.anon.3** %4, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = icmp eq i8** %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i8**, i8*** %3, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  store %struct.anon.3* null, %struct.anon.3** %2, align 8
  br label %96

12:                                               ; preds = %7
  %13 = call noalias i8* @malloc(i64 noundef 16) #3
  %14 = bitcast i8* %13 to %struct.anon.3*
  store %struct.anon.3* %14, %struct.anon.3** %4, align 8
  %15 = load i8**, i8*** %3, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %22 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %21, i32 0, i32 0
  store i16 0, i16* %22, align 8
  br label %94

23:                                               ; preds = %12
  %24 = load i8**, i8*** %3, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %75 [
    i32 46, label %28
    i32 91, label %40
    i32 40, label %56
    i32 41, label %59
    i32 42, label %62
    i32 124, label %65
    i32 63, label %68
    i32 92, label %71
  ]

28:                                               ; preds = %23
  %29 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %30 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %29, i32 0, i32 0
  store i16 1, i16* %30, align 8
  %31 = call %struct.rnode* @parse_wildcard()
  %32 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %33 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %32, i32 0, i32 1
  store %struct.rnode* %31, %struct.rnode** %33, align 8
  %34 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %35 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %34, i32 0, i32 1
  %36 = load %struct.rnode*, %struct.rnode** %35, align 8
  %37 = icmp eq %struct.rnode* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store %struct.anon.3* null, %struct.anon.3** %2, align 8
  br label %96

39:                                               ; preds = %28
  br label %90

40:                                               ; preds = %23
  %41 = load i8**, i8*** %3, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %41, align 8
  %44 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %45 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %44, i32 0, i32 0
  store i16 1, i16* %45, align 8
  %46 = load i8**, i8*** %3, align 8
  %47 = call %struct.rnode* @parse_cset(i8** noundef %46)
  %48 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %49 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %48, i32 0, i32 1
  store %struct.rnode* %47, %struct.rnode** %49, align 8
  %50 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %51 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %50, i32 0, i32 1
  %52 = load %struct.rnode*, %struct.rnode** %51, align 8
  %53 = icmp eq %struct.rnode* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store %struct.anon.3* null, %struct.anon.3** %2, align 8
  br label %96

55:                                               ; preds = %40
  br label %90

56:                                               ; preds = %23
  %57 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %58 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %57, i32 0, i32 0
  store i16 6, i16* %58, align 8
  br label %90

59:                                               ; preds = %23
  %60 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %61 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %60, i32 0, i32 0
  store i16 7, i16* %61, align 8
  br label %90

62:                                               ; preds = %23
  %63 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %64 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %63, i32 0, i32 0
  store i16 2, i16* %64, align 8
  br label %90

65:                                               ; preds = %23
  %66 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %67 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %66, i32 0, i32 0
  store i16 3, i16* %67, align 8
  br label %90

68:                                               ; preds = %23
  %69 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %70 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %69, i32 0, i32 0
  store i16 4, i16* %70, align 8
  br label %90

71:                                               ; preds = %23
  %72 = load i8**, i8*** %3, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %72, align 8
  br label %75

75:                                               ; preds = %23, %71
  %76 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %77 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %76, i32 0, i32 0
  store i16 1, i16* %77, align 8
  %78 = load i8**, i8*** %3, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call %struct.rnode* @parse_chlit(i8 noundef signext %80)
  %82 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %83 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %82, i32 0, i32 1
  store %struct.rnode* %81, %struct.rnode** %83, align 8
  %84 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %85 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %84, i32 0, i32 1
  %86 = load %struct.rnode*, %struct.rnode** %85, align 8
  %87 = icmp eq %struct.rnode* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  store %struct.anon.3* null, %struct.anon.3** %2, align 8
  br label %96

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %68, %65, %62, %59, %56, %55, %39
  %91 = load i8**, i8*** %3, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %91, align 8
  br label %94

94:                                               ; preds = %90, %20
  %95 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  store %struct.anon.3* %95, %struct.anon.3** %2, align 8
  br label %96

96:                                               ; preds = %94, %88, %54, %38, %11
  %97 = load %struct.anon.3*, %struct.anon.3** %2, align 8
  ret %struct.anon.3* %97
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.snode* @cat2(%struct.snode** noundef %0) #0 {
  %2 = alloca %struct.snode*, align 8
  %3 = alloca %struct.snode**, align 8
  %4 = alloca %struct.rnode*, align 8
  store %struct.snode** %0, %struct.snode*** %3, align 8
  %5 = load %struct.snode**, %struct.snode*** %3, align 8
  %6 = icmp eq %struct.snode** %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.snode* null, %struct.snode** %2, align 8
  br label %149

8:                                                ; preds = %1
  %9 = load %struct.snode**, %struct.snode*** %3, align 8
  %10 = load %struct.snode*, %struct.snode** %9, align 8
  %11 = icmp eq %struct.snode* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load %struct.snode**, %struct.snode*** %3, align 8
  %14 = load %struct.snode*, %struct.snode** %13, align 8
  %15 = getelementptr inbounds %struct.snode, %struct.snode* %14, i32 0, i32 2
  %16 = load %struct.snode*, %struct.snode** %15, align 8
  %17 = icmp eq %struct.snode* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %8
  %19 = load %struct.snode**, %struct.snode*** %3, align 8
  %20 = load %struct.snode*, %struct.snode** %19, align 8
  store %struct.snode* %20, %struct.snode** %2, align 8
  br label %149

21:                                               ; preds = %12
  %22 = call noalias i8* @malloc(i64 noundef 48) #3
  %23 = bitcast i8* %22 to %struct.rnode*
  store %struct.rnode* %23, %struct.rnode** %4, align 8
  %24 = load %struct.rnode*, %struct.rnode** %4, align 8
  %25 = icmp eq %struct.rnode* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store %struct.snode* null, %struct.snode** %2, align 8
  br label %149

27:                                               ; preds = %21
  %28 = load %struct.rnode*, %struct.rnode** %4, align 8
  %29 = getelementptr inbounds %struct.rnode, %struct.rnode* %28, i32 0, i32 0
  store i16 5, i16* %29, align 8
  %30 = load %struct.snode**, %struct.snode*** %3, align 8
  %31 = call %struct.rnode* @Pop(%struct.snode** noundef %30)
  %32 = load %struct.rnode*, %struct.rnode** %4, align 8
  %33 = getelementptr inbounds %struct.rnode, %struct.rnode* %32, i32 0, i32 1
  %34 = bitcast %union.anon* %33 to %struct.anon.2*
  %35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %34, i32 0, i32 1
  store %struct.rnode* %31, %struct.rnode** %35, align 8
  %36 = load %struct.snode**, %struct.snode*** %3, align 8
  %37 = call %struct.rnode* @Pop(%struct.snode** noundef %36)
  %38 = load %struct.rnode*, %struct.rnode** %4, align 8
  %39 = getelementptr inbounds %struct.rnode, %struct.rnode* %38, i32 0, i32 1
  %40 = bitcast %union.anon* %39 to %struct.anon.2*
  %41 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %40, i32 0, i32 0
  store %struct.rnode* %37, %struct.rnode** %41, align 8
  %42 = load %struct.snode**, %struct.snode*** %3, align 8
  %43 = load %struct.rnode*, %struct.rnode** %4, align 8
  %44 = call %struct.snode* @Push(%struct.snode** noundef %42, %struct.rnode* noundef %43)
  %45 = icmp eq %struct.snode* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  store %struct.snode* null, %struct.snode** %2, align 8
  br label %149

47:                                               ; preds = %27
  %48 = load %struct.rnode*, %struct.rnode** %4, align 8
  %49 = getelementptr inbounds %struct.rnode, %struct.rnode* %48, i32 0, i32 1
  %50 = bitcast %union.anon* %49 to %struct.anon.2*
  %51 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %50, i32 0, i32 0
  %52 = load %struct.rnode*, %struct.rnode** %51, align 8
  %53 = getelementptr inbounds %struct.rnode, %struct.rnode* %52, i32 0, i32 2
  %54 = load i16, i16* %53, align 8
  %55 = sext i16 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = load %struct.rnode*, %struct.rnode** %4, align 8
  %59 = getelementptr inbounds %struct.rnode, %struct.rnode* %58, i32 0, i32 1
  %60 = bitcast %union.anon* %59 to %struct.anon.2*
  %61 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %60, i32 0, i32 1
  %62 = load %struct.rnode*, %struct.rnode** %61, align 8
  %63 = getelementptr inbounds %struct.rnode, %struct.rnode* %62, i32 0, i32 2
  %64 = load i16, i16* %63, align 8
  %65 = sext i16 %64 to i32
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %57, %47
  %68 = phi i1 [ false, %47 ], [ %66, %57 ]
  %69 = zext i1 %68 to i32
  %70 = trunc i32 %69 to i16
  %71 = load %struct.rnode*, %struct.rnode** %4, align 8
  %72 = getelementptr inbounds %struct.rnode, %struct.rnode* %71, i32 0, i32 2
  store i16 %70, i16* %72, align 8
  %73 = load %struct.rnode*, %struct.rnode** %4, align 8
  %74 = getelementptr inbounds %struct.rnode, %struct.rnode* %73, i32 0, i32 1
  %75 = bitcast %union.anon* %74 to %struct.anon.2*
  %76 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %75, i32 0, i32 0
  %77 = load %struct.rnode*, %struct.rnode** %76, align 8
  %78 = getelementptr inbounds %struct.rnode, %struct.rnode* %77, i32 0, i32 2
  %79 = load i16, i16* %78, align 8
  %80 = icmp ne i16 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %67
  %82 = load %struct.rnode*, %struct.rnode** %4, align 8
  %83 = getelementptr inbounds %struct.rnode, %struct.rnode* %82, i32 0, i32 1
  %84 = bitcast %union.anon* %83 to %struct.anon.2*
  %85 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %84, i32 0, i32 0
  %86 = load %struct.rnode*, %struct.rnode** %85, align 8
  %87 = getelementptr inbounds %struct.rnode, %struct.rnode* %86, i32 0, i32 3
  %88 = load %struct.pnode*, %struct.pnode** %87, align 8
  %89 = load %struct.rnode*, %struct.rnode** %4, align 8
  %90 = getelementptr inbounds %struct.rnode, %struct.rnode* %89, i32 0, i32 1
  %91 = bitcast %union.anon* %90 to %struct.anon.2*
  %92 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %91, i32 0, i32 1
  %93 = load %struct.rnode*, %struct.rnode** %92, align 8
  %94 = getelementptr inbounds %struct.rnode, %struct.rnode* %93, i32 0, i32 3
  %95 = load %struct.pnode*, %struct.pnode** %94, align 8
  %96 = call %struct.pnode* @pset_union(%struct.pnode* noundef %88, %struct.pnode* noundef %95)
  %97 = load %struct.rnode*, %struct.rnode** %4, align 8
  %98 = getelementptr inbounds %struct.rnode, %struct.rnode* %97, i32 0, i32 3
  store %struct.pnode* %96, %struct.pnode** %98, align 8
  br label %109

99:                                               ; preds = %67
  %100 = load %struct.rnode*, %struct.rnode** %4, align 8
  %101 = getelementptr inbounds %struct.rnode, %struct.rnode* %100, i32 0, i32 1
  %102 = bitcast %union.anon* %101 to %struct.anon.2*
  %103 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %102, i32 0, i32 0
  %104 = load %struct.rnode*, %struct.rnode** %103, align 8
  %105 = getelementptr inbounds %struct.rnode, %struct.rnode* %104, i32 0, i32 3
  %106 = load %struct.pnode*, %struct.pnode** %105, align 8
  %107 = load %struct.rnode*, %struct.rnode** %4, align 8
  %108 = getelementptr inbounds %struct.rnode, %struct.rnode* %107, i32 0, i32 3
  store %struct.pnode* %106, %struct.pnode** %108, align 8
  br label %109

109:                                              ; preds = %99, %81
  %110 = load %struct.rnode*, %struct.rnode** %4, align 8
  %111 = getelementptr inbounds %struct.rnode, %struct.rnode* %110, i32 0, i32 1
  %112 = bitcast %union.anon* %111 to %struct.anon.2*
  %113 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %112, i32 0, i32 1
  %114 = load %struct.rnode*, %struct.rnode** %113, align 8
  %115 = getelementptr inbounds %struct.rnode, %struct.rnode* %114, i32 0, i32 2
  %116 = load i16, i16* %115, align 8
  %117 = icmp ne i16 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %109
  %119 = load %struct.rnode*, %struct.rnode** %4, align 8
  %120 = getelementptr inbounds %struct.rnode, %struct.rnode* %119, i32 0, i32 1
  %121 = bitcast %union.anon* %120 to %struct.anon.2*
  %122 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %121, i32 0, i32 0
  %123 = load %struct.rnode*, %struct.rnode** %122, align 8
  %124 = getelementptr inbounds %struct.rnode, %struct.rnode* %123, i32 0, i32 4
  %125 = load %struct.pnode*, %struct.pnode** %124, align 8
  %126 = load %struct.rnode*, %struct.rnode** %4, align 8
  %127 = getelementptr inbounds %struct.rnode, %struct.rnode* %126, i32 0, i32 1
  %128 = bitcast %union.anon* %127 to %struct.anon.2*
  %129 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %128, i32 0, i32 1
  %130 = load %struct.rnode*, %struct.rnode** %129, align 8
  %131 = getelementptr inbounds %struct.rnode, %struct.rnode* %130, i32 0, i32 4
  %132 = load %struct.pnode*, %struct.pnode** %131, align 8
  %133 = call %struct.pnode* @pset_union(%struct.pnode* noundef %125, %struct.pnode* noundef %132)
  %134 = load %struct.rnode*, %struct.rnode** %4, align 8
  %135 = getelementptr inbounds %struct.rnode, %struct.rnode* %134, i32 0, i32 4
  store %struct.pnode* %133, %struct.pnode** %135, align 8
  br label %146

136:                                              ; preds = %109
  %137 = load %struct.rnode*, %struct.rnode** %4, align 8
  %138 = getelementptr inbounds %struct.rnode, %struct.rnode* %137, i32 0, i32 1
  %139 = bitcast %union.anon* %138 to %struct.anon.2*
  %140 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %139, i32 0, i32 1
  %141 = load %struct.rnode*, %struct.rnode** %140, align 8
  %142 = getelementptr inbounds %struct.rnode, %struct.rnode* %141, i32 0, i32 4
  %143 = load %struct.pnode*, %struct.pnode** %142, align 8
  %144 = load %struct.rnode*, %struct.rnode** %4, align 8
  %145 = getelementptr inbounds %struct.rnode, %struct.rnode* %144, i32 0, i32 4
  store %struct.pnode* %143, %struct.pnode** %145, align 8
  br label %146

146:                                              ; preds = %136, %118
  %147 = load %struct.snode**, %struct.snode*** %3, align 8
  %148 = load %struct.snode*, %struct.snode** %147, align 8
  store %struct.snode* %148, %struct.snode** %2, align 8
  br label %149

149:                                              ; preds = %146, %46, %26, %18, %7
  %150 = load %struct.snode*, %struct.snode** %2, align 8
  ret %struct.snode* %150
}

declare dso_local %struct.rnode* @Pop(%struct.snode** noundef) #2

declare dso_local %struct.snode* @Push(%struct.snode** noundef, %struct.rnode* noundef) #2

declare dso_local %struct.pnode* @pset_union(%struct.pnode* noundef, %struct.pnode* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.snode* @wrap(%struct.snode** noundef %0, i16 noundef signext %1) #0 {
  %3 = alloca %struct.snode*, align 8
  %4 = alloca %struct.snode**, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.rnode*, align 8
  store %struct.snode** %0, %struct.snode*** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load %struct.snode**, %struct.snode*** %4, align 8
  %8 = icmp eq %struct.snode** %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.snode**, %struct.snode*** %4, align 8
  %11 = load %struct.snode*, %struct.snode** %10, align 8
  %12 = icmp eq %struct.snode* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store %struct.snode* null, %struct.snode** %3, align 8
  br label %55

14:                                               ; preds = %9
  %15 = call noalias i8* @malloc(i64 noundef 48) #3
  %16 = bitcast i8* %15 to %struct.rnode*
  store %struct.rnode* %16, %struct.rnode** %6, align 8
  %17 = load %struct.rnode*, %struct.rnode** %6, align 8
  %18 = icmp eq %struct.rnode* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.snode* null, %struct.snode** %3, align 8
  br label %55

20:                                               ; preds = %14
  %21 = load i16, i16* %5, align 2
  %22 = load %struct.rnode*, %struct.rnode** %6, align 8
  %23 = getelementptr inbounds %struct.rnode, %struct.rnode* %22, i32 0, i32 0
  store i16 %21, i16* %23, align 8
  %24 = load %struct.snode**, %struct.snode*** %4, align 8
  %25 = call %struct.rnode* @Pop(%struct.snode** noundef %24)
  %26 = load %struct.rnode*, %struct.rnode** %6, align 8
  %27 = getelementptr inbounds %struct.rnode, %struct.rnode* %26, i32 0, i32 1
  %28 = bitcast %union.anon* %27 to %struct.rnode**
  store %struct.rnode* %25, %struct.rnode** %28, align 8
  %29 = load %struct.snode**, %struct.snode*** %4, align 8
  %30 = load %struct.rnode*, %struct.rnode** %6, align 8
  %31 = call %struct.snode* @Push(%struct.snode** noundef %29, %struct.rnode* noundef %30)
  %32 = icmp eq %struct.snode* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  store %struct.snode* null, %struct.snode** %3, align 8
  br label %55

34:                                               ; preds = %20
  %35 = load %struct.rnode*, %struct.rnode** %6, align 8
  %36 = getelementptr inbounds %struct.rnode, %struct.rnode* %35, i32 0, i32 2
  store i16 1, i16* %36, align 8
  %37 = load %struct.rnode*, %struct.rnode** %6, align 8
  %38 = getelementptr inbounds %struct.rnode, %struct.rnode* %37, i32 0, i32 1
  %39 = bitcast %union.anon* %38 to %struct.rnode**
  %40 = load %struct.rnode*, %struct.rnode** %39, align 8
  %41 = getelementptr inbounds %struct.rnode, %struct.rnode* %40, i32 0, i32 3
  %42 = load %struct.pnode*, %struct.pnode** %41, align 8
  %43 = load %struct.rnode*, %struct.rnode** %6, align 8
  %44 = getelementptr inbounds %struct.rnode, %struct.rnode* %43, i32 0, i32 3
  store %struct.pnode* %42, %struct.pnode** %44, align 8
  %45 = load %struct.rnode*, %struct.rnode** %6, align 8
  %46 = getelementptr inbounds %struct.rnode, %struct.rnode* %45, i32 0, i32 1
  %47 = bitcast %union.anon* %46 to %struct.rnode**
  %48 = load %struct.rnode*, %struct.rnode** %47, align 8
  %49 = getelementptr inbounds %struct.rnode, %struct.rnode* %48, i32 0, i32 4
  %50 = load %struct.pnode*, %struct.pnode** %49, align 8
  %51 = load %struct.rnode*, %struct.rnode** %6, align 8
  %52 = getelementptr inbounds %struct.rnode, %struct.rnode* %51, i32 0, i32 4
  store %struct.pnode* %50, %struct.pnode** %52, align 8
  %53 = load %struct.snode**, %struct.snode*** %4, align 8
  %54 = load %struct.snode*, %struct.snode** %53, align 8
  store %struct.snode* %54, %struct.snode** %3, align 8
  br label %55

55:                                               ; preds = %34, %33, %19, %13
  %56 = load %struct.snode*, %struct.snode** %3, align 8
  ret %struct.snode* %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.snode* @mk_alt(%struct.snode** noundef %0, %struct.rnode* noundef %1) #0 {
  %3 = alloca %struct.snode*, align 8
  %4 = alloca %struct.snode**, align 8
  %5 = alloca %struct.rnode*, align 8
  %6 = alloca %struct.rnode*, align 8
  store %struct.snode** %0, %struct.snode*** %4, align 8
  store %struct.rnode* %1, %struct.rnode** %5, align 8
  %7 = load %struct.snode**, %struct.snode*** %4, align 8
  %8 = icmp eq %struct.snode** %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load %struct.snode**, %struct.snode*** %4, align 8
  %11 = load %struct.snode*, %struct.snode** %10, align 8
  %12 = icmp eq %struct.snode* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load %struct.rnode*, %struct.rnode** %5, align 8
  %15 = icmp eq %struct.rnode* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %9, %2
  store %struct.snode* null, %struct.snode** %3, align 8
  br label %104

17:                                               ; preds = %13
  %18 = call noalias i8* @malloc(i64 noundef 48) #3
  %19 = bitcast i8* %18 to %struct.rnode*
  store %struct.rnode* %19, %struct.rnode** %6, align 8
  %20 = load %struct.rnode*, %struct.rnode** %6, align 8
  %21 = icmp eq %struct.rnode* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store %struct.snode* null, %struct.snode** %3, align 8
  br label %104

23:                                               ; preds = %17
  %24 = load %struct.rnode*, %struct.rnode** %6, align 8
  %25 = getelementptr inbounds %struct.rnode, %struct.rnode* %24, i32 0, i32 0
  store i16 3, i16* %25, align 8
  %26 = load %struct.snode**, %struct.snode*** %4, align 8
  %27 = call %struct.rnode* @Pop(%struct.snode** noundef %26)
  %28 = load %struct.rnode*, %struct.rnode** %6, align 8
  %29 = getelementptr inbounds %struct.rnode, %struct.rnode* %28, i32 0, i32 1
  %30 = bitcast %union.anon* %29 to %struct.anon.2*
  %31 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %30, i32 0, i32 0
  store %struct.rnode* %27, %struct.rnode** %31, align 8
  %32 = load %struct.rnode*, %struct.rnode** %5, align 8
  %33 = load %struct.rnode*, %struct.rnode** %6, align 8
  %34 = getelementptr inbounds %struct.rnode, %struct.rnode* %33, i32 0, i32 1
  %35 = bitcast %union.anon* %34 to %struct.anon.2*
  %36 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %35, i32 0, i32 1
  store %struct.rnode* %32, %struct.rnode** %36, align 8
  %37 = load %struct.snode**, %struct.snode*** %4, align 8
  %38 = load %struct.rnode*, %struct.rnode** %6, align 8
  %39 = call %struct.snode* @Push(%struct.snode** noundef %37, %struct.rnode* noundef %38)
  %40 = icmp eq %struct.snode* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  store %struct.snode* null, %struct.snode** %3, align 8
  br label %104

42:                                               ; preds = %23
  %43 = load %struct.rnode*, %struct.rnode** %6, align 8
  %44 = getelementptr inbounds %struct.rnode, %struct.rnode* %43, i32 0, i32 1
  %45 = bitcast %union.anon* %44 to %struct.anon.2*
  %46 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %45, i32 0, i32 0
  %47 = load %struct.rnode*, %struct.rnode** %46, align 8
  %48 = getelementptr inbounds %struct.rnode, %struct.rnode* %47, i32 0, i32 2
  %49 = load i16, i16* %48, align 8
  %50 = sext i16 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %42
  %53 = load %struct.rnode*, %struct.rnode** %6, align 8
  %54 = getelementptr inbounds %struct.rnode, %struct.rnode* %53, i32 0, i32 1
  %55 = bitcast %union.anon* %54 to %struct.anon.2*
  %56 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %55, i32 0, i32 1
  %57 = load %struct.rnode*, %struct.rnode** %56, align 8
  %58 = getelementptr inbounds %struct.rnode, %struct.rnode* %57, i32 0, i32 2
  %59 = load i16, i16* %58, align 8
  %60 = sext i16 %59 to i32
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %52, %42
  %63 = phi i1 [ true, %42 ], [ %61, %52 ]
  %64 = zext i1 %63 to i32
  %65 = trunc i32 %64 to i16
  %66 = load %struct.rnode*, %struct.rnode** %6, align 8
  %67 = getelementptr inbounds %struct.rnode, %struct.rnode* %66, i32 0, i32 2
  store i16 %65, i16* %67, align 8
  %68 = load %struct.rnode*, %struct.rnode** %6, align 8
  %69 = getelementptr inbounds %struct.rnode, %struct.rnode* %68, i32 0, i32 1
  %70 = bitcast %union.anon* %69 to %struct.anon.2*
  %71 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 0
  %72 = load %struct.rnode*, %struct.rnode** %71, align 8
  %73 = getelementptr inbounds %struct.rnode, %struct.rnode* %72, i32 0, i32 3
  %74 = load %struct.pnode*, %struct.pnode** %73, align 8
  %75 = load %struct.rnode*, %struct.rnode** %6, align 8
  %76 = getelementptr inbounds %struct.rnode, %struct.rnode* %75, i32 0, i32 1
  %77 = bitcast %union.anon* %76 to %struct.anon.2*
  %78 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %77, i32 0, i32 1
  %79 = load %struct.rnode*, %struct.rnode** %78, align 8
  %80 = getelementptr inbounds %struct.rnode, %struct.rnode* %79, i32 0, i32 3
  %81 = load %struct.pnode*, %struct.pnode** %80, align 8
  %82 = call %struct.pnode* @pset_union(%struct.pnode* noundef %74, %struct.pnode* noundef %81)
  %83 = load %struct.rnode*, %struct.rnode** %6, align 8
  %84 = getelementptr inbounds %struct.rnode, %struct.rnode* %83, i32 0, i32 3
  store %struct.pnode* %82, %struct.pnode** %84, align 8
  %85 = load %struct.rnode*, %struct.rnode** %6, align 8
  %86 = getelementptr inbounds %struct.rnode, %struct.rnode* %85, i32 0, i32 1
  %87 = bitcast %union.anon* %86 to %struct.anon.2*
  %88 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %87, i32 0, i32 0
  %89 = load %struct.rnode*, %struct.rnode** %88, align 8
  %90 = getelementptr inbounds %struct.rnode, %struct.rnode* %89, i32 0, i32 4
  %91 = load %struct.pnode*, %struct.pnode** %90, align 8
  %92 = load %struct.rnode*, %struct.rnode** %6, align 8
  %93 = getelementptr inbounds %struct.rnode, %struct.rnode* %92, i32 0, i32 1
  %94 = bitcast %union.anon* %93 to %struct.anon.2*
  %95 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %94, i32 0, i32 1
  %96 = load %struct.rnode*, %struct.rnode** %95, align 8
  %97 = getelementptr inbounds %struct.rnode, %struct.rnode* %96, i32 0, i32 4
  %98 = load %struct.pnode*, %struct.pnode** %97, align 8
  %99 = call %struct.pnode* @pset_union(%struct.pnode* noundef %91, %struct.pnode* noundef %98)
  %100 = load %struct.rnode*, %struct.rnode** %6, align 8
  %101 = getelementptr inbounds %struct.rnode, %struct.rnode* %100, i32 0, i32 4
  store %struct.pnode* %99, %struct.pnode** %101, align 8
  %102 = load %struct.snode**, %struct.snode*** %4, align 8
  %103 = load %struct.snode*, %struct.snode** %102, align 8
  store %struct.snode* %103, %struct.snode** %3, align 8
  br label %104

104:                                              ; preds = %62, %41, %22, %16
  %105 = load %struct.snode*, %struct.snode** %3, align 8
  ret %struct.snode* %105
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @parse_re(i8** noundef %0, i16 noundef signext %1) #0 {
  %3 = alloca %struct.rnode*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.snode*, align 8
  %7 = alloca %struct.snode*, align 8
  %8 = alloca %struct.anon.3*, align 8
  %9 = alloca %struct.rnode*, align 8
  store i8** %0, i8*** %4, align 8
  store i16 %1, i16* %5, align 2
  store %struct.snode* null, %struct.snode** %6, align 8
  store %struct.rnode* null, %struct.rnode** %9, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = icmp eq i8** %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %157
  %19 = load i8**, i8*** %4, align 8
  %20 = call %struct.anon.3* @get_token(i8** noundef %19)
  store %struct.anon.3* %20, %struct.anon.3** %8, align 8
  %21 = load %struct.anon.3*, %struct.anon.3** %8, align 8
  %22 = icmp eq %struct.anon.3* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

24:                                               ; preds = %18
  %25 = load %struct.anon.3*, %struct.anon.3** %8, align 8
  %26 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %25, i32 0, i32 0
  %27 = load i16, i16* %26, align 8
  %28 = sext i16 %27 to i32
  switch i32 %28, label %151 [
    i32 7, label %29
    i32 0, label %33
    i32 6, label %45
    i32 2, label %90
    i32 4, label %95
    i32 3, label %100
    i32 1, label %117
  ]

29:                                               ; preds = %24
  %30 = load i8**, i8*** %4, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %32, i8** %30, align 8
  br label %33

33:                                               ; preds = %24, %29
  %34 = load i16, i16* %5, align 2
  %35 = sext i16 %34 to i32
  %36 = load %struct.anon.3*, %struct.anon.3** %8, align 8
  %37 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %36, i32 0, i32 0
  %38 = load i16, i16* %37, align 8
  %39 = sext i16 %38 to i32
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = call %struct.snode* @cat2(%struct.snode** noundef %6)
  %43 = call %struct.rnode* @Top(%struct.snode* noundef %42)
  store %struct.rnode* %43, %struct.rnode** %3, align 8
  br label %158

44:                                               ; preds = %33
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

45:                                               ; preds = %24
  %46 = load i8**, i8*** %4, align 8
  %47 = call %struct.rnode* @parse_re(i8** noundef %46, i16 noundef signext 7)
  store %struct.rnode* %47, %struct.rnode** %9, align 8
  %48 = load %struct.rnode*, %struct.rnode** %9, align 8
  %49 = call %struct.snode* @Push(%struct.snode** noundef %6, %struct.rnode* noundef %48)
  %50 = icmp eq %struct.snode* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

52:                                               ; preds = %45
  %53 = load i8**, i8*** %4, align 8
  %54 = call %struct.anon.3* @get_token(i8** noundef %53)
  %55 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %54, i32 0, i32 0
  %56 = load i16, i16* %55, align 8
  %57 = sext i16 %56 to i32
  %58 = icmp ne i32 %57, 7
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load %struct.rnode*, %struct.rnode** %9, align 8
  %61 = icmp eq %struct.rnode* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %52
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

63:                                               ; preds = %59
  %64 = load %struct.snode*, %struct.snode** %6, align 8
  %65 = call i32 @Size(%struct.snode* noundef %64)
  %66 = icmp sgt i32 %65, 2
  br i1 %66, label %67, label %89

67:                                               ; preds = %63
  %68 = load %struct.snode*, %struct.snode** %6, align 8
  %69 = getelementptr inbounds %struct.snode, %struct.snode* %68, i32 0, i32 2
  %70 = load %struct.snode*, %struct.snode** %69, align 8
  store %struct.snode* %70, %struct.snode** %7, align 8
  %71 = call %struct.snode* @cat2(%struct.snode** noundef %7)
  %72 = load %struct.snode*, %struct.snode** %6, align 8
  %73 = getelementptr inbounds %struct.snode, %struct.snode* %72, i32 0, i32 2
  store %struct.snode* %71, %struct.snode** %73, align 8
  %74 = load %struct.snode*, %struct.snode** %6, align 8
  %75 = getelementptr inbounds %struct.snode, %struct.snode* %74, i32 0, i32 2
  %76 = load %struct.snode*, %struct.snode** %75, align 8
  %77 = icmp eq %struct.snode* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

79:                                               ; preds = %67
  %80 = load %struct.snode*, %struct.snode** %6, align 8
  %81 = getelementptr inbounds %struct.snode, %struct.snode* %80, i32 0, i32 2
  %82 = load %struct.snode*, %struct.snode** %81, align 8
  %83 = getelementptr inbounds %struct.snode, %struct.snode* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  %86 = load %struct.snode*, %struct.snode** %6, align 8
  %87 = getelementptr inbounds %struct.snode, %struct.snode* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %63
  br label %157

90:                                               ; preds = %24
  %91 = call %struct.snode* @wrap(%struct.snode** noundef %6, i16 noundef signext 2)
  %92 = icmp eq %struct.snode* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

94:                                               ; preds = %90
  br label %157

95:                                               ; preds = %24
  %96 = call %struct.snode* @wrap(%struct.snode** noundef %6, i16 noundef signext 4)
  %97 = icmp eq %struct.snode* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

99:                                               ; preds = %95
  br label %157

100:                                              ; preds = %24
  %101 = call %struct.snode* @cat2(%struct.snode** noundef %6)
  %102 = icmp eq %struct.snode* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

104:                                              ; preds = %100
  %105 = load i8**, i8*** %4, align 8
  %106 = load i16, i16* %5, align 2
  %107 = call %struct.rnode* @parse_re(i8** noundef %105, i16 noundef signext %106)
  store %struct.rnode* %107, %struct.rnode** %9, align 8
  %108 = load %struct.rnode*, %struct.rnode** %9, align 8
  %109 = icmp eq %struct.rnode* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

111:                                              ; preds = %104
  %112 = load %struct.rnode*, %struct.rnode** %9, align 8
  %113 = call %struct.snode* @mk_alt(%struct.snode** noundef %6, %struct.rnode* noundef %112)
  %114 = icmp eq %struct.snode* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

116:                                              ; preds = %111
  br label %157

117:                                              ; preds = %24
  %118 = load %struct.anon.3*, %struct.anon.3** %8, align 8
  %119 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %118, i32 0, i32 1
  %120 = load %struct.rnode*, %struct.rnode** %119, align 8
  %121 = call %struct.snode* @Push(%struct.snode** noundef %6, %struct.rnode* noundef %120)
  %122 = icmp eq %struct.snode* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

124:                                              ; preds = %117
  %125 = load %struct.snode*, %struct.snode** %6, align 8
  %126 = call i32 @Size(%struct.snode* noundef %125)
  %127 = icmp sgt i32 %126, 2
  br i1 %127, label %128, label %150

128:                                              ; preds = %124
  %129 = load %struct.snode*, %struct.snode** %6, align 8
  %130 = getelementptr inbounds %struct.snode, %struct.snode* %129, i32 0, i32 2
  %131 = load %struct.snode*, %struct.snode** %130, align 8
  store %struct.snode* %131, %struct.snode** %7, align 8
  %132 = call %struct.snode* @cat2(%struct.snode** noundef %7)
  %133 = load %struct.snode*, %struct.snode** %6, align 8
  %134 = getelementptr inbounds %struct.snode, %struct.snode* %133, i32 0, i32 2
  store %struct.snode* %132, %struct.snode** %134, align 8
  %135 = load %struct.snode*, %struct.snode** %6, align 8
  %136 = getelementptr inbounds %struct.snode, %struct.snode* %135, i32 0, i32 2
  %137 = load %struct.snode*, %struct.snode** %136, align 8
  %138 = icmp eq %struct.snode* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

140:                                              ; preds = %128
  %141 = load %struct.snode*, %struct.snode** %6, align 8
  %142 = getelementptr inbounds %struct.snode, %struct.snode* %141, i32 0, i32 2
  %143 = load %struct.snode*, %struct.snode** %142, align 8
  %144 = getelementptr inbounds %struct.snode, %struct.snode* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  %147 = load %struct.snode*, %struct.snode** %6, align 8
  %148 = getelementptr inbounds %struct.snode, %struct.snode* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149, %124
  br label %157

151:                                              ; preds = %24
  %152 = load %struct.anon.3*, %struct.anon.3** %8, align 8
  %153 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %152, i32 0, i32 0
  %154 = load i16, i16* %153, align 8
  %155 = sext i16 %154 to i32
  %156 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef %155)
  br label %157

157:                                              ; preds = %151, %150, %116, %99, %94, %89
  br label %18

158:                                              ; preds = %139, %123, %115, %110, %103, %98, %93, %78, %62, %51, %44, %41, %23, %16
  %159 = load %struct.rnode*, %struct.rnode** %3, align 8
  ret %struct.rnode* %159
}

declare dso_local %struct.rnode* @Top(%struct.snode* noundef) #2

declare dso_local i32 @Size(%struct.snode* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @parse(i8* noundef %0) #0 {
  %2 = alloca %struct.rnode*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rnode*, align 8
  %5 = alloca %struct.rnode*, align 8
  %6 = alloca %struct.snode*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.snode* null, %struct.snode** %6, align 8
  %7 = call %struct.rnode* @parse_re(i8** noundef %3, i16 noundef signext 0)
  store %struct.rnode* %7, %struct.rnode** %4, align 8
  %8 = load %struct.rnode*, %struct.rnode** %4, align 8
  %9 = icmp eq %struct.rnode* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.rnode*, %struct.rnode** %4, align 8
  %12 = call %struct.snode* @Push(%struct.snode** noundef %6, %struct.rnode* noundef %11)
  %13 = icmp eq %struct.snode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %1
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %29

15:                                               ; preds = %10
  %16 = call %struct.rnode* @mk_leaf(i16 noundef signext 0, i16 noundef signext 0, i8 noundef signext 0, %struct.ch_set* noundef null)
  store %struct.rnode* %16, %struct.rnode** %5, align 8
  %17 = load %struct.rnode*, %struct.rnode** %5, align 8
  %18 = icmp eq %struct.rnode* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load %struct.rnode*, %struct.rnode** %5, align 8
  %21 = call %struct.snode* @Push(%struct.snode** noundef %6, %struct.rnode* noundef %20)
  %22 = icmp eq %struct.snode* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %29

24:                                               ; preds = %19
  %25 = load i32, i32* @pos_cnt, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @pos_cnt, align 4
  store i32 %26, i32* @final_pos, align 4
  %27 = call %struct.snode* @cat2(%struct.snode** noundef %6)
  %28 = call %struct.rnode* @Top(%struct.snode* noundef %27)
  store %struct.rnode* %28, %struct.rnode** %2, align 8
  br label %29

29:                                               ; preds = %24, %23, %14
  %30 = load %struct.rnode*, %struct.rnode** %2, align 8
  ret %struct.rnode* %30
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
