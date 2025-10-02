; ModuleID = './toast_audio.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/toast_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@in = external dso_local global %struct._IO_FILE*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [100 x i8] c"%s: bad (missing?) header in Sun audio file \22%s\22;\0A\09Try one of -u, -a, -l instead (%s -h for help).\0A\00", align 1
@progname = external dso_local global i8*, align 8
@inname = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@input = external dso_local global i32 (i16*)*, align 8
@.str.2 = private unnamed_addr constant [76 x i8] c"%s: warning: file format #%lu for %s not implemented, defaulting to u-law.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".snd\00", align 1
@out = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @audio_init_input() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %4 = call i32 @fgetc(%struct._IO_FILE* noundef %3) #2
  %.not = icmp eq i32 %4, 46
  br i1 %.not, label %5, label %29

5:                                                ; preds = %0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %7 = call i32 @fgetc(%struct._IO_FILE* noundef %6) #2
  %.not1 = icmp eq i32 %7, 115
  br i1 %.not1, label %8, label %29

8:                                                ; preds = %5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %10 = call i32 @fgetc(%struct._IO_FILE* noundef %9) #2
  %.not2 = icmp eq i32 %10, 110
  br i1 %.not2, label %11, label %29

11:                                               ; preds = %8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %13 = call i32 @fgetc(%struct._IO_FILE* noundef %12) #2
  %.not3 = icmp eq i32 %13, 100
  br i1 %.not3, label %14, label %29

14:                                               ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %16 = call i32 @get_u32(%struct._IO_FILE* noundef %15, i64* noundef nonnull %1)
  %.not4 = icmp eq i32 %16, 0
  br i1 %.not4, label %17, label %29

17:                                               ; preds = %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %19 = call i32 @get_u32(%struct._IO_FILE* noundef %18, i64* noundef nonnull %2)
  %.not5 = icmp eq i32 %19, 0
  br i1 %.not5, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %22 = call i32 @get_u32(%struct._IO_FILE* noundef %21, i64* noundef nonnull %2)
  %.not6 = icmp eq i32 %22, 0
  br i1 %.not6, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %25 = load i64, i64* %1, align 8
  %26 = add i64 %25, -16
  %27 = call i32 @fseek(%struct._IO_FILE* noundef %24, i64 noundef %26, i32 noundef 1) #2
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %23, %20, %17, %14, %11, %8, %5, %0
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load i8*, i8** @progname, align 8
  %32 = load i8*, i8** @inname, align 8
  %.not7 = icmp eq i8* %32, null
  br i1 %.not7, label %35, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** @inname, align 8
  br label %36

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i8* [ %34, %33 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %35 ]
  %38 = load i8*, i8** @progname, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i8* noundef %31, i8* noundef %37, i8* noundef %38) #3
  br label %52

40:                                               ; preds = %23
  %41 = load i64, i64* %2, align 8
  switch i64 %41, label %45 [
    i64 1, label %42
    i64 2, label %43
    i64 3, label %44
  ]

42:                                               ; preds = %40
  store i32 (i16*)* @ulaw_input, i32 (i16*)** @input, align 8
  br label %51

43:                                               ; preds = %40
  store i32 (i16*)* @alaw_input, i32 (i16*)** @input, align 8
  br label %51

44:                                               ; preds = %40
  store i32 (i16*)* @linear_input, i32 (i16*)** @input, align 8
  br label %51

45:                                               ; preds = %40
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = load i8*, i8** @progname, align 8
  %48 = load i64, i64* %2, align 8
  %49 = load i8*, i8** @inname, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i8* noundef %47, i64 noundef %48, i8* noundef %49) #3
  store i32 (i16*)* @ulaw_input, i32 (i16*)** @input, align 8
  br label %51

51:                                               ; preds = %45, %44, %43, %42
  br label %52

52:                                               ; preds = %51, %36
  %.0 = phi i32 [ -1, %36 ], [ 0, %51 ]
  ret i32 %.0
}

