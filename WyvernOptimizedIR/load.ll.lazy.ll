; ModuleID = './load.ll'
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

@load_adr = dso_local global %struct.program_counter zeroinitializer, align 8
@load_str = dso_local global i8 0, align 1
@load_const = dso_local global i8 0, align 1
@had_error = external dso_local global i32, align 4
@.str = private unnamed_addr constant [18 x i8] c"Function too big.\00", align 1
@functions = external dso_local global %struct.bc_function*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Program too big.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_load() #0 {
  call void @clear_func(i8 noundef signext 0) #8
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i64 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i64 0, i32 1), align 4
  store i8 0, i8* @load_str, align 1
  store i8 0, i8* @load_const, align 1
  ret void
}

declare dso_local void @clear_func(i8 noundef signext) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @addbyte(i32 noundef %0) #0 {
  %2 = load i32, i32* @had_error, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  br label %39

4:                                                ; preds = %1
  %5 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i64 0, i32 1), align 4
  %6 = ashr i32 %5, 10
  %7 = add nsw i32 %5, 1
  store i32 %7, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i64 0, i32 1), align 4
  %8 = srem i32 %5, 1024
  %9 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i64 0, i32 0), align 4
  %10 = icmp sgt i32 %5, 16383
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #8
  br label %39

12:                                               ; preds = %4
  %13 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %14 = sext i32 %9 to i64
  %15 = sext i32 %6 to i64
  %16 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %13, i64 %14, i32 1, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = call noalias dereferenceable_or_null(1024) i8* @malloc(i64 noundef 1024) #8
  %21 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %22 = sext i32 %9 to i64
  %23 = sext i32 %6 to i64
  %24 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %21, i64 %22, i32 1, i64 %23
  store i8* %20, i8** %24, align 8
  br label %25

25:                                               ; preds = %19, %12
  %26 = trunc i32 %0 to i8
  %27 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %28 = sext i32 %9 to i64
  %29 = sext i32 %6 to i64
  %30 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %27, i64 %28, i32 1, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = sext i32 %8 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 %26, i8* %33, align 1
  %34 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %35 = sext i32 %9 to i64
  %36 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %34, i64 %35, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %25, %11, %3
  ret void
}

declare dso_local void @yyerror(i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_label(i64 noundef %0) #0 {
  %2 = lshr i64 %0, 6
  %3 = trunc i64 %2 to i32
  %4 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i64 0, i32 0), align 4
  %5 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %5, i64 %6, i32 3
  %8 = load %struct.bc_label_group*, %struct.bc_label_group** %7, align 8
  %9 = icmp eq %struct.bc_label_group* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = call noalias dereferenceable_or_null(520) i8* @malloc(i64 noundef 520) #8
  %12 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %13 = sext i32 %4 to i64
  %14 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %12, i64 %13, i32 3
  %15 = bitcast %struct.bc_label_group** %14 to i8**
  store i8* %11, i8** %15, align 8
  %16 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %17 = sext i32 %4 to i64
  %18 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %16, i64 %17, i32 3
  %19 = load %struct.bc_label_group*, %struct.bc_label_group** %18, align 8
  %20 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %19, i64 0, i32 1
  store %struct.bc_label_group* null, %struct.bc_label_group** %20, align 8
  br label %21

21:                                               ; preds = %10, %1
  %22 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %23 = sext i32 %4 to i64
  %24 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %22, i64 %23, i32 3
  br label %25

25:                                               ; preds = %36, %21
  %.01.in = phi %struct.bc_label_group** [ %24, %21 ], [ %37, %36 ]
  %.0 = phi i32 [ %3, %21 ], [ %38, %36 ]
  %.01 = load %struct.bc_label_group*, %struct.bc_label_group** %.01.in, align 8
  %26 = icmp sgt i32 %.0, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %.01, i64 0, i32 1
  %29 = load %struct.bc_label_group*, %struct.bc_label_group** %28, align 8
  %30 = icmp eq %struct.bc_label_group* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = call noalias dereferenceable_or_null(520) i8* @malloc(i64 noundef 520) #8
  %33 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %.01, i64 0, i32 1
  %34 = bitcast %struct.bc_label_group** %33 to i8**
  store i8* %32, i8** %34, align 8
  %.cast = bitcast i8* %32 to %struct.bc_label_group*
  %35 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %.cast, i64 0, i32 1
  store %struct.bc_label_group* null, %struct.bc_label_group** %35, align 8
  br label %36

36:                                               ; preds = %31, %27
  %37 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %.01, i64 0, i32 1
  %38 = add nsw i32 %.0, -1
  br label %25, !llvm.loop !4

