; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/bc/load.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/bc/load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.program_counter = type { i32, i32 }
%struct.bc_function = type { i8, [16 x i8*], i32, %struct.bc_label_group*, %struct.arg_list*, %struct.arg_list* }
%struct.bc_label_group = type { [64 x i64], %struct.bc_label_group* }
%struct.arg_list = type { i32, %struct.arg_list* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@load_adr = dso_local global %struct.program_counter zeroinitializer, align 4
@load_str = dso_local global i8 0, align 1
@load_const = dso_local global i8 0, align 1
@had_error = external dso_local global i32, align 4
@.str = private unnamed_addr constant [18 x i8] c"Function too big.\00", align 1
@functions = external dso_local global %struct.bc_function*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Program too big.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_load() #0 {
  call void @clear_func(i8 noundef signext 0)
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  store i8 0, i8* @load_str, align 1
  store i8 0, i8* @load_const, align 1
  ret void
}

declare dso_local void @clear_func(i8 noundef signext) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @addbyte(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @had_error, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %62

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  %11 = ashr i32 %10, 10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  %14 = srem i32 %12, 1024
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 0), align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sge i32 %16, 16
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %62

19:                                               ; preds = %9
  %20 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %20, i64 %22
  %24 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %23, i32 0, i32 1
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [16 x i8*], [16 x i8*]* %24, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %19
  %31 = call noalias i8* @malloc(i64 noundef 1024) #6
  %32 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %32, i64 %34
  %36 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %35, i32 0, i32 1
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [16 x i8*], [16 x i8*]* %36, i64 0, i64 %38
  store i8* %31, i8** %39, align 8
  br label %40

40:                                               ; preds = %30, %19
  %41 = load i32, i32* %2, align 4
  %42 = trunc i32 %41 to i8
  %43 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %43, i64 %45
  %47 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %46, i32 0, i32 1
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [16 x i8*], [16 x i8*]* %47, i64 0, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 %42, i8* %54, align 1
  %55 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %55, i64 %57
  %59 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %40, %18, %8
  ret void
}

