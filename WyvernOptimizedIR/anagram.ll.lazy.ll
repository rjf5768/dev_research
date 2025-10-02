; ModuleID = './anagram.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/anagram/anagram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Letter = type { i32, i32, i32, i32 }
%struct.Word = type { [2 x i64], i8*, i32 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@cchMinLength = dso_local global i32 3, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [24 x i8] c"Cannot stat dictionary\0A\00", align 1
@pchDictionary = dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to allocate memory for dictionary\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Cannot open dictionary\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"main dictionary has %u entries\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Dictionary too large; increase MAXWORDS\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%lu bytes wasted\0A\00", align 1
@alPhrase = dso_local global [26 x %struct.Letter] zeroinitializer, align 16
@aqMainMask = dso_local global [2 x i64] zeroinitializer, align 16
@aqMainSign = dso_local global [2 x i64] zeroinitializer, align 16
@cchPhraseLength = dso_local global i32 0, align 4
@auGlobalFrequency = dso_local global [26 x i32] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [28 x i8] c"MAX_QUADS not large enough\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Out of memory after %d candidates\0A\00", align 1
@cpwCand = dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Too many candidates\0A\00", align 1
@apwCand = dso_local global [5000 x %struct.Word*] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [15 x i8] c"%d candidates\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%15s%c\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DumpWords.X = internal global i32 0, align 4
@cpwLast = dso_local global i32 0, align 4
@apwSol = dso_local global [51 x %struct.Word*] zeroinitializer, align 16
@achByFrequency = dso_local global [26 x i8] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [25 x i8] c"Order of search will be \00", align 1
@fInteractive = dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [2 x i8] c">\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [36 x i8] c"Usage: anagram dictionary [length]\0A\00", align 1
@achPhrase = dso_local global [255 x i8] zeroinitializer, align 16
@.str.17 = private unnamed_addr constant [16 x i8] c"New length: %d\0A\00", align 1
@jbAnagram = dso_local global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @Fatal(i8* noundef %0, i32 noundef %1) #0 {
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef %0, i32 noundef %1) #11
  call void @exit(i32 noundef 1) #12
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReadDict(i8* noundef %0) #3 {
  %2 = alloca %struct.stat, align 8
  %3 = call i32 @stat(i8* noundef %0, %struct.stat* noundef nonnull %2) #13
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  call void @Fatal(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 0)
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 8
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, 52000
  %9 = call noalias i8* @malloc(i64 noundef %8) #13
  store i8* %9, i8** @pchDictionary, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  call void @Fatal(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 noundef 0)
  br label %12

12:                                               ; preds = %11, %5
  %13 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #13
  %14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @Fatal(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 noundef 0)
  br label %16

16:                                               ; preds = %15, %12
  br label %17

17:                                               ; preds = %39, %16
  %.03 = phi i8* [ %9, %16 ], [ %40, %39 ]
  %.01 = phi i32 [ 0, %16 ], [ %47, %39 ]
  %18 = call i32 @feof(%struct._IO_FILE* noundef %13) #13
  %.not4 = icmp eq i32 %18, 0
  br i1 %.not4, label %19, label %48

19:                                               ; preds = %17
  %20 = getelementptr inbounds i8, i8* %.03, i64 2
  br label %21

21:                                               ; preds = %36, %19
  %.02 = phi i8* [ %20, %19 ], [ %38, %36 ]
  %.0 = phi i32 [ 0, %19 ], [ %.1, %36 ]
  %22 = call i32 @fgetc(%struct._IO_FILE* noundef %13) #13
  %.not5 = icmp eq i32 %22, 10
  br i1 %.not5, label %25, label %23

23:                                               ; preds = %21
  %24 = icmp ne i32 %22, -1
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i1 [ false, %21 ], [ %24, %23 ]
  br i1 %26, label %27, label %39

