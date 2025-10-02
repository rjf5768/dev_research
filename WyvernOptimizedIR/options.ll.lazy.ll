; ModuleID = './options.ll'
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
define dso_local i32 @TreeCCOptionProcess(%struct._tagTreeCCContext* noundef %0, i8* noundef readonly %1, i8* noundef %2) #0 {
  br label %4

4:                                                ; preds = %18, %3
  %.01 = phi i32 [ 0, %3 ], [ %19, %18 ]
  %.not = icmp eq i32 %.01, 32
  br i1 %.not, label %20, label %5

5:                                                ; preds = %4
  %6 = zext i32 %.01 to i64
  %7 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @OptionHandlers, i64 0, i64 %6, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) %8) #6
  %.not3 = icmp eq i32 %9, 0
  br i1 %.not3, label %10, label %18

10:                                               ; preds = %5
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @OptionHandlers, i64 0, i64 %11, i32 1
  %13 = load i32 (%struct._tagTreeCCContext*, i8*, i32)*, i32 (%struct._tagTreeCCContext*, i8*, i32)** %12, align 8
  %14 = zext i32 %.01 to i64
  %15 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @OptionHandlers, i64 0, i64 %14, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 %13(%struct._tagTreeCCContext* noundef %0, i8* noundef %2, i32 noundef %16) #7
  br label %21