39:                                               ; preds = %25
  %40 = srem i64 %0, 64
  %41 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i64 0, i32 1), align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %.01, i64 0, i32 0, i64 %40
  store i64 %42, i64* %43, align 8
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i64 @long_val(i8** nocapture noundef %0) #3 {
  %2 = load i8*, i8** %0, align 8
  %3 = load i8, i8* %2, align 1
  %4 = icmp eq i8 %3, 45
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i8*, i8** %0, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %7, i8** %0, align 8
  br label %8

8:                                                ; preds = %5, %1
  br label %9

9:                                                ; preds = %18, %8
  %.02 = phi i32 [ 0, %8 ], [ %25, %18 ]
  %10 = call i16** @__ctype_b_loc() #9
  %11 = load i16*, i16** %10, align 8
  %12 = load i8*, i8** %0, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i64
  %15 = getelementptr inbounds i16, i16* %11, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = and i16 %16, 2048
  %.not = icmp eq i16 %17, 0
  br i1 %.not, label %26, label %18

18:                                               ; preds = %9
  %19 = mul nsw i32 %.02, 10
  %20 = load i8*, i8** %0, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %21, i8** %0, align 8
  %22 = load i8, i8* %20, align 1
  %23 = sext i8 %22 to i32
  %24 = add nsw i32 %19, %23
  %25 = add nsw i32 %24, -48
  br label %9, !llvm.loop !6

26:                                               ; preds = %9
  br i1 %4, label %27, label %29

27:                                               ; preds = %26
  %28 = sub nsw i32 0, %.02
  br label %30

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %29, %27
  %.0.in = phi i32 [ %28, %27 ], [ %.02, %29 ]
  %.0 = sext i32 %.0.in to i64
  ret i64 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @load_code(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %230, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %.not = icmp eq i8 %6, 0
  br i1 %.not, label %.loopexit1, label %7

7:                                                ; preds = %4
  %8 = load i32, i32* @had_error, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %10, label %9

9:                                                ; preds = %7
  br label %231

10:                                               ; preds = %7
  %11 = load i8, i8* @load_str, align 1
  %.not3 = icmp eq i8 %11, 0
  br i1 %.not3, label %22, label %12

12:                                               ; preds = %10
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp eq i8 %14, 34
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i8 0, i8* @load_str, align 1
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %19, i8** %2, align 8
  %20 = load i8, i8* %18, align 1
  %21 = sext i8 %20 to i32
  call void @addbyte(i32 noundef %21)
  br label %230

22:                                               ; preds = %10
  %23 = load i8, i8* @load_const, align 1
  %.not4 = icmp eq i8 %23, 0
  br i1 %.not4, label %69, label %24

24:                                               ; preds = %22
  %25 = load i8*, i8** %2, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp eq i8 %26, 10
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8* %30, i8** %2, align 8
  br label %68

31:                                               ; preds = %24
  %32 = load i8*, i8** %2, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp eq i8 %33, 58
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  store i8 0, i8* @load_const, align 1
  %36 = load i8*, i8** %2, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %2, align 8
  %38 = load i8, i8* %36, align 1
  %39 = sext i8 %38 to i32
  call void @addbyte(i32 noundef %39)
  br label %67

40:                                               ; preds = %31
  %41 = load i8*, i8** %2, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp eq i8 %42, 46
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i8*, i8** %2, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8* %46, i8** %2, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  call void @addbyte(i32 noundef %48)
  br label %66

49:                                               ; preds = %40
  %50 = load i8*, i8** %2, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp sgt i8 %51, 64
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8* %55, i8** %2, align 8
  %56 = load i8, i8* %54, align 1
  %57 = sext i8 %56 to i32
  %58 = add nsw i32 %57, -55
  call void @addbyte(i32 noundef %58)
  br label %65

59:                                               ; preds = %49
  %60 = load i8*, i8** %2, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8* %61, i8** %2, align 8
  %62 = load i8, i8* %60, align 1
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %63, -48
  call void @addbyte(i32 noundef %64)
  br label %65

65:                                               ; preds = %59, %53
  br label %66

66:                                               ; preds = %65, %44
  br label %67

67:                                               ; preds = %66, %35
  br label %68

68:                                               ; preds = %67, %28
  br label %229

69:                                               ; preds = %22
  %70 = load i8*, i8** %2, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  switch i32 %72, label %222 [
    i32 34, label %73
    i32 78, label %74
    i32 66, label %78
    i32 74, label %78
    i32 90, label %78
    i32 70, label %92
    i32 93, label %144
    i32 67, label %150
    i32 99, label %184
    i32 75, label %192
    i32 100, label %196
    i32 105, label %196
    i32 108, label %196
    i32 115, label %196
    i32 65, label %196
    i32 77, label %196
    i32 76, label %196
    i32 83, label %196
    i32 64, label %213
    i32 10, label %221
  ]

73:                                               ; preds = %69
  store i8 1, i8* @load_str, align 1
  br label %226

74:                                               ; preds = %69
  %75 = load i8*, i8** %2, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8* %76, i8** %2, align 8
  %77 = call i64 @long_val(i8** noundef nonnull %2)
  call void @def_label(i64 noundef %77)
  br label %226

78:                                               ; preds = %69, %69, %69
  %79 = load i8*, i8** %2, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %80, i8** %2, align 8
  %81 = load i8, i8* %79, align 1
  %82 = sext i8 %81 to i32
  call void @addbyte(i32 noundef %82)
  %83 = call i64 @long_val(i8** noundef nonnull %2)
  %84 = icmp sgt i64 %83, 65535
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %86) #10
  call void @exit(i32 noundef 1) #11
  unreachable

