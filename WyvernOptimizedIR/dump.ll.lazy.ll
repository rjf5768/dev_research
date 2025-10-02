; ModuleID = './dump.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@hashheader = external dso_local global %struct.hashheader, align 4
@.str = private unnamed_addr constant [16 x i8] c"flagmarker \\%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"flagmarker \\%3.3o\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"flagmarker %c\0A\00", align 1
@numpflags = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"prefixes\0A\00", align 1
@pflaglist = external dso_local global %struct.flagent*, align 8
@numsflags = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"suffixes\0A\00", align 1
@sflaglist = external dso_local global %struct.flagent*, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"  flag %s%c: \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"\09> \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"-%s,\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"[^\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%c-%c\00", align 1
@str = private unnamed_addr constant [9 x i8] c"suffixes\00", align 1
@str.1 = private unnamed_addr constant [9 x i8] c"prefixes\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpmode() #0 {
  %1 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 19), align 4
  %2 = icmp eq i8 %1, 92
  br i1 %2, label %21, label %3

3:                                                ; preds = %0
  %4 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 19), align 4
  %5 = icmp eq i8 %4, 35
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 19), align 4
  %8 = icmp eq i8 %7, 62
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 19), align 4
  %11 = icmp eq i8 %10, 58
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 19), align 4
  %14 = icmp eq i8 %13, 45
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 19), align 4
  %17 = icmp eq i8 %16, 44
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 19), align 4
  %20 = icmp eq i8 %19, 91
  br i1 %20, label %21, label %25

21:                                               ; preds = %18, %15, %12, %9, %6, %3, %0
  %22 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 19), align 4
  %23 = sext i8 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %23) #3
  br label %40

25:                                               ; preds = %18
  %26 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 19), align 4
  %27 = icmp slt i8 %26, 32
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 19), align 4
  %30 = icmp eq i8 %29, 127
  br i1 %30, label %31, label %35

31:                                               ; preds = %28, %25
  %32 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 19), align 4
  %33 = zext i8 %32 to i32
  %34 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef %33) #3
  br label %39

35:                                               ; preds = %28
  %36 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 19), align 4
  %37 = sext i8 %36 to i32
  %38 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef %37) #3
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* @numpflags, align 4
  %.not = icmp eq i32 %41, 0
  br i1 %.not, label %45, label %42

42:                                               ; preds = %40
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @str.1, i64 0, i64 0))
  %43 = load %struct.flagent*, %struct.flagent** @pflaglist, align 8
  %44 = load i32, i32* @numpflags, align 4
  call void @tbldump(%struct.flagent* noundef %43, i32 noundef %44)
  br label %45

45:                                               ; preds = %42, %40
  %46 = load i32, i32* @numsflags, align 4
  %.not1 = icmp eq i32 %46, 0
  br i1 %.not1, label %50, label %47

47:                                               ; preds = %45
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @str, i64 0, i64 0))
  %48 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  %49 = load i32, i32* @numsflags, align 4
  call void @tbldump(%struct.flagent* noundef %48, i32 noundef %49)
  br label %50

50:                                               ; preds = %47, %45
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @tbldump(%struct.flagent* nocapture noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.01 = phi i32 [ %1, %2 ], [ %6, %5 ]
  %.0 = phi %struct.flagent* [ %0, %2 ], [ %7, %5 ]
  %4 = icmp sgt i32 %.01, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = add nsw i32 %.01, -1
  %7 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 1
  call void @entdump(%struct.flagent* noundef %.0)
  br label %3, !llvm.loop !4

8:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @entdump(%struct.flagent* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.flagent, %struct.flagent* %0, i64 0, i32 6
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 1
  %.not = icmp eq i16 %4, 0
  %5 = select i1 %.not, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %6 = getelementptr inbounds %struct.flagent, %struct.flagent* %0, i64 0, i32 2
  %7 = load i16, i16* %6, align 8
  %8 = sext i16 %7 to i32
  %9 = add nsw i32 %8, 65
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* noundef %5, i32 noundef %9) #3
  br label %11

11:                                               ; preds = %28, %1
  %.0 = phi i32 [ 0, %1 ], [ %29, %28 ]
  %12 = getelementptr inbounds %struct.flagent, %struct.flagent* %0, i64 0, i32 5
  %13 = load i16, i16* %12, align 2
  %14 = sext i16 %13 to i32
  %15 = icmp slt i32 %.0, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.flagent, %struct.flagent* %0, i64 0, i32 7, i64 0
  %18 = shl i32 1, %.0
  call void @setdump(i8* noundef nonnull %17, i32 noundef %18)
  %19 = getelementptr inbounds %struct.flagent, %struct.flagent* %0, i64 0, i32 5
  %20 = load i16, i16* %19, align 2
  %21 = sext i16 %20 to i32
  %22 = add nsw i32 %21, -1
  %23 = icmp slt i32 %.0, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = call i32 @putc(i32 noundef 32, %struct._IO_FILE* noundef %25) #3
  br label %27

27:                                               ; preds = %24, %16
  br label %28

28:                                               ; preds = %27
  %29 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !6

30:                                               ; preds = %11
  %31 = icmp eq i32 %.0, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %34 = call i32 @putc(i32 noundef 46, %struct._IO_FILE* noundef %33) #3
  br label %35

35:                                               ; preds = %32, %30
  %36 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #3
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = call i32 @putc(i32 noundef 9, %struct._IO_FILE* noundef %37) #3
  %39 = getelementptr inbounds %struct.flagent, %struct.flagent* %0, i64 0, i32 3
  %40 = load i16, i16* %39, align 2
  %.not1 = icmp eq i16 %40, 0
  br i1 %.not1, label %46, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.flagent, %struct.flagent* %0, i64 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @ichartosstr(i8* noundef %43, i32 noundef 1) #3
  %45 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef %44) #3
  br label %46

