; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/fontname.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/fontname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@font_id = dso_local global i32 0, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [32 x i8] c"error in matching fontname: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Fontname `%s' ignored.\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"typewriter\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"courier\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"modern\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"italic\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"oblique\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"times\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"roman\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Unrecognized font name `%s' ignored.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @match(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strlen(i8* noundef %8) #3
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %25, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = call i32 @strcmp(i8* noundef %16, i8* noundef %20) #3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %29

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %11, !llvm.loop !4

28:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fontname(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 (i8*, ...) bitcast (i32 (...)* @re_comp to i32 (i8*, ...)*)(i8* noundef %5)
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* noundef %13)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* noundef %16)
  store i32 0, i32* %2, align 4
  br label %56

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18
  store i32 5, i32* @font_id, align 4
  br label %55

25:                                               ; preds = %21
  %26 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 4, i32* @font_id, align 4
  br label %54

29:                                               ; preds = %25
  %30 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29
  store i32 3, i32* @font_id, align 4
  br label %53

36:                                               ; preds = %32
  %37 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 2, i32* @font_id, align 4
  br label %52

40:                                               ; preds = %36
  %41 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40
  store i32 2, i32* @font_id, align 4
  br label %51

47:                                               ; preds = %43
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* noundef %49)
  br label %51

51:                                               ; preds = %47, %46
  br label %52

52:                                               ; preds = %51, %39
  br label %53

53:                                               ; preds = %52, %35
  br label %54

54:                                               ; preds = %53, %28
  br label %55

55:                                               ; preds = %54, %24
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @re_comp(...) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local i32 @re_exec(...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
