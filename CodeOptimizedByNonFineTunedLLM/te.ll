; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/te.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/te.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"\0A%s: line %d: %s\0A\00", align 1
@ifile = external dso_local global i8*, align 8
@iline = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"tbl quits\0A\00", align 1
@tabin = external dso_local global %struct._IO_FILE*, align 8
@linstart = external dso_local global i32, align 4
@backup = dso_local global [500 x i8] zeroinitializer, align 16
@backp = dso_local global i8* getelementptr inbounds ([500 x i8], [500 x i8]* @backup, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"too much backup\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"unexpected EOF\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @error(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @ifile, align 8
  %5 = load i32, i32* @iline, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* noundef %4, i32 noundef %5, i8* noundef %6)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #3
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @gets1(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @iline, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @iline, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %10 = call i8* @fgets(i8* noundef %8, i32 noundef 8192, %struct._IO_FILE* noundef %9)
  store i8* %10, i8** %4, align 8
  br label %11

11:                                               ; preds = %18, %1
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = call i32 @swapin()
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i8* null, i8** %2, align 8
  br label %71

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %21 = call i8* @fgets(i8* noundef %19, i32 noundef 8192, %struct._IO_FILE* noundef %20)
  store i8* %21, i8** %4, align 8
  br label %11, !llvm.loop !4

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %27, %22
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %3, align 8
  br label %23, !llvm.loop !6

30:                                               ; preds = %23
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %32, i8** %3, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %39, i8** %3, align 8
  store i8 0, i8* %38, align 1
  br label %40

40:                                               ; preds = %37, %30
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %55, %40
  %42 = load i8*, i8** %3, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 92
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i8*, i8** %3, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = icmp ugt i8* %47, %48
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i1 [ false, %41 ], [ %49, %46 ]
  br i1 %51, label %52, label %58

52:                                               ; preds = %50
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %57, i8** %3, align 8
  br label %41, !llvm.loop !7

58:                                               ; preds = %50
  %59 = load i32, i32* @linstart, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = srem i32 %62, 2
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = call i8* @gets1(i8* noundef %67)
  br label %69

69:                                               ; preds = %65, %61, %58
  %70 = load i8*, i8** %4, align 8
  store i8* %70, i8** %2, align 8
  br label %71

71:                                               ; preds = %69, %17
  %72 = load i8*, i8** %2, align 8
  ret i8* %72
}

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @swapin() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @un1getc(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 10
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* @iline, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* @iline, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i32, i32* %2, align 4
  %10 = trunc i32 %9 to i8
  %11 = load i8*, i8** @backp, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** @backp, align 8
  store i8 %10, i8* %11, align 1
  %13 = load i8*, i8** @backp, align 8
  %14 = icmp uge i8* %13, getelementptr inbounds ([500 x i8], [500 x i8]* @backup, i64 1, i64 0)
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  call void @error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %16

16:                                               ; preds = %15, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get1char() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @backp, align 8
  %3 = icmp ugt i8* %2, getelementptr inbounds ([500 x i8], [500 x i8]* @backup, i64 0, i64 0)
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i8*, i8** @backp, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 -1
  store i8* %6, i8** @backp, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  store i32 %8, i32* %1, align 4
  br label %12

9:                                                ; preds = %0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %11 = call i32 @getc(%struct._IO_FILE* noundef %10)
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %9, %4
  %13 = load i32, i32* %1, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = call i32 @swapin()
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %19

19:                                               ; preds = %18, %15
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %21 = call i32 @getc(%struct._IO_FILE* noundef %20)
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = load i32, i32* %1, align 4
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @iline, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @iline, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
