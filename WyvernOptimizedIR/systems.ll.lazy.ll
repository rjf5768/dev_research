; ModuleID = './systems.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/systems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@ld = external dso_local global %struct.layer_data*, align 8
@.str = private unnamed_addr constant [19 x i8] c"MPEG-2 PES packet\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Error in packet header\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Unexpected startcode %08x in system layer\0A\00", align 1
@System_Stream_Flag = external dso_local global i32, align 4
@str = private unnamed_addr constant [18 x i8] c"MPEG-2 PES packet\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Next_Packet() #0 {
  br label %1

1:                                                ; preds = %123, %0
  %2 = call i32 @Get_Long()
  br label %3

3:                                                ; preds = %5, %1
  %.0 = phi i32 [ %2, %1 ], [ %8, %5 ]
  %4 = and i32 %.0, -256
  %.not = icmp eq i32 %4, 256
  br i1 %.not, label %9, label %5

5:                                                ; preds = %3
  %6 = shl i32 %.0, 8
  %7 = call i32 @Get_Byte() #4
  %8 = or i32 %6, %7
  br label %3, !llvm.loop !4

9:                                                ; preds = %3
  switch i32 %.0, label %110 [
    i32 442, label %10
    i32 480, label %15
    i32 441, label %84
  ]

10:                                               ; preds = %9
  %11 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %12 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %11, i64 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 8
  store i8* %14, i8** %12, align 8
  br label %123

15:                                               ; preds = %9
  %16 = call i32 @Get_Word() #4
  %17 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %18 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %17, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = zext i32 %16 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %17, i64 0, i32 5
  store i8* %21, i8** %22, align 8
  %23 = call i32 @Get_Byte() #4
  %.mask = and i32 %23, -64
  %24 = icmp eq i32 %.mask, 128
  br i1 %24, label %25, label %36

25:                                               ; preds = %15
  %26 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %27 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %26, i64 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %29, i8** %27, align 8
  %30 = call i32 @Get_Byte() #4
  %31 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %32 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %31, i64 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = zext i32 %30 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %32, align 8
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str, i64 0, i64 0))
  br label %124

36:                                               ; preds = %15
  %37 = icmp eq i32 %23, 255
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %42, %38
  %40 = call i32 @Get_Byte() #4
  %41 = icmp eq i32 %40, 255
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %39, !llvm.loop !6

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %36
  %.1 = phi i32 [ %40, %43 ], [ %23, %36 ]
  br label %45

45:                                               ; preds = %44
  %46 = icmp ugt i32 %.1, 63
  br i1 %46, label %47, label %58

47:                                               ; preds = %45
  %48 = icmp ugt i32 %.1, 127
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %50) #5
  call void @exit(i32 noundef 1) #6
  br label %UnifiedUnreachableBlock

52:                                               ; preds = %47
  %53 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %54 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %53, i64 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %56, i8** %54, align 8
  %57 = call i32 @Get_Byte() #4
  br label %58

58:                                               ; preds = %52, %45
  %.2 = phi i32 [ %57, %52 ], [ %.1, %45 ]
  %59 = icmp ugt i32 %.2, 47
  br i1 %59, label %60, label %70

60:                                               ; preds = %58
  %61 = icmp ugt i32 %.2, 63
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %63) #5
  call void @exit(i32 noundef 1) #6
  br label %UnifiedUnreachableBlock

65:                                               ; preds = %60
  %66 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %67 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %66, i64 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 9
  store i8* %69, i8** %67, align 8
  br label %83

70:                                               ; preds = %58
  %71 = icmp ugt i32 %.2, 31
  br i1 %71, label %72, label %77

72:                                               ; preds = %70
  %73 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %74 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %73, i64 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  store i8* %76, i8** %74, align 8
  br label %82

77:                                               ; preds = %70
  %.not4 = icmp eq i32 %.2, 15
  br i1 %.not4, label %81, label %78

78:                                               ; preds = %77
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %80 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %79) #5
  call void @exit(i32 noundef 1) #6
  br label %UnifiedUnreachableBlock

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %81, %72
  br label %83

83:                                               ; preds = %82, %65
  br label %124

84:                                               ; preds = %9
  br label %85

85:                                               ; preds = %87, %84
  %.01 = phi i32 [ 0, %84 ], [ %101, %87 ]
  %86 = icmp ult i32 %.01, 2048
  br i1 %86, label %87, label %104