27:                                               ; preds = %25
  %28 = call i16** @__ctype_b_loc() #14
  %29 = load i16*, i16** %28, align 8
  %30 = sext i32 %22 to i64
  %31 = getelementptr inbounds i16, i16* %29, i64 %30
  %32 = load i16, i16* %31, align 2
  %33 = and i16 %32, 1024
  %.not6 = icmp eq i16 %33, 0
  br i1 %.not6, label %36, label %34

34:                                               ; preds = %27
  %35 = add i32 %.0, 1
  br label %36

36:                                               ; preds = %34, %27
  %.1 = phi i32 [ %35, %34 ], [ %.0, %27 ]
  %37 = trunc i32 %22 to i8
  %38 = getelementptr inbounds i8, i8* %.02, i64 1
  store i8 %37, i8* %.02, align 1
  br label %21, !llvm.loop !4

39:                                               ; preds = %25
  %40 = getelementptr inbounds i8, i8* %.02, i64 1
  store i8 0, i8* %.02, align 1
  %41 = ptrtoint i8* %40 to i64
  %42 = ptrtoint i8* %.03 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i8
  store i8 %44, i8* %.03, align 1
  %45 = trunc i32 %.0 to i8
  %46 = getelementptr inbounds i8, i8* %.03, i64 1
  store i8 %45, i8* %46, align 1
  %47 = add i32 %.01, 1
  br label %17, !llvm.loop !6

48:                                               ; preds = %17
  %49 = call i32 @fclose(%struct._IO_FILE* noundef %13) #13
  store i8 0, i8* %.03, align 1
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #11
  %52 = icmp ugt i32 %.01, 25999
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  call void @Fatal(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 noundef 0)
  br label %54

54:                                               ; preds = %53, %48
  %55 = getelementptr inbounds i8, i8* %.03, i64 1
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = load i8*, i8** @pchDictionary, align 8
  %58 = ptrtoint i8* %55 to i64
  %59 = ptrtoint i8* %57 to i64
  %.neg = sub i64 %59, %58
  %60 = add i64 %.neg, %8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %56, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 noundef %60) #11
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @stat(i8* noundef, %struct.stat* noundef) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #4

declare dso_local i32 @fgetc(%struct._IO_FILE* noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @BuildMask(i8* nocapture noundef readonly %0) #3 {
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(416) bitcast ([26 x %struct.Letter]* @alPhrase to i8*), i8 0, i64 416, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) bitcast ([2 x i64]* @aqMainMask to i8*), i8 0, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) bitcast ([2 x i64]* @aqMainSign to i8*), i8 0, i64 16, i1 false)
  store i32 0, i32* @cchPhraseLength, align 4
  br label %2

2:                                                ; preds = %22, %1
  %.0 = phi i8* [ %0, %1 ], [ %3, %22 ]
  %3 = getelementptr inbounds i8, i8* %.0, i64 1
  %4 = load i8, i8* %.0, align 1
  %5 = sext i8 %4 to i32
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %23, label %6

6:                                                ; preds = %2
  %7 = call i16** @__ctype_b_loc() #14
  %8 = load i16*, i16** %7, align 8
  %9 = sext i8 %4 to i64
  %10 = getelementptr inbounds i16, i16* %8, i64 %9
  %11 = load i16, i16* %10, align 2
  %12 = and i16 %11, 1024
  %.not11 = icmp eq i16 %12, 0
  br i1 %.not11, label %22, label %13

13:                                               ; preds = %6
  %14 = call i32 @tolower(i32 noundef %5) #15
  %15 = add nsw i32 %14, -97
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %16, i32 0
  %18 = load i32, i32* %17, align 16
  %19 = add i32 %18, 1
  store i32 %19, i32* %17, align 16
  %20 = load i32, i32* @cchPhraseLength, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @cchPhraseLength, align 4
  br label %22

22:                                               ; preds = %13, %6
  br label %2, !llvm.loop !7

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %83, %23
  %.03 = phi i32 [ 0, %23 ], [ %.25, %83 ]
  %.02 = phi i32 [ 0, %23 ], [ %.2, %83 ]
  %.01 = phi i32 [ 0, %23 ], [ %84, %83 ]
  %25 = icmp ult i32 %.01, 26
  br i1 %25, label %26, label %85

