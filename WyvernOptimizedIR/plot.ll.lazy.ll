; ModuleID = './plot.ll'
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @swap_bytes(i32 noundef %0) #0 {
  %trunc = trunc i32 %0 to i16
  %rev = call i16 @llvm.bswap.i16(i16 %trunc)
  %2 = zext i16 %rev to i32
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @find_byte_order(i32* nocapture noundef %0, i32* nocapture noundef %1, i32* nocapture noundef %2, i32* nocapture noundef %3) #1 {
  br label %5

5:                                                ; preds = %17, %4
  %.0 = phi i32 [ 0, %4 ], [ %18, %17 ]
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds [32 x i32], [32 x i32]* bitcast (<{ i32, i32, i32, i32, i32, [27 x i32] }>* @known_size to [32 x i32]*), i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %19, label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [32 x i32], [32 x i32]* bitcast (<{ i32, i32, i32, i32, i32, [27 x i32] }>* @known_size to [32 x i32]*), i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %45

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !4

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %43, %19
  %.1 = phi i32 [ 0, %19 ], [ %44, %43 ]
  %21 = zext i32 %.1 to i64
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* bitcast (<{ i32, i32, i32, i32, i32, [27 x i32] }>* @known_size to [32 x i32]*), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %.not1 = icmp eq i32 %23, 0
  br i1 %.not1, label %.loopexit, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  %26 = zext i32 %.1 to i64
  %27 = getelementptr inbounds [32 x i32], [32 x i32]* bitcast (<{ i32, i32, i32, i32, i32, [27 x i32] }>* @known_size to [32 x i32]*), i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @swap_bytes(i32 noundef %28)
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load i32, i32* %0, align 4
  %33 = call i32 @swap_bytes(i32 noundef %32)
  store i32 %33, i32* %0, align 4
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @swap_bytes(i32 noundef %34)
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @swap_bytes(i32 noundef %36)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @swap_bytes(i32 noundef %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* @high_byte_first, align 4
  %.not2 = icmp eq i32 %40, 0
  %41 = zext i1 %.not2 to i32
  store i32 %41, i32* @high_byte_first, align 4
  br label %45

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %42
  %44 = add nuw nsw i32 %.1, 1
  br label %20, !llvm.loop !6

.loopexit:                                        ; preds = %20
  br label %45

45:                                               ; preds = %.loopexit, %31, %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @coord(%struct._IO_FILE* noundef %0) #2 {
  %2 = load i32, i32* @high_byte_first, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %9, label %3

3:                                                ; preds = %1
  %4 = call i32 @getc(%struct._IO_FILE* noundef %0) #8
  %sext2 = shl i32 %4, 24
  %5 = ashr exact i32 %sext2, 16
  %6 = call i32 @getc(%struct._IO_FILE* noundef %0) #8
  %7 = and i32 %6, 255
  %8 = or i32 %5, %7
  br label %15

9:                                                ; preds = %1
  %10 = call i32 @getc(%struct._IO_FILE* noundef %0) #8
  %11 = and i32 %10, 255
  %12 = call i32 @getc(%struct._IO_FILE* noundef %0) #8
  %sext = shl i32 %12, 24
  %13 = ashr exact i32 %sext, 16
  %14 = or i32 %11, %13
  br label %15

15:                                               ; preds = %9, %3
  %.0 = phi i32 [ %8, %3 ], [ %14, %9 ]
  %16 = load i32, i32* @signed_input, align 4
  %.not1 = icmp eq i32 %16, 0
  br i1 %.not1, label %17, label %19

17:                                               ; preds = %15
  %18 = and i32 %.0, 65535
  br label %19

19:                                               ; preds = %17, %15
  %.1 = phi i32 [ %.0, %15 ], [ %18, %17 ]
  ret i32 %.1
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @read_string(%struct._IO_FILE* noundef %0, i8* noundef %1, i32 noundef %2) #2 {
  br label %4

4:                                                ; preds = %18, %3
  %.03 = phi i32 [ 0, %3 ], [ %20, %18 ]
  %.01 = phi i32 [ %2, %3 ], [ %.12, %18 ]
  %.0 = phi i8* [ %1, %3 ], [ %.1, %18 ]
  %5 = call i32 @feof(%struct._IO_FILE* noundef %0) #8
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %6, label %.loopexit

6:                                                ; preds = %4
  %7 = icmp sgt i32 %.03, %.01
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = shl nsw i32 %.01, 1
  %10 = sext i32 %9 to i64
  %11 = call i8* @realloc(i8* noundef %.0, i64 noundef %10) #8
  %.not9.not = icmp eq i8* %11, null
  br i1 %.not9.not, label %12, label %13

12:                                               ; preds = %8
  call void @perror(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #9
  call void @exit(i32 noundef -1) #10
  unreachable

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13, %6
  %.12 = phi i32 [ %9, %13 ], [ %.01, %6 ]
  %.1 = phi i8* [ %11, %13 ], [ %.0, %6 ]
  %15 = call i32 @getc(%struct._IO_FILE* noundef %0) #8
  %sext.mask = and i32 %15, 255
  %16 = icmp eq i32 %sext.mask, 10
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %23

18:                                               ; preds = %14
  %19 = trunc i32 %15 to i8
  %20 = add nuw nsw i32 %.03, 1
  %21 = zext i32 %.03 to i64
  %22 = getelementptr inbounds i8, i8* %.1, i64 %21
  store i8 %19, i8* %22, align 1
  br label %4, !llvm.loop !7

.loopexit:                                        ; preds = %4
  br label %23

23:                                               ; preds = %.loopexit, %17
  %.2 = phi i8* [ %.1, %17 ], [ %.0, %.loopexit ]
  %24 = zext i32 %.03 to i64
  %25 = getelementptr inbounds i8, i8* %.2, i64 %24
  store i8 0, i8* %25, align 1
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #4

declare dso_local void @perror(i8* noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @read_plot(%struct._IO_FILE* noundef %0, i8* noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @getc(%struct._IO_FILE* noundef %0) #8
  br label %9

9:                                                ; preds = %98, %3
  %.0 = phi i32 [ %8, %3 ], [ %99, %98 ]
  %10 = call i32 @feof(%struct._IO_FILE* noundef %0) #8
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %11, label %100

11:                                               ; preds = %9
  switch i32 %.0, label %95 [
    i32 84, label %12
    i32 97, label %18
    i32 99, label %29
    i32 67, label %34
    i32 110, label %43
    i32 101, label %47
    i32 76, label %49
    i32 70, label %53
    i32 83, label %55
    i32 116, label %58
    i32 108, label %60
    i32 102, label %67
    i32 109, label %69
    i32 112, label %73
    i32 114, label %77
    i32 115, label %82
  ]

12:                                               ; preds = %11
  %13 = call i32 @getc(%struct._IO_FILE* noundef %0) #8
  %14 = call i32 @getc(%struct._IO_FILE* noundef %0) #8
  call void @read_string(%struct._IO_FILE* noundef %0, i8* noundef %1, i32 noundef %2)
  %sext = shl i32 %13, 24
  %15 = ashr exact i32 %sext, 24
  %sext2 = shl i32 %14, 24
  %16 = ashr exact i32 %sext2, 24
  %17 = call i32 @alabel(i32 noundef %15, i32 noundef %16, i8* noundef %1) #8
  br label %98

18:                                               ; preds = %11
  %19 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %19, i32* %4, align 4
  %20 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %20, i32* %5, align 4
  %21 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %21, i32* %6, align 4
  %22 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %22, i32* %7, align 4
  %23 = call i32 @coord(%struct._IO_FILE* noundef %0)
  %24 = call i32 @coord(%struct._IO_FILE* noundef %0)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @arc(i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %22, i32 noundef %23, i32 noundef %24) #8
  br label %98

29:                                               ; preds = %11
  %30 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %30, i32* %4, align 4
  %31 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %31, i32* %5, align 4
  %32 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %32, i32* %6, align 4
  %33 = call i32 @circle(i32 noundef %30, i32 noundef %31, i32 noundef %32) #8
  br label %98

34:                                               ; preds = %11
  %35 = call i32 @coord(%struct._IO_FILE* noundef %0)
  %36 = and i32 %35, 65535
  store i32 %36, i32* %4, align 4
  %37 = call i32 @coord(%struct._IO_FILE* noundef %0)
  %38 = and i32 %37, 65535
  store i32 %38, i32* %5, align 4
  %39 = call i32 @coord(%struct._IO_FILE* noundef %0)
  %40 = and i32 %39, 65535
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @color(i32 noundef %41, i32 noundef %38, i32 noundef %40) #8
  br label %98

43:                                               ; preds = %11
  %44 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %44, i32* %4, align 4
  %45 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %45, i32* %5, align 4
  %46 = call i32 @cont(i32 noundef %44, i32 noundef %45) #8
  br label %98

47:                                               ; preds = %11
  %48 = call i32 (%struct._IO_FILE*, ...) bitcast (i32 (...)* @erase to i32 (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* noundef %0) #8
  br label %98

49:                                               ; preds = %11
  %50 = call i32 @coord(%struct._IO_FILE* noundef %0)
  %51 = and i32 %50, 65535
  %52 = call i32 @fill(i32 noundef %51) #8
  br label %98

53:                                               ; preds = %11
  call void @read_string(%struct._IO_FILE* noundef %0, i8* noundef %1, i32 noundef %2)
  %54 = call i32 @fontname(i8* noundef %1) #8
  br label %98

55:                                               ; preds = %11
  %56 = call i32 @coord(%struct._IO_FILE* noundef %0)
  %57 = call i32 @fontsize(i32 noundef %56) #8
  br label %98

58:                                               ; preds = %11
  call void @read_string(%struct._IO_FILE* noundef %0, i8* noundef %1, i32 noundef %2)
  %59 = call i32 @label(i8* noundef %1) #8
  br label %98

60:                                               ; preds = %11
  %61 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %61, i32* %4, align 4
  %62 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %62, i32* %5, align 4
  %63 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %63, i32* %6, align 4
  %64 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @line(i32 noundef %65, i32 noundef %62, i32 noundef %63, i32 noundef %64) #8
  br label %98

67:                                               ; preds = %11
  call void @read_string(%struct._IO_FILE* noundef %0, i8* noundef %1, i32 noundef %2)
  %68 = call i32 @linemod(i8* noundef %1) #8
  br label %98

69:                                               ; preds = %11
  %70 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %70, i32* %4, align 4
  %71 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %71, i32* %5, align 4
  %72 = call i32 @move_nasko(i32 noundef %70, i32 noundef %71) #8
  br label %98

73:                                               ; preds = %11
  %74 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %74, i32* %4, align 4
  %75 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %75, i32* %5, align 4
  %76 = call i32 @point(i32 noundef %74, i32 noundef %75) #8
  br label %98

77:                                               ; preds = %11
  %78 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %78, i32* %4, align 4
  %79 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %79, i32* %5, align 4
  %80 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %80, i32* %6, align 4
  %81 = call i32 @rotate(i32 noundef %78, i32 noundef %79, i32 noundef %80) #8
  br label %98

82:                                               ; preds = %11
  %83 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %83, i32* %4, align 4
  %84 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %84, i32* %5, align 4
  %85 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %85, i32* %6, align 4
  %86 = call i32 @coord(%struct._IO_FILE* noundef %0)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* @guess_byte_order, align 4
  %.not1 = icmp eq i32 %87, 0
  br i1 %.not1, label %89, label %88

88:                                               ; preds = %82
  call void @find_byte_order(i32* noundef nonnull %4, i32* noundef nonnull %5, i32* noundef nonnull %6, i32* noundef nonnull %7)
  br label %89

89:                                               ; preds = %88, %82
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @space(i32 noundef %90, i32 noundef %91, i32 noundef %92, i32 noundef %93) #8
  br label %98

95:                                               ; preds = %11
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %96, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.0) #9
  br label %98

98:                                               ; preds = %95, %89, %77, %73, %69, %67, %60, %58, %55, %53, %49, %47, %43, %34, %29, %18, %12
  %99 = call i32 @getc(%struct._IO_FILE* noundef %0) #8
  br label %9, !llvm.loop !8

100:                                              ; preds = %9
  ret void
}

declare dso_local i32 @alabel(i32 noundef, i32 noundef, i8* noundef) #3

declare dso_local i32 @arc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare dso_local i32 @circle(i32 noundef, i32 noundef, i32 noundef) #3

declare dso_local i32 @color(i32 noundef, i32 noundef, i32 noundef) #3

declare dso_local i32 @cont(i32 noundef, i32 noundef) #3

declare dso_local i32 @erase(...) #3

declare dso_local i32 @fill(i32 noundef) #3

declare dso_local i32 @fontname(i8* noundef) #3

declare dso_local i32 @fontsize(i32 noundef) #3

declare dso_local i32 @label(i8* noundef) #3

declare dso_local i32 @line(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare dso_local i32 @linemod(i8* noundef) #3

declare dso_local i32 @move_nasko(i32 noundef, i32 noundef) #3

declare dso_local i32 @point(i32 noundef, i32 noundef) #3

declare dso_local i32 @rotate(i32 noundef, i32 noundef, i32 noundef) #3

declare dso_local i32 @space(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef readonly %1) #2 {
  %3 = call noalias dereferenceable_or_null(1024) i8* @malloc(i64 noundef 1024) #8
  %.not.not = icmp eq i8* %3, null
  br i1 %.not.not, label %4, label %5

4:                                                ; preds = %2
  call void @perror(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)) #9
  call void @exit(i32 noundef -1) #10
  unreachable

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %157, %5
  %.025 = phi i32 [ 1, %5 ], [ %158, %157 ]
  %.014 = phi i32 [ 0, %5 ], [ %.1024, %157 ]
  %.01 = phi i32 [ 0, %5 ], [ %.1013, %157 ]
  %.0 = phi i32 [ 0, %5 ], [ %.11, %157 ]
  %7 = icmp slt i32 %.025, %0
  br i1 %7, label %8, label %159

8:                                                ; preds = %6
  %9 = sext i32 %.025 to i64
  %10 = getelementptr inbounds i8*, i8** %1, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %11, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = sext i32 %.025 to i64
  %16 = getelementptr inbounds i8*, i8** %1, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %17, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14, %8
  %21 = add nsw i32 %.025, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %1, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @atoi(i8* noundef %24) #11
  %26 = call i32 @fontsize(i32 noundef %25) #8
  %27 = add nsw i32 %.025, 1
  br label %156

28:                                               ; preds = %14
  %29 = sext i32 %.025 to i64
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %31, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = sext i32 %.025 to i64
  %36 = getelementptr inbounds i8*, i8** %1, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %37, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34, %28
  %41 = add nsw i32 %.025, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %1, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @fontname(i8* noundef %44) #8
  %46 = add nsw i32 %.025, 1
  br label %155

47:                                               ; preds = %34
  %48 = sext i32 %.025 to i64
  %49 = getelementptr inbounds i8*, i8** %1, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %50, i8* noundef nonnull dereferenceable(17) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0)) #11
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = sext i32 %.025 to i64
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %56, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %47
  store i32 0, i32* @guess_byte_order, align 4
  store i32 1, i32* @high_byte_first, align 4
  br label %154

60:                                               ; preds = %53
  %61 = sext i32 %.025 to i64
  %62 = getelementptr inbounds i8*, i8** %1, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %63, i8* noundef nonnull dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0)) #11
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = sext i32 %.025 to i64
  %68 = getelementptr inbounds i8*, i8** %1, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %69, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %60
  store i32 0, i32* @guess_byte_order, align 4
  store i32 0, i32* @high_byte_first, align 4
  br label %153