declare dso_local i32 @fgetc(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_u32(%struct._IO_FILE* noundef %0, i64* nocapture noundef writeonly %1) #0 {
  %3 = call i32 @getc(%struct._IO_FILE* noundef %0) #2
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = call i32 @getc(%struct._IO_FILE* noundef %0) #2
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = call i32 @getc(%struct._IO_FILE* noundef %0) #2
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = call i32 @getc(%struct._IO_FILE* noundef %0) #2
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %8, %5, %2
  br label %26

15:                                               ; preds = %11
  %16 = shl i32 %3, 24
  %17 = shl i32 %6, 16
  %18 = and i32 %17, 16711680
  %19 = or i32 %16, %18
  %20 = shl i32 %9, 8
  %21 = and i32 %20, 65280
  %22 = or i32 %19, %21
  %23 = and i32 %12, 255
  %24 = or i32 %22, %23
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %1, align 8
  br label %26

26:                                               ; preds = %15, %14
  %.0 = phi i32 [ -1, %14 ], [ 0, %15 ]
  ret i32 %.0
}

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @ulaw_input(i16* noundef) #1

declare dso_local i32 @alaw_input(i16* noundef) #1

declare dso_local i32 @linear_input(i16* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @audio_init_output() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %2 = call i32 @fputs(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %1) #2
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %25, label %4

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %6 = call i32 @put_u32(%struct._IO_FILE* noundef %5, i64 noundef 32)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %25

7:                                                ; preds = %4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %9 = call i32 @put_u32(%struct._IO_FILE* noundef %8, i64 noundef -1)
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %10, label %25

10:                                               ; preds = %7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %12 = call i32 @put_u32(%struct._IO_FILE* noundef %11, i64 noundef 1)
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %15 = call i32 @put_u32(%struct._IO_FILE* noundef %14, i64 noundef 8000)
  %.not3 = icmp eq i32 %15, 0
  br i1 %.not3, label %16, label %25

16:                                               ; preds = %13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %18 = call i32 @put_u32(%struct._IO_FILE* noundef %17, i64 noundef 1)
  %.not4 = icmp eq i32 %18, 0
  br i1 %.not4, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %21 = call i32 @put_u32(%struct._IO_FILE* noundef %20, i64 noundef 0)
  %.not5 = icmp eq i32 %21, 0
  br i1 %.not5, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %24 = call i32 @put_u32(%struct._IO_FILE* noundef %23, i64 noundef 0)
  %.not6 = icmp eq i32 %24, 0
  br i1 %.not6, label %26, label %25

25:                                               ; preds = %22, %19, %16, %13, %10, %7, %4, %0
  br label %27

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %25
  %.0 = phi i32 [ -1, %25 ], [ 0, %26 ]
  ret i32 %.0
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @put_u32(%struct._IO_FILE* noundef %0, i64 noundef %1) #0 {
  %3 = trunc i64 %1 to i32
  %4 = ashr i32 %3, 24
  %5 = call i32 @putc(i32 noundef %4, %struct._IO_FILE* noundef %0) #2
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = trunc i64 %1 to i32
  %9 = shl i32 %8, 8
  %10 = ashr i32 %9, 24
  %11 = call i32 @putc(i32 noundef %10, %struct._IO_FILE* noundef %0) #2
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %24, label %13

13:                                               ; preds = %7
  %14 = trunc i64 %1 to i32
  %15 = shl i32 %14, 16
  %16 = ashr i32 %15, 24
  %17 = call i32 @putc(i32 noundef %16, %struct._IO_FILE* noundef %0) #2
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = trunc i64 %1 to i32
  %sext = shl i32 %20, 24
  %21 = ashr exact i32 %sext, 24
  %22 = call i32 @putc(i32 noundef %21, %struct._IO_FILE* noundef %0) #2
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %13, %7, %2
  br label %26

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %24
  %.0 = phi i32 [ -1, %24 ], [ 0, %25 ]
  ret i32 %.0
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