46:                                               ; preds = %41, %35
  %47 = getelementptr inbounds %struct.flagent, %struct.flagent* %0, i64 0, i32 4
  %48 = load i16, i16* %47, align 4
  %.not2 = icmp eq i16 %48, 0
  br i1 %.not2, label %53, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.flagent, %struct.flagent* %0, i64 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @ichartosstr(i8* noundef %51, i32 noundef 1) #3
  br label %54

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i8* [ %52, %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %53 ]
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) %55)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @setdump(i8* nocapture noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %14, %2
  %.03 = phi i32 [ 128, %2 ], [ %4, %14 ]
  %.01 = phi i32 [ 0, %2 ], [ %.12, %14 ]
  %.0 = phi i32 [ 0, %2 ], [ %.1, %14 ]
  %4 = add nsw i32 %.03, -1
  %5 = icmp sgt i32 %.03, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds i8, i8* %0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = and i32 %10, %1
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %14, label %12

12:                                               ; preds = %6
  %13 = add nsw i32 %.0, 1
  br label %14

14:                                               ; preds = %12, %6
  %.12 = phi i32 [ %4, %12 ], [ %.01, %6 ]
  %.1 = phi i32 [ %13, %12 ], [ %.0, %6 ]
  br label %3, !llvm.loop !7

15:                                               ; preds = %3
  %16 = icmp eq i32 %.0, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = call i32 @putc(i32 noundef %.01, %struct._IO_FILE* noundef %18) #3
  br label %38

20:                                               ; preds = %15
  %21 = icmp eq i32 %.0, 128
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = call i32 @putc(i32 noundef 46, %struct._IO_FILE* noundef %23) #3
  br label %37

25:                                               ; preds = %20
  %26 = icmp sgt i32 %.0, 64
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)) #3
  call void @subsetdump(i8* noundef %0, i32 noundef %1, i32 noundef 0)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %30 = call i32 @putc(i32 noundef 93, %struct._IO_FILE* noundef %29) #3
  br label %36

31:                                               ; preds = %25
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %33 = call i32 @putc(i32 noundef 91, %struct._IO_FILE* noundef %32) #3
  call void @subsetdump(i8* noundef %0, i32 noundef %1, i32 noundef %1)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = call i32 @putc(i32 noundef 93, %struct._IO_FILE* noundef %34) #3
  br label %36

36:                                               ; preds = %31, %27
  br label %37

37:                                               ; preds = %36, %22
  br label %38

38:                                               ; preds = %37, %17
  ret void
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i8* @ichartosstr(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @subsetdump(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %47, %3
  %.02 = phi i32 [ 0, %3 ], [ %49, %47 ]
  %.0 = phi i8* [ %0, %3 ], [ %48, %47 ]
  %5 = icmp slt i32 %.02, 128
  br i1 %5, label %6, label %50

6:                                                ; preds = %4
  %7 = load i8, i8* %.0, align 1
  %8 = sext i8 %7 to i32
  %9 = xor i32 %8, %2
  %10 = and i32 %9, %1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %22, %12
  %.13 = phi i32 [ %.02, %12 ], [ %24, %22 ]
  %.1 = phi i8* [ %.0, %12 ], [ %23, %22 ]
  %14 = icmp slt i32 %.13, 128
  br i1 %14, label %15, label %.loopexit

15:                                               ; preds = %13
  %16 = load i8, i8* %.1, align 1
  %17 = sext i8 %16 to i32
  %18 = xor i32 %17, %2
  %19 = and i32 %18, %1
  %.not11 = icmp eq i32 %19, 0
  br i1 %.not11, label %21, label %20

20:                                               ; preds = %15
  br label %25

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds i8, i8* %.1, i64 1
  %24 = add nsw i32 %.13, 1
  br label %13, !llvm.loop !8

.loopexit:                                        ; preds = %13
  br label %25

25:                                               ; preds = %.loopexit, %20
  %26 = add nsw i32 %.02, 1
  %27 = icmp eq i32 %.13, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %30 = call i32 @putc(i32 noundef %.02, %struct._IO_FILE* noundef %29) #3
  br label %45

31:                                               ; preds = %25
  %32 = add nsw i32 %.02, 3
  %.not = icmp sgt i32 %.13, %32
  br i1 %.not, label %41, label %33

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %36, %33
  %.01 = phi i32 [ %.02, %33 ], [ %39, %36 ]
  %35 = icmp slt i32 %.01, %.13
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = call i32 @putc(i32 noundef %.01, %struct._IO_FILE* noundef %37) #3
  %39 = add nsw i32 %.01, 1
  br label %34, !llvm.loop !9

40:                                               ; preds = %34
  br label %44

41:                                               ; preds = %31
  %42 = add nsw i32 %.13, -1
  %43 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 noundef %.02, i32 noundef %42) #3
  br label %44

44:                                               ; preds = %41, %40
  br label %45

45:                                               ; preds = %44, %28
  br label %46

46:                                               ; preds = %45, %6
  %.24 = phi i32 [ %.13, %45 ], [ %.02, %6 ]
  %.2 = phi i8* [ %.1, %45 ], [ %.0, %6 ]
  br label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds i8, i8* %.2, i64 1
  %49 = add nsw i32 %.24, 1
  br label %4, !llvm.loop !10

50:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
