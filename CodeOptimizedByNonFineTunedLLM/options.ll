; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/treecc/options.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/treecc/options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 (%struct._tagTreeCCContext*, i8*, i32)*, i32 }
%struct._tagTreeCCContext = type { [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCOperation*], %struct.TreeCCInput*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, i16, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct._tagTreeCCNode = type { %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, i8*, i32, i32, i32, i8*, i64, %struct._tagTreeCCField*, %struct._tagTreeCCVirtual*, %struct._tagTreeCCNode*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCField = type { i8*, i8*, i8*, i32, i8*, i64, %struct._tagTreeCCField* }
%struct._tagTreeCCVirtual = type { i8*, i8*, %struct._tagTreeCCParam*, %struct._tagTreeCCOperation*, %struct._tagTreeCCVirtual* }
%struct._tagTreeCCParam = type { i8*, i8*, i32, i32, %struct._tagTreeCCParam* }
%struct._tagTreeCCOperation = type { i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64, %struct._tagTreeCCOperation*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase**, i32, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCOperationCase = type { %struct._tagTreeCCTrigger*, i8*, %struct._tagTreeCCOperation*, i32, i8*, i64, i8*, i64, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase* }
%struct._tagTreeCCTrigger = type { %struct._tagTreeCCNode*, %struct._tagTreeCCTrigger* }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._tagTreeCCStream = type { %struct._tagTreeCCContext*, i8*, i8*, i64, %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf*, i32, i8, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStream* }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], %struct._tagTreeCCStreamBuf* }
%struct._tagTreeCCStreamDefn = type { i8*, i8*, i64, i32, i32, %struct._tagTreeCCStreamDefn* }

@OptionHandlers = internal constant [33 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @TrackLinesOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @TrackLinesOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @NoSingletonsOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @NoSingletonsOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @ReentrantOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @ReentrantOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @ForceOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @ForceOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @VirtualFactoryOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @VirtualFactoryOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @AbstractFactoryOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @AbstractFactoryOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @KindInVtableOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @KindInVtableOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @PrefixOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @StateTypeOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @NamespaceOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @NamespaceOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @BaseOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @LangOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @BlockSizeOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @StripFilenamesOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @PrintLineNumberOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @PrintLineNumberOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @StripFilenamesOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @InternalAccessOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @InternalAccessOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @AllocatorOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @AllocatorOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @GCAllocatorOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @GCAllocatorOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @BaseTypeOption, i32 0 }, %struct.anon zeroinitializer], align 16
@.str = private unnamed_addr constant [12 x i8] c"track_lines\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"no_track_lines\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"no_singletons\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"singletons\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"reentrant\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"no_reentrant\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"no_force\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"virtual_factory\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"no_virtual_factory\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"abstract_factory\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"no_abstract_factory\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"kind_in_vtable\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"kind_in_node\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"state_type\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"lang\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"block_size\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"strip_filenames\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"print_lines\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"no_print_lines\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"no_strip_filenames\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"internal_access\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"public_access\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"allocator\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"no_allocator\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"gc_allocator\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"no_gc_allocator\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"base_type\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"c++\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"C++\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"java\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Java\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"c#\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"C#\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"csharp\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"ruby\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"Ruby\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"php\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"PHP\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @TreeCCOptionProcess(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %39, %3
  %10 = load i32, i32* %8, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @OptionHandlers, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %9
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @OptionHandlers, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strcmp(i8* noundef %17, i8* noundef %22) #2
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @OptionHandlers, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 1
  %30 = load i32 (%struct._tagTreeCCContext*, i8*, i32)*, i32 (%struct._tagTreeCCContext*, i8*, i32)** %29, align 8
  %31 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @OptionHandlers, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %30(%struct._tagTreeCCContext* noundef %31, i8* noundef %32, i32 noundef %37)
  store i32 %38, i32* %4, align 4
  br label %43

39:                                               ; preds = %16
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %9, !llvm.loop !4

