; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/subspic.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @Substitute_Frame_Buffer(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @Second_Field, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %68

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @picture_structure, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @Second_Field, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* @picture_coding_type, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = load i8*, i8** @Substitute_Picture_Filename, align 8
  %24 = load i32, i32* %5, align 4
  call void @Read_Frame(i8* noundef %23, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 0), i32 noundef %24)
  br label %41

25:                                               ; preds = %17
  %26 = load i32, i32* @picture_coding_type, align 4
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32, i32* @Substitute_Frame_Buffer.bgate, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i32, i32* @Substitute_Frame_Buffer.previous_temporal_reference, align 4
  %33 = load i32, i32* @temporal_reference, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load i8*, i8** @Substitute_Picture_Filename, align 8
  %39 = load i32, i32* %5, align 4
  call void @Read_Frame(i8* noundef %38, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 0), i32 noundef %39)
  br label %40

40:                                               ; preds = %31, %28, %25
  br label %41

41:                                               ; preds = %40, %20
  br label %67

42:                                               ; preds = %14
  %43 = load i32, i32* @Second_Field, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load i32, i32* @picture_coding_type, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load i32, i32* @Substitute_Frame_Buffer.previous_picture_coding_type, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* @picture_coding_type, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* %5, align 4
  br label %63

56:                                               ; preds = %51, %48
  %57 = load i32, i32* @temporal_reference, align 4
  %58 = load i32, i32* @Substitute_Frame_Buffer.previous_anchor_temporal_reference, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %59, %60
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %56, %54
  %64 = load i8*, i8** @Substitute_Picture_Filename, align 8
  %65 = load i32, i32* %5, align 4
  call void @Read_Frame(i8* noundef %64, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 noundef %65)
  br label %66

66:                                               ; preds = %63, %45, %42
  br label %67

67:                                               ; preds = %66, %41
  br label %68

68:                                               ; preds = %67, %8
  %69 = load i32, i32* @picture_coding_type, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 1, i32* @Substitute_Frame_Buffer.bgate, align 4
  br label %73

72:                                               ; preds = %68
  store i32 0, i32* @Substitute_Frame_Buffer.bgate, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* @picture_structure, align 4
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @Second_Field, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* @temporal_reference, align 4
  store i32 %80, i32* @Substitute_Frame_Buffer.previous_temporal_reference, align 4
  %81 = load i32, i32* %3, align 4
  store i32 %81, i32* @Substitute_Frame_Buffer.previous_bitstream_framenum, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* @picture_coding_type, align 4
  %84 = icmp ne i32 %83, 3
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load i32, i32* @picture_structure, align 4
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @Second_Field, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88, %85
  %92 = load i32, i32* @temporal_reference, align 4
  store i32 %92, i32* @Substitute_Frame_Buffer.previous_anchor_temporal_reference, align 4
  %93 = load i32, i32* %3, align 4
  store i32 %93, i32* @Substitute_Frame_Buffer.previous_anchor_bitstream_framenum, align 4
  br label %94

94:                                               ; preds = %91, %88, %82
  %95 = load i32, i32* @picture_coding_type, align 4
  store i32 %95, i32* @Substitute_Frame_Buffer.previous_picture_coding_type, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Read_Frame(i8* noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 noundef %13)
  br label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @Big_Picture_Flag, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @Extract_Components(i8* noundef %19, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 0), i32 noundef %20)
  store i32 %21, i32* %8, align 4
  br label %26

22:                                               ; preds = %15
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @Read_Components(i8* noundef %23, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 0), i32 noundef %24)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* @Second_Field, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32, i32* @picture_coding_type, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* @picture_structure, align 4
  %39 = icmp eq i32 %38, 1
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @picture_structure, align 4
  %43 = icmp eq i32 %42, 3
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 1
  store i32 %45, i32* %9, align 4
  br label %47