73:                                               ; preds = %66
  %74 = sext i32 %.025 to i64
  %75 = getelementptr inbounds i8*, i8** %1, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %76, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = sext i32 %.025 to i64
  %81 = getelementptr inbounds i8*, i8** %1, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %82, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79, %73
  %86 = add nsw i32 %.014, 1
  br label %152

87:                                               ; preds = %79
  %88 = sext i32 %.025 to i64
  %89 = getelementptr inbounds i8*, i8** %1, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %90, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)) #11
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = sext i32 %.025 to i64
  %95 = getelementptr inbounds i8*, i8** %1, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %96, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)) #11
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93, %87
  %100 = load i8*, i8** %1, align 8
  %101 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* noundef %100, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #8
  %102 = add nsw i32 %.01, 1
  %103 = add nsw i32 %.014, 1
  br label %151

104:                                              ; preds = %93
  %105 = sext i32 %.025 to i64
  %106 = getelementptr inbounds i8*, i8** %1, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %107, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #11
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32 1, i32* @signed_input, align 4
  br label %150

111:                                              ; preds = %104
  %112 = sext i32 %.025 to i64
  %113 = getelementptr inbounds i8*, i8** %1, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %114, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #11
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i32 0, i32* @signed_input, align 4
  br label %149

118:                                              ; preds = %111
  %119 = sext i32 %.025 to i64
  %120 = getelementptr inbounds i8*, i8** %1, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %121, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #11
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @read_plot(%struct._IO_FILE* noundef %125, i8* noundef nonnull %3, i32 noundef 1024)
  %126 = add nsw i32 %.014, 1
  br label %148