42:                                               ; preds = %9
  store i32 2, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @TrackLinesOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 5, i32* %4, align 4
  br label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 8
  %15 = trunc i32 %12 to i16
  %16 = load i16, i16* %14, align 8
  %17 = and i16 %15, 1
  %18 = shl i16 %17, 1
  %19 = and i16 %16, -3
  %20 = or i16 %19, %18
  store i16 %20, i16* %14, align 8
  %21 = shl i16 %17, 15
  %22 = ashr i16 %21, 15
  %23 = sext i16 %22 to i32
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NoSingletonsOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 5, i32* %4, align 4
  br label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 8
  %15 = trunc i32 %12 to i16
  %16 = load i16, i16* %14, align 8
  %17 = and i16 %15, 1
  %18 = shl i16 %17, 2
  %19 = and i16 %16, -5
  %20 = or i16 %19, %18
  store i16 %20, i16* %14, align 8
  %21 = shl i16 %17, 15
  %22 = ashr i16 %21, 15
  %23 = sext i16 %22 to i32
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ReentrantOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 5, i32* %4, align 4
  br label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 8
  %15 = trunc i32 %12 to i16
  %16 = load i16, i16* %14, align 8
  %17 = and i16 %15, 1
  %18 = shl i16 %17, 3
  %19 = and i16 %16, -9
  %20 = or i16 %19, %18
  store i16 %20, i16* %14, align 8
  %21 = shl i16 %17, 15
  %22 = ashr i16 %21, 15
  %23 = sext i16 %22 to i32
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ForceOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 5, i32* %4, align 4
  br label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 8
  %15 = trunc i32 %12 to i16
  %16 = load i16, i16* %14, align 8
  %17 = and i16 %15, 1
  %18 = shl i16 %17, 4
  %19 = and i16 %16, -17
  %20 = or i16 %19, %18
  store i16 %20, i16* %14, align 8
  %21 = shl i16 %17, 15
  %22 = ashr i16 %21, 15
  %23 = sext i16 %22 to i32
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @VirtualFactoryOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 5, i32* %4, align 4
  br label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 8
  %15 = trunc i32 %12 to i16
  %16 = load i16, i16* %14, align 8
  %17 = and i16 %15, 1
  %18 = shl i16 %17, 5
  %19 = and i16 %16, -33
  %20 = or i16 %19, %18
  store i16 %20, i16* %14, align 8
  %21 = shl i16 %17, 15
  %22 = ashr i16 %21, 15
  %23 = sext i16 %22 to i32
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @AbstractFactoryOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 5, i32* %4, align 4
  br label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 8
  %15 = trunc i32 %12 to i16
  %16 = load i16, i16* %14, align 8
  %17 = and i16 %15, 1
  %18 = shl i16 %17, 6
  %19 = and i16 %16, -65
  %20 = or i16 %19, %18
  store i16 %20, i16* %14, align 8
  %21 = shl i16 %17, 15
  %22 = ashr i16 %21, 15
  %23 = sext i16 %22 to i32
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @KindInVtableOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 5, i32* %4, align 4
  br label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 8
  %15 = trunc i32 %12 to i16
  %16 = load i16, i16* %14, align 8
  %17 = and i16 %15, 1
  %18 = shl i16 %17, 7
  %19 = and i16 %16, -129
  %20 = or i16 %19, %18
  store i16 %20, i16* %14, align 8
  %21 = shl i16 %17, 15
  %22 = ashr i16 %21, 15
  %23 = sext i16 %22 to i32
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @PrefixOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 4, i32* %4, align 4
  br label %15

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 9
  store i8* %12, i8** %14, align 8
  store i32 1, i32* %4, align 4
  br label %15

15:                                               ; preds = %11, %10
  %16 = load i32, i32* %4, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @StateTypeOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 4, i32* %4, align 4
  br label %15

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 10
  store i8* %12, i8** %14, align 8
  store i32 1, i32* %4, align 4
  br label %15

15:                                               ; preds = %11, %10
  %16 = load i32, i32* %4, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NamespaceOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 4, i32* %4, align 4
  br label %23

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %18 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %17, i32 0, i32 11
  store i8* null, i8** %18, align 8
  store i32 0, i32* %4, align 4
  br label %23

19:                                               ; preds = %11
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %22 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %21, i32 0, i32 11
  store i8* %20, i8** %22, align 8
  store i32 1, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %16, %10
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @BaseOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 4, i32* %4, align 4
  br label %51

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 3, i32* %4, align 4
  br label %51

18:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sge i32 %22, 48
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sle i32 %27, 57
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %41

31:                                               ; preds = %29
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 10
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = sub nsw i32 %36, 48
  %38 = add nsw i32 %33, %37
  store i32 %38, i32* %8, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  br label %19, !llvm.loop !6

41:                                               ; preds = %29
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 3, i32* %4, align 4
  br label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %50 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %49, i32 0, i32 12
  store i32 %48, i32* %50, align 8
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %46, %17, %11
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LangOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 4, i32* %4, align 4
  br label %88

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @strcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #2
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strcmp(i8* noundef %16, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #2
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %11
  %20 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %21 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %20, i32 0, i32 13
  store i32 0, i32* %21, align 4
  br label %87

22:                                               ; preds = %15
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strcmp(i8* noundef %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #2
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strcmp(i8* noundef %27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0)) #2
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %22
  %31 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %32 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %31, i32 0, i32 13
  store i32 1, i32* %32, align 4
  br label %86

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strcmp(i8* noundef %34, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)) #2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strcmp(i8* noundef %38, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0)) #2
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37, %33
  %42 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %43 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %42, i32 0, i32 13
  store i32 2, i32* %43, align 4
  br label %85

