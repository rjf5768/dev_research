; ModuleID = './trie.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/15-trie/trie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.trie = type { i8, i32, i8*, %struct.trie*, %struct.trie* }
%struct.TrieRoot = type { %struct.trie* }
%struct.SString = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Usage: %s <sourcefile>\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.trie* @tAlloc() #0 {
  %1 = call noalias dereferenceable_or_null(32) i8* @calloc(i64 noundef 1, i64 noundef 32) #6
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #7
  unreachable

4:                                                ; preds = %0
  %5 = bitcast i8* %1 to %struct.trie*
  ret %struct.trie* %5
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.trie* @tNew(i8 noundef signext %0) #0 {
  %2 = call %struct.trie* @tAlloc()
  %3 = getelementptr inbounds %struct.trie, %struct.trie* %2, i64 0, i32 0
  store i8 %0, i8* %3, align 8
  %4 = getelementptr inbounds %struct.trie, %struct.trie* %2, i64 0, i32 1
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.trie, %struct.trie* %2, i64 0, i32 2
  store i8* null, i8** %5, align 8
  %6 = getelementptr inbounds %struct.trie, %struct.trie* %2, i64 0, i32 4
  store %struct.trie* null, %struct.trie** %6, align 8
  %7 = getelementptr inbounds %struct.trie, %struct.trie* %2, i64 0, i32 3
  store %struct.trie* null, %struct.trie** %7, align 8
  ret %struct.trie* %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @insertWord(%struct.TrieRoot* nocapture noundef %0, i8* noundef %1) #0 {
  %3 = load i8, i8* %1, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.TrieRoot, %struct.TrieRoot* %0, i64 0, i32 0
  %8 = load %struct.trie*, %struct.trie** %7, align 8
  %9 = icmp eq %struct.trie* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = call %struct.trie* @insertRestOfWord(i8* noundef nonnull %1)
  %12 = getelementptr inbounds %struct.TrieRoot, %struct.TrieRoot* %0, i64 0, i32 0
  store %struct.trie* %11, %struct.trie** %12, align 8
  br label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.TrieRoot, %struct.TrieRoot* %0, i64 0, i32 0
  %15 = load %struct.trie*, %struct.trie** %14, align 8
  call void @insertW(%struct.trie* noundef %15, i8* noundef nonnull %1)
  br label %16

16:                                               ; preds = %13, %10
  br label %17

17:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.trie* @insertRestOfWord(i8* nocapture noundef readonly %0) #0 {
  %2 = load i8, i8* %0, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %16

5:                                                ; preds = %1
  %6 = load i8, i8* %0, align 1
  %7 = call %struct.trie* @tNew(i8 noundef signext %6)
  %8 = getelementptr inbounds i8, i8* %0, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.trie, %struct.trie* %7, i64 0, i32 1
  store i32 -1, i32* %12, align 4
  br label %16

13:                                               ; preds = %5
  %14 = call %struct.trie* @insertRestOfWord(i8* noundef nonnull %8)
  %15 = getelementptr inbounds %struct.trie, %struct.trie* %7, i64 0, i32 3
  store %struct.trie* %14, %struct.trie** %15, align 8
  br label %16

16:                                               ; preds = %13, %11, %4
  %.0 = phi %struct.trie* [ undef, %4 ], [ %7, %11 ], [ %7, %13 ]
  ret %struct.trie* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @insertW(%struct.trie* noundef %0, i8* noundef %1) #0 {
  %3 = icmp eq %struct.trie* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  call void @abort() #7
  unreachable

5:                                                ; preds = %2
  %6 = load i8, i8* %1, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %42

