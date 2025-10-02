; ModuleID = './subspic.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/subspic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@Substitute_Frame_Buffer.previous_temporal_reference = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_bitstream_framenum = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_anchor_temporal_reference = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_anchor_bitstream_framenum = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_picture_coding_type = internal global i32 0, align 4
@Substitute_Frame_Buffer.bgate = internal global i32 0, align 4
@Second_Field = external dso_local global i32, align 4
@picture_structure = external dso_local global i32, align 4
@picture_coding_type = external dso_local global i32, align 4
@Substitute_Picture_Filename = external dso_local global i8*, align 8
@forward_reference_frame = external dso_local global [3 x i8*], align 16
@temporal_reference = external dso_local global i32, align 4
@backward_reference_frame = external dso_local global [3 x i8*], align 16
@current_frame = external dso_local global [3 x i8*], align 16
@.str = private unnamed_addr constant [40 x i8] c"ERROR: framenum (%d) is less than zero\0A\00", align 1
@Big_Picture_Flag = external dso_local global i32, align 4
@substitute_frame = external dso_local global [3 x i8*], align 16
@.str.1 = private unnamed_addr constant [32 x i8] c"was unable to substitute frame\0A\00", align 1
@Coded_Picture_Width = external dso_local global i32, align 4
@Coded_Picture_Height = external dso_local global i32, align 4
@Chroma_Width = external dso_local global i32, align 4
@Chroma_Height = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@Error_Text = external dso_local global [256 x i8], align 16
@.str.3 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@chroma_format = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"ERROR: chroma_format (%d) not recognized\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s.Y\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s.U\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s.V\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"ERROR: unable to open reference filename (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"was able to read only %d bytes of %d of file %s\0A\00", align 1
@str = private unnamed_addr constant [31 x i8] c"was unable to substitute frame\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Substitute_Frame_Buffer(i32 noundef %0, i32 noundef %1) #0 {
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %5

3:                                                ; preds = %2
  %4 = load i32, i32* @Second_Field, align 4
  %.not1 = icmp eq i32 %4, 0
  br i1 %.not1, label %52, label %5

5:                                                ; preds = %3, %2
  %6 = load i32, i32* @picture_structure, align 4
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @Second_Field, align 4
  %.not5 = icmp eq i32 %9, 0
  br i1 %.not5, label %10, label %30

10:                                               ; preds = %8, %5
  %11 = load i32, i32* @picture_coding_type, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = add nsw i32 %0, -1
  %15 = load i8*, i8** @Substitute_Picture_Filename, align 8
  call void @Read_Frame(i8* noundef %15, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 0), i32 noundef %14)
  br label %29

16:                                               ; preds = %10
  %17 = load i32, i32* @picture_coding_type, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* @Substitute_Frame_Buffer.bgate, align 4
  %.not6 = icmp eq i32 %20, 1
  br i1 %.not6, label %28, label %21

21:                                               ; preds = %19
  %22 = load i32, i32* @Substitute_Frame_Buffer.previous_temporal_reference, align 4
  %23 = load i32, i32* @temporal_reference, align 4
  %24 = sub nsw i32 %22, %23
  %25 = add nsw i32 %24, %0
  %26 = add nsw i32 %25, -1
  %27 = load i8*, i8** @Substitute_Picture_Filename, align 8
  call void @Read_Frame(i8* noundef %27, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 0), i32 noundef %26)
  br label %28

28:                                               ; preds = %21, %19, %16
  br label %29

29:                                               ; preds = %28, %13
  br label %51

30:                                               ; preds = %8
  %31 = load i32, i32* @Second_Field, align 4
  %.not7 = icmp eq i32 %31, 0
  br i1 %.not7, label %50, label %32

32:                                               ; preds = %30
  %33 = load i32, i32* @picture_coding_type, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load i32, i32* @Substitute_Frame_Buffer.previous_picture_coding_type, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @picture_coding_type, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %48

