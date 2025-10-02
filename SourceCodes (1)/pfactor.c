; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pfactor.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pfactor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Pfs = type { %struct.Pfs*, i16*, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c" = \00", align 1
@pone = external dso_local global i16*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i16*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i16* null, i16** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %19, %11
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %14, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i16* @atop(i8* noundef %15)
  %17 = call i16* @psetq(i16** noundef %6, i16* noundef %16)
  %18 = load i16*, i16** %6, align 8
  call void @showfactors(i16* noundef %18)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %12, label %23, !llvm.loop !4

23:                                               ; preds = %19
  br label %36

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %34, %24
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %27 = call i16* @fgetp(%struct._IO_FILE* noundef %26)
  %28 = call i16* @psetq(i16** noundef %6, i16* noundef %27)
  %29 = load i16*, i16** %6, align 8
  %30 = icmp eq i16* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %35

32:                                               ; preds = %25
  %33 = load i16*, i16** %6, align 8
  call void @showfactors(i16* noundef %33)
  br label %34

34:                                               ; preds = %32
  br i1 true, label %25, label %35

35:                                               ; preds = %34, %31
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i16*, i16** %6, align 8
  %38 = icmp ne i16* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i16*, i16** %6, align 8
  %41 = load i16, i16* %40, align 2
  %42 = add i16 %41, -1
  store i16 %42, i16* %40, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i16*, i16** %6, align 8
  %47 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %46)
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %45, %39, %36
  %50 = phi i1 [ false, %39 ], [ false, %36 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  ret i32 0
}

declare dso_local i16* @psetq(i16** noundef, i16* noundef) #1

declare dso_local i16* @atop(i8* noundef) #1

declare dso_local i16* @fgetp(%struct._IO_FILE* noundef) #1

declare dso_local i32 @pfree(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @showfactors(i16* noundef %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca %struct.Pfs*, align 8
  store i16* %0, i16** %2, align 8
  store i16* null, i16** %3, align 8
  store %struct.Pfs* null, %struct.Pfs** %4, align 8
  %5 = load i16*, i16** %2, align 8
  %6 = icmp ne i16* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i16*, i16** %2, align 8
  %9 = load i16, i16* %8, align 2
  %10 = add i16 %9, 1
  store i16 %10, i16* %8, align 2
  %11 = zext i16 %9 to i32
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i1 [ false, %1 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  %16 = load i16*, i16** %2, align 8
  %17 = load i16*, i16** %2, align 8
  %18 = call i16* @ptrial(i16* noundef %17, i32* noundef null, %struct.Pfs** noundef %4)
  %19 = call i16* @psetq(i16** noundef %3, i16* noundef %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %21 = load i16*, i16** %2, align 8
  %22 = call i32 @fputp(%struct._IO_FILE* noundef %20, i16* noundef %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = call i32 @fputs(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct._IO_FILE* noundef %23)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = load %struct.Pfs*, %struct.Pfs** %4, align 8
  call void @pputfactors(%struct._IO_FILE* noundef %25, %struct.Pfs* noundef %26)
  %27 = load i16*, i16** %3, align 8
  %28 = load i16*, i16** @pone, align 8
  %29 = call i32 @pcmp(i16* noundef %27, i16* noundef %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %13
  %32 = load i16*, i16** %3, align 8
  %33 = load i16*, i16** %2, align 8
  %34 = call i32 @pcmp(i16* noundef %32, i16* noundef %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = call i32 @putc(i32 noundef 42, %struct._IO_FILE* noundef %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i16*, i16** %3, align 8
  %41 = call i32 @pprime(i16* noundef %40, i32 noundef 16)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %45 = call i32 @fputc(i32 noundef 40, %struct._IO_FILE* noundef %44)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %47 = load i16*, i16** %3, align 8
  %48 = call i32 @fputp(%struct._IO_FILE* noundef %46, i16* noundef %47)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %50 = call i32 @fputc(i32 noundef 41, %struct._IO_FILE* noundef %49)
  br label %55

51:                                               ; preds = %39
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = load i16*, i16** %3, align 8
  %54 = call i32 @fputp(%struct._IO_FILE* noundef %52, i16* noundef %53)
  br label %55

55:                                               ; preds = %51, %43
  br label %56

56:                                               ; preds = %55, %13
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %58 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %57)
  call void @pfreefactors(%struct.Pfs** noundef %4)
  %59 = load i16*, i16** %3, align 8
  %60 = icmp ne i16* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load i16*, i16** %3, align 8
  %63 = load i16, i16* %62, align 2
  %64 = add i16 %63, -1
  store i16 %64, i16* %62, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i16*, i16** %3, align 8
  %69 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %68)
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %67, %61, %56
  %72 = phi i1 [ false, %61 ], [ false, %56 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  %74 = load i16*, i16** %2, align 8
  %75 = icmp ne i16* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load i16*, i16** %2, align 8
  %78 = load i16, i16* %77, align 2
  %79 = add i16 %78, -1
  store i16 %79, i16* %77, align 2
  %80 = zext i16 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i16*, i16** %2, align 8
  %84 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %83)
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %82, %76, %71
  %87 = phi i1 [ false, %76 ], [ false, %71 ], [ %85, %82 ]
  %88 = zext i1 %87 to i32
  ret void
}

declare dso_local i16* @ptrial(i16* noundef, i32* noundef, %struct.Pfs** noundef) #1

declare dso_local i32 @fputp(%struct._IO_FILE* noundef, i16* noundef) #1

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @pputfactors(%struct._IO_FILE* noundef, %struct.Pfs* noundef) #1

declare dso_local i32 @pcmp(i16* noundef, i16* noundef) #1

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @pprime(i16* noundef, i32 noundef) #1

declare dso_local i32 @fputc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @pfreefactors(%struct.Pfs** noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