declare dso_local void @yyerror(i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_label(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bc_label_group*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = ashr i64 %7, 6
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load i64, i64* %2, align 8
  %11 = srem i64 %10, 64
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 0), align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %14, i64 %16
  %18 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %17, i32 0, i32 3
  %19 = load %struct.bc_label_group*, %struct.bc_label_group** %18, align 8
  %20 = icmp eq %struct.bc_label_group* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = call noalias i8* @malloc(i64 noundef 520) #6
  %23 = bitcast i8* %22 to %struct.bc_label_group*
  %24 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %24, i64 %26
  %28 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %27, i32 0, i32 3
  store %struct.bc_label_group* %23, %struct.bc_label_group** %28, align 8
  %29 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %29, i64 %31
  %33 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %32, i32 0, i32 3
  %34 = load %struct.bc_label_group*, %struct.bc_label_group** %33, align 8
  %35 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %34, i32 0, i32 1
  store %struct.bc_label_group* null, %struct.bc_label_group** %35, align 8
  br label %36

36:                                               ; preds = %21, %1
  %37 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %37, i64 %39
  %41 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %40, i32 0, i32 3
  %42 = load %struct.bc_label_group*, %struct.bc_label_group** %41, align 8
  store %struct.bc_label_group* %42, %struct.bc_label_group** %3, align 8
  br label %43

43:                                               ; preds = %60, %36
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load %struct.bc_label_group*, %struct.bc_label_group** %3, align 8
  %48 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %47, i32 0, i32 1
  %49 = load %struct.bc_label_group*, %struct.bc_label_group** %48, align 8
  %50 = icmp eq %struct.bc_label_group* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = call noalias i8* @malloc(i64 noundef 520) #6
  %53 = bitcast i8* %52 to %struct.bc_label_group*
  %54 = load %struct.bc_label_group*, %struct.bc_label_group** %3, align 8
  %55 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %54, i32 0, i32 1
  store %struct.bc_label_group* %53, %struct.bc_label_group** %55, align 8
  %56 = load %struct.bc_label_group*, %struct.bc_label_group** %3, align 8
  %57 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %56, i32 0, i32 1
  %58 = load %struct.bc_label_group*, %struct.bc_label_group** %57, align 8
  %59 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %58, i32 0, i32 1
  store %struct.bc_label_group* null, %struct.bc_label_group** %59, align 8
  br label %60

60:                                               ; preds = %51, %46
  %61 = load %struct.bc_label_group*, %struct.bc_label_group** %3, align 8
  %62 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %61, i32 0, i32 1
  %63 = load %struct.bc_label_group*, %struct.bc_label_group** %62, align 8
  store %struct.bc_label_group* %63, %struct.bc_label_group** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %4, align 4
  br label %43, !llvm.loop !4

66:                                               ; preds = %43
  %67 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.bc_label_group*, %struct.bc_label_group** %3, align 8
  %70 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %69, i32 0, i32 0
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [64 x i64], [64 x i64]* %70, i64 0, i64 %72
  store i64 %68, i64* %73, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @long_val(i8** noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i8** %0, i8*** %3, align 8
  store i32 0, i32* %4, align 4
  store i8 0, i8* %5, align 1
  %6 = load i8**, i8*** %3, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 45
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  store i8 1, i8* %5, align 1
  %12 = load i8**, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %12, align 8
  br label %15

15:                                               ; preds = %11, %1
  br label %16

16:                                               ; preds = %29, %15
  %17 = call i16** @__ctype_b_loc() #7
  %18 = load i16*, i16** %17, align 8
  %19 = load i8**, i8*** %3, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %18, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 2048
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %16
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %30, 10
  %32 = load i8**, i8*** %3, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %32, align 8
  %35 = load i8, i8* %33, align 1
  %36 = sext i8 %35 to i32
  %37 = add nsw i32 %31, %36
  %38 = sub nsw i32 %37, 48
  store i32 %38, i32* %4, align 4
  br label %16, !llvm.loop !6

39:                                               ; preds = %16
  %40 = load i8, i8* %5, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 0, %43
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %2, align 8
  br label %49

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %2, align 8
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i64, i64* %2, align 8
  ret i64 %50
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @load_code(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.program_counter, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  store i8* %9, i8** %3, align 8
  br label %10

10:                                               ; preds = %288, %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %289

15:                                               ; preds = %10
  %16 = load i32, i32* @had_error, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %289

19:                                               ; preds = %15
  %20 = load i8, i8* @load_str, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 34
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i8 0, i8* @load_str, align 1
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  call void @addbyte(i32 noundef %32)
  br label %288

33:                                               ; preds = %19
  %34 = load i8, i8* @load_const, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %33
  %37 = load i8*, i8** %3, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %3, align 8
  br label %85

44:                                               ; preds = %36
  %45 = load i8*, i8** %3, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 58
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  store i8 0, i8* @load_const, align 1
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %3, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  call void @addbyte(i32 noundef %53)
  br label %84

54:                                               ; preds = %44
  %55 = load i8*, i8** %3, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %3, align 8
  %62 = load i8, i8* %60, align 1
  %63 = sext i8 %62 to i32
  call void @addbyte(i32 noundef %63)
  br label %83

64:                                               ; preds = %54
  %65 = load i8*, i8** %3, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sge i32 %67, 65
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i8*, i8** %3, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %3, align 8
  %72 = load i8, i8* %70, align 1
  %73 = sext i8 %72 to i32
  %74 = add nsw i32 %73, 10
  %75 = sub nsw i32 %74, 65
  call void @addbyte(i32 noundef %75)
  br label %82

76:                                               ; preds = %64
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %3, align 8
  %79 = load i8, i8* %77, align 1
  %80 = sext i8 %79 to i32
  %81 = sub nsw i32 %80, 48
  call void @addbyte(i32 noundef %81)
  br label %82

82:                                               ; preds = %76, %69
  br label %83

83:                                               ; preds = %82, %59
  br label %84

84:                                               ; preds = %83, %49
  br label %85

85:                                               ; preds = %84, %41
  br label %287

86:                                               ; preds = %33
  %87 = load i8*, i8** %3, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  switch i32 %89, label %280 [
    i32 34, label %90
    i32 78, label %91
    i32 66, label %96
    i32 74, label %96
    i32 90, label %96
    i32 70, label %116
    i32 93, label %190
    i32 67, label %197
    i32 99, label %238
    i32 75, label %246
    i32 100, label %250
    i32 105, label %250
    i32 108, label %250
    i32 115, label %250
    i32 65, label %250
    i32 77, label %250
    i32 76, label %250
    i32 83, label %250
    i32 64, label %271
    i32 10, label %279
  ]

90:                                               ; preds = %86
  store i8 1, i8* @load_str, align 1
  br label %284

91:                                               ; preds = %86
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %3, align 8
  %94 = call i64 @long_val(i8** noundef %3)
  store i64 %94, i64* %5, align 8
  %95 = load i64, i64* %5, align 8
  call void @def_label(i64 noundef %95)
  br label %284

96:                                               ; preds = %86, %86, %86
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %3, align 8
  %99 = load i8, i8* %97, align 1
  %100 = sext i8 %99 to i32
  call void @addbyte(i32 noundef %100)
  %101 = call i64 @long_val(i8** noundef %3)
  store i64 %101, i64* %5, align 8
  %102 = load i64, i64* %5, align 8
  %103 = icmp sgt i64 %102, 65535
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #8
  unreachable

107:                                              ; preds = %96
  %108 = load i64, i64* %5, align 8
  %109 = trunc i64 %108 to i8
  %110 = sext i8 %109 to i32
  %111 = and i32 %110, 255
  call void @addbyte(i32 noundef %111)
  %112 = load i64, i64* %5, align 8
  %113 = trunc i64 %112 to i8
  %114 = sext i8 %113 to i32
  %115 = ashr i32 %114, 8
  call void @addbyte(i32 noundef %115)
  br label %284

116:                                              ; preds = %86
  %117 = load i8*, i8** %3, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %3, align 8
  %119 = call i64 @long_val(i8** noundef %3)
  store i64 %119, i64* %7, align 8
  %120 = load i64, i64* %7, align 8
  %121 = trunc i64 %120 to i8
  call void @clear_func(i8 noundef signext %121)
  br label %122

122:                                              ; preds = %136, %116
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %3, align 8
  %125 = load i8, i8* %123, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 46
  br i1 %127, label %128, label %154

128:                                              ; preds = %122
  %129 = load i8*, i8** %3, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 46
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i8*, i8** %3, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %3, align 8
  br label %154

136:                                              ; preds = %128
  %137 = call i64 @long_val(i8** noundef %3)
  store i64 %137, i64* %4, align 8
  %138 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %139 = load i64, i64* %7, align 8
  %140 = trunc i64 %139 to i32
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %138, i64 %141
  %143 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %142, i32 0, i32 4
  %144 = load %struct.arg_list*, %struct.arg_list** %143, align 8
  %145 = load i64, i64* %4, align 8
  %146 = trunc i64 %145 to i8
  %147 = call %struct.arg_list* @nextarg(%struct.arg_list* noundef %144, i8 noundef signext %146)
  %148 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %149 = load i64, i64* %7, align 8
  %150 = trunc i64 %149 to i32
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %148, i64 %151
  %153 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %152, i32 0, i32 4
  store %struct.arg_list* %147, %struct.arg_list** %153, align 8
  br label %122, !llvm.loop !7

154:                                              ; preds = %133, %122
  br label %155

155:                                              ; preds = %168, %154
  %156 = load i8*, i8** %3, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 91
  br i1 %159, label %160, label %186

160:                                              ; preds = %155
  %161 = load i8*, i8** %3, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 44
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i8*, i8** %3, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %3, align 8
  br label %168

168:                                              ; preds = %165, %160
  %169 = call i64 @long_val(i8** noundef %3)
  store i64 %169, i64* %4, align 8
  %170 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %171 = load i64, i64* %7, align 8
  %172 = trunc i64 %171 to i32
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %170, i64 %173
  %175 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %174, i32 0, i32 5
  %176 = load %struct.arg_list*, %struct.arg_list** %175, align 8
  %177 = load i64, i64* %4, align 8
  %178 = trunc i64 %177 to i8
  %179 = call %struct.arg_list* @nextarg(%struct.arg_list* noundef %176, i8 noundef signext %178)
  %180 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %181 = load i64, i64* %7, align 8
  %182 = trunc i64 %181 to i32
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %180, i64 %183
  %185 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %184, i32 0, i32 5
  store %struct.arg_list* %179, %struct.arg_list** %185, align 8
  br label %155, !llvm.loop !8

186:                                              ; preds = %155
  %187 = bitcast %struct.program_counter* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %187, i8* align 4 bitcast (%struct.program_counter* @load_adr to i8*), i64 8, i1 false)
  %188 = load i64, i64* %7, align 8
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  br label %284

190:                                              ; preds = %86
  %191 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %192 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 0), align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %191, i64 %193
  %195 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %194, i32 0, i32 0
  store i8 1, i8* %195, align 8
  %196 = bitcast %struct.program_counter* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.program_counter* @load_adr to i8*), i8* align 4 %196, i64 8, i1 false)
  br label %284