18:                                               ; preds = %5
  %19 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !4

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %20, %10
  %.0 = phi i32 [ %17, %10 ], [ 2, %20 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @TrackLinesOption(%struct._tagTreeCCContext* nocapture noundef %0, i8* noundef readnone %1, i32 noundef %2) #2 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  br label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, i16* %6, align 8
  %9 = shl i16 %7, 1
  %10 = and i16 %9, 2
  %11 = and i16 %8, -3
  %12 = or i16 %11, %10
  store i16 %12, i16* %6, align 8
  br label %13

13:                                               ; preds = %5, %4
  %.0 = phi i32 [ 5, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @NoSingletonsOption(%struct._tagTreeCCContext* nocapture noundef %0, i8* noundef readnone %1, i32 noundef %2) #2 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  br label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, i16* %6, align 8
  %9 = shl i16 %7, 2
  %10 = and i16 %9, 4
  %11 = and i16 %8, -5
  %12 = or i16 %11, %10
  store i16 %12, i16* %6, align 8
  br label %13

13:                                               ; preds = %5, %4
  %.0 = phi i32 [ 5, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @ReentrantOption(%struct._tagTreeCCContext* nocapture noundef %0, i8* noundef readnone %1, i32 noundef %2) #2 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  br label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, i16* %6, align 8
  %9 = shl i16 %7, 3
  %10 = and i16 %9, 8
  %11 = and i16 %8, -9
  %12 = or i16 %11, %10
  store i16 %12, i16* %6, align 8
  br label %13

13:                                               ; preds = %5, %4
  %.0 = phi i32 [ 5, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @ForceOption(%struct._tagTreeCCContext* nocapture noundef %0, i8* noundef readnone %1, i32 noundef %2) #2 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  br label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, i16* %6, align 8
  %9 = shl i16 %7, 4
  %10 = and i16 %9, 16
  %11 = and i16 %8, -17
  %12 = or i16 %11, %10
  store i16 %12, i16* %6, align 8
  br label %13

13:                                               ; preds = %5, %4
  %.0 = phi i32 [ 5, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @VirtualFactoryOption(%struct._tagTreeCCContext* nocapture noundef %0, i8* noundef readnone %1, i32 noundef %2) #2 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  br label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, i16* %6, align 8
  %9 = shl i16 %7, 5
  %10 = and i16 %9, 32
  %11 = and i16 %8, -33
  %12 = or i16 %11, %10
  store i16 %12, i16* %6, align 8
  br label %13

13:                                               ; preds = %5, %4
  %.0 = phi i32 [ 5, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @AbstractFactoryOption(%struct._tagTreeCCContext* nocapture noundef %0, i8* noundef readnone %1, i32 noundef %2) #2 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  br label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, i16* %6, align 8
  %9 = shl i16 %7, 6
  %10 = and i16 %9, 64
  %11 = and i16 %8, -65
  %12 = or i16 %11, %10
  store i16 %12, i16* %6, align 8
  br label %13

13:                                               ; preds = %5, %4
  %.0 = phi i32 [ 5, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @KindInVtableOption(%struct._tagTreeCCContext* nocapture noundef %0, i8* noundef readnone %1, i32 noundef %2) #2 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  br label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, i16* %6, align 8
  %9 = shl i16 %7, 7
  %10 = and i16 %9, 128
  %11 = and i16 %8, -129
  %12 = or i16 %11, %10
  store i16 %12, i16* %6, align 8
  br label %13

13:                                               ; preds = %5, %4
  %.0 = phi i32 [ 5, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @PrefixOption(%struct._tagTreeCCContext* nocapture noundef writeonly %0, i8* noundef %1, i32 noundef %2) #3 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %3
  br label %7

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 9
  store i8* %1, i8** %6, align 8
  br label %7

7:                                                ; preds = %5, %4
  %.0 = phi i32 [ 1, %5 ], [ 4, %4 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @StateTypeOption(%struct._tagTreeCCContext* nocapture noundef writeonly %0, i8* noundef %1, i32 noundef %2) #3 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %3
  br label %7

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 10
  store i8* %1, i8** %6, align 8
  br label %7

7:                                                ; preds = %5, %4
  %.0 = phi i32 [ 1, %5 ], [ 4, %4 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @NamespaceOption(%struct._tagTreeCCContext* nocapture noundef writeonly %0, i8* noundef %1, i32 noundef %2) #2 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %3
  br label %12

5:                                                ; preds = %3
  %6 = load i8, i8* %1, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 11
  store i8* null, i8** %9, align 8
  br label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 11
  store i8* %1, i8** %11, align 8
  br label %12

12:                                               ; preds = %10, %8, %4
  %.0 = phi i32 [ 0, %8 ], [ 1, %10 ], [ 4, %4 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @BaseOption(%struct._tagTreeCCContext* nocapture noundef writeonly %0, i8* noundef readonly %1, i32 noundef %2) #4 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %3
  br label %30

5:                                                ; preds = %3
  %6 = load i8, i8* %1, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %30

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %18, %9
  %.02 = phi i8* [ %1, %9 ], [ %24, %18 ]
  %.01 = phi i32 [ 0, %9 ], [ %23, %18 ]
  %11 = load i8, i8* %.02, align 1
  %12 = icmp sgt i8 %11, 47
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i8, i8* %.02, align 1
  %15 = icmp slt i8 %14, 58
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br i1 %17, label %18, label %25

18:                                               ; preds = %16
  %19 = mul nsw i32 %.01, 10
  %20 = load i8, i8* %.02, align 1
  %21 = sext i8 %20 to i32
  %22 = add nsw i32 %21, -48
  %23 = add nsw i32 %19, %22
  %24 = getelementptr inbounds i8, i8* %.02, i64 1
  br label %10, !llvm.loop !6

25:                                               ; preds = %16
  %26 = load i8, i8* %.02, align 1
  %.not3 = icmp eq i8 %26, 0
  br i1 %.not3, label %28, label %27

27:                                               ; preds = %25
  br label %30

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 12
  store i32 %.01, i32* %29, align 8
  br label %30

30:                                               ; preds = %28, %27, %8, %4
  %.0 = phi i32 [ 3, %8 ], [ 3, %27 ], [ 0, %28 ], [ 4, %4 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @LangOption(%struct._tagTreeCCContext* nocapture noundef writeonly %0, i8* noundef readonly %1, i32 noundef %2) #5 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %3
  br label %50

5:                                                ; preds = %3
  %6 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #6
  %.not1 = icmp eq i32 %6, 0
  br i1 %.not1, label %9, label %7

7:                                                ; preds = %5
  %8 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #6
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %9, label %11

9:                                                ; preds = %7, %5
  %10 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 13
  store i32 0, i32* %10, align 4
  br label %49

11:                                               ; preds = %7
  %12 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #6
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %15, label %13

13:                                               ; preds = %11
  %14 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0)) #6
  %.not4 = icmp eq i32 %14, 0
  br i1 %.not4, label %15, label %17

15:                                               ; preds = %13, %11
  %16 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 13
  store i32 1, i32* %16, align 4
  br label %48

17:                                               ; preds = %13
  %18 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)) #6
  %.not5 = icmp eq i32 %18, 0
  br i1 %.not5, label %21, label %19

19:                                               ; preds = %17
  %20 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0)) #6
  %.not6 = icmp eq i32 %20, 0
  br i1 %.not6, label %21, label %23

21:                                               ; preds = %19, %17
  %22 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 13
  store i32 2, i32* %22, align 4
  br label %47

23:                                               ; preds = %19
  %24 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0)) #6
  %.not7 = icmp eq i32 %24, 0
  br i1 %.not7, label %29, label %25

25:                                               ; preds = %23
  %26 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0)) #6
  %.not8 = icmp eq i32 %26, 0
  br i1 %.not8, label %29, label %27

27:                                               ; preds = %25
  %28 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #6
  %.not9 = icmp eq i32 %28, 0
  br i1 %.not9, label %29, label %31

29:                                               ; preds = %27, %25, %23
  %30 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 13
  store i32 3, i32* %30, align 4
  br label %46

31:                                               ; preds = %27
  %32 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0)) #6
  %.not10 = icmp eq i32 %32, 0
  br i1 %.not10, label %35, label %33

33:                                               ; preds = %31
  %34 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #6
  %.not11 = icmp eq i32 %34, 0
  br i1 %.not11, label %35, label %37

35:                                               ; preds = %33, %31
  %36 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 13
  store i32 4, i32* %36, align 4
  br label %45

37:                                               ; preds = %33
  %38 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0)) #6
  %.not12 = icmp eq i32 %38, 0
  br i1 %.not12, label %41, label %39

39:                                               ; preds = %37
  %40 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0)) #6
  %.not13 = icmp eq i32 %40, 0
  br i1 %.not13, label %41, label %43