88:                                               ; preds = %78
  %89 = trunc i64 %83 to i32
  %sext12 = and i32 %89, 255
  call void @addbyte(i32 noundef %sext12)
  %90 = trunc i64 %83 to i32
  %sext13 = shl i32 %90, 24
  %91 = ashr i32 %sext13, 31
  call void @addbyte(i32 noundef %91)
  br label %226

92:                                               ; preds = %69
  %93 = load i8*, i8** %2, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  store i8* %94, i8** %2, align 8
  %95 = call i64 @long_val(i8** noundef nonnull %2)
  %96 = trunc i64 %95 to i8
  call void @clear_func(i8 noundef signext %96) #8
  br label %97

97:                                               ; preds = %108, %92
  %98 = load i8*, i8** %2, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  store i8* %99, i8** %2, align 8
  %100 = load i8, i8* %98, align 1
  %.not6 = icmp eq i8 %100, 46
  br i1 %.not6, label %.loopexit, label %101

101:                                              ; preds = %97
  %102 = load i8*, i8** %2, align 8
  %103 = load i8, i8* %102, align 1
  %104 = icmp eq i8 %103, 46
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i8*, i8** %2, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  store i8* %107, i8** %2, align 8
  br label %119

108:                                              ; preds = %101
  %109 = call i64 @long_val(i8** noundef nonnull %2)
  %110 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %sext10 = shl i64 %95, 32
  %111 = ashr exact i64 %sext10, 32
  %112 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %110, i64 %111, i32 4
  %113 = load %struct.arg_list*, %struct.arg_list** %112, align 8
  %114 = trunc i64 %109 to i8
  %115 = call %struct.arg_list* @nextarg(%struct.arg_list* noundef %113, i8 noundef signext %114) #8
  %116 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %sext11 = shl i64 %95, 32
  %117 = ashr exact i64 %sext11, 32
  %118 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %116, i64 %117, i32 4
  store %struct.arg_list* %115, %struct.arg_list** %118, align 8
  br label %97, !llvm.loop !7

.loopexit:                                        ; preds = %97
  br label %119

119:                                              ; preds = %.loopexit, %105
  br label %120

120:                                              ; preds = %130, %119
  %121 = load i8*, i8** %2, align 8
  %122 = load i8, i8* %121, align 1
  %.not7 = icmp eq i8 %122, 91
  br i1 %.not7, label %141, label %123

123:                                              ; preds = %120
  %124 = load i8*, i8** %2, align 8
  %125 = load i8, i8* %124, align 1
  %126 = icmp eq i8 %125, 44
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i8*, i8** %2, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  store i8* %129, i8** %2, align 8
  br label %130

130:                                              ; preds = %127, %123
  %131 = call i64 @long_val(i8** noundef nonnull %2)
  %132 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %sext8 = shl i64 %95, 32
  %133 = ashr exact i64 %sext8, 32
  %134 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %132, i64 %133, i32 5
  %135 = load %struct.arg_list*, %struct.arg_list** %134, align 8
  %136 = trunc i64 %131 to i8
  %137 = call %struct.arg_list* @nextarg(%struct.arg_list* noundef %135, i8 noundef signext %136) #8
  %138 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %sext9 = shl i64 %95, 32
  %139 = ashr exact i64 %sext9, 32
  %140 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %138, i64 %139, i32 5
  store %struct.arg_list* %137, %struct.arg_list** %140, align 8
  br label %120, !llvm.loop !8

141:                                              ; preds = %120
  %142 = load i64, i64* bitcast (%struct.program_counter* @load_adr to i64*), align 8
  store i64 %142, i64* %3, align 8
  %143 = trunc i64 %95 to i32
  store i32 %143, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i64 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i64 0, i32 1), align 4
  br label %226

144:                                              ; preds = %69
  %145 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %146 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i64 0, i32 0), align 8
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %145, i64 %147, i32 0
  store i8 1, i8* %148, align 8
  %149 = load i64, i64* %3, align 8
  store i64 %149, i64* bitcast (%struct.program_counter* @load_adr to i64*), align 8
  br label %226