197:                                              ; preds = %86
  %198 = load i8*, i8** %3, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %3, align 8
  %200 = load i8, i8* %198, align 1
  %201 = sext i8 %200 to i32
  call void @addbyte(i32 noundef %201)
  %202 = call i64 @long_val(i8** noundef %3)
  store i64 %202, i64* %7, align 8
  %203 = load i64, i64* %7, align 8
  %204 = icmp slt i64 %203, 128
  br i1 %204, label %205, label %209

205:                                              ; preds = %197
  %206 = load i64, i64* %7, align 8
  %207 = trunc i64 %206 to i8
  %208 = sext i8 %207 to i32
  call void @addbyte(i32 noundef %208)
  br label %218

209:                                              ; preds = %197
  %210 = load i64, i64* %7, align 8
  %211 = ashr i64 %210, 8
  %212 = and i64 %211, 255
  %213 = or i64 %212, 128
  %214 = trunc i64 %213 to i32
  call void @addbyte(i32 noundef %214)
  %215 = load i64, i64* %7, align 8
  %216 = and i64 %215, 255
  %217 = trunc i64 %216 to i32
  call void @addbyte(i32 noundef %217)
  br label %218

218:                                              ; preds = %209, %205
  %219 = load i8*, i8** %3, align 8
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 44
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load i8*, i8** %3, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %3, align 8
  br label %226

