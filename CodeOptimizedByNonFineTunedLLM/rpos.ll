; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/SPASS/rpos.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/rpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }

@ord_PRECEDENCE = external dso_local global i32*, align 8
@symbol_SIGNATURE = external dso_local global %struct.signature**, align 8
@symbol_TYPESTATBITS = external dso_local constant i32, align 4
@memory_OFFSET = external dso_local global i32, align 4
@memory_BIGBLOCKS = external dso_local global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external dso_local global i32, align 4
@memory_FREEDBYTES = external dso_local global i64, align 8
@memory_MAXMEM = external dso_local global i64, align 8
@memory_ARRAY = external dso_local global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external dso_local constant i32, align 4
@cont_INSTANCECONTEXT = external dso_local global %struct.binding*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpos_Equal(%struct.term* noundef %0, %struct.term* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.term*, align 8
  %5 = alloca %struct.term*, align 8
  %6 = alloca %struct.LIST_HELP*, align 8
  %7 = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %0, %struct.term** %4, align 8
  store %struct.term* %1, %struct.term** %5, align 8
  %8 = load %struct.term*, %struct.term** %4, align 8
  %9 = load %struct.term*, %struct.term** %5, align 8
  %10 = call i32 @term_EqualTopSymbols(%struct.term* noundef %8, %struct.term* noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

13:                                               ; preds = %2
  %14 = load %struct.term*, %struct.term** %4, align 8
  %15 = call i32 @term_IsComplex(%struct.term* noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %62

18:                                               ; preds = %13
  %19 = load %struct.term*, %struct.term** %4, align 8
  %20 = call i32 @term_TopSymbol(%struct.term* noundef %19)
  %21 = call i32 @symbol_HasProperty(i32 noundef %20, i32 noundef 16)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.term*, %struct.term** %4, align 8
  %25 = load %struct.term*, %struct.term** %5, align 8
  %26 = call %struct.LIST_HELP* @rpos_MultisetDifference(%struct.term* noundef %24, %struct.term* noundef %25)
  store %struct.LIST_HELP* %26, %struct.LIST_HELP** %6, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %28 = call i32 @list_Empty(%struct.LIST_HELP* noundef %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %62

31:                                               ; preds = %23
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  call void @list_Delete(%struct.LIST_HELP* noundef %32)
  store i32 0, i32* %3, align 4
  br label %62

33:                                               ; preds = %18
  %34 = load %struct.term*, %struct.term** %4, align 8
  %35 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %34)
  store %struct.LIST_HELP* %35, %struct.LIST_HELP** %6, align 8
  %36 = load %struct.term*, %struct.term** %5, align 8
  %37 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %36)
  store %struct.LIST_HELP* %37, %struct.LIST_HELP** %7, align 8
  br label %38

38:                                               ; preds = %54, %33
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %40 = call i32 @list_Empty(%struct.LIST_HELP* noundef %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %44 = call i8* @list_Car(%struct.LIST_HELP* noundef %43)
  %45 = bitcast i8* %44 to %struct.term*
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  %47 = call i8* @list_Car(%struct.LIST_HELP* noundef %46)
  %48 = bitcast i8* %47 to %struct.term*
  %49 = call i32 @rpos_Equal(%struct.term* noundef %45, %struct.term* noundef %48)
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %42, %38
  %52 = phi i1 [ false, %38 ], [ %50, %42 ]
  br i1 %52, label %53, label %59

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %56 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %55)
  store %struct.LIST_HELP* %56, %struct.LIST_HELP** %6, align 8
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  %58 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %57)
  store %struct.LIST_HELP* %58, %struct.LIST_HELP** %7, align 8
  br label %38, !llvm.loop !4

59:                                               ; preds = %51
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %61 = call i32 @list_Empty(%struct.LIST_HELP* noundef %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %31, %30, %17, %12
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @term_EqualTopSymbols(%struct.term* noundef %0, %struct.term* noundef %1) #0 {
  %3 = alloca %struct.term*, align 8
  %4 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %3, align 8
  store %struct.term* %1, %struct.term** %4, align 8
  %5 = load %struct.term*, %struct.term** %3, align 8
  %6 = call i32 @term_TopSymbol(%struct.term* noundef %5)
  %7 = load %struct.term*, %struct.term** %4, align 8
  %8 = call i32 @term_TopSymbol(%struct.term* noundef %7)
  %9 = call i32 @symbol_Equal(i32 noundef %6, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @term_IsComplex(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %3)
  %5 = icmp ne %struct.LIST_HELP* %4, null
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_HasProperty(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @symbol_Index(i32 noundef %5)
  %7 = call %struct.signature* @symbol_Signature(i32 noundef %6)
  %8 = getelementptr inbounds %struct.signature, %struct.signature* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %9, %10
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @term_TopSymbol(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = getelementptr inbounds %struct.term, %struct.term* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @rpos_MultisetDifference(%struct.term* noundef %0, %struct.term* noundef %1) #0 {
  %3 = alloca %struct.term*, align 8
  %4 = alloca %struct.term*, align 8
  %5 = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %0, %struct.term** %3, align 8
  store %struct.term* %1, %struct.term** %4, align 8
  %6 = load %struct.term*, %struct.term** %3, align 8
  %7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %6)
  %8 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* noundef %7)
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %5, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %5, align 8
  %10 = load %struct.term*, %struct.term** %4, align 8
  %11 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %10)
  %12 = call %struct.LIST_HELP* @list_NMultisetDifference(%struct.LIST_HELP* noundef %9, %struct.LIST_HELP* noundef %11, i32 (i8*, i8*)* noundef bitcast (i32 (%struct.term*, %struct.term*)* @rpos_Equal to i32 (i8*, i8*)*))
  store %struct.LIST_HELP* %12, %struct.LIST_HELP** %5, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %5, align 8
  ret %struct.LIST_HELP* %13
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @list_Empty(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = icmp eq %struct.LIST_HELP* %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal void @list_Delete(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  %3 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %3, align 8
  br label %5

5:                                                ; preds = %10, %1
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  %7 = call i32 @list_Empty(%struct.LIST_HELP* noundef %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %11)
  store %struct.LIST_HELP* %12, %struct.LIST_HELP** %2, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  call void @list_Free(%struct.LIST_HELP* noundef %13)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  store %struct.LIST_HELP* %14, %struct.LIST_HELP** %3, align 8
  br label %5, !llvm.loop !6

15:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = getelementptr inbounds %struct.term, %struct.term* %3, i32 0, i32 2
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  ret %struct.LIST_HELP* %5
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @list_Car(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %3, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %3, i32 0, i32 0
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  ret %struct.LIST_HELP* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpos_GreaterEqual(%struct.term* noundef %0, %struct.term* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.term*, align 8
  %5 = alloca %struct.term*, align 8
  %6 = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %0, %struct.term** %4, align 8
  store %struct.term* %1, %struct.term** %5, align 8
  %7 = load %struct.term*, %struct.term** %4, align 8
  %8 = call i32 @term_IsVariable(%struct.term* noundef %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.term*, %struct.term** %4, align 8
  %12 = load %struct.term*, %struct.term** %5, align 8
  %13 = call i32 @term_EqualTopSymbols(%struct.term* noundef %11, %struct.term* noundef %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @ord_Equal()
  store i32 %16, i32* %3, align 4
  br label %106

17:                                               ; preds = %10
  %18 = call i32 @ord_Uncomparable()
  store i32 %18, i32* %3, align 4
  br label %106

19:                                               ; preds = %2
  %20 = load %struct.term*, %struct.term** %5, align 8
  %21 = call i32 @term_IsVariable(%struct.term* noundef %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.term*, %struct.term** %4, align 8
  %25 = load %struct.term*, %struct.term** %5, align 8
  %26 = call i32 @term_TopSymbol(%struct.term* noundef %25)
  %27 = call i32 @term_ContainsSymbol(%struct.term* noundef %24, i32 noundef %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @ord_GreaterThan()
  store i32 %30, i32* %3, align 4
  br label %106

31:                                               ; preds = %23
  %32 = call i32 @ord_Uncomparable()
  store i32 %32, i32* %3, align 4
  br label %106

33:                                               ; preds = %19
  %34 = load %struct.term*, %struct.term** %4, align 8
  %35 = load %struct.term*, %struct.term** %5, align 8
  %36 = call i32 @term_EqualTopSymbols(%struct.term* noundef %34, %struct.term* noundef %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.term*, %struct.term** %4, align 8
  %40 = call i32 @term_TopSymbol(%struct.term* noundef %39)
  %41 = call i32 @symbol_HasProperty(i32 noundef %40, i32 noundef 16)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.term*, %struct.term** %4, align 8
  %45 = load %struct.term*, %struct.term** %5, align 8
  %46 = call i32 @rpos_MulGreaterEqual(%struct.term* noundef %44, %struct.term* noundef %45)
  store i32 %46, i32* %3, align 4
  br label %106

47:                                               ; preds = %38
  %48 = load %struct.term*, %struct.term** %4, align 8
  %49 = load %struct.term*, %struct.term** %5, align 8
  %50 = call i32 @rpos_LexGreaterEqual(%struct.term* noundef %48, %struct.term* noundef %49)
  store i32 %50, i32* %3, align 4
  br label %106

51:                                               ; preds = %33
  %52 = load i32*, i32** @ord_PRECEDENCE, align 8
  %53 = load %struct.term*, %struct.term** %4, align 8
  %54 = call i32 @term_TopSymbol(%struct.term* noundef %53)
  %55 = load %struct.term*, %struct.term** %5, align 8
  %56 = call i32 @term_TopSymbol(%struct.term* noundef %55)
  %57 = call i32 @symbol_PrecedenceGreater(i32* noundef %52, i32 noundef %54, i32 noundef %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %51
  %60 = load %struct.term*, %struct.term** %5, align 8
  %61 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %60)
  store %struct.LIST_HELP* %61, %struct.LIST_HELP** %6, align 8
  br label %62

62:                                               ; preds = %77, %59
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %64 = call i32 @list_Empty(%struct.LIST_HELP* noundef %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load %struct.term*, %struct.term** %4, align 8
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %70 = call i8* @list_Car(%struct.LIST_HELP* noundef %69)
  %71 = bitcast i8* %70 to %struct.term*
  %72 = call i32 @rpos_Greater(%struct.term* noundef %68, %struct.term* noundef %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %67
  %75 = call i32 @ord_Uncomparable()
  store i32 %75, i32* %3, align 4
  br label %106

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %79 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %78)
  store %struct.LIST_HELP* %79, %struct.LIST_HELP** %6, align 8
  br label %62, !llvm.loop !7

80:                                               ; preds = %62
  %81 = call i32 @ord_GreaterThan()
  store i32 %81, i32* %3, align 4
  br label %106

82:                                               ; preds = %51
  %83 = load %struct.term*, %struct.term** %4, align 8
  %84 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %83)
  store %struct.LIST_HELP* %84, %struct.LIST_HELP** %6, align 8
  br label %85

85:                                               ; preds = %101, %82
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %87 = call i32 @list_Empty(%struct.LIST_HELP* noundef %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br i1 %89, label %90, label %104

90:                                               ; preds = %85
  %91 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %92 = call i8* @list_Car(%struct.LIST_HELP* noundef %91)
  %93 = bitcast i8* %92 to %struct.term*
  %94 = load %struct.term*, %struct.term** %5, align 8
  %95 = call i32 @rpos_GreaterEqual(%struct.term* noundef %93, %struct.term* noundef %94)
  %96 = call i32 @ord_IsUncomparable(i32 noundef %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %90
  %99 = call i32 @ord_GreaterThan()
  store i32 %99, i32* %3, align 4
  br label %106

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %103 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %102)
  store %struct.LIST_HELP* %103, %struct.LIST_HELP** %6, align 8
  br label %85, !llvm.loop !8

104:                                              ; preds = %85
  %105 = call i32 @ord_Uncomparable()
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %98, %80, %74, %47, %43, %31, %29, %17, %15
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @term_IsVariable(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = call i32 @term_TopSymbol(%struct.term* noundef %3)
  %5 = call i32 @symbol_IsVariable(i32 noundef %4)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ord_Equal() #0 {
  ret i32 2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ord_Uncomparable() #0 {
  ret i32 0
}

declare dso_local i32 @term_ContainsSymbol(%struct.term* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ord_GreaterThan() #0 {
  ret i32 3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rpos_MulGreaterEqual(%struct.term* noundef %0, %struct.term* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.term*, align 8
  %5 = alloca %struct.term*, align 8
  %6 = alloca %struct.LIST_HELP*, align 8
  %7 = alloca %struct.LIST_HELP*, align 8
  %8 = alloca %struct.LIST_HELP*, align 8
  %9 = alloca i32, align 4
  store %struct.term* %0, %struct.term** %4, align 8
  store %struct.term* %1, %struct.term** %5, align 8
  %10 = load %struct.term*, %struct.term** %4, align 8
  %11 = load %struct.term*, %struct.term** %5, align 8
  %12 = call %struct.LIST_HELP* @rpos_MultisetDifference(%struct.term* noundef %10, %struct.term* noundef %11)
  store %struct.LIST_HELP* %12, %struct.LIST_HELP** %6, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  %14 = call i32 @list_Empty(%struct.LIST_HELP* noundef %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @ord_Equal()
  store i32 %17, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  %19 = load %struct.term*, %struct.term** %5, align 8
  %20 = load %struct.term*, %struct.term** %4, align 8
  %21 = call %struct.LIST_HELP* @rpos_MultisetDifference(%struct.term* noundef %19, %struct.term* noundef %20)
  store %struct.LIST_HELP* %21, %struct.LIST_HELP** %7, align 8
  store i32 1, i32* %9, align 4
  br label %22

22:                                               ; preds = %55, %18
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  %24 = call i32 @list_Empty(%struct.LIST_HELP* noundef %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i1 [ false, %22 ], [ %28, %26 ]
  br i1 %30, label %31, label %58

31:                                               ; preds = %29
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  store %struct.LIST_HELP* %32, %struct.LIST_HELP** %8, align 8
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %51, %31
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %35 = call i32 @list_Empty(%struct.LIST_HELP* noundef %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ false, %33 ], [ %40, %37 ]
  br i1 %42, label %43, label %54

43:                                               ; preds = %41
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %45 = call i8* @list_Car(%struct.LIST_HELP* noundef %44)
  %46 = bitcast i8* %45 to %struct.term*
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  %48 = call i8* @list_Car(%struct.LIST_HELP* noundef %47)
  %49 = bitcast i8* %48 to %struct.term*
  %50 = call i32 @rpos_Greater(%struct.term* noundef %46, %struct.term* noundef %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %43
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %53 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %52)
  store %struct.LIST_HELP* %53, %struct.LIST_HELP** %8, align 8
  br label %33, !llvm.loop !9

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  %57 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* noundef %56)
  store %struct.LIST_HELP* %57, %struct.LIST_HELP** %7, align 8
  br label %22, !llvm.loop !10

58:                                               ; preds = %29
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  call void @list_Delete(%struct.LIST_HELP* noundef %59)
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @ord_GreaterThan()
  store i32 %63, i32* %3, align 4
  br label %66

64:                                               ; preds = %58
  %65 = call i32 @ord_Uncomparable()
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %62, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rpos_LexGreaterEqual(%struct.term* noundef %0, %struct.term* noundef %1) #0 {
  %3 = alloca %struct.term*, align 8
  %4 = alloca %struct.term*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.LIST_HELP*, align 8
  %7 = alloca %struct.LIST_HELP*, align 8
  %8 = alloca %struct.LIST_HELP*, align 8
  %9 = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %0, %struct.term** %3, align 8
  store %struct.term* %1, %struct.term** %4, align 8
  %10 = load %struct.term*, %struct.term** %3, align 8
  %11 = call i32 @term_TopSymbol(%struct.term* noundef %10)
  %12 = call i32 @symbol_HasProperty(i32 noundef %11, i32 noundef 8)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.term*, %struct.term** %3, align 8
  %16 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %15)
  %17 = call %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* noundef %16)
  store %struct.LIST_HELP* %17, %struct.LIST_HELP** %6, align 8
  %18 = load %struct.term*, %struct.term** %4, align 8
  %19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %18)
  %20 = call %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* noundef %19)
  store %struct.LIST_HELP* %20, %struct.LIST_HELP** %7, align 8
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.term*, %struct.term** %3, align 8
  %23 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %22)
  store %struct.LIST_HELP* %23, %struct.LIST_HELP** %6, align 8
  %24 = load %struct.term*, %struct.term** %4, align 8
  %25 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %24)
  store %struct.LIST_HELP* %25, %struct.LIST_HELP** %7, align 8
  br label %26

26:                                               ; preds = %21, %14
  %27 = call i32 @ord_Equal()
  store i32 %27, i32* %5, align 4
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  store %struct.LIST_HELP* %28, %struct.LIST_HELP** %8, align 8
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  store %struct.LIST_HELP* %29, %struct.LIST_HELP** %9, align 8
  br label %30

30:                                               ; preds = %48, %26
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %32 = call i32 @list_Empty(%struct.LIST_HELP* noundef %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %37 = call i8* @list_Car(%struct.LIST_HELP* noundef %36)
  %38 = bitcast i8* %37 to %struct.term*
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  %40 = call i8* @list_Car(%struct.LIST_HELP* noundef %39)
  %41 = bitcast i8* %40 to %struct.term*
  %42 = call i32 @rpos_GreaterEqual(%struct.term* noundef %38, %struct.term* noundef %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ord_IsEqual(i32 noundef %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %35
  br label %53

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %50 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %49)
  store %struct.LIST_HELP* %50, %struct.LIST_HELP** %8, align 8
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  %52 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %51)
  store %struct.LIST_HELP* %52, %struct.LIST_HELP** %9, align 8
  br label %30, !llvm.loop !11

53:                                               ; preds = %46, %30
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @ord_IsEqual(i32 noundef %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %122

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @ord_IsGreaterThan(i32 noundef %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %58
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  %64 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %63)
  store %struct.LIST_HELP* %64, %struct.LIST_HELP** %9, align 8
  br label %65

65:                                               ; preds = %79, %62
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  %67 = call i32 @list_Empty(%struct.LIST_HELP* noundef %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = load %struct.term*, %struct.term** %3, align 8
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  %72 = call i8* @list_Car(%struct.LIST_HELP* noundef %71)
  %73 = bitcast i8* %72 to %struct.term*
  %74 = call i32 @rpos_Greater(%struct.term* noundef %70, %struct.term* noundef %73)
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %69, %65
  %77 = phi i1 [ false, %65 ], [ %75, %69 ]
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  %81 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %80)
  store %struct.LIST_HELP* %81, %struct.LIST_HELP** %9, align 8
  br label %65, !llvm.loop !12

82:                                               ; preds = %76
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  %84 = call i32 @list_Empty(%struct.LIST_HELP* noundef %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 @ord_GreaterThan()
  store i32 %87, i32* %5, align 4
  br label %90

88:                                               ; preds = %82
  %89 = call i32 @ord_Uncomparable()
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %86
  br label %121

91:                                               ; preds = %58
  %92 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %93 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %92)
  store %struct.LIST_HELP* %93, %struct.LIST_HELP** %8, align 8
  %94 = call i32 @ord_Uncomparable()
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %117, %91
  %96 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %97 = call i32 @list_Empty(%struct.LIST_HELP* noundef %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @ord_IsGreaterThan(i32 noundef %100)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  br label %104

104:                                              ; preds = %99, %95
  %105 = phi i1 [ false, %95 ], [ %103, %99 ]
  br i1 %105, label %106, label %120

106:                                              ; preds = %104
  %107 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %108 = call i8* @list_Car(%struct.LIST_HELP* noundef %107)
  %109 = bitcast i8* %108 to %struct.term*
  %110 = load %struct.term*, %struct.term** %4, align 8
  %111 = call i32 @rpos_GreaterEqual(%struct.term* noundef %109, %struct.term* noundef %110)
  %112 = call i32 @ord_IsUncomparable(i32 noundef %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %106
  %115 = call i32 @ord_GreaterThan()
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %114, %106
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %119 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %118)
  store %struct.LIST_HELP* %119, %struct.LIST_HELP** %8, align 8
  br label %95, !llvm.loop !13

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120, %90
  br label %122

122:                                              ; preds = %121, %57
  %123 = load %struct.term*, %struct.term** %3, align 8
  %124 = call i32 @term_TopSymbol(%struct.term* noundef %123)
  %125 = call i32 @symbol_HasProperty(i32 noundef %124, i32 noundef 8)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  call void @list_Delete(%struct.LIST_HELP* noundef %128)
  %129 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  call void @list_Delete(%struct.LIST_HELP* noundef %129)
  br label %130

130:                                              ; preds = %127, %122
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_PrecedenceGreater(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @symbol_Ordering(i32* noundef %7, i32 noundef %8)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @symbol_Ordering(i32* noundef %10, i32 noundef %11)
  %13 = icmp slt i32 %9, %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rpos_Greater(%struct.term* noundef %0, %struct.term* noundef %1) #0 {
  %3 = alloca %struct.term*, align 8
  %4 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %3, align 8
  store %struct.term* %1, %struct.term** %4, align 8
  %5 = load %struct.term*, %struct.term** %3, align 8
  %6 = load %struct.term*, %struct.term** %4, align 8
  %7 = call i32 @rpos_GreaterEqual(%struct.term* noundef %5, %struct.term* noundef %6)
  %8 = call i32 @ord_IsGreaterThan(i32 noundef %7)
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ord_IsUncomparable(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 0, %3
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpos_Compare(%struct.term* noundef %0, %struct.term* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.term*, align 8
  %5 = alloca %struct.term*, align 8
  %6 = alloca i32, align 4
  store %struct.term* %0, %struct.term** %4, align 8
  store %struct.term* %1, %struct.term** %5, align 8
  %7 = load %struct.term*, %struct.term** %4, align 8
  %8 = load %struct.term*, %struct.term** %5, align 8
  %9 = call i32 @rpos_GreaterEqual(%struct.term* noundef %7, %struct.term* noundef %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @ord_IsUncomparable(i32 noundef %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.term*, %struct.term** %5, align 8
  %17 = load %struct.term*, %struct.term** %4, align 8
  %18 = call i32 @rpos_Greater(%struct.term* noundef %16, %struct.term* noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @ord_SmallerThan()
  store i32 %21, i32* %3, align 4
  br label %23

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %20, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ord_SmallerThan() #0 {
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpos_ContEqual(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.binding*, align 8
  %7 = alloca %struct.term*, align 8
  %8 = alloca %struct.binding*, align 8
  %9 = alloca %struct.term*, align 8
  %10 = alloca %struct.LIST_HELP*, align 8
  %11 = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %0, %struct.binding** %6, align 8
  store %struct.term* %1, %struct.term** %7, align 8
  store %struct.binding* %2, %struct.binding** %8, align 8
  store %struct.term* %3, %struct.term** %9, align 8
  %12 = load %struct.term*, %struct.term** %7, align 8
  %13 = call %struct.term* @cont_Deref(%struct.binding** noundef %6, %struct.term* noundef %12)
  store %struct.term* %13, %struct.term** %7, align 8
  %14 = load %struct.term*, %struct.term** %9, align 8
  %15 = call %struct.term* @cont_Deref(%struct.binding** noundef %8, %struct.term* noundef %14)
  store %struct.term* %15, %struct.term** %9, align 8
  %16 = load %struct.term*, %struct.term** %7, align 8
  %17 = load %struct.term*, %struct.term** %9, align 8
  %18 = call i32 @term_EqualTopSymbols(%struct.term* noundef %16, %struct.term* noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %74

21:                                               ; preds = %4
  %22 = load %struct.term*, %struct.term** %7, align 8
  %23 = call i32 @term_IsComplex(%struct.term* noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %74

26:                                               ; preds = %21
  %27 = load %struct.term*, %struct.term** %7, align 8
  %28 = call i32 @term_TopSymbol(%struct.term* noundef %27)
  %29 = call i32 @symbol_HasProperty(i32 noundef %28, i32 noundef 16)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load %struct.binding*, %struct.binding** %6, align 8
  %33 = load %struct.term*, %struct.term** %7, align 8
  %34 = load %struct.binding*, %struct.binding** %8, align 8
  %35 = load %struct.term*, %struct.term** %9, align 8
  %36 = call %struct.LIST_HELP* @rpos_ContMultisetDifference(%struct.binding* noundef %32, %struct.term* noundef %33, %struct.binding* noundef %34, %struct.term* noundef %35)
  store %struct.LIST_HELP* %36, %struct.LIST_HELP** %10, align 8
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %38 = call i32 @list_Empty(%struct.LIST_HELP* noundef %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %74

41:                                               ; preds = %31
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  call void @list_Delete(%struct.LIST_HELP* noundef %42)
  store i32 0, i32* %5, align 4
  br label %74

43:                                               ; preds = %26
  %44 = load %struct.term*, %struct.term** %7, align 8
  %45 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %44)
  store %struct.LIST_HELP* %45, %struct.LIST_HELP** %10, align 8
  %46 = load %struct.term*, %struct.term** %9, align 8
  %47 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %46)
  store %struct.LIST_HELP* %47, %struct.LIST_HELP** %11, align 8
  br label %48

48:                                               ; preds = %66, %43
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %50 = call i32 @list_Empty(%struct.LIST_HELP* noundef %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = load %struct.binding*, %struct.binding** %6, align 8
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %55 = call i8* @list_Car(%struct.LIST_HELP* noundef %54)
  %56 = bitcast i8* %55 to %struct.term*
  %57 = load %struct.binding*, %struct.binding** %8, align 8
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  %59 = call i8* @list_Car(%struct.LIST_HELP* noundef %58)
  %60 = bitcast i8* %59 to %struct.term*
  %61 = call i32 @rpos_ContEqual(%struct.binding* noundef %53, %struct.term* noundef %56, %struct.binding* noundef %57, %struct.term* noundef %60)
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %52, %48
  %64 = phi i1 [ false, %48 ], [ %62, %52 ]
  br i1 %64, label %65, label %71

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %68 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %67)
  store %struct.LIST_HELP* %68, %struct.LIST_HELP** %10, align 8
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  %70 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %69)
  store %struct.LIST_HELP* %70, %struct.LIST_HELP** %11, align 8
  br label %48, !llvm.loop !14

71:                                               ; preds = %63
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %73 = call i32 @list_Empty(%struct.LIST_HELP* noundef %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %41, %40, %25, %20
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.term* @cont_Deref(%struct.binding** noundef %0, %struct.term* noundef %1) #0 {
  %3 = alloca %struct.term*, align 8
  %4 = alloca %struct.binding**, align 8
  %5 = alloca %struct.term*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.binding*, align 8
  store %struct.binding** %0, %struct.binding*** %4, align 8
  store %struct.term* %1, %struct.term** %5, align 8
  br label %8

8:                                                ; preds = %40, %2
  %9 = load %struct.term*, %struct.term** %5, align 8
  %10 = call i32 @term_IsVariable(%struct.term* noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load %struct.binding**, %struct.binding*** %4, align 8
  %14 = load %struct.binding*, %struct.binding** %13, align 8
  %15 = call %struct.binding* @cont_InstanceContext()
  %16 = icmp ne %struct.binding* %14, %15
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi i1 [ false, %8 ], [ %16, %12 ]
  br i1 %18, label %19, label %41

19:                                               ; preds = %17
  %20 = load %struct.term*, %struct.term** %5, align 8
  %21 = call i32 @term_TopSymbol(%struct.term* noundef %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.binding**, %struct.binding*** %4, align 8
  %23 = load %struct.binding*, %struct.binding** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @cont_VarIsBound(%struct.binding* noundef %23, i32 noundef %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load %struct.binding**, %struct.binding*** %4, align 8
  %29 = load %struct.binding*, %struct.binding** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* noundef %29, i32 noundef %30)
  store %struct.binding* %31, %struct.binding** %7, align 8
  %32 = load %struct.binding**, %struct.binding*** %4, align 8
  %33 = load %struct.binding*, %struct.binding** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %33, i32 noundef %34)
  store %struct.term* %35, %struct.term** %5, align 8
  %36 = load %struct.binding*, %struct.binding** %7, align 8
  %37 = load %struct.binding**, %struct.binding*** %4, align 8
  store %struct.binding* %36, %struct.binding** %37, align 8
  br label %40

38:                                               ; preds = %19
  %39 = load %struct.term*, %struct.term** %5, align 8
  store %struct.term* %39, %struct.term** %3, align 8
  br label %43

40:                                               ; preds = %27
  br label %8, !llvm.loop !15

41:                                               ; preds = %17
  %42 = load %struct.term*, %struct.term** %5, align 8
  store %struct.term* %42, %struct.term** %3, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = load %struct.term*, %struct.term** %3, align 8
  ret %struct.term* %44
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @rpos_ContMultisetDifference(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca %struct.binding*, align 8
  %6 = alloca %struct.term*, align 8
  %7 = alloca %struct.binding*, align 8
  %8 = alloca %struct.term*, align 8
  %9 = alloca %struct.LIST_HELP*, align 8
  %10 = alloca %struct.LIST_HELP*, align 8
  %11 = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %0, %struct.binding** %5, align 8
  store %struct.term* %1, %struct.term** %6, align 8
  store %struct.binding* %2, %struct.binding** %7, align 8
  store %struct.term* %3, %struct.term** %8, align 8
  %12 = load %struct.term*, %struct.term** %6, align 8
  %13 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %12)
  %14 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* noundef %13)
  store %struct.LIST_HELP* %14, %struct.LIST_HELP** %9, align 8
  %15 = load %struct.term*, %struct.term** %8, align 8
  %16 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %15)
  store %struct.LIST_HELP* %16, %struct.LIST_HELP** %11, align 8
  br label %17

17:                                               ; preds = %51, %4
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  %19 = call i32 @list_Empty(%struct.LIST_HELP* noundef %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %54

22:                                               ; preds = %17
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  store %struct.LIST_HELP* %23, %struct.LIST_HELP** %10, align 8
  br label %24

24:                                               ; preds = %47, %22
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %26 = call i32 @list_Empty(%struct.LIST_HELP* noundef %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %31 = call i8* @list_Car(%struct.LIST_HELP* noundef %30)
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.binding*, %struct.binding** %5, align 8
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %36 = call i8* @list_Car(%struct.LIST_HELP* noundef %35)
  %37 = bitcast i8* %36 to %struct.term*
  %38 = load %struct.binding*, %struct.binding** %7, align 8
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  %40 = call i8* @list_Car(%struct.LIST_HELP* noundef %39)
  %41 = bitcast i8* %40 to %struct.term*
  %42 = call i32 @rpos_ContEqual(%struct.binding* noundef %34, %struct.term* noundef %37, %struct.binding* noundef %38, %struct.term* noundef %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  call void @list_Rplaca(%struct.LIST_HELP* noundef %45, i8* noundef null)
  br label %50

46:                                               ; preds = %33, %29
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %49 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %48)
  store %struct.LIST_HELP* %49, %struct.LIST_HELP** %10, align 8
  br label %24, !llvm.loop !16

50:                                               ; preds = %44, %24
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  %53 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %52)
  store %struct.LIST_HELP* %53, %struct.LIST_HELP** %11, align 8
  br label %17, !llvm.loop !17

54:                                               ; preds = %17
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  %56 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* noundef %55, i8* noundef null)
  ret %struct.LIST_HELP* %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpos_ContGreaterEqual(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.binding*, align 8
  %7 = alloca %struct.term*, align 8
  %8 = alloca %struct.binding*, align 8
  %9 = alloca %struct.term*, align 8
  %10 = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %0, %struct.binding** %6, align 8
  store %struct.term* %1, %struct.term** %7, align 8
  store %struct.binding* %2, %struct.binding** %8, align 8
  store %struct.term* %3, %struct.term** %9, align 8
  %11 = load %struct.term*, %struct.term** %7, align 8
  %12 = call %struct.term* @cont_Deref(%struct.binding** noundef %6, %struct.term* noundef %11)
  store %struct.term* %12, %struct.term** %7, align 8
  %13 = load %struct.term*, %struct.term** %9, align 8
  %14 = call %struct.term* @cont_Deref(%struct.binding** noundef %8, %struct.term* noundef %13)
  store %struct.term* %14, %struct.term** %9, align 8
  %15 = load %struct.term*, %struct.term** %7, align 8
  %16 = call i32 @term_IsVariable(%struct.term* noundef %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load %struct.term*, %struct.term** %7, align 8
  %20 = load %struct.term*, %struct.term** %9, align 8
  %21 = call i32 @term_EqualTopSymbols(%struct.term* noundef %19, %struct.term* noundef %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @ord_Equal()
  store i32 %24, i32* %5, align 4
  br label %123

25:                                               ; preds = %18
  %26 = call i32 @ord_Uncomparable()
  store i32 %26, i32* %5, align 4
  br label %123

27:                                               ; preds = %4
  %28 = load %struct.term*, %struct.term** %9, align 8
  %29 = call i32 @term_IsVariable(%struct.term* noundef %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.binding*, %struct.binding** %6, align 8
  %33 = load %struct.term*, %struct.term** %7, align 8
  %34 = load %struct.term*, %struct.term** %9, align 8
  %35 = call i32 @term_TopSymbol(%struct.term* noundef %34)
  %36 = call i32 @cont_TermContainsSymbol(%struct.binding* noundef %32, %struct.term* noundef %33, i32 noundef %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @ord_GreaterThan()
  store i32 %39, i32* %5, align 4
  br label %123

40:                                               ; preds = %31
  %41 = call i32 @ord_Uncomparable()
  store i32 %41, i32* %5, align 4
  br label %123

42:                                               ; preds = %27
  %43 = load %struct.term*, %struct.term** %7, align 8
  %44 = load %struct.term*, %struct.term** %9, align 8
  %45 = call i32 @term_EqualTopSymbols(%struct.term* noundef %43, %struct.term* noundef %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load %struct.term*, %struct.term** %7, align 8
  %49 = call i32 @term_TopSymbol(%struct.term* noundef %48)
  %50 = call i32 @symbol_HasProperty(i32 noundef %49, i32 noundef 16)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.binding*, %struct.binding** %6, align 8
  %54 = load %struct.term*, %struct.term** %7, align 8
  %55 = load %struct.binding*, %struct.binding** %8, align 8
  %56 = load %struct.term*, %struct.term** %9, align 8
  %57 = call i32 @rpos_ContMulGreaterEqual(%struct.binding* noundef %53, %struct.term* noundef %54, %struct.binding* noundef %55, %struct.term* noundef %56)
  store i32 %57, i32* %5, align 4
  br label %123

58:                                               ; preds = %47
  %59 = load %struct.binding*, %struct.binding** %6, align 8
  %60 = load %struct.term*, %struct.term** %7, align 8
  %61 = load %struct.binding*, %struct.binding** %8, align 8
  %62 = load %struct.term*, %struct.term** %9, align 8
  %63 = call i32 @rpos_ContLexGreaterEqual(%struct.binding* noundef %59, %struct.term* noundef %60, %struct.binding* noundef %61, %struct.term* noundef %62)
  store i32 %63, i32* %5, align 4
  br label %123

64:                                               ; preds = %42
  %65 = load i32*, i32** @ord_PRECEDENCE, align 8
  %66 = load %struct.term*, %struct.term** %7, align 8
  %67 = call i32 @term_TopSymbol(%struct.term* noundef %66)
  %68 = load %struct.term*, %struct.term** %9, align 8
  %69 = call i32 @term_TopSymbol(%struct.term* noundef %68)
  %70 = call i32 @symbol_PrecedenceGreater(i32* noundef %65, i32 noundef %67, i32 noundef %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %64
  %73 = load %struct.term*, %struct.term** %9, align 8
  %74 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %73)
  store %struct.LIST_HELP* %74, %struct.LIST_HELP** %10, align 8
  br label %75

75:                                               ; preds = %92, %72
  %76 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %77 = call i32 @list_Empty(%struct.LIST_HELP* noundef %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load %struct.binding*, %struct.binding** %6, align 8
  %82 = load %struct.term*, %struct.term** %7, align 8
  %83 = load %struct.binding*, %struct.binding** %8, align 8
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %85 = call i8* @list_Car(%struct.LIST_HELP* noundef %84)
  %86 = bitcast i8* %85 to %struct.term*
  %87 = call i32 @rpos_ContGreater(%struct.binding* noundef %81, %struct.term* noundef %82, %struct.binding* noundef %83, %struct.term* noundef %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %80
  %90 = call i32 @ord_Uncomparable()
  store i32 %90, i32* %5, align 4
  br label %123

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %94 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %93)
  store %struct.LIST_HELP* %94, %struct.LIST_HELP** %10, align 8
  br label %75, !llvm.loop !18

95:                                               ; preds = %75
  %96 = call i32 @ord_GreaterThan()
  store i32 %96, i32* %5, align 4
  br label %123

97:                                               ; preds = %64
  %98 = load %struct.term*, %struct.term** %7, align 8
  %99 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %98)
  store %struct.LIST_HELP* %99, %struct.LIST_HELP** %10, align 8
  br label %100

100:                                              ; preds = %118, %97
  %101 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %102 = call i32 @list_Empty(%struct.LIST_HELP* noundef %101)
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  br i1 %104, label %105, label %121

105:                                              ; preds = %100
  %106 = load %struct.binding*, %struct.binding** %6, align 8
  %107 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %108 = call i8* @list_Car(%struct.LIST_HELP* noundef %107)
  %109 = bitcast i8* %108 to %struct.term*
  %110 = load %struct.binding*, %struct.binding** %8, align 8
  %111 = load %struct.term*, %struct.term** %9, align 8
  %112 = call i32 @rpos_ContGreaterEqual(%struct.binding* noundef %106, %struct.term* noundef %109, %struct.binding* noundef %110, %struct.term* noundef %111)
  %113 = call i32 @ord_IsUncomparable(i32 noundef %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %105
  %116 = call i32 @ord_GreaterThan()
  store i32 %116, i32* %5, align 4
  br label %123

117:                                              ; preds = %105
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %120 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %119)
  store %struct.LIST_HELP* %120, %struct.LIST_HELP** %10, align 8
  br label %100, !llvm.loop !19

121:                                              ; preds = %100
  %122 = call i32 @ord_Uncomparable()
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %115, %95, %89, %58, %52, %40, %38, %25, %23
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @cont_TermContainsSymbol(%struct.binding* noundef, %struct.term* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @rpos_ContMulGreaterEqual(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.binding*, align 8
  %7 = alloca %struct.term*, align 8
  %8 = alloca %struct.binding*, align 8
  %9 = alloca %struct.term*, align 8
  %10 = alloca %struct.LIST_HELP*, align 8
  %11 = alloca %struct.LIST_HELP*, align 8
  %12 = alloca %struct.LIST_HELP*, align 8
  %13 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %6, align 8
  store %struct.term* %1, %struct.term** %7, align 8
  store %struct.binding* %2, %struct.binding** %8, align 8
  store %struct.term* %3, %struct.term** %9, align 8
  %14 = load %struct.binding*, %struct.binding** %6, align 8
  %15 = load %struct.term*, %struct.term** %7, align 8
  %16 = load %struct.binding*, %struct.binding** %8, align 8
  %17 = load %struct.term*, %struct.term** %9, align 8
  %18 = call %struct.LIST_HELP* @rpos_ContMultisetDifference(%struct.binding* noundef %14, %struct.term* noundef %15, %struct.binding* noundef %16, %struct.term* noundef %17)
  store %struct.LIST_HELP* %18, %struct.LIST_HELP** %10, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %20 = call i32 @list_Empty(%struct.LIST_HELP* noundef %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = call i32 @ord_Equal()
  store i32 %23, i32* %5, align 4
  br label %76

24:                                               ; preds = %4
  %25 = load %struct.binding*, %struct.binding** %8, align 8
  %26 = load %struct.term*, %struct.term** %9, align 8
  %27 = load %struct.binding*, %struct.binding** %6, align 8
  %28 = load %struct.term*, %struct.term** %7, align 8
  %29 = call %struct.LIST_HELP* @rpos_ContMultisetDifference(%struct.binding* noundef %25, %struct.term* noundef %26, %struct.binding* noundef %27, %struct.term* noundef %28)
  store %struct.LIST_HELP* %29, %struct.LIST_HELP** %11, align 8
  store i32 1, i32* %13, align 4
  br label %30

30:                                               ; preds = %65, %24
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  %32 = call i32 @list_Empty(%struct.LIST_HELP* noundef %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i1 [ false, %30 ], [ %36, %34 ]
  br i1 %38, label %39, label %68

39:                                               ; preds = %37
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  store %struct.LIST_HELP* %40, %struct.LIST_HELP** %12, align 8
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %61, %39
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %43 = call i32 @list_Empty(%struct.LIST_HELP* noundef %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ false, %41 ], [ %48, %45 ]
  br i1 %50, label %51, label %64

51:                                               ; preds = %49
  %52 = load %struct.binding*, %struct.binding** %6, align 8
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %54 = call i8* @list_Car(%struct.LIST_HELP* noundef %53)
  %55 = bitcast i8* %54 to %struct.term*
  %56 = load %struct.binding*, %struct.binding** %8, align 8
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  %58 = call i8* @list_Car(%struct.LIST_HELP* noundef %57)
  %59 = bitcast i8* %58 to %struct.term*
  %60 = call i32 @rpos_ContGreater(%struct.binding* noundef %52, %struct.term* noundef %55, %struct.binding* noundef %56, %struct.term* noundef %59)
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %51
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %63 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %62)
  store %struct.LIST_HELP* %63, %struct.LIST_HELP** %12, align 8
  br label %41, !llvm.loop !20

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  %67 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* noundef %66)
  store %struct.LIST_HELP* %67, %struct.LIST_HELP** %11, align 8
  br label %30, !llvm.loop !21

68:                                               ; preds = %37
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  call void @list_Delete(%struct.LIST_HELP* noundef %69)
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 @ord_GreaterThan()
  store i32 %73, i32* %5, align 4
  br label %76

74:                                               ; preds = %68
  %75 = call i32 @ord_Uncomparable()
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %72, %22
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rpos_ContLexGreaterEqual(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca %struct.binding*, align 8
  %6 = alloca %struct.term*, align 8
  %7 = alloca %struct.binding*, align 8
  %8 = alloca %struct.term*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.LIST_HELP*, align 8
  %11 = alloca %struct.LIST_HELP*, align 8
  %12 = alloca %struct.LIST_HELP*, align 8
  %13 = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %0, %struct.binding** %5, align 8
  store %struct.term* %1, %struct.term** %6, align 8
  store %struct.binding* %2, %struct.binding** %7, align 8
  store %struct.term* %3, %struct.term** %8, align 8
  %14 = load %struct.term*, %struct.term** %6, align 8
  %15 = call i32 @term_TopSymbol(%struct.term* noundef %14)
  %16 = call i32 @symbol_HasProperty(i32 noundef %15, i32 noundef 8)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.term*, %struct.term** %6, align 8
  %20 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %19)
  %21 = call %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* noundef %20)
  store %struct.LIST_HELP* %21, %struct.LIST_HELP** %10, align 8
  %22 = load %struct.term*, %struct.term** %8, align 8
  %23 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %22)
  %24 = call %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* noundef %23)
  store %struct.LIST_HELP* %24, %struct.LIST_HELP** %11, align 8
  br label %30

25:                                               ; preds = %4
  %26 = load %struct.term*, %struct.term** %6, align 8
  %27 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %26)
  store %struct.LIST_HELP* %27, %struct.LIST_HELP** %10, align 8
  %28 = load %struct.term*, %struct.term** %8, align 8
  %29 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %28)
  store %struct.LIST_HELP* %29, %struct.LIST_HELP** %11, align 8
  br label %30

30:                                               ; preds = %25, %18
  %31 = call i32 @ord_Equal()
  store i32 %31, i32* %9, align 4
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  store %struct.LIST_HELP* %32, %struct.LIST_HELP** %12, align 8
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  store %struct.LIST_HELP* %33, %struct.LIST_HELP** %13, align 8
  br label %34

34:                                               ; preds = %54, %30
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %36 = call i32 @list_Empty(%struct.LIST_HELP* noundef %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load %struct.binding*, %struct.binding** %5, align 8
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %42 = call i8* @list_Car(%struct.LIST_HELP* noundef %41)
  %43 = bitcast i8* %42 to %struct.term*
  %44 = load %struct.binding*, %struct.binding** %7, align 8
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %46 = call i8* @list_Car(%struct.LIST_HELP* noundef %45)
  %47 = bitcast i8* %46 to %struct.term*
  %48 = call i32 @rpos_ContGreaterEqual(%struct.binding* noundef %40, %struct.term* noundef %43, %struct.binding* noundef %44, %struct.term* noundef %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ord_IsEqual(i32 noundef %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %39
  br label %59

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %56 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %55)
  store %struct.LIST_HELP* %56, %struct.LIST_HELP** %12, align 8
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %58 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %57)
  store %struct.LIST_HELP* %58, %struct.LIST_HELP** %13, align 8
  br label %34, !llvm.loop !22

59:                                               ; preds = %52, %34
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ord_IsEqual(i32 noundef %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %132

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @ord_IsGreaterThan(i32 noundef %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %64
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %70 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %69)
  store %struct.LIST_HELP* %70, %struct.LIST_HELP** %13, align 8
  br label %71

71:                                               ; preds = %87, %68
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %73 = call i32 @list_Empty(%struct.LIST_HELP* noundef %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = load %struct.binding*, %struct.binding** %5, align 8
  %77 = load %struct.term*, %struct.term** %6, align 8
  %78 = load %struct.binding*, %struct.binding** %7, align 8
  %79 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %80 = call i8* @list_Car(%struct.LIST_HELP* noundef %79)
  %81 = bitcast i8* %80 to %struct.term*
  %82 = call i32 @rpos_ContGreater(%struct.binding* noundef %76, %struct.term* noundef %77, %struct.binding* noundef %78, %struct.term* noundef %81)
  %83 = icmp ne i32 %82, 0
  br label %84

84:                                               ; preds = %75, %71
  %85 = phi i1 [ false, %71 ], [ %83, %75 ]
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %89 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %88)
  store %struct.LIST_HELP* %89, %struct.LIST_HELP** %13, align 8
  br label %71, !llvm.loop !23

90:                                               ; preds = %84
  %91 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %92 = call i32 @list_Empty(%struct.LIST_HELP* noundef %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 @ord_GreaterThan()
  store i32 %95, i32* %9, align 4
  br label %98

96:                                               ; preds = %90
  %97 = call i32 @ord_Uncomparable()
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %96, %94
  br label %131

99:                                               ; preds = %64
  %100 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %101 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %100)
  store %struct.LIST_HELP* %101, %struct.LIST_HELP** %12, align 8
  %102 = call i32 @ord_Uncomparable()
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %127, %99
  %104 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %105 = call i32 @list_Empty(%struct.LIST_HELP* noundef %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @ord_IsGreaterThan(i32 noundef %108)
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  br label %112

112:                                              ; preds = %107, %103
  %113 = phi i1 [ false, %103 ], [ %111, %107 ]
  br i1 %113, label %114, label %130

114:                                              ; preds = %112
  %115 = load %struct.binding*, %struct.binding** %5, align 8
  %116 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %117 = call i8* @list_Car(%struct.LIST_HELP* noundef %116)
  %118 = bitcast i8* %117 to %struct.term*
  %119 = load %struct.binding*, %struct.binding** %7, align 8
  %120 = load %struct.term*, %struct.term** %8, align 8
  %121 = call i32 @rpos_ContGreaterEqual(%struct.binding* noundef %115, %struct.term* noundef %118, %struct.binding* noundef %119, %struct.term* noundef %120)
  %122 = call i32 @ord_IsUncomparable(i32 noundef %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %114
  %125 = call i32 @ord_GreaterThan()
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %124, %114
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %129 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %128)
  store %struct.LIST_HELP* %129, %struct.LIST_HELP** %12, align 8
  br label %103, !llvm.loop !24

130:                                              ; preds = %112
  br label %131

131:                                              ; preds = %130, %98
  br label %132

132:                                              ; preds = %131, %63
  %133 = load %struct.term*, %struct.term** %6, align 8
  %134 = call i32 @term_TopSymbol(%struct.term* noundef %133)
  %135 = call i32 @symbol_HasProperty(i32 noundef %134, i32 noundef 8)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  call void @list_Delete(%struct.LIST_HELP* noundef %138)
  %139 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  call void @list_Delete(%struct.LIST_HELP* noundef %139)
  br label %140

140:                                              ; preds = %137, %132
  %141 = load i32, i32* %9, align 4
  ret i32 %141
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rpos_ContGreater(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca %struct.binding*, align 8
  %6 = alloca %struct.term*, align 8
  %7 = alloca %struct.binding*, align 8
  %8 = alloca %struct.term*, align 8
  store %struct.binding* %0, %struct.binding** %5, align 8
  store %struct.term* %1, %struct.term** %6, align 8
  store %struct.binding* %2, %struct.binding** %7, align 8
  store %struct.term* %3, %struct.term** %8, align 8
  %9 = load %struct.binding*, %struct.binding** %5, align 8
  %10 = load %struct.term*, %struct.term** %6, align 8
  %11 = load %struct.binding*, %struct.binding** %7, align 8
  %12 = load %struct.term*, %struct.term** %8, align 8
  %13 = call i32 @rpos_ContGreaterEqual(%struct.binding* noundef %9, %struct.term* noundef %10, %struct.binding* noundef %11, %struct.term* noundef %12)
  %14 = call i32 @ord_IsGreaterThan(i32 noundef %13)
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpos_ContCompare(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.binding*, align 8
  %7 = alloca %struct.term*, align 8
  %8 = alloca %struct.binding*, align 8
  %9 = alloca %struct.term*, align 8
  %10 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %6, align 8
  store %struct.term* %1, %struct.term** %7, align 8
  store %struct.binding* %2, %struct.binding** %8, align 8
  store %struct.term* %3, %struct.term** %9, align 8
  %11 = load %struct.term*, %struct.term** %7, align 8
  %12 = call %struct.term* @cont_Deref(%struct.binding** noundef %6, %struct.term* noundef %11)
  store %struct.term* %12, %struct.term** %7, align 8
  %13 = load %struct.term*, %struct.term** %9, align 8
  %14 = call %struct.term* @cont_Deref(%struct.binding** noundef %8, %struct.term* noundef %13)
  store %struct.term* %14, %struct.term** %9, align 8
  %15 = load %struct.binding*, %struct.binding** %6, align 8
  %16 = load %struct.term*, %struct.term** %7, align 8
  %17 = load %struct.binding*, %struct.binding** %8, align 8
  %18 = load %struct.term*, %struct.term** %9, align 8
  %19 = call i32 @rpos_ContGreaterEqual(%struct.binding* noundef %15, %struct.term* noundef %16, %struct.binding* noundef %17, %struct.term* noundef %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @ord_IsUncomparable(i32 noundef %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %35

25:                                               ; preds = %4
  %26 = load %struct.binding*, %struct.binding** %8, align 8
  %27 = load %struct.term*, %struct.term** %9, align 8
  %28 = load %struct.binding*, %struct.binding** %6, align 8
  %29 = load %struct.term*, %struct.term** %7, align 8
  %30 = call i32 @rpos_ContGreater(%struct.binding* noundef %26, %struct.term* noundef %27, %struct.binding* noundef %28, %struct.term* noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 @ord_SmallerThan()
  store i32 %33, i32* %5, align 4
  br label %35

34:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %32, %23
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_Equal(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.signature* @symbol_Signature(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @symbol_CheckIndexInRange(i32 noundef %3)
  %4 = load %struct.signature**, %struct.signature*** @symbol_SIGNATURE, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.signature*, %struct.signature** %4, i64 %6
  %8 = load %struct.signature*, %struct.signature** %7, align 8
  ret %struct.signature* %8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_Index(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @symbol_CheckNoVariable(i32 noundef %3)
  %4 = load i32, i32* %2, align 4
  %5 = sub nsw i32 0, %4
  %6 = load i32, i32* @symbol_TYPESTATBITS, align 4
  %7 = ashr i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal void @symbol_CheckIndexInRange(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @symbol_CheckNoVariable(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

declare dso_local %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* noundef) #1

declare dso_local %struct.LIST_HELP* @list_NMultisetDifference(%struct.LIST_HELP* noundef, %struct.LIST_HELP* noundef, i32 (i8*, i8*)* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @list_Free(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = bitcast %struct.LIST_HELP* %3 to i8*
  call void @memory_Free(i8* noundef %4, i32 noundef 16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @memory_Free(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @memory_LookupRealBlockSize(i32 noundef %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp uge i32 %9, 1024
  br i1 %10, label %11, label %69

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @memory_OFFSET, align 4
  %14 = zext i32 %13 to i64
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = getelementptr inbounds i8, i8* %16, i64 -16
  %18 = bitcast i8* %17 to %struct.MEMORY_BIGBLOCKHEADERHELP*
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %18, %struct.MEMORY_BIGBLOCKHEADERHELP** %6, align 8
  %19 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %6, align 8
  %20 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %19, i32 0, i32 0
  %21 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %20, align 8
  %22 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %6, align 8
  %25 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %24, i32 0, i32 1
  %26 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %25, align 8
  %27 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %6, align 8
  %28 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %27, i32 0, i32 0
  %29 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %28, align 8
  %30 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %29, i32 0, i32 1
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %26, %struct.MEMORY_BIGBLOCKHEADERHELP** %30, align 8
  br label %35

31:                                               ; preds = %11
  %32 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %6, align 8
  %33 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %32, i32 0, i32 1
  %34 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %33, align 8
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %34, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  br label %35

35:                                               ; preds = %31, %23
  %36 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %6, align 8
  %37 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %36, i32 0, i32 1
  %38 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %37, align 8
  %39 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %6, align 8
  %42 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %41, i32 0, i32 0
  %43 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %42, align 8
  %44 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %6, align 8
  %45 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %44, i32 0, i32 1
  %46 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %45, align 8
  %47 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %46, i32 0, i32 0
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %43, %struct.MEMORY_BIGBLOCKHEADERHELP** %47, align 8
  br label %48

48:                                               ; preds = %40, %35
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @memory_MARKSIZE, align 4
  %51 = add i32 %49, %50
  %52 = zext i32 %51 to i64
  %53 = add i64 %52, 16
  %54 = load i64, i64* @memory_FREEDBYTES, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* @memory_FREEDBYTES, align 8
  %56 = load i64, i64* @memory_MAXMEM, align 8
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @memory_MARKSIZE, align 4
  %61 = add i32 %59, %60
  %62 = zext i32 %61 to i64
  %63 = add i64 %62, 16
  %64 = load i64, i64* @memory_MAXMEM, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* @memory_MAXMEM, align 8
  br label %66

66:                                               ; preds = %58, %48
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -16
  call void @free(i8* noundef %68) #3
  br label %93

69:                                               ; preds = %2
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i64 0, i64 %71
  %73 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %72, align 8
  %74 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @memory_FREEDBYTES, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* @memory_FREEDBYTES, align 8
  %79 = load i32, i32* %4, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i64 0, i64 %80
  %82 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %81, align 8
  %83 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = bitcast i8* %85 to i8**
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i64 0, i64 %89
  %91 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %90, align 8
  %92 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %91, i32 0, i32 0
  store i8* %87, i8** %92, align 8
  br label %93

93:                                               ; preds = %69, %66
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @memory_LookupRealBlockSize(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ult i32 %4, 1024
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i64 0, i64 %8
  %10 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %9, align 8
  %11 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @memory_CalculateRealBlockSize(i32 noundef %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %13, %6
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @memory_CalculateRealBlockSize(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = urem i32 %5, 1
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = urem i32 %9, 1
  %11 = sub i32 1, %10
  %12 = load i32, i32* %3, align 4
  %13 = add i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @memory_ALIGN, align 4
  %17 = urem i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i32, i32* @memory_ALIGN, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @memory_ALIGN, align 4
  %23 = urem i32 %21, %22
  %24 = sub i32 %20, %23
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %19, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_IsVariable(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sgt i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  %3 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %3, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %5)
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %2, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  call void @list_Free(%struct.LIST_HELP* noundef %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  ret %struct.LIST_HELP* %8
}

declare dso_local %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ord_IsEqual(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ord_IsGreaterThan(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 3, %3
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_Ordering(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @symbol_Index(i32 noundef %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.binding* @cont_InstanceContext() #0 {
  %1 = load %struct.binding*, %struct.binding** @cont_INSTANCECONTEXT, align 8
  ret %struct.binding* %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cont_VarIsBound(%struct.binding* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.binding*, %struct.binding** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %5, i32 noundef %6)
  %8 = icmp ne %struct.term* %7, null
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.binding* @cont_ContextBindingContext(%struct.binding* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.binding*, %struct.binding** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.binding, %struct.binding* %5, i64 %7
  %9 = getelementptr inbounds %struct.binding, %struct.binding* %8, i32 0, i32 3
  %10 = load %struct.binding*, %struct.binding** %9, align 8
  ret %struct.binding* %10
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.binding*, %struct.binding** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.binding, %struct.binding* %5, i64 %7
  %9 = getelementptr inbounds %struct.binding, %struct.binding* %8, i32 0, i32 2
  %10 = load %struct.term*, %struct.term** %9, align 8
  ret %struct.term* %10
}

; Function Attrs: noinline nounwind uwtable
define internal void @list_Rplaca(%struct.LIST_HELP* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.LIST_HELP*, align 8
  %4 = alloca i8*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  %7 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %6, i32 0, i32 1
  store i8* %5, i8** %7, align 8
  ret void
}

declare dso_local %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