26:                                               ; preds = %24
  %27 = zext i32 %.01 to i64
  %28 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %27, i32 0
  %29 = load i32, i32* %28, align 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = zext i32 %.01 to i64
  %33 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i64 0, i64 %32
  store i32 -1, i32* %33, align 4
  br label %82

34:                                               ; preds = %26
  %35 = zext i32 %.01 to i64
  %36 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i64 0, i64 %35
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %43, %34
  %.07 = phi i64 [ 1, %34 ], [ %45, %43 ]
  %.06 = phi i32 [ 1, %34 ], [ %44, %43 ]
  %38 = zext i32 %.01 to i64
  %39 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %38, i32 0
  %40 = load i32, i32* %39, align 16
  %41 = zext i32 %40 to i64
  %.not9 = icmp ugt i64 %.07, %41
  br i1 %.not9, label %46, label %42

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42
  %44 = add nuw nsw i32 %.06, 1
  %45 = shl i64 %.07, 1
  br label %37, !llvm.loop !8

46:                                               ; preds = %37
  %47 = add nsw i32 %.03, %.06
  %48 = icmp ugt i32 %47, 64
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = add i32 %.02, 1
  %51 = icmp ugt i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @Fatal(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 noundef 0)
  br label %53

53:                                               ; preds = %52, %49
  br label %54

54:                                               ; preds = %53, %46
  %.14 = phi i32 [ 0, %53 ], [ %.03, %46 ]
  %.1 = phi i32 [ %50, %53 ], [ %.02, %46 ]
  %55 = trunc i64 %.07 to i32
  %56 = add i32 %55, -1
  %57 = zext i32 %.01 to i64
  %58 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %57, i32 2
  store i32 %56, i32* %58, align 8
  %.not10 = icmp eq i32 %.14, 0
  br i1 %.not10, label %62, label %59

59:                                               ; preds = %54
  %60 = zext i32 %.14 to i64
  %61 = shl i64 %.07, %60
  br label %62

62:                                               ; preds = %59, %54
  %.18 = phi i64 [ %61, %59 ], [ %.07, %54 ]
  %63 = zext i32 %.1 to i64
  %64 = getelementptr inbounds [2 x i64], [2 x i64]* @aqMainSign, i64 0, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = or i64 %65, %.18
  store i64 %66, i64* %64, align 8
  %67 = zext i32 %.01 to i64
  %68 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %67, i32 0
  %69 = load i32, i32* %68, align 16
  %70 = zext i32 %69 to i64
  %71 = zext i32 %.14 to i64
  %72 = shl i64 %70, %71
  %73 = zext i32 %.1 to i64
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* @aqMainMask, i64 0, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = or i64 %75, %72
  store i64 %76, i64* %74, align 8
  %77 = zext i32 %.01 to i64
  %78 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %77, i32 1
  store i32 %.14, i32* %78, align 4
  %79 = zext i32 %.01 to i64
  %80 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %79, i32 3
  store i32 %.1, i32* %80, align 4
  %81 = add nsw i32 %.14, %.06
  br label %82

82:                                               ; preds = %62, %31
  %.25 = phi i32 [ %.03, %31 ], [ %81, %62 ]
  %.2 = phi i32 [ %.02, %31 ], [ %.1, %62 ]
  br label %83

83:                                               ; preds = %82
  %84 = add nuw nsw i32 %.01, 1
  br label %24, !llvm.loop !9

85:                                               ; preds = %24
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @tolower(i32 noundef) #7

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.Word* @NewWord() #3 {
  %1 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #13
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load i32, i32* @cpwCand, align 4
  call void @Fatal(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 noundef %4)
  br label %5