87:                                               ; preds = %85
  %88 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %89 = or i32 %.01, 1
  %90 = zext i32 %.01 to i64
  %91 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %88, i64 0, i32 1, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %93 = or i32 %.01, 2
  %94 = zext i32 %89 to i64
  %95 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %92, i64 0, i32 1, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %97 = or i32 %.01, 3
  %98 = zext i32 %93 to i64
  %99 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %96, i64 0, i32 1, i64 %98
  store i8 1, i8* %99, align 1
  %100 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %101 = add nuw nsw i32 %.01, 4
  %102 = zext i32 %97 to i64
  %103 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %100, i64 0, i32 1, i64 %102
  store i8 -73, i8* %103, align 1
  br label %85, !llvm.loop !7

104:                                              ; preds = %85
  %105 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %106 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %105, i64 0, i32 1, i64 0
  %107 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %105, i64 0, i32 2
  store i8* %106, i8** %107, align 8
  %108 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %105, i64 0, i32 1, i64 2048
  %109 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %105, i64 0, i32 5
  store i8* %108, i8** %109, align 8
  br label %124

110:                                              ; preds = %9
  %111 = icmp ugt i32 %.0, 442
  br i1 %111, label %112, label %119

112:                                              ; preds = %110
  %113 = call i32 @Get_Word() #4
  %114 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %115 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %114, i64 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = zext i32 %113 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %115, align 8
  br label %122

119:                                              ; preds = %110
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %120, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.0) #7
  call void @exit(i32 noundef 1) #6
  br label %UnifiedUnreachableBlock

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122, %10
  br label %1

124:                                              ; preds = %104, %83, %25
  ret void

UnifiedUnreachableBlock:                          ; preds = %119, %78, %62, %49
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Long() #0 {
  %1 = call i32 @Get_Word() #4
  %2 = shl i32 %1, 16
  %3 = call i32 @Get_Word() #4
  %4 = or i32 %2, %3
  ret i32 %4
}

declare dso_local i32 @Get_Byte() #1

declare dso_local i32 @Get_Word() #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Flush_Buffer32() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i64 0, i32 4
  store i32 0, i32* %2, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i64 0, i32 6
  %4 = load i32, i32* %3, align 8
  %5 = add nsw i32 %4, -32
  %6 = load i32, i32* @System_Stream_Flag, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %34, label %7

7:                                                ; preds = %0
  %8 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %9 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %8, i64 0, i32 2
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %8, i64 0, i32 5
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 -4
  %.not2 = icmp ult i8* %10, %13
  br i1 %.not2, label %34, label %14

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %24, %14
  %.0 = phi i32 [ %5, %14 ], [ %32, %24 ]
  %16 = icmp slt i32 %.0, 25
  br i1 %16, label %17, label %33

17:                                               ; preds = %15
  %18 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %19 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %18, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %18, i64 0, i32 5
  %22 = load i8*, i8** %21, align 8
  %.not3 = icmp ult i8* %20, %22
  br i1 %.not3, label %24, label %23

23:                                               ; preds = %17
  call void @Next_Packet()
  br label %24

24:                                               ; preds = %23, %17
  %25 = call i32 @Get_Byte() #4
  %26 = sub nsw i32 24, %.0
  %27 = shl i32 %25, %26
  %28 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %29 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %28, i64 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = add nsw i32 %.0, 8
  br label %15, !llvm.loop !8

33:                                               ; preds = %15
  br label %58

34:                                               ; preds = %7, %0
  br label %35

35:                                               ; preds = %43, %34
  %.1 = phi i32 [ %5, %34 ], [ %56, %43 ]
  %36 = icmp slt i32 %.1, 25
  br i1 %36, label %37, label %57

37:                                               ; preds = %35
  %38 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %39 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %38, i64 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %38, i64 0, i32 1, i64 2048
  %.not1 = icmp ult i8* %40, %41
  br i1 %.not1, label %43, label %42

42:                                               ; preds = %37
  call void @Fill_Buffer() #4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %45 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %44, i64 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %45, align 8
  %48 = load i8, i8* %46, align 1
  %49 = zext i8 %48 to i32
  %50 = sub nsw i32 24, %.1
  %51 = shl i32 %49, %50
  %52 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %53 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %52, i64 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = add nsw i32 %.1, 8
  br label %35, !llvm.loop !9

57:                                               ; preds = %35
  br label %58

58:                                               ; preds = %57, %33
  %.2 = phi i32 [ %.0, %33 ], [ %.1, %57 ]
  %59 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %60 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %59, i64 0, i32 6
  store i32 %.2, i32* %60, align 8
  ret void
}

declare dso_local void @Fill_Buffer() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Bits32() #0 {
  %1 = call i32 @Show_Bits(i32 noundef 32) #4
  call void @Flush_Buffer32()
  ret i32 %1
}

declare dso_local i32 @Show_Bits(i32 noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }
attributes #5 = { cold }
attributes #6 = { noreturn nounwind }
attributes #7 = { cold nounwind }

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