127:                                              ; preds = %118
  %128 = sext i32 %.025 to i64
  %129 = getelementptr inbounds i8*, i8** %1, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call noalias %struct._IO_FILE* @fopen(i8* noundef %130, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #8
  %132 = icmp eq %struct._IO_FILE* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %135 = sext i32 %.025 to i64
  %136 = getelementptr inbounds i8*, i8** %1, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %134, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i8* noundef %137) #9
  %139 = add nsw i32 %.01, 1
  br label %147

140:                                              ; preds = %127
  %141 = add nsw i32 %.014, 1
  %.not31 = icmp eq i32 %.0, 0
  br i1 %.not31, label %142, label %145

142:                                              ; preds = %140
  %143 = call i32 (...) @openpl() #8
  %144 = add nsw i32 %.0, 1
  br label %145

145:                                              ; preds = %142, %140
  %.1 = phi i32 [ %.0, %140 ], [ %144, %142 ]
  call void @read_plot(%struct._IO_FILE* noundef nonnull %131, i8* noundef nonnull %3, i32 noundef 1024)
  %146 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %131) #8
  br label %147

147:                                              ; preds = %145, %133
  %.115 = phi i32 [ %.014, %133 ], [ %141, %145 ]
  %.14 = phi i32 [ %139, %133 ], [ %.01, %145 ]
  %.2 = phi i32 [ %.0, %133 ], [ %.1, %145 ]
  br label %148