5:                                                ; preds = %3, %0
  %6 = bitcast i8* %1 to %struct.Word*
  ret %struct.Word* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @wprint(i8* noundef %0) #3 {
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef %0) #13
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Word* @NextWord() #3 {
  %1 = load i32, i32* @cpwCand, align 4
  %2 = icmp ugt i32 %1, 4999
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @Fatal(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0)
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, i32* @cpwCand, align 4
  %6 = add i32 %5, 1
  store i32 %6, i32* @cpwCand, align 4
  %7 = zext i32 %5 to i64
  %8 = getelementptr inbounds [5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i64 0, i64 %7
  %9 = load %struct.Word*, %struct.Word** %8, align 8
  %.not = icmp eq %struct.Word* %9, null
  br i1 %.not, label %11, label %10

10:                                               ; preds = %4
  br label %21

11:                                               ; preds = %4
  %12 = call %struct.Word* @NewWord()
  %13 = load i32, i32* @cpwCand, align 4
  %14 = add i32 %13, -1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i64 0, i64 %15
  store %struct.Word* %12, %struct.Word** %16, align 8
  %17 = add i32 %13, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i64 0, i64 %18
  %20 = load %struct.Word*, %struct.Word** %19, align 8
  br label %21

21:                                               ; preds = %11, %10
  %.0 = phi %struct.Word* [ %9, %10 ], [ %20, %11 ]
  ret %struct.Word* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BuildWord(i8* noundef %0) #3 {
  %2 = alloca [26 x i8], align 16
  %3 = getelementptr inbounds [26 x i8], [26 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(26) %3, i8 0, i64 26, i1 false)
  br label %.outer

.outer:                                           ; preds = %29, %1
  %.02.ph = phi i8* [ %5, %29 ], [ %0, %1 ]
  %.0.ph = phi i32 [ %30, %29 ], [ 0, %1 ]
  br label %4

4:                                                ; preds = %.outer, %14
  %.02 = phi i8* [ %5, %14 ], [ %.02.ph, %.outer ]
  %5 = getelementptr inbounds i8, i8* %.02, i64 1
  %6 = load i8, i8* %.02, align 1
  %.not = icmp eq i8 %6, 0
  br i1 %.not, label %31, label %7

7:                                                ; preds = %4
  %8 = call i16** @__ctype_b_loc() #14
  %9 = load i16*, i16** %8, align 8
  %10 = sext i8 %6 to i64
  %11 = getelementptr inbounds i16, i16* %9, i64 %10
  %12 = load i16, i16* %11, align 2
  %13 = and i16 %12, 1024
  %.not7 = icmp eq i16 %13, 0
  br i1 %.not7, label %14, label %15

14:                                               ; preds = %7
  br label %4, !llvm.loop !10

15:                                               ; preds = %7
  %16 = sext i8 %6 to i32
  %17 = call i32 @tolower(i32 noundef %16) #15
  %18 = add nsw i32 %17, -97
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [26 x i8], [26 x i8]* %2, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = add i8 %21, 1
  store i8 %22, i8* %20, align 1
  %23 = zext i8 %22 to i32
  %24 = sext i32 %18 to i64
  %25 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %24, i32 0
  %26 = load i32, i32* %25, align 16
  %27 = icmp ult i32 %26, %23
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %71

29:                                               ; preds = %15
  %30 = add nuw nsw i32 %.0.ph, 1
  br label %.outer, !llvm.loop !10

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %43, %31
  %.01 = phi i32 [ 0, %31 ], [ %44, %43 ]
  %33 = icmp ult i32 %.01, 26
  br i1 %33, label %34, label %45

34:                                               ; preds = %32
  %35 = zext i32 %.01 to i64
  %36 = getelementptr inbounds [26 x i8], [26 x i8]* %2, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = zext i32 %.01 to i64
  %40 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %34
  %44 = add nuw nsw i32 %.01, 1
  br label %32, !llvm.loop !11

45:                                               ; preds = %32
  %46 = call %struct.Word* @NextWord()
  %47 = bitcast %struct.Word* %46 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %47, i8 0, i64 16, i1 false)
  %48 = getelementptr inbounds %struct.Word, %struct.Word* %46, i64 0, i32 1
  store i8* %0, i8** %48, align 8
  %49 = getelementptr inbounds %struct.Word, %struct.Word* %46, i64 0, i32 2
  store i32 %.0.ph, i32* %49, align 8
  br label %50