9:                                                ; preds = %5
  %10 = load i8, i8* %1, align 1
  %11 = getelementptr inbounds %struct.trie, %struct.trie* %0, i64 0, i32 0
  %12 = load i8, i8* %11, align 8
  %13 = icmp eq i8 %10, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, i8* %1, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.trie, %struct.trie* %0, i64 0, i32 1
  store i32 -1, i32* %19, align 4
  br label %42

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.trie, %struct.trie* %0, i64 0, i32 3
  %22 = load %struct.trie*, %struct.trie** %21, align 8
  %23 = icmp eq %struct.trie* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, i8* %1, i64 1
  %26 = call %struct.trie* @insertRestOfWord(i8* noundef nonnull %25)
  %27 = getelementptr inbounds %struct.trie, %struct.trie* %0, i64 0, i32 3
  store %struct.trie* %26, %struct.trie** %27, align 8
  br label %42

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.trie, %struct.trie* %0, i64 0, i32 3
  %30 = load %struct.trie*, %struct.trie** %29, align 8
  %31 = getelementptr inbounds i8, i8* %1, i64 1
  call void @insertW(%struct.trie* noundef %30, i8* noundef nonnull %31)
  br label %42

32:                                               ; preds = %9
  %33 = getelementptr inbounds %struct.trie, %struct.trie* %0, i64 0, i32 4
  %34 = load %struct.trie*, %struct.trie** %33, align 8
  %35 = icmp eq %struct.trie* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = call %struct.trie* @insertRestOfWord(i8* noundef nonnull %1)
  %38 = getelementptr inbounds %struct.trie, %struct.trie* %0, i64 0, i32 4
  store %struct.trie* %37, %struct.trie** %38, align 8
  br label %42

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.trie, %struct.trie* %0, i64 0, i32 4
  %41 = load %struct.trie*, %struct.trie** %40, align 8
  call void @insertW(%struct.trie* noundef %41, i8* noundef nonnull %1)
  br label %42

42:                                               ; preds = %39, %36, %28, %24, %18, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @insertChar(%struct.SString* noundef %0, i8 noundef signext %1) #0 {
  %3 = icmp eq %struct.SString* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  call void @abort() #7
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = call noalias dereferenceable_or_null(2) i8* @calloc(i64 noundef 1, i64 noundef 2) #6
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #7
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 0
  store i8* %10, i8** %14, align 8
  %15 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 1
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 2
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %13
  br label %45

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = shl nsw i32 %26, 1
  %28 = or i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %29) #6
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  call void @abort() #7
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @strcpy(i8* noundef nonnull %30, i8* noundef nonnull dereferenceable(1) %35) #6
  %37 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 0
  %38 = load i8*, i8** %37, align 8
  call void @free(i8* noundef %38) #6
  %39 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = shl nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %18
  br label %45

45:                                               ; preds = %44, %17
  %46 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  store i8 %1, i8* %52, align 1
  %53 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %45
  ret void

UnifiedUnreachableBlock:                          ; preds = %32, %12, %4
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @deleteChar(%struct.SString* noundef %0) #0 {
  %2 = icmp eq %struct.SString* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  call void @abort() #7
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  call void @abort() #7
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.SString, %struct.SString* %0, i64 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  store i8 0, i8* %20, align 1
  br label %22

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %21, %13
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  ret void

UnifiedUnreachableBlock:                          ; preds = %8, %3
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printT(%struct.TrieRoot* noundef readonly %0) #0 {
  %2 = call %struct.SString* @ssInit()
  %3 = icmp eq %struct.TrieRoot* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @abort() #7
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TrieRoot, %struct.TrieRoot* %0, i64 0, i32 0
  %7 = load %struct.trie*, %struct.trie** %6, align 8
  call void @printTheRest(%struct.trie* noundef %7, %struct.SString* noundef %2)
  br label %8