41:                                               ; preds = %39, %37
  %42 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 13
  store i32 5, i32* %42, align 4
  br label %44

43:                                               ; preds = %39
  br label %50

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %35
  br label %46

46:                                               ; preds = %45, %29
  br label %47

47:                                               ; preds = %46, %21
  br label %48

48:                                               ; preds = %47, %15
  br label %49

49:                                               ; preds = %48, %9
  br label %50

50:                                               ; preds = %49, %43, %4
  %.0 = phi i32 [ 3, %43 ], [ 0, %49 ], [ 4, %4 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @BlockSizeOption(%struct._tagTreeCCContext* nocapture noundef writeonly %0, i8* noundef readonly %1, i32 noundef %2) #4 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %3
  br label %30

5:                                                ; preds = %3
  %6 = load i8, i8* %1, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %30

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %18, %9
  %.02 = phi i8* [ %1, %9 ], [ %24, %18 ]
  %.01 = phi i32 [ 0, %9 ], [ %23, %18 ]
  %11 = load i8, i8* %.02, align 1
  %12 = icmp sgt i8 %11, 47
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i8, i8* %.02, align 1
  %15 = icmp slt i8 %14, 58
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br i1 %17, label %18, label %25

18:                                               ; preds = %16
  %19 = mul nsw i32 %.01, 10
  %20 = load i8, i8* %.02, align 1
  %21 = sext i8 %20 to i32
  %22 = add nsw i32 %21, -48
  %23 = add nsw i32 %19, %22
  %24 = getelementptr inbounds i8, i8* %.02, i64 1
  br label %10, !llvm.loop !7

25:                                               ; preds = %16
  %26 = load i8, i8* %.02, align 1
  %.not3 = icmp eq i8 %26, 0
  br i1 %.not3, label %28, label %27

27:                                               ; preds = %25
  br label %30

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 14
  store i32 %.01, i32* %29, align 8
  br label %30

30:                                               ; preds = %28, %27, %8, %4
  %.0 = phi i32 [ 3, %8 ], [ 3, %27 ], [ 0, %28 ], [ 4, %4 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @StripFilenamesOption(%struct._tagTreeCCContext* nocapture noundef %0, i8* noundef readnone %1, i32 noundef %2) #2 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  br label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, i16* %6, align 8
  %9 = shl i16 %7, 8
  %10 = and i16 %9, 256
  %11 = and i16 %8, -257
  %12 = or i16 %11, %10
  store i16 %12, i16* %6, align 8
  br label %13

13:                                               ; preds = %5, %4
  %.0 = phi i32 [ 5, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @PrintLineNumberOption(%struct._tagTreeCCContext* nocapture noundef %0, i8* noundef readnone %1, i32 noundef %2) #2 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  br label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, i16* %6, align 8
  %9 = shl i16 %7, 9
  %10 = and i16 %9, 512
  %11 = and i16 %8, -513
  %12 = or i16 %11, %10
  store i16 %12, i16* %6, align 8
  br label %13

13:                                               ; preds = %5, %4
  %.0 = phi i32 [ 5, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @InternalAccessOption(%struct._tagTreeCCContext* nocapture noundef %0, i8* noundef readnone %1, i32 noundef %2) #2 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  br label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, i16* %6, align 8
  %9 = shl i16 %7, 10
  %10 = and i16 %9, 1024
  %11 = and i16 %8, -1025
  %12 = or i16 %11, %10
  store i16 %12, i16* %6, align 8
  br label %13

13:                                               ; preds = %5, %4
  %.0 = phi i32 [ 5, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @AllocatorOption(%struct._tagTreeCCContext* nocapture noundef %0, i8* noundef readnone %1, i32 noundef %2) #2 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  br label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, i16* %6, align 8
  %9 = shl i16 %7, 11
  %10 = and i16 %9, 2048
  %11 = and i16 %8, -2049
  %12 = or i16 %11, %10
  store i16 %12, i16* %6, align 8
  br label %13

13:                                               ; preds = %5, %4
  %.0 = phi i32 [ 5, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @GCAllocatorOption(%struct._tagTreeCCContext* nocapture noundef %0, i8* noundef readnone %1, i32 noundef %2) #2 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  br label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, i16* %6, align 8
  %9 = shl i16 %7, 12
  %10 = and i16 %9, 4096
  %11 = and i16 %8, -4097
  %12 = or i16 %11, %10
  store i16 %12, i16* %6, align 8
  br label %13

13:                                               ; preds = %5, %4
  %.0 = phi i32 [ 5, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @BaseTypeOption(%struct._tagTreeCCContext* nocapture noundef writeonly %0, i8* noundef %1, i32 noundef %2) #3 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %3
  br label %9

5:                                                ; preds = %3
  br i1 false, label %6, label %7

6:                                                ; preds = %5
  br label %9

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 16
  store i8* %1, i8** %8, align 8
  br label %9

9:                                                ; preds = %7, %6, %4
  %.0 = phi i32 [ 0, %6 ], [ 1, %7 ], [ 4, %4 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

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