46:                                               ; preds = %34, %31
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %37
  %48 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 0), align 16
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* @Coded_Picture_Width, align 4
  %53 = load i32, i32* @Coded_Picture_Height, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  call void @Copy_Frame(i8* noundef %48, i8* noundef %51, i32 noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef %55)
  %56 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 1), align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* @Chroma_Width, align 4
  %61 = load i32, i32* @Chroma_Height, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  call void @Copy_Frame(i8* noundef %56, i8* noundef %59, i32 noundef %60, i32 noundef %61, i32 noundef %62, i32 noundef %63)
  %64 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 2), align 16
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* @Chroma_Width, align 4
  %69 = load i32, i32* @Chroma_Height, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %9, align 4
  call void @Copy_Frame(i8* noundef %64, i8* noundef %67, i32 noundef %68, i32 noundef %69, i32 noundef %70, i32 noundef %71)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @Extract_Components(i8* noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call noalias %struct._IO_FILE* @fopen(i8* noundef %12, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %8, align 8
  %14 = icmp ne %struct._IO_FILE* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* noundef %16) #3
  store i32 -1, i32* %4, align 4
  br label %118

18:                                               ; preds = %3
  %19 = load i32, i32* @Coded_Picture_Width, align 4
  %20 = load i32, i32* @Coded_Picture_Height, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @chroma_format, align 4
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 %25, 3
  store i32 %26, i32* %10, align 4
  br label %45

27:                                               ; preds = %18
  %28 = load i32, i32* @chroma_format, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %10, align 4
  br label %44

33:                                               ; preds = %27
  %34 = load i32, i32* @chroma_format, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %37, 3
  %39 = ashr i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @chroma_format, align 4
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 noundef %41)
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %44, %24
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, i32* %11, align 4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = call i32 @fseek(%struct._IO_FILE* noundef %49, i64 noundef %51, i32 noundef 0)
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %70, %45
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @Coded_Picture_Height, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i8**, i8*** %6, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @Coded_Picture_Width, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  %66 = load i32, i32* @Coded_Picture_Width, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %69 = call i64 @fread(i8* noundef %65, i64 noundef 1, i64 noundef %67, %struct._IO_FILE* noundef %68)
  br label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %53, !llvm.loop !4

73:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @Chroma_Height, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load i8**, i8*** %6, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @Chroma_Width, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  %87 = load i32, i32* @Chroma_Width, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %90 = call i64 @fread(i8* noundef %86, i64 noundef 1, i64 noundef %88, %struct._IO_FILE* noundef %89)
  br label %91

91:                                               ; preds = %78
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %74, !llvm.loop !6

94:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %112, %94
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @Chroma_Height, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load i8**, i8*** %6, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 2
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @Chroma_Width, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %102, i64 %106
  %108 = load i32, i32* @Chroma_Width, align 4
  %109 = sext i32 %108 to i64
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %111 = call i64 @fread(i8* noundef %107, i64 noundef 1, i64 noundef %109, %struct._IO_FILE* noundef %110)
  br label %112

112:                                              ; preds = %99
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %95, !llvm.loop !7

115:                                              ; preds = %95
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %117 = call i32 @fclose(%struct._IO_FILE* noundef %116)
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %115, %15
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Read_Components(i8* noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %10, i8* noundef %11, i32 noundef %12) #3
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef %15) #3
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @Coded_Picture_Width, align 4
  %22 = load i32, i32* @Coded_Picture_Height, align 4
  %23 = call i32 @Read_Component(i8* noundef %17, i8* noundef %20, i32 noundef %21, i32 noundef %22)
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %26, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef %27) #3
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @Chroma_Width, align 4
  %34 = load i32, i32* @Chroma_Height, align 4
  %35 = call i32 @Read_Component(i8* noundef %29, i8* noundef %32, i32 noundef %33, i32 noundef %34)
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %38, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef %39) #3
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @Chroma_Width, align 4
  %46 = load i32, i32* @Chroma_Height, align 4
  %47 = call i32 @Read_Component(i8* noundef %41, i8* noundef %44, i32 noundef %45, i32 noundef %46)
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind uwtable
define internal void @Copy_Frame(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %6
  store i32 2, i32* %17, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %15, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %15, align 4
  br label %27

27:                                               ; preds = %23, %20
  br label %29

28:                                               ; preds = %6
  store i32 1, i32* %17, align 4
  br label %29

29:                                               ; preds = %28, %27
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %67, %29
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  store i8 %46, i8* %52, align 1
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %35, !llvm.loop !8

56:                                               ; preds = %35
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %17, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %17, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %13, align 4
  br label %30, !llvm.loop !9

71:                                               ; preds = %30
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @Read_Component(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = mul nsw i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (i8*, i32, ...) @open(i8* noundef %16, i32 noundef 0)
  store i32 %17, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i8* noundef %23)
  store i32 -1, i32* %5, align 4
  br label %43

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = call i64 @read(i32 noundef %26, i8* noundef %27, i64 noundef %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 noundef %36, i32 noundef %37, i8* noundef %38)
  br label %40

40:                                               ; preds = %35, %25
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @close(i32 noundef %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %22
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #1

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @close(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