148:                                              ; preds = %147, %124
  %.216 = phi i32 [ %126, %124 ], [ %.115, %147 ]
  %.25 = phi i32 [ %.01, %124 ], [ %.14, %147 ]
  %.3 = phi i32 [ %.0, %124 ], [ %.2, %147 ]
  br label %149

149:                                              ; preds = %148, %117
  %.317 = phi i32 [ %.014, %117 ], [ %.216, %148 ]
  %.36 = phi i32 [ %.01, %117 ], [ %.25, %148 ]
  %.4 = phi i32 [ %.0, %117 ], [ %.3, %148 ]
  br label %150

150:                                              ; preds = %149, %110
  %.418 = phi i32 [ %.014, %110 ], [ %.317, %149 ]
  %.47 = phi i32 [ %.01, %110 ], [ %.36, %149 ]
  %.5 = phi i32 [ %.0, %110 ], [ %.4, %149 ]
  br label %151

151:                                              ; preds = %150, %99
  %.519 = phi i32 [ %103, %99 ], [ %.418, %150 ]
  %.58 = phi i32 [ %102, %99 ], [ %.47, %150 ]
  %.6 = phi i32 [ %.0, %99 ], [ %.5, %150 ]
  br label %152

152:                                              ; preds = %151, %85
  %.620 = phi i32 [ %86, %85 ], [ %.519, %151 ]
  %.69 = phi i32 [ %.01, %85 ], [ %.58, %151 ]
  %.7 = phi i32 [ %.0, %85 ], [ %.6, %151 ]
  br label %153