226:                                              ; preds = %223, %218
  br label %227

227:                                              ; preds = %232, %226
  %228 = load i8*, i8** %3, align 8
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp ne i32 %230, 58
  br i1 %231, label %232, label %237

232:                                              ; preds = %227
  %233 = load i8*, i8** %3, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %3, align 8
  %235 = load i8, i8* %233, align 1
  %236 = sext i8 %235 to i32
  call void @addbyte(i32 noundef %236)
  br label %227, !llvm.loop !9

237:                                              ; preds = %227
  call void @addbyte(i32 noundef 58)
  br label %284

238:                                              ; preds = %86
  %239 = load i8*, i8** %3, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %3, align 8
  %241 = load i8, i8* %239, align 1
  %242 = sext i8 %241 to i32
  call void @addbyte(i32 noundef %242)
  %243 = load i8*, i8** %3, align 8
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  call void @addbyte(i32 noundef %245)
  br label %284

246:                                              ; preds = %86
  %247 = load i8*, i8** %3, align 8
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  call void @addbyte(i32 noundef %249)
  store i8 1, i8* @load_const, align 1
  br label %284

250:                                              ; preds = %86, %86, %86, %86, %86, %86, %86, %86
  %251 = load i8*, i8** %3, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %3, align 8
  %253 = load i8, i8* %251, align 1
  %254 = sext i8 %253 to i32
  call void @addbyte(i32 noundef %254)
  %255 = call i64 @long_val(i8** noundef %3)
  store i64 %255, i64* %6, align 8
  %256 = load i64, i64* %6, align 8
  %257 = icmp slt i64 %256, 128
  br i1 %257, label %258, label %261

258:                                              ; preds = %250
  %259 = load i64, i64* %6, align 8
  %260 = trunc i64 %259 to i32
  call void @addbyte(i32 noundef %260)
  br label %270

261:                                              ; preds = %250
  %262 = load i64, i64* %6, align 8
  %263 = ashr i64 %262, 8
  %264 = and i64 %263, 255
  %265 = or i64 %264, 128
  %266 = trunc i64 %265 to i32
  call void @addbyte(i32 noundef %266)
  %267 = load i64, i64* %6, align 8
  %268 = and i64 %267, 255
  %269 = trunc i64 %268 to i32
  call void @addbyte(i32 noundef %269)
  br label %270

270:                                              ; preds = %261, %258
  br label %284

271:                                              ; preds = %86
  %272 = load i8*, i8** %3, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %3, align 8
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  switch i32 %275, label %278 [
    i32 105, label %276
    i32 114, label %277
  ]

276:                                              ; preds = %271
  call void @init_load()
  br label %278

277:                                              ; preds = %271
  call void @execute()
  br label %278

278:                                              ; preds = %271, %277, %276
  br label %284

279:                                              ; preds = %86
  br label %284

280:                                              ; preds = %86
  %281 = load i8*, i8** %3, align 8
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  call void @addbyte(i32 noundef %283)
  br label %284

284:                                              ; preds = %280, %279, %278, %270, %246, %238, %237, %190, %186, %107, %91, %90
  %285 = load i8*, i8** %3, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %3, align 8
  br label %287

287:                                              ; preds = %284, %85
  br label %288

288:                                              ; preds = %287, %28
  br label %10, !llvm.loop !10

289:                                              ; preds = %18, %10
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

declare dso_local %struct.arg_list* @nextarg(%struct.arg_list* noundef, i8 noundef signext) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @execute() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { noreturn nounwind }

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