50:                                               ; preds = %69, %45
  %.1 = phi i32 [ 0, %45 ], [ %70, %69 ]
  %51 = icmp ult i32 %.1, 26
  br i1 %51, label %52, label %.loopexit

52:                                               ; preds = %50
  %53 = zext i32 %.1 to i64
  %54 = getelementptr inbounds [26 x i8], [26 x i8]* %2, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i64
  %57 = zext i32 %.1 to i64
  %58 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %57, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = zext i32 %59 to i64
  %61 = shl i64 %56, %60
  %62 = zext i32 %.1 to i64
  %63 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %62, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.Word, %struct.Word* %46, i64 0, i32 0, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = or i64 %67, %61
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %52
  %70 = add nuw nsw i32 %.1, 1
  br label %50, !llvm.loop !12

.loopexit:                                        ; preds = %50
  br label %71

71:                                               ; preds = %.loopexit, %28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AddWords() #3 {
  %1 = load i8*, i8** @pchDictionary, align 8
  store i32 0, i32* @cpwCand, align 4
  br label %2

2:                                                ; preds = %24, %0
  %.0 = phi i8* [ %1, %0 ], [ %27, %24 ]
  %3 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8, i8* %.0, i64 1
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = load i32, i32* @cchMinLength, align 4
  %.not1 = icmp sgt i32 %8, %7
  br i1 %.not1, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %.0, i64 1
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = load i32, i32* @cchMinLength, align 4
  %14 = add nsw i32 %13, %12
  %15 = load i32, i32* @cchPhraseLength, align 4
  %.not2 = icmp sgt i32 %14, %15
  br i1 %.not2, label %16, label %22

16:                                               ; preds = %9, %4
  %17 = getelementptr inbounds i8, i8* %.0, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = load i32, i32* @cchPhraseLength, align 4
  %21 = icmp eq i32 %20, %19
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %9
  %23 = getelementptr inbounds i8, i8* %.0, i64 2
  call void @BuildWord(i8* noundef nonnull %23)
  br label %24

24:                                               ; preds = %22, %16
  %25 = load i8, i8* %.0, align 1
  %26 = sext i8 %25 to i64
  %27 = getelementptr inbounds i8, i8* %.0, i64 %26
  br label %2, !llvm.loop !13

28:                                               ; preds = %2
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load i32, i32* @cpwCand, align 4
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 noundef %30) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DumpCandidates() #3 {
  br label %1

1:                                                ; preds = %14, %0
  %.0 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %2 = load i32, i32* @cpwCand, align 4
  %3 = icmp ult i32 %.0, %2
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i64 0, i64 %5
  %7 = load %struct.Word*, %struct.Word** %6, align 8
  %8 = getelementptr inbounds %struct.Word, %struct.Word* %7, i64 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = and i32 %.0, 3
  %11 = icmp eq i32 %10, 3
  %12 = select i1 %11, i32 10, i32 32
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* noundef %9, i32 noundef %12) #13
  br label %14

14:                                               ; preds = %4
  %15 = add i32 %.0, 1
  br label %1, !llvm.loop !14

16:                                               ; preds = %1
  %putchar = call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DumpWords() #3 {
  %1 = load i32, i32* @DumpWords.X, align 4
  %2 = add nsw i32 %1, 1
  %3 = and i32 %2, 1023
  store i32 %3, i32* @DumpWords.X, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  br label %18

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %15, %5
  %.0 = phi i32 [ 0, %5 ], [ %16, %15 ]
  %7 = load i32, i32* @cpwLast, align 4
  %8 = icmp slt i32 %.0, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [51 x %struct.Word*], [51 x %struct.Word*]* @apwSol, i64 0, i64 %10
  %12 = load %struct.Word*, %struct.Word** %11, align 8
  %13 = getelementptr inbounds %struct.Word, %struct.Word* %12, i64 0, i32 1
  %14 = load i8*, i8** %13, align 8
  call void @wprint(i8* noundef %14)
  br label %15