42:                                               ; preds = %38, %35
  %43 = load i32, i32* @temporal_reference, align 4
  %44 = load i32, i32* @Substitute_Frame_Buffer.previous_anchor_temporal_reference, align 4
  %45 = sub nsw i32 %43, %44
  %46 = add nsw i32 %45, %0
  %47 = add nsw i32 %46, -1
  br label %48

48:                                               ; preds = %42, %41
  %.0 = phi i32 [ %0, %41 ], [ %47, %42 ]
  %49 = load i8*, i8** @Substitute_Picture_Filename, align 8
  call void @Read_Frame(i8* noundef %49, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 noundef %.0)
  br label %50

50:                                               ; preds = %48, %32, %30
  br label %51

51:                                               ; preds = %50, %29
  br label %52

52:                                               ; preds = %51, %3
  %53 = load i32, i32* @picture_coding_type, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %57

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %55
  %storemerge = phi i32 [ 0, %56 ], [ 1, %55 ]
  store i32 %storemerge, i32* @Substitute_Frame_Buffer.bgate, align 4
  %58 = load i32, i32* @picture_structure, align 4
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @Second_Field, align 4
  %.not2 = icmp eq i32 %61, 0
  br i1 %.not2, label %62, label %64

62:                                               ; preds = %60, %57
  %63 = load i32, i32* @temporal_reference, align 4
  store i32 %63, i32* @Substitute_Frame_Buffer.previous_temporal_reference, align 4
  store i32 %0, i32* @Substitute_Frame_Buffer.previous_bitstream_framenum, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = load i32, i32* @picture_coding_type, align 4
  %.not3 = icmp eq i32 %65, 3
  br i1 %.not3, label %73, label %66

66:                                               ; preds = %64
  %67 = load i32, i32* @picture_structure, align 4
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @Second_Field, align 4
  %.not4 = icmp eq i32 %70, 0
  br i1 %.not4, label %73, label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* @temporal_reference, align 4
  store i32 %72, i32* @Substitute_Frame_Buffer.previous_anchor_temporal_reference, align 4
  store i32 %0, i32* @Substitute_Frame_Buffer.previous_anchor_bitstream_framenum, align 4
  br label %73

73:                                               ; preds = %71, %69, %64
  %74 = load i32, i32* @picture_coding_type, align 4
  store i32 %74, i32* @Substitute_Frame_Buffer.previous_picture_coding_type, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Read_Frame(i8* noundef %0, i8** nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 noundef %2) #5
  br label %7

7:                                                ; preds = %5, %3
  %8 = load i32, i32* @Big_Picture_Flag, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %11, label %9

9:                                                ; preds = %7
  %10 = call i32 @Extract_Components(i8* noundef %0, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 0), i32 noundef %2)
  br label %13

11:                                               ; preds = %7
  %12 = call i32 @Read_Components(i8* noundef %0, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 0), i32 noundef %2)
  br label %13

13:                                               ; preds = %11, %9
  %.01 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %.not3 = icmp eq i32 %.01, 0
  br i1 %.not3, label %15, label %14

14:                                               ; preds = %13
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i32, i32* @Second_Field, align 4
  %.not4 = icmp eq i32 %16, 0
  br i1 %.not4, label %26, label %17

17:                                               ; preds = %15
  %18 = load i32, i32* @picture_coding_type, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* @picture_structure, align 4
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i32
  %24 = icmp ne i32 %21, 3
  %25 = zext i1 %24 to i32
  br label %27

26:                                               ; preds = %17, %15
  br label %27

27:                                               ; preds = %26, %20
  %.02 = phi i32 [ %23, %20 ], [ 0, %26 ]
  %.0 = phi i32 [ %25, %20 ], [ 0, %26 ]
  %28 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 0), align 16
  %29 = load i8*, i8** %1, align 8
  %30 = load i32, i32* @Coded_Picture_Width, align 4
  %31 = load i32, i32* @Coded_Picture_Height, align 4
  call void @Copy_Frame(i8* noundef %28, i8* noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %.02, i32 noundef %.0)
  %32 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 1), align 8
  %33 = getelementptr inbounds i8*, i8** %1, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* @Chroma_Width, align 4
  %36 = load i32, i32* @Chroma_Height, align 4
  call void @Copy_Frame(i8* noundef %32, i8* noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %.02, i32 noundef %.0)
  %37 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 2), align 16
  %38 = getelementptr inbounds i8*, i8** %1, i64 2
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @Chroma_Width, align 4
  %41 = load i32, i32* @Chroma_Height, align 4
  call void @Copy_Frame(i8* noundef %37, i8* noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %.02, i32 noundef %.0)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @Extract_Components(i8* noundef %0, i8** nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #5
  %.not = icmp eq %struct._IO_FILE* %4, null
  br i1 %.not, label %5, label %7

5:                                                ; preds = %3
  %6 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* noundef %0) #5
  br label %80