153:                                              ; preds = %152, %72
  %.721 = phi i32 [ %.014, %72 ], [ %.620, %152 ]
  %.710 = phi i32 [ %.01, %72 ], [ %.69, %152 ]
  %.8 = phi i32 [ %.0, %72 ], [ %.7, %152 ]
  br label %154

154:                                              ; preds = %153, %59
  %.822 = phi i32 [ %.014, %59 ], [ %.721, %153 ]
  %.811 = phi i32 [ %.01, %59 ], [ %.710, %153 ]
  %.9 = phi i32 [ %.0, %59 ], [ %.8, %153 ]
  br label %155

155:                                              ; preds = %154, %40
  %.126 = phi i32 [ %46, %40 ], [ %.025, %154 ]
  %.923 = phi i32 [ %.014, %40 ], [ %.822, %154 ]
  %.912 = phi i32 [ %.01, %40 ], [ %.811, %154 ]
  %.10 = phi i32 [ %.0, %40 ], [ %.9, %154 ]
  br label %156

156:                                              ; preds = %155, %20
  %.227 = phi i32 [ %27, %20 ], [ %.126, %155 ]
  %.1024 = phi i32 [ %.014, %20 ], [ %.923, %155 ]
  %.1013 = phi i32 [ %.01, %20 ], [ %.912, %155 ]
  %.11 = phi i32 [ %.0, %20 ], [ %.10, %155 ]
  br label %157