15:                                               ; preds = %9
  %16 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !15

17:                                               ; preds = %6
  %putchar = call i32 @putchar(i32 10)
  br label %18

18:                                               ; preds = %17, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FindAnagram(i64* nocapture noundef readonly %0, %struct.Word** noundef %1, i32 noundef %2) #3 {
  %4 = alloca [2 x i64], align 16
  %5 = load i32, i32* @cpwCand, align 4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i64 0, i64 %6
  br label %8

8:                                                ; preds = %34, %3
  %.02 = phi i32 [ %2, %3 ], [ %35, %34 ]
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds [26 x i8], [26 x i8]* @achByFrequency, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i64
  %13 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %12, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %.02 to i64
  %16 = getelementptr inbounds [26 x i8], [26 x i8]* @achByFrequency, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i64
  %19 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %18, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %.02 to i64
  %22 = getelementptr inbounds [26 x i8], [26 x i8]* @achByFrequency, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i64
  %25 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %24, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %20, %26
  %28 = zext i32 %27 to i64
  %29 = zext i32 %14 to i64
  %30 = getelementptr inbounds i64, i64* %0, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = and i64 %31, %28
  %.not = icmp eq i64 %32, 0
  br i1 %.not, label %34, label %33

33:                                               ; preds = %8
  br label %36

34:                                               ; preds = %8
  %35 = add nsw i32 %.02, 1
  br label %8

36:                                               ; preds = %33
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %36
  %.01.ph = phi %struct.Word** [ %1, %36 ], [ %.01.ph.be, %.outer.backedge ]
  %.0.ph = phi %struct.Word** [ %7, %36 ], [ %.0.ph.be, %.outer.backedge ]
  br label %37

37:                                               ; preds = %.outer, %65
  %.0 = phi %struct.Word** [ %66, %65 ], [ %.0.ph, %.outer ]
  %38 = icmp ult %struct.Word** %.01.ph, %.0
  br i1 %38, label %39, label %90

39:                                               ; preds = %37
  %40 = load %struct.Word*, %struct.Word** %.01.ph, align 8
  %41 = load i64, i64* %0, align 8
  %42 = getelementptr inbounds %struct.Word, %struct.Word* %40, i64 0, i32 0, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %41, %43
  %45 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  store i64 %44, i64* %45, align 16
  %46 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @aqMainSign, i64 0, i64 0), align 16
  %47 = and i64 %44, %46
  %.not9 = icmp eq i64 %47, 0
  br i1 %.not9, label %49, label %48

48:                                               ; preds = %39
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %48, %58, %83
  %.0.ph.be = phi %struct.Word** [ %.1, %83 ], [ %.0, %58 ], [ %.0, %48 ]
  %.01.ph.be = getelementptr inbounds %struct.Word*, %struct.Word** %.01.ph, i64 1
  br label %.outer, !llvm.loop !16

49:                                               ; preds = %39
  %50 = getelementptr inbounds i64, i64* %0, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.Word, %struct.Word* %40, i64 0, i32 0, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %51, %53
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @aqMainSign, i64 0, i64 1), align 8
  %57 = and i64 %54, %56
  %.not10 = icmp eq i64 %57, 0
  br i1 %.not10, label %59, label %58

58:                                               ; preds = %49
  br label %.outer.backedge

59:                                               ; preds = %49
  %60 = zext i32 %14 to i64
  %61 = getelementptr inbounds %struct.Word, %struct.Word* %40, i64 0, i32 0, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = and i64 %62, %28
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.Word*, %struct.Word** %.0, i64 -1
  %67 = load %struct.Word*, %struct.Word** %66, align 8
  store %struct.Word* %67, %struct.Word** %.01.ph, align 8
  store %struct.Word* %40, %struct.Word** %66, align 8
  br label %37, !llvm.loop !16