8:                                                ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.SString* @ssInit() #0 {
  %1 = call noalias dereferenceable_or_null(16) i8* @calloc(i64 noundef 1, i64 noundef 16) #6
  %2 = bitcast i8* %1 to %struct.SString*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #7
  unreachable

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.SString, %struct.SString* %2, i64 0, i32 0
  store i8* null, i8** %6, align 8
  %7 = getelementptr inbounds %struct.SString, %struct.SString* %2, i64 0, i32 1
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds %struct.SString, %struct.SString* %2, i64 0, i32 2
  store i32 0, i32* %8, align 4
  ret %struct.SString* %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printTheRest(%struct.trie* noundef readonly %0, %struct.SString* noundef %1) #0 {
  %3 = icmp eq %struct.trie* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %20

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.trie, %struct.trie* %0, i64 0, i32 0
  %7 = load i8, i8* %6, align 8
  call void @insertChar(%struct.SString* noundef %1, i8 noundef signext %7)
  %8 = getelementptr inbounds %struct.trie, %struct.trie* %0, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.SString, %struct.SString* %1, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) %13)
  br label %15

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14, %11
  %16 = getelementptr inbounds %struct.trie, %struct.trie* %0, i64 0, i32 3
  %17 = load %struct.trie*, %struct.trie** %16, align 8
  call void @printTheRest(%struct.trie* noundef %17, %struct.SString* noundef %1)
  call void @deleteChar(%struct.SString* noundef %1)
  %18 = getelementptr inbounds %struct.trie, %struct.trie* %0, i64 0, i32 4
  %19 = load %struct.trie*, %struct.trie** %18, align 8
  call void @printTheRest(%struct.trie* noundef %19, %struct.SString* noundef %1)
  br label %20

20:                                               ; preds = %15, %4
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.TrieRoot* @trInit() #0 {
  %1 = call noalias dereferenceable_or_null(8) i8* @calloc(i64 noundef 1, i64 noundef 8) #6
  %2 = bitcast i8* %1 to %struct.TrieRoot*
  %3 = getelementptr inbounds %struct.TrieRoot, %struct.TrieRoot* %2, i64 0, i32 0
  store %struct.trie* null, %struct.trie** %3, align 8
  ret %struct.TrieRoot* %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca [1000 x i8], align 16
  %4 = call %struct.TrieRoot* @trInit()
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %9, label %5

5:                                                ; preds = %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* noundef %7) #6
  br label %36

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = call noalias %struct._IO_FILE* @fopen(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6
  %.not2 = icmp eq %struct._IO_FILE* %12, null
  br i1 %.not2, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8*, i8** %1, i64 1
  %15 = load i8*, i8** %14, align 8
  call void @perror(i8* noundef %15) #8
  br label %36

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %33, %16
  %.01 = phi i64 [ 0, %16 ], [ %29, %33 ]
  %18 = call i32 @feof(%struct._IO_FILE* noundef nonnull %12) #6
  %.not3 = icmp eq i32 %18, 0
  br i1 %.not3, label %19, label %.loopexit

19:                                               ; preds = %17
  %20 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %12, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %20) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %34

24:                                               ; preds = %19
  %25 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %26 = call i64 @strlen(i8* noundef nonnull %25) #9
  %sext = shl i64 %.01, 32
  %27 = ashr exact i64 %sext, 32
  %28 = add i64 %26, %27
  %29 = add i64 %28, 1
  %sext4 = shl i64 %29, 32
  %30 = ashr exact i64 %sext4, 32
  %31 = call i32 @fseek(%struct._IO_FILE* noundef nonnull %12, i64 noundef %30, i32 noundef 0) #6
  %32 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  call void @insertWord(%struct.TrieRoot* noundef %4, i8* noundef nonnull %32)
  br label %33

33:                                               ; preds = %24
  br label %17, !llvm.loop !4

.loopexit:                                        ; preds = %17
  br label %34

34:                                               ; preds = %.loopexit, %23
  %35 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %12) #6
  call void @printT(%struct.TrieRoot* noundef %4)
  br label %36

36:                                               ; preds = %34, %13, %5
  %.0 = phi i32 [ 1, %5 ], [ 0, %34 ], [ 1, %13 ]
  ret i32 %.0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare dso_local void @perror(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