157:                                              ; preds = %156
  %158 = add nsw i32 %.227, 1
  br label %6, !llvm.loop !9

159:                                              ; preds = %6
  %160 = icmp eq i32 %.014, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %159
  %.not30 = icmp eq i32 %.0, 0
  br i1 %.not30, label %162, label %165

162:                                              ; preds = %161
  %163 = call i32 (...) @openpl() #8
  %164 = add nsw i32 %.0, 1
  br label %165

165:                                              ; preds = %162, %161
  %.12 = phi i32 [ %.0, %161 ], [ %164, %162 ]
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @read_plot(%struct._IO_FILE* noundef %166, i8* noundef nonnull %3, i32 noundef 1024)
  br label %167

167:                                              ; preds = %165, %159
  %.13 = phi i32 [ %.12, %165 ], [ %.0, %159 ]
  %.not = icmp eq i32 %.13, 0
  br i1 %.not, label %170, label %168

168:                                              ; preds = %167
  %169 = call i32 (...) @closepl() #8
  br label %170

170:                                              ; preds = %168, %167
  %.not28 = icmp eq i32 %.01, 0
  br i1 %.not28, label %171, label %172

171:                                              ; preds = %170
  %.not29 = icmp eq i32 %.13, 0
  br i1 %.not29, label %172, label %179

172:                                              ; preds = %171, %170
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %174 = load i8*, i8** %1, align 8
  %175 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %173, i8* noundef getelementptr inbounds ([169 x i8], [169 x i8]* @.str.22, i64 0, i64 0), i8* noundef %174) #9
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %177 = load i8*, i8** %1, align 8
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %176, i8* noundef getelementptr inbounds ([252 x i8], [252 x i8]* @.str.23, i64 0, i64 0), i8* noundef %177, i8* noundef %177, i8* noundef %177) #9
  br label %179

179:                                              ; preds = %172, %171
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #6

declare dso_local i32 @printf(i8* noundef, ...) #3

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare dso_local i32 @openpl(...) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #3

declare dso_local i32 @closepl(...) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readonly willreturn }

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