68:                                               ; preds = %59
  %69 = load i32, i32* @cpwLast, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @cpwLast, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds [51 x %struct.Word*], [51 x %struct.Word*]* @apwSol, i64 0, i64 %71
  store %struct.Word* %40, %struct.Word** %72, align 8
  %73 = getelementptr inbounds %struct.Word, %struct.Word* %40, i64 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @cchPhraseLength, align 4
  %76 = sub i32 %75, %74
  store i32 %76, i32* @cchPhraseLength, align 4
  %.not11 = icmp eq i32 %76, 0
  br i1 %.not11, label %82, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* @cpwCand, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i64 0, i64 %79
  %81 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  call void @FindAnagram(i64* noundef nonnull %81, %struct.Word** noundef nonnull %.01.ph, i32 noundef %.02)
  br label %83

82:                                               ; preds = %68
  call void @DumpWords()
  br label %83

83:                                               ; preds = %82, %77
  %.1 = phi %struct.Word** [ %80, %77 ], [ %.0, %82 ]
  %84 = getelementptr inbounds %struct.Word, %struct.Word* %40, i64 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @cchPhraseLength, align 4
  %87 = add i32 %86, %85
  store i32 %87, i32* @cchPhraseLength, align 4
  %88 = load i32, i32* @cpwLast, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* @cpwLast, align 4
  br label %.outer.backedge

90:                                               ; preds = %37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @CompareFrequency(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #8 {
  %3 = load i8, i8* %0, align 1
  %4 = sext i8 %3 to i64
  %5 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = load i8, i8* %1, align 1
  %8 = sext i8 %7 to i64
  %9 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ult i32 %6, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %35

13:                                               ; preds = %2
  %14 = load i8, i8* %0, align 1
  %15 = sext i8 %14 to i64
  %16 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i8, i8* %1, align 1
  %19 = sext i8 %18 to i64
  %20 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ugt i32 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %35

24:                                               ; preds = %13
  %25 = load i8, i8* %0, align 1
  %26 = load i8, i8* %1, align 1
  %27 = icmp slt i8 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %35

29:                                               ; preds = %24
  %30 = load i8, i8* %0, align 1
  %31 = load i8, i8* %1, align 1
  %32 = icmp sgt i8 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %35

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %33, %28, %23, %12
  %.0 = phi i32 [ -1, %12 ], [ 1, %23 ], [ -1, %28 ], [ 1, %33 ], [ 0, %34 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SortCandidates() #3 {
  br label %1

1:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %2 = icmp ult i32 %.0, 26
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = trunc i32 %.0 to i8
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [26 x i8], [26 x i8]* @achByFrequency, i64 0, i64 %5
  store i8 %4, i8* %6, align 1
  br label %7

7:                                                ; preds = %3
  %8 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !17

9:                                                ; preds = %1
  call void @qsort(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @achByFrequency, i64 0, i64 0), i64 noundef 26, i64 noundef 1, i32 (i8*, i8*)* noundef nonnull @CompareFrequency) #13
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %10) #16
  br label %12

12:                                               ; preds = %22, %9
  %.1 = phi i32 [ 0, %9 ], [ %23, %22 ]
  %13 = icmp ult i32 %.1, 26
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = zext i32 %.1 to i64
  %16 = getelementptr inbounds [26 x i8], [26 x i8]* @achByFrequency, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = add nsw i32 %18, 97
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 @fputc(i32 noundef %19, %struct._IO_FILE* noundef %20) #13
  br label %22

22:                                               ; preds = %14
  %23 = add nuw nsw i32 %.1, 1
  br label %12, !llvm.loop !18

24:                                               ; preds = %12
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %25) #13
  ret void
}

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #1

