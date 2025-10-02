; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/plot.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/plot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@signed_input = dso_local global i32 1, align 4
@high_byte_first = dso_local global i32 0, align 4
@guess_byte_order = dso_local global i32 1, align 4
@known_size = dso_local global <{ i32, i32, i32, i32, i32, [27 x i32] }> <{ i32 504, i32 2048, i32 2100, i32 3120, i32 4096, [27 x i32] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [16 x i8] c"realloc failed:\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Unrecognized plot command `%c' ignored.\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"malloc failed:\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"-fontsize\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-fs\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"-fontname\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"-fn\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"-high-byte-first\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"-low-byte-first\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"-warranty\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"-copying\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-V\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"%s version %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"-signed\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"-unsigned\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Unrecognized option or file `%s' ignored.\0A\00", align 1
@.str.22 = private unnamed_addr constant [169 x i8] c"\0Ausage: %s [-fontsize|-fs SIZE] [-high-byte-first|-h]\0A       [-low-byte-first|-l] [-fontname|-fn FONTNAME]\0A       [-help|-V] [-copying|-warranty] [PLOT_FILE_NAMES ...]\0A\00", align 1
@.str.23 = private unnamed_addr constant [252 x i8] c"\0A    %s version 0.9, Copyright (C) 1989 Free Software Foundation, Inc.\0A    %s comes with ABSOLUTELY NO WARRANTY.  This is free software, and\0A    you are welcome to redistribute it. Type `%s -warranty' for warranty\0A    details and copying conditions.\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @swap_bytes(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, 255
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* %3, align 1
  %8 = load i32, i32* %2, align 4
  %9 = ashr i32 %8, 8
  %10 = and i32 %9, 255
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %4, align 1
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = shl i32 %13, 8
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %14, %16
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @find_byte_order(i32* noundef %0, i32* noundef %1, i32* noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %26, %4
  %11 = load i32, i32* %9, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* bitcast (<{ i32, i32, i32, i32, i32, [27 x i32] }>* @known_size to [32 x i32]*), i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32 x i32], [32 x i32]* bitcast (<{ i32, i32, i32, i32, i32, [27 x i32] }>* @known_size to [32 x i32]*), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %70

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %10, !llvm.loop !4

29:                                               ; preds = %10
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %67, %29
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32 x i32], [32 x i32]* bitcast (<{ i32, i32, i32, i32, i32, [27 x i32] }>* @known_size to [32 x i32]*), i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %30
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32 x i32], [32 x i32]* bitcast (<{ i32, i32, i32, i32, i32, [27 x i32] }>* @known_size to [32 x i32]*), i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @swap_bytes(i32 noundef %42)
  %44 = icmp eq i32 %38, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %36
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @swap_bytes(i32 noundef %47)
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @swap_bytes(i32 noundef %51)
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @swap_bytes(i32 noundef %55)
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @swap_bytes(i32 noundef %59)
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @high_byte_first, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* @high_byte_first, align 4
  br label %70

66:                                               ; preds = %36
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %30, !llvm.loop !6