150:                                              ; preds = %69
  %151 = load i8*, i8** %2, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  store i8* %152, i8** %2, align 8
  %153 = load i8, i8* %151, align 1
  %154 = sext i8 %153 to i32
  call void @addbyte(i32 noundef %154)
  %155 = call i64 @long_val(i8** noundef nonnull %2)
  %156 = icmp slt i64 %155, 128
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = trunc i64 %155 to i32
  %sext = shl i32 %158, 24
  %159 = ashr exact i32 %sext, 24
  call void @addbyte(i32 noundef %159)
  br label %167

160:                                              ; preds = %150
  %161 = trunc i64 %155 to i32
  %162 = lshr i32 %161, 8
  %163 = and i32 %162, 127
  %164 = or i32 %163, 128
  call void @addbyte(i32 noundef %164)
  %165 = trunc i64 %155 to i32
  %166 = and i32 %165, 255
  call void @addbyte(i32 noundef %166)
  br label %167

167:                                              ; preds = %160, %157
  %168 = load i8*, i8** %2, align 8
  %169 = load i8, i8* %168, align 1
  %170 = icmp eq i8 %169, 44
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load i8*, i8** %2, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  store i8* %173, i8** %2, align 8
  br label %174

174:                                              ; preds = %171, %167
  br label %175

175:                                              ; preds = %178, %174
  %176 = load i8*, i8** %2, align 8
  %177 = load i8, i8* %176, align 1
  %.not5 = icmp eq i8 %177, 58
  br i1 %.not5, label %183, label %178

178:                                              ; preds = %175
  %179 = load i8*, i8** %2, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  store i8* %180, i8** %2, align 8
  %181 = load i8, i8* %179, align 1
  %182 = sext i8 %181 to i32
  call void @addbyte(i32 noundef %182)
  br label %175, !llvm.loop !9

183:                                              ; preds = %175
  call void @addbyte(i32 noundef 58)
  br label %226

184:                                              ; preds = %69
  %185 = load i8*, i8** %2, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  store i8* %186, i8** %2, align 8
  %187 = load i8, i8* %185, align 1
  %188 = sext i8 %187 to i32
  call void @addbyte(i32 noundef %188)
  %189 = load i8*, i8** %2, align 8
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  call void @addbyte(i32 noundef %191)
  br label %226

192:                                              ; preds = %69
  %193 = load i8*, i8** %2, align 8
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  call void @addbyte(i32 noundef %195)
  store i8 1, i8* @load_const, align 1
  br label %226

196:                                              ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %197 = load i8*, i8** %2, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  store i8* %198, i8** %2, align 8
  %199 = load i8, i8* %197, align 1
  %200 = sext i8 %199 to i32
  call void @addbyte(i32 noundef %200)
  %201 = call i64 @long_val(i8** noundef nonnull %2)
  %202 = icmp slt i64 %201, 128
  br i1 %202, label %203, label %205

203:                                              ; preds = %196
  %204 = trunc i64 %201 to i32
  call void @addbyte(i32 noundef %204)
  br label %212

205:                                              ; preds = %196
  %206 = trunc i64 %201 to i32
  %207 = lshr i32 %206, 8
  %208 = and i32 %207, 127
  %209 = or i32 %208, 128
  call void @addbyte(i32 noundef %209)
  %210 = trunc i64 %201 to i32
  %211 = and i32 %210, 255
  call void @addbyte(i32 noundef %211)
  br label %212

212:                                              ; preds = %205, %203
  br label %226

213:                                              ; preds = %69
  %214 = load i8*, i8** %2, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 1
  store i8* %215, i8** %2, align 8
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  switch i32 %217, label %220 [
    i32 105, label %218
    i32 114, label %219
  ]

218:                                              ; preds = %213
  call void @init_load()
  br label %220

219:                                              ; preds = %213
  call void @execute() #8
  br label %220

220:                                              ; preds = %219, %218, %213
  br label %226

221:                                              ; preds = %69
  br label %226

222:                                              ; preds = %69
  %223 = load i8*, i8** %2, align 8
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  call void @addbyte(i32 noundef %225)
  br label %226

226:                                              ; preds = %222, %221, %220, %212, %192, %184, %183, %144, %141, %88, %74, %73
  %227 = load i8*, i8** %2, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 1
  store i8* %228, i8** %2, align 8
  br label %229

229:                                              ; preds = %226, %68
  br label %230

230:                                              ; preds = %229, %17
  br label %4, !llvm.loop !10

.loopexit1:                                       ; preds = %4
  br label %231

231:                                              ; preds = %.loopexit1, %9
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

declare dso_local %struct.arg_list* @nextarg(%struct.arg_list* noundef, i8 noundef signext) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local void @execute() #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }

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