declare dso_local i32 @fputc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @GetPhrase(i8* noundef returned %0, i32 noundef %1) #3 {
  %3 = load i32, i32* @fInteractive, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  %putchar = call i32 @putchar(i32 62)
  br label %5

5:                                                ; preds = %4, %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = call i32 @fflush(%struct._IO_FILE* noundef %6) #13
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %9 = call i8* @fgets(i8* noundef %0, i32 noundef %1, %struct._IO_FILE* noundef %8) #13
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  call void @exit(i32 noundef 0) #12
  unreachable

12:                                               ; preds = %5
  ret i8* %0
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #3 {
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %5, label %3

3:                                                ; preds = %2
  %.not2 = icmp eq i32 %0, 3
  br i1 %.not2, label %5, label %4

4:                                                ; preds = %3
  call void @Fatal(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i32 noundef 0)
  br label %5

5:                                                ; preds = %4, %3, %2
  %6 = icmp eq i32 %0, 3
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8*, i8** %1, i64 2
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @atoi(i8* noundef %9) #15
  store i32 %10, i32* @cchMinLength, align 4
  br label %11

11:                                               ; preds = %7, %5
  %12 = call i32 @isatty(i32 noundef 1) #13
  store i32 %12, i32* @fInteractive, align 4
  %13 = getelementptr inbounds i8*, i8** %1, i64 1
  %14 = load i8*, i8** %13, align 8
  call void @ReadDict(i8* noundef %14)
  br label %15

15:                                               ; preds = %.backedge, %11
  %16 = call i8* @GetPhrase(i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @achPhrase, i64 0, i64 0), i32 noundef 255)
  br i1 true, label %17, label %46

17:                                               ; preds = %15
  %18 = call i16** @__ctype_b_loc() #14
  %19 = load i16*, i16** %18, align 8
  %20 = load i8, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @achPhrase, i64 0, i64 0), align 16
  %21 = sext i8 %20 to i64
  %22 = getelementptr inbounds i16, i16* %19, i64 %21
  %23 = load i16, i16* %22, align 2
  %24 = and i16 %23, 2048
  %.not1 = icmp eq i16 %24, 0
  br i1 %.not1, label %28, label %25

25:                                               ; preds = %17
  %26 = call i32 @atoi(i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @achPhrase, i64 0, i64 0)) #15
  store i32 %26, i32* @cchMinLength, align 4
  %27 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 noundef %26) #13
  br label %45

28:                                               ; preds = %17
  %29 = load i8, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @achPhrase, i64 0, i64 0), align 16
  %30 = icmp eq i8 %29, 63
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @DumpCandidates()
  br label %44

32:                                               ; preds = %28
  call void @BuildMask(i8* noundef getelementptr inbounds ([255 x i8], [255 x i8]* @achPhrase, i64 0, i64 0))
  call void @AddWords()
  %33 = load i32, i32* @cpwCand, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @cchPhraseLength, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32
  br label %.backedge

.backedge:                                        ; preds = %38, %45
  br label %15, !llvm.loop !19

39:                                               ; preds = %35
  store i32 0, i32* @cpwLast, align 4
  call void @SortCandidates()
  %40 = call i32 @_setjmp(%struct.__jmp_buf_tag* noundef getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @jbAnagram, i64 0, i64 0)) #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  call void @FindAnagram(i64* noundef getelementptr inbounds ([2 x i64], [2 x i64]* @aqMainMask, i64 0, i64 0), %struct.Word** noundef getelementptr inbounds ([5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i64 0, i64 0), i32 noundef 0)
  br label %43

43:                                               ; preds = %42, %39
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %44, %25
  br label %.backedge

46:                                               ; preds = %15
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #7

; Function Attrs: nounwind
declare dso_local i32 @isatty(i32 noundef) #4

; Function Attrs: nounwind returns_twice
declare dso_local i32 @_setjmp(%struct.__jmp_buf_tag* noundef) #9

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #10

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind returns_twice "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { cold }
attributes #17 = { nounwind returns_twice }

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
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