7:                                                ; preds = %3
  %8 = load i32, i32* @Coded_Picture_Width, align 4
  %9 = load i32, i32* @Coded_Picture_Height, align 4
  %10 = mul nsw i32 %8, %9
  %11 = load i32, i32* @chroma_format, align 4
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = mul nsw i32 %10, 3
  br label %31

15:                                               ; preds = %7
  %16 = load i32, i32* @chroma_format, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = shl nsw i32 %10, 1
  br label %30

20:                                               ; preds = %15
  %21 = load i32, i32* @chroma_format, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = mul nsw i32 %10, 3
  %25 = ashr i32 %24, 1
  br label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @chroma_format, align 4
  %28 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 noundef %27) #5
  br label %29

29:                                               ; preds = %26, %23
  %.01 = phi i32 [ %25, %23 ], [ %10, %26 ]
  br label %30

30:                                               ; preds = %29, %18
  %.1 = phi i32 [ %19, %18 ], [ %.01, %29 ]
  br label %31

31:                                               ; preds = %30, %13
  %.2 = phi i32 [ %14, %13 ], [ %.1, %30 ]
  %32 = mul nsw i32 %.2, %2
  %33 = sext i32 %32 to i64
  %34 = call i32 @fseek(%struct._IO_FILE* noundef nonnull %4, i64 noundef %33, i32 noundef 0) #5
  br label %35

35:                                               ; preds = %46, %31
  %.02 = phi i32 [ 0, %31 ], [ %47, %46 ]
  %36 = load i32, i32* @Coded_Picture_Height, align 4
  %37 = icmp slt i32 %.02, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i8*, i8** %1, align 8
  %40 = load i32, i32* @Coded_Picture_Width, align 4
  %41 = mul nsw i32 %.02, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = sext i32 %40 to i64
  %45 = call i64 @fread(i8* noundef %43, i64 noundef 1, i64 noundef %44, %struct._IO_FILE* noundef nonnull %4) #5
  br label %46

46:                                               ; preds = %38
  %47 = add nuw nsw i32 %.02, 1
  br label %35, !llvm.loop !4

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %61, %48
  %.13 = phi i32 [ 0, %48 ], [ %62, %61 ]
  %50 = load i32, i32* @Chroma_Height, align 4
  %51 = icmp slt i32 %.13, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = getelementptr inbounds i8*, i8** %1, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @Chroma_Width, align 4
  %56 = mul nsw i32 %.13, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = sext i32 %55 to i64
  %60 = call i64 @fread(i8* noundef %58, i64 noundef 1, i64 noundef %59, %struct._IO_FILE* noundef nonnull %4) #5
  br label %61

61:                                               ; preds = %52
  %62 = add nuw nsw i32 %.13, 1
  br label %49, !llvm.loop !6

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %76, %63
  %.24 = phi i32 [ 0, %63 ], [ %77, %76 ]
  %65 = load i32, i32* @Chroma_Height, align 4
  %66 = icmp slt i32 %.24, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = getelementptr inbounds i8*, i8** %1, i64 2
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* @Chroma_Width, align 4
  %71 = mul nsw i32 %.24, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = sext i32 %70 to i64
  %75 = call i64 @fread(i8* noundef %73, i64 noundef 1, i64 noundef %74, %struct._IO_FILE* noundef nonnull %4) #5
  br label %76

76:                                               ; preds = %67
  %77 = add nuw nsw i32 %.24, 1
  br label %64, !llvm.loop !7