44:                                               ; preds = %37
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strcmp(i8* noundef %45, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0)) #2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strcmp(i8* noundef %49, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0)) #2
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @strcmp(i8* noundef %53, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #2
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52, %48, %44
  %57 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %58 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %57, i32 0, i32 13
  store i32 3, i32* %58, align 4
  br label %84

59:                                               ; preds = %52
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @strcmp(i8* noundef %60, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0)) #2
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @strcmp(i8* noundef %64, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #2
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63, %59
  %68 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %69 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %68, i32 0, i32 13
  store i32 4, i32* %69, align 4
  br label %83

70:                                               ; preds = %63
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @strcmp(i8* noundef %71, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0)) #2
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @strcmp(i8* noundef %75, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0)) #2
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74, %70
  %79 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %80 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %79, i32 0, i32 13
  store i32 5, i32* %80, align 4
  br label %82

81:                                               ; preds = %74
  store i32 3, i32* %4, align 4
  br label %88

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %82, %67
  br label %84

84:                                               ; preds = %83, %56
  br label %85

85:                                               ; preds = %84, %41
  br label %86

86:                                               ; preds = %85, %30
  br label %87

87:                                               ; preds = %86, %19
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %81, %10
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @BlockSizeOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 4, i32* %4, align 4
  br label %51

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 3, i32* %4, align 4
  br label %51

18:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sge i32 %22, 48
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sle i32 %27, 57
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %41

31:                                               ; preds = %29
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 10
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = sub nsw i32 %36, 48
  %38 = add nsw i32 %33, %37
  store i32 %38, i32* %8, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  br label %19, !llvm.loop !7

41:                                               ; preds = %29
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 3, i32* %4, align 4
  br label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %50 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %49, i32 0, i32 14
  store i32 %48, i32* %50, align 8
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %46, %17, %11
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @StripFilenamesOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 5, i32* %4, align 4
  br label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 8
  %15 = trunc i32 %12 to i16
  %16 = load i16, i16* %14, align 8
  %17 = and i16 %15, 1
  %18 = shl i16 %17, 8
  %19 = and i16 %16, -257
  %20 = or i16 %19, %18
  store i16 %20, i16* %14, align 8
  %21 = shl i16 %17, 15
  %22 = ashr i16 %21, 15
  %23 = sext i16 %22 to i32
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @PrintLineNumberOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 5, i32* %4, align 4
  br label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 8
  %15 = trunc i32 %12 to i16
  %16 = load i16, i16* %14, align 8
  %17 = and i16 %15, 1
  %18 = shl i16 %17, 9
  %19 = and i16 %16, -513
  %20 = or i16 %19, %18
  store i16 %20, i16* %14, align 8
  %21 = shl i16 %17, 15
  %22 = ashr i16 %21, 15
  %23 = sext i16 %22 to i32
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @InternalAccessOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 5, i32* %4, align 4
  br label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 8
  %15 = trunc i32 %12 to i16
  %16 = load i16, i16* %14, align 8
  %17 = and i16 %15, 1
  %18 = shl i16 %17, 10
  %19 = and i16 %16, -1025
  %20 = or i16 %19, %18
  store i16 %20, i16* %14, align 8
  %21 = shl i16 %17, 15
  %22 = ashr i16 %21, 15
  %23 = sext i16 %22 to i32
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @AllocatorOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 5, i32* %4, align 4
  br label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 8
  %15 = trunc i32 %12 to i16
  %16 = load i16, i16* %14, align 8
  %17 = and i16 %15, 1
  %18 = shl i16 %17, 11
  %19 = and i16 %16, -2049
  %20 = or i16 %19, %18
  store i16 %20, i16* %14, align 8
  %21 = shl i16 %17, 15
  %22 = ashr i16 %21, 15
  %23 = sext i16 %22 to i32
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GCAllocatorOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 5, i32* %4, align 4
  br label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 8
  %15 = trunc i32 %12 to i16
  %16 = load i16, i16* %14, align 8
  %17 = and i16 %15, 1
  %18 = shl i16 %17, 12
  %19 = and i16 %16, -4097
  %20 = or i16 %19, %18
  store i16 %20, i16* %14, align 8
  %21 = shl i16 %17, 15
  %22 = ashr i16 %21, 15
  %23 = sext i16 %22 to i32
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @BaseTypeOption(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._tagTreeCCContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 4, i32* %4, align 4
  br label %21

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %16 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %15, i32 0, i32 16
  store i8* null, i8** %16, align 8
  store i32 0, i32* %4, align 4
  br label %21

17:                                               ; preds = %11
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %5, align 8
  %20 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %19, i32 0, i32 16
  store i8* %18, i8** %20, align 8
  store i32 1, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %14, %10
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn }

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