70:                                               ; preds = %24, %45, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @coord(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = load i32, i32* @high_byte_first, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %8 = call i32 @getc(%struct._IO_FILE* noundef %7)
  %9 = trunc i32 %8 to i8
  %10 = sext i8 %9 to i32
  %11 = shl i32 %10, 8
  store i32 %11, i32* %3, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %13 = call i32 @getc(%struct._IO_FILE* noundef %12)
  %14 = and i32 %13, 255
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %28

17:                                               ; preds = %1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %19 = call i32 @getc(%struct._IO_FILE* noundef %18)
  %20 = and i32 %19, 255
  store i32 %20, i32* %3, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %22 = call i32 @getc(%struct._IO_FILE* noundef %21)
  %23 = trunc i32 %22 to i8
  %24 = sext i8 %23 to i32
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %17, %6
  %29 = load i32, i32* @signed_input, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 65535
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @read_string(%struct._IO_FILE* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8 10, i8* %8, align 1
  store i8 0, i8* %9, align 1
  br label %10

10:                                               ; preds = %40, %3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %12 = call i32 @feof(%struct._IO_FILE* noundef %11) #5
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %47

15:                                               ; preds = %10
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %20, 2
  store i32 %21, i32* %6, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = call i8* @realloc(i8* noundef %22, i64 noundef %24) #5
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ule i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  call void @perror(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef -1) #6
  unreachable

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %15
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %32 = call i32 @getc(%struct._IO_FILE* noundef %31)
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %9, align 1
  %34 = load i8, i8* %9, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* %8, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %47

40:                                               ; preds = %30
  %41 = load i8, i8* %9, align 1
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8 %41, i8* %46, align 1
  br label %10, !llvm.loop !7

47:                                               ; preds = %39, %10
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #2

declare dso_local void @perror(i8* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @read_plot(%struct._IO_FILE* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %17 = call i32 @getc(%struct._IO_FILE* noundef %16)
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %187, %3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %20 = call i32 @feof(%struct._IO_FILE* noundef %19) #5
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %190

23:                                               ; preds = %18
  %24 = load i32, i32* %15, align 4
  switch i32 %24, label %183 [
    i32 84, label %25
    i32 97, label %41
    i32 99, label %61
    i32 67, label %72
    i32 110, label %86
    i32 101, label %94
    i32 76, label %97
    i32 70, label %102
    i32 83, label %108
    i32 116, label %112
    i32 108, label %118
    i32 102, label %132
    i32 109, label %138
    i32 112, label %146
    i32 114, label %154
    i32 115, label %165
  ]

25:                                               ; preds = %23
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %27 = call i32 @getc(%struct._IO_FILE* noundef %26)
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %7, align 1
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %30 = call i32 @getc(%struct._IO_FILE* noundef %29)
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %8, align 1
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  call void @read_string(%struct._IO_FILE* noundef %32, i8* noundef %33, i32 noundef %34)
  %35 = load i8, i8* %7, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* %8, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @alabel(i32 noundef %36, i32 noundef %38, i8* noundef %39)
  br label %187

41:                                               ; preds = %23
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %43 = call i32 @coord(%struct._IO_FILE* noundef %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %45 = call i32 @coord(%struct._IO_FILE* noundef %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %47 = call i32 @coord(%struct._IO_FILE* noundef %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %49 = call i32 @coord(%struct._IO_FILE* noundef %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %51 = call i32 @coord(%struct._IO_FILE* noundef %50)
  store i32 %51, i32* %13, align 4
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %53 = call i32 @coord(%struct._IO_FILE* noundef %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @arc(i32 noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %57, i32 noundef %58, i32 noundef %59)
  br label %187

61:                                               ; preds = %23
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %63 = call i32 @coord(%struct._IO_FILE* noundef %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %65 = call i32 @coord(%struct._IO_FILE* noundef %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %67 = call i32 @coord(%struct._IO_FILE* noundef %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @circle(i32 noundef %68, i32 noundef %69, i32 noundef %70)
  br label %187

72:                                               ; preds = %23
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %74 = call i32 @coord(%struct._IO_FILE* noundef %73)
  %75 = and i32 %74, 65535
  store i32 %75, i32* %9, align 4
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %77 = call i32 @coord(%struct._IO_FILE* noundef %76)
  %78 = and i32 %77, 65535
  store i32 %78, i32* %10, align 4
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %80 = call i32 @coord(%struct._IO_FILE* noundef %79)
  %81 = and i32 %80, 65535
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @color(i32 noundef %82, i32 noundef %83, i32 noundef %84)
  br label %187

86:                                               ; preds = %23
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %88 = call i32 @coord(%struct._IO_FILE* noundef %87)
  store i32 %88, i32* %9, align 4
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %90 = call i32 @coord(%struct._IO_FILE* noundef %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @cont(i32 noundef %91, i32 noundef %92)
  br label %187

94:                                               ; preds = %23
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %96 = call i32 (%struct._IO_FILE*, ...) bitcast (i32 (...)* @erase to i32 (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* noundef %95)
  br label %187

97:                                               ; preds = %23
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %99 = call i32 @coord(%struct._IO_FILE* noundef %98)
  %100 = and i32 %99, 65535
  %101 = call i32 @fill(i32 noundef %100)
  br label %187

102:                                              ; preds = %23
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %6, align 4
  call void @read_string(%struct._IO_FILE* noundef %103, i8* noundef %104, i32 noundef %105)
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 @fontname(i8* noundef %106)
  br label %187

108:                                              ; preds = %23
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %110 = call i32 @coord(%struct._IO_FILE* noundef %109)
  %111 = call i32 @fontsize(i32 noundef %110)
  br label %187

112:                                              ; preds = %23
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = load i32, i32* %6, align 4
  call void @read_string(%struct._IO_FILE* noundef %113, i8* noundef %114, i32 noundef %115)
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @label(i8* noundef %116)
  br label %187

118:                                              ; preds = %23
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %120 = call i32 @coord(%struct._IO_FILE* noundef %119)
  store i32 %120, i32* %9, align 4
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %122 = call i32 @coord(%struct._IO_FILE* noundef %121)
  store i32 %122, i32* %10, align 4
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %124 = call i32 @coord(%struct._IO_FILE* noundef %123)
  store i32 %124, i32* %11, align 4
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %126 = call i32 @coord(%struct._IO_FILE* noundef %125)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @line(i32 noundef %127, i32 noundef %128, i32 noundef %129, i32 noundef %130)
  br label %187

132:                                              ; preds = %23
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = load i32, i32* %6, align 4
  call void @read_string(%struct._IO_FILE* noundef %133, i8* noundef %134, i32 noundef %135)
  %136 = load i8*, i8** %5, align 8
  %137 = call i32 @linemod(i8* noundef %136)
  br label %187

138:                                              ; preds = %23
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %140 = call i32 @coord(%struct._IO_FILE* noundef %139)
  store i32 %140, i32* %9, align 4
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %142 = call i32 @coord(%struct._IO_FILE* noundef %141)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @move_nasko(i32 noundef %143, i32 noundef %144)
  br label %187

146:                                              ; preds = %23
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %148 = call i32 @coord(%struct._IO_FILE* noundef %147)
  store i32 %148, i32* %9, align 4
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %150 = call i32 @coord(%struct._IO_FILE* noundef %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @point(i32 noundef %151, i32 noundef %152)
  br label %187

154:                                              ; preds = %23
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %156 = call i32 @coord(%struct._IO_FILE* noundef %155)
  store i32 %156, i32* %9, align 4
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %158 = call i32 @coord(%struct._IO_FILE* noundef %157)
  store i32 %158, i32* %10, align 4
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %160 = call i32 @coord(%struct._IO_FILE* noundef %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @rotate(i32 noundef %161, i32 noundef %162, i32 noundef %163)
  br label %187

165:                                              ; preds = %23
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %167 = call i32 @coord(%struct._IO_FILE* noundef %166)
  store i32 %167, i32* %9, align 4
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %169 = call i32 @coord(%struct._IO_FILE* noundef %168)
  store i32 %169, i32* %10, align 4
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %171 = call i32 @coord(%struct._IO_FILE* noundef %170)
  store i32 %171, i32* %11, align 4
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %173 = call i32 @coord(%struct._IO_FILE* noundef %172)
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* @guess_byte_order, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %165
  call void @find_byte_order(i32* noundef %9, i32* noundef %10, i32* noundef %11, i32* noundef %12)
  br label %177

177:                                              ; preds = %176, %165
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @space(i32 noundef %178, i32 noundef %179, i32 noundef %180, i32 noundef %181)
  br label %187

183:                                              ; preds = %23
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %185 = load i32, i32* %15, align 4
  %186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %184, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 noundef %185)
  br label %187

187:                                              ; preds = %183, %177, %154, %146, %138, %132, %118, %112, %108, %102, %97, %94, %86, %72, %61, %41, %25
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %189 = call i32 @getc(%struct._IO_FILE* noundef %188)
  store i32 %189, i32* %15, align 4
  br label %18, !llvm.loop !8

190:                                              ; preds = %18
  ret void
}

declare dso_local i32 @alabel(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @arc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @circle(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @color(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @cont(i32 noundef, i32 noundef) #1

declare dso_local i32 @erase(...) #1

declare dso_local i32 @fill(i32 noundef) #1

declare dso_local i32 @fontname(i8* noundef) #1

declare dso_local i32 @fontsize(i32 noundef) #1

declare dso_local i32 @label(i8* noundef) #1

declare dso_local i32 @line(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @linemod(i8* noundef) #1

declare dso_local i32 @move_nasko(i32 noundef, i32 noundef) #1

declare dso_local i32 @point(i32 noundef, i32 noundef) #1

declare dso_local i32 @rotate(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @space(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1024, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = call noalias i8* @malloc(i64 noundef %14) #5
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ule i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  call void @perror(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 noundef -1) #6
  unreachable

19:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %231, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %234

24:                                               ; preds = %20
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* noundef %29, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* noundef %37, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %32, %24
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @atoi(i8* noundef %46) #7
  %48 = call i32 @fontsize(i32 noundef %47)
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %230

51:                                               ; preds = %32
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* noundef %56, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %51
  %60 = load i8**, i8*** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcmp(i8* noundef %64, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %59, %51
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @fontname(i8* noundef %73)
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %229

77:                                               ; preds = %59
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strcmp(i8* noundef %82, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0)) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %77
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strcmp(i8* noundef %90, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #7
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85, %77
  store i32 0, i32* @guess_byte_order, align 4
  store i32 1, i32* @high_byte_first, align 4
  br label %228

94:                                               ; preds = %85
  %95 = load i8**, i8*** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @strcmp(i8* noundef %99, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0)) #7
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %94
  %103 = load i8**, i8*** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strcmp(i8* noundef %107, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102, %94
  store i32 0, i32* @guess_byte_order, align 4
  store i32 0, i32* @high_byte_first, align 4
  br label %227

111:                                              ; preds = %102
  %112 = load i8**, i8*** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @strcmp(i8* noundef %116, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #7
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %111
  %120 = load i8**, i8*** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @strcmp(i8* noundef %124, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #7
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %119, %111
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %226

130:                                              ; preds = %119
  %131 = load i8**, i8*** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @strcmp(i8* noundef %135, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)) #7
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %130
  %139 = load i8**, i8*** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @strcmp(i8* noundef %143, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)) #7
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %138, %130
  %147 = load i8**, i8*** %5, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* noundef %149, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %225

155:                                              ; preds = %138
  %156 = load i8**, i8*** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @strcmp(i8* noundef %160, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #7
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  store i32 1, i32* @signed_input, align 4
  br label %224

164:                                              ; preds = %155
  %165 = load i8**, i8*** %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @strcmp(i8* noundef %169, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #7
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  store i32 0, i32* @signed_input, align 4
  br label %223

173:                                              ; preds = %164
  %174 = load i8**, i8*** %5, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @strcmp(i8* noundef %178, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %173
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* %8, align 4
  call void @read_plot(%struct._IO_FILE* noundef %182, i8* noundef %183, i32 noundef %184)
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %9, align 4
  br label %222

187:                                              ; preds = %173
  %188 = load i8**, i8*** %5, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %188, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = call noalias %struct._IO_FILE* @fopen(i8* noundef %192, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  store %struct._IO_FILE* %193, %struct._IO_FILE** %12, align 8
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %195 = icmp eq %struct._IO_FILE* %194, null
  br i1 %195, label %196, label %206

196:                                              ; preds = %187
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %198 = load i8**, i8*** %5, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %197, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i8* noundef %202)
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %10, align 4
  br label %221

206:                                              ; preds = %187
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %206
  %212 = call i32 (...) @openpl()
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %11, align 4
  br label %215

215:                                              ; preds = %211, %206
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %217 = load i8*, i8** %7, align 8
  %218 = load i32, i32* %8, align 4
  call void @read_plot(%struct._IO_FILE* noundef %216, i8* noundef %217, i32 noundef %218)
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %220 = call i32 @fclose(%struct._IO_FILE* noundef %219)
  br label %221

221:                                              ; preds = %215, %196
  br label %222

222:                                              ; preds = %221, %181
  br label %223

223:                                              ; preds = %222, %172
  br label %224

224:                                              ; preds = %223, %163
  br label %225

225:                                              ; preds = %224, %146
  br label %226

226:                                              ; preds = %225, %127
  br label %227

227:                                              ; preds = %226, %110
  br label %228

228:                                              ; preds = %227, %93
  br label %229

229:                                              ; preds = %228, %67
  br label %230

230:                                              ; preds = %229, %40
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %6, align 4
  br label %20, !llvm.loop !9

234:                                              ; preds = %20
  %235 = load i32, i32* %9, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %234
  %238 = load i32, i32* %11, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %237
  %241 = call i32 (...) @openpl()
  %242 = load i32, i32* %11, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %11, align 4
  br label %244

244:                                              ; preds = %240, %237
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %246 = load i8*, i8** %7, align 8
  %247 = load i32, i32* %8, align 4
  call void @read_plot(%struct._IO_FILE* noundef %245, i8* noundef %246, i32 noundef %247)
  br label %248

248:                                              ; preds = %244, %234
  %249 = load i32, i32* %11, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = call i32 (...) @closepl()
  br label %253

253:                                              ; preds = %251, %248
  %254 = load i32, i32* %10, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = load i32, i32* %11, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %272, label %259

259:                                              ; preds = %256, %253
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %261 = load i8**, i8*** %5, align 8
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %260, i8* noundef getelementptr inbounds ([169 x i8], [169 x i8]* @.str.22, i64 0, i64 0), i8* noundef %262)
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %265 = load i8**, i8*** %5, align 8
  %266 = load i8*, i8** %265, align 8
  %267 = load i8**, i8*** %5, align 8
  %268 = load i8*, i8** %267, align 8
  %269 = load i8**, i8*** %5, align 8
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %264, i8* noundef getelementptr inbounds ([252 x i8], [252 x i8]* @.str.23, i64 0, i64 0), i8* noundef %266, i8* noundef %268, i8* noundef %270)
  br label %272

272:                                              ; preds = %259, %256
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #4

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @openpl(...) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @closepl(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly willreturn }

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