78:                                               ; preds = %64
  %79 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %4) #5
  br label %80

80:                                               ; preds = %78, %5
  %.0 = phi i32 [ 0, %78 ], [ -1, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Read_Components(i8* noundef %0, i8** nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %6, i8* noundef nonnull dereferenceable(1) %0, i32 noundef %2) #5
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %8, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %9) #5
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %12 = load i8*, i8** %1, align 8
  %13 = load i32, i32* @Coded_Picture_Width, align 4
  %14 = load i32, i32* @Coded_Picture_Height, align 4
  %15 = call i32 @Read_Component(i8* noundef nonnull %11, i8* noundef %12, i32 noundef %13, i32 noundef %14)
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %17) #5
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %20 = getelementptr inbounds i8*, i8** %1, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* @Chroma_Width, align 4
  %23 = load i32, i32* @Chroma_Height, align 4
  %24 = call i32 @Read_Component(i8* noundef nonnull %19, i8* noundef %21, i32 noundef %22, i32 noundef %23)
  %25 = add nsw i32 %15, %24
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %26, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef nonnull %27) #5
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %30 = getelementptr inbounds i8*, i8** %1, i64 2
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @Chroma_Width, align 4
  %33 = load i32, i32* @Chroma_Height, align 4
  %34 = call i32 @Read_Component(i8* noundef nonnull %29, i8* noundef %31, i32 noundef %32, i32 noundef %33)
  %35 = add nsw i32 %25, %34
  ret i32 %35
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @Copy_Frame(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %11, label %7

7:                                                ; preds = %6
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9, %7
  %.02 = phi i32 [ %2, %9 ], [ 0, %7 ]
  br label %12

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11, %10
  %.1 = phi i32 [ %.02, %10 ], [ 0, %11 ]
  %.0 = phi i32 [ 2, %10 ], [ 1, %11 ]
  br label %13

13:                                               ; preds = %29, %12
  %.04 = phi i32 [ 0, %12 ], [ %34, %29 ]
  %.2 = phi i32 [ %.1, %12 ], [ %31, %29 ]
  %.01 = phi i32 [ 0, %12 ], [ %33, %29 ]
  %14 = icmp slt i32 %.04, %3
  br i1 %14, label %15, label %35

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %26, %15
  %.03 = phi i32 [ 0, %15 ], [ %27, %26 ]
  %17 = icmp slt i32 %.03, %2
  br i1 %17, label %18, label %28

18:                                               ; preds = %16
  %19 = add nsw i32 %.2, %.03
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = add nsw i32 %.01, %.03
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %1, i64 %24
  store i8 %22, i8* %25, align 1
  br label %26

26:                                               ; preds = %18
  %27 = add nuw nsw i32 %.03, 1
  br label %16, !llvm.loop !8

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = mul nsw i32 %.0, %2
  %31 = add nsw i32 %.2, %30
  %32 = mul nsw i32 %.0, %2
  %33 = add nsw i32 %.01, %32
  %34 = add nuw nsw i32 %.04, %.0
  br label %13, !llvm.loop !9

35:                                               ; preds = %13
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @Read_Component(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = mul nsw i32 %2, %3
  %6 = call i32 (i8*, i32, ...) @open(i8* noundef %0, i32 noundef 0) #5
  br i1 false, label %7, label %8

7:                                                ; preds = %4
  br label %16

8:                                                ; preds = %4
  %9 = sext i32 %5 to i64
  %10 = call i64 @read(i32 noundef %6, i8* noundef %1, i64 noundef %9) #5
  %11 = trunc i64 %10 to i32
  %.not = icmp eq i32 %5, %11
  br i1 %.not, label %14, label %12

12:                                               ; preds = %8
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 noundef %11, i32 noundef %5, i8* noundef %0) #5
  br label %14

14:                                               ; preds = %12, %8
  %15 = call i32 @close(i32 noundef %6) #5
  br label %16

16:                                               ; preds = %14, %7
  %.0 = phi i32 [ -1, %7 ], [ 0, %14 ]
  ret i32 %.0
}

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #1

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @close(i32 noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
