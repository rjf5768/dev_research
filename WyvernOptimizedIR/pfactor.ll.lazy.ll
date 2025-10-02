; ModuleID = './pfactor.ll'
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
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca i16*, align 8
  store i16* null, i16** %3, align 8
  %4 = add nsw i32 %0, -1
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %16, label %5

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %12, %5
  %.01 = phi i32 [ %4, %5 ], [ %13, %12 ]
  %.0 = phi i8** [ %1, %5 ], [ %7, %12 ]
  %7 = getelementptr inbounds i8*, i8** %.0, i64 1
  %8 = load i8*, i8** %7, align 8
  %9 = call i16* @atop(i8* noundef %8) #3
  %10 = call i16* @psetq(i16** noundef nonnull %3, i16* noundef %9) #3
  %11 = load i16*, i16** %3, align 8
  call void @showfactors(i16* noundef %11)
  br label %12

12:                                               ; preds = %6
  %13 = add nsw i32 %.01, -1
  %14 = icmp sgt i32 %.01, 1
  br i1 %14, label %6, label %15, !llvm.loop !4

15:                                               ; preds = %12
  br label %28

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %26, %16
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %19 = call i16* @fgetp(%struct._IO_FILE* noundef %18) #3
  %20 = call i16* @psetq(i16** noundef nonnull %3, i16* noundef %19) #3
  %21 = load i16*, i16** %3, align 8
  %22 = icmp eq i16* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %27

24:                                               ; preds = %17
  %25 = load i16*, i16** %3, align 8
  call void @showfactors(i16* noundef %25)
  br label %26

26:                                               ; preds = %24
  br i1 true, label %17, label %.loopexit

.loopexit:                                        ; preds = %26
  br label %27

27:                                               ; preds = %.loopexit, %23
  br label %28

28:                                               ; preds = %27, %15
  %29 = load i16*, i16** %3, align 8
  %.not2 = icmp eq i16* %29, null
  br i1 %.not2, label %38, label %30

30:                                               ; preds = %28
  %31 = load i16*, i16** %3, align 8
  %32 = load i16, i16* %31, align 2
  %33 = add i16 %32, -1
  store i16 %33, i16* %31, align 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i16*, i16** %3, align 8
  %37 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %36) #3
  br label %38

38:                                               ; preds = %35, %30, %28
  ret i32 0
}

declare dso_local i16* @psetq(i16** noundef, i16* noundef) #1

declare dso_local i16* @atop(i8* noundef) #1

declare dso_local i16* @fgetp(%struct._IO_FILE* noundef) #1

declare dso_local i32 @pfree(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @showfactors(i16* noundef %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca %struct.Pfs*, align 8
  store i16* null, i16** %2, align 8
  store %struct.Pfs* null, %struct.Pfs** %3, align 8
  %.not = icmp eq i16* %0, null
  br i1 %.not, label %7, label %4

4:                                                ; preds = %1
  %5 = load i16, i16* %0, align 2
  %6 = add i16 %5, 1
  store i16 %6, i16* %0, align 2
  br label %7

7:                                                ; preds = %4, %1
  %8 = call i16* @ptrial(i16* noundef %0, i32* noundef null, %struct.Pfs** noundef nonnull %3) #3
  %9 = call i16* @psetq(i16** noundef nonnull %2, i16* noundef %8) #3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = call i32 @fputp(%struct._IO_FILE* noundef %10, i16* noundef %0) #3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %12)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %15 = load %struct.Pfs*, %struct.Pfs** %3, align 8
  call void @pputfactors(%struct._IO_FILE* noundef %14, %struct.Pfs* noundef %15) #3
  %16 = load i16*, i16** %2, align 8
  %17 = load i16*, i16** @pone, align 8
  %18 = call i32 @pcmp(i16* noundef %16, i16* noundef %17) #3
  %.not1 = icmp eq i32 %18, 0
  br i1 %.not1, label %41, label %19

19:                                               ; preds = %7
  %20 = load i16*, i16** %2, align 8
  %21 = call i32 @pcmp(i16* noundef %20, i16* noundef %0) #3
  %.not4 = icmp eq i32 %21, 0
  br i1 %.not4, label %25, label %22

22:                                               ; preds = %19
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = call i32 @putc(i32 noundef 42, %struct._IO_FILE* noundef %23) #3
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i16*, i16** %2, align 8
  %27 = call i32 @pprime(i16* noundef %26, i32 noundef 16) #3
  %.not5 = icmp eq i32 %27, 0
  br i1 %.not5, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %30 = call i32 @fputc(i32 noundef 40, %struct._IO_FILE* noundef %29) #3
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = load i16*, i16** %2, align 8
  %33 = call i32 @fputp(%struct._IO_FILE* noundef %31, i16* noundef %32) #3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = call i32 @fputc(i32 noundef 41, %struct._IO_FILE* noundef %34) #3
  br label %40

36:                                               ; preds = %25
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = load i16*, i16** %2, align 8
  %39 = call i32 @fputp(%struct._IO_FILE* noundef %37, i16* noundef %38) #3
  br label %40

40:                                               ; preds = %36, %28
  br label %41

41:                                               ; preds = %40, %7
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %43 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %42) #3
  call void @pfreefactors(%struct.Pfs** noundef nonnull %3) #3
  %44 = load i16*, i16** %2, align 8
  %.not2 = icmp eq i16* %44, null
  br i1 %.not2, label %53, label %45

45:                                               ; preds = %41
  %46 = load i16*, i16** %2, align 8
  %47 = load i16, i16* %46, align 2
  %48 = add i16 %47, -1
  store i16 %48, i16* %46, align 2
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i16*, i16** %2, align 8
  %52 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %51) #3
  br label %53

53:                                               ; preds = %50, %45, %41
  %.not3 = icmp eq i16* %0, null
  br i1 %.not3, label %60, label %54

54:                                               ; preds = %53
  %55 = load i16, i16* %0, align 2
  %56 = add i16 %55, -1
  store i16 %56, i16* %0, align 2
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef nonnull %0) #3
  br label %60

60:                                               ; preds = %58, %54, %53
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

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
