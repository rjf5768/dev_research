; ModuleID = './portableio.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/portableio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ReadByte(%struct._IO_FILE* noundef %0) #0 {
  %2 = call i32 @getc(%struct._IO_FILE* noundef %0) #3
  %3 = and i32 %2, 255
  %4 = and i32 %2, 128
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %7, label %5

5:                                                ; preds = %1
  %6 = or i32 %2, -256
  br label %7

7:                                                ; preds = %5, %1
  %.0 = phi i32 [ %6, %5 ], [ %3, %1 ]
  ret i32 %.0
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Read16BitsLowHigh(%struct._IO_FILE* noundef %0) #0 {
  %2 = call i32 @getc(%struct._IO_FILE* noundef %0) #3
  %3 = and i32 %2, 255
  %4 = call i32 @getc(%struct._IO_FILE* noundef %0) #3
  %5 = shl i32 %4, 8
  %6 = and i32 %5, 65280
  %7 = or i32 %6, %3
  %8 = and i32 %4, 128
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %11, label %9

9:                                                ; preds = %1
  %10 = or i32 %7, -65536
  br label %11

11:                                               ; preds = %9, %1
  %.0 = phi i32 [ %10, %9 ], [ %7, %1 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Read16BitsHighLow(%struct._IO_FILE* noundef %0) #0 {
  %2 = call i32 @getc(%struct._IO_FILE* noundef %0) #3
  %3 = call i32 @getc(%struct._IO_FILE* noundef %0) #3
  %4 = and i32 %3, 255
  %5 = shl i32 %2, 8
  %6 = and i32 %5, 65280
  %7 = or i32 %6, %4
  %8 = and i32 %2, 128
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %11, label %9

9:                                                ; preds = %1
  %10 = or i32 %7, -65536
  br label %11

11:                                               ; preds = %9, %1
  %.0 = phi i32 [ %10, %9 ], [ %7, %1 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Write8Bits(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 255
  %4 = call i32 @putc(i32 noundef %3, %struct._IO_FILE* noundef %0) #3
  ret void
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Write16BitsLowHigh(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 255
  %4 = call i32 @putc(i32 noundef %3, %struct._IO_FILE* noundef %0) #3
  %5 = lshr i32 %1, 8
  %6 = and i32 %5, 255
  %7 = call i32 @putc(i32 noundef %6, %struct._IO_FILE* noundef %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Write16BitsHighLow(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 8
  %4 = and i32 %3, 255
  %5 = call i32 @putc(i32 noundef %4, %struct._IO_FILE* noundef %0) #3
  %6 = and i32 %1, 255
  %7 = call i32 @putc(i32 noundef %6, %struct._IO_FILE* noundef %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Read24BitsHighLow(%struct._IO_FILE* noundef %0) #0 {
  %2 = call i32 @getc(%struct._IO_FILE* noundef %0) #3
  %3 = call i32 @getc(%struct._IO_FILE* noundef %0) #3
  %4 = call i32 @getc(%struct._IO_FILE* noundef %0) #3
  %5 = and i32 %4, 255
  %6 = shl i32 %2, 16
  %7 = and i32 %6, 16711680
  %8 = shl i32 %3, 8
  %9 = and i32 %8, 65280
  %10 = or i32 %7, %9
  %11 = or i32 %10, %5
  %12 = and i32 %2, 128
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %15, label %13

13:                                               ; preds = %1
  %14 = or i32 %11, -16777216
  br label %15

15:                                               ; preds = %13, %1
  %.0 = phi i32 [ %14, %13 ], [ %11, %1 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Read32Bits(%struct._IO_FILE* noundef %0) #0 {
  %2 = call i32 @Read16BitsLowHigh(%struct._IO_FILE* noundef %0)
  %3 = and i32 %2, 65535
  %4 = call i32 @Read16BitsLowHigh(%struct._IO_FILE* noundef %0)
  %5 = shl i32 %4, 16
  %6 = or i32 %5, %3
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Read32BitsHighLow(%struct._IO_FILE* noundef %0) #0 {
  %2 = call i32 @Read16BitsHighLow(%struct._IO_FILE* noundef %0)
  %3 = call i32 @Read16BitsHighLow(%struct._IO_FILE* noundef %0)
  %4 = and i32 %3, 65535
  %5 = shl i32 %2, 16
  %6 = or i32 %5, %4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Write32Bits(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 65535
  call void @Write16BitsLowHigh(%struct._IO_FILE* noundef %0, i32 noundef %3)
  %4 = lshr i32 %1, 16
  call void @Write16BitsLowHigh(%struct._IO_FILE* noundef %0, i32 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Write32BitsLowHigh(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 65535
  call void @Write16BitsLowHigh(%struct._IO_FILE* noundef %0, i32 noundef %3)
  %4 = lshr i32 %1, 16
  call void @Write16BitsLowHigh(%struct._IO_FILE* noundef %0, i32 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Write32BitsHighLow(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 16
  call void @Write16BitsHighLow(%struct._IO_FILE* noundef %0, i32 noundef %3)
  %4 = and i32 %1, 65535
  call void @Write16BitsHighLow(%struct._IO_FILE* noundef %0, i32 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReadBytes(%struct._IO_FILE* noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %8, %3
  %.01 = phi i8* [ %1, %3 ], [ %12, %8 ]
  %.0 = phi i32 [ %2, %3 ], [ %9, %8 ]
  %5 = call i32 @feof(%struct._IO_FILE* noundef %0) #3
  %.not = icmp eq i32 %5, 0
  %6 = icmp sgt i32 %.0, 0
  %7 = and i1 %.not, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = add nsw i32 %.0, -1
  %10 = call i32 @getc(%struct._IO_FILE* noundef %0) #3
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %11, i8* %.01, align 1
  br label %4, !llvm.loop !4

13:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReadBytesSwapped(%struct._IO_FILE* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %8, %3
  %.02 = phi i32 [ %2, %3 ], [ %9, %8 ]
  %.0 = phi i8* [ %1, %3 ], [ %12, %8 ]
  %5 = call i32 @feof(%struct._IO_FILE* noundef %0) #3
  %.not = icmp eq i32 %5, 0
  %6 = icmp sgt i32 %.02, 0
  %7 = and i1 %.not, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = add nsw i32 %.02, -1
  %10 = call i32 @getc(%struct._IO_FILE* noundef %0) #3
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 %11, i8* %.0, align 1
  br label %4, !llvm.loop !6

13:                                               ; preds = %4
  br label %14

14:                                               ; preds = %19, %13
  %.01 = phi i8* [ %1, %13 ], [ %20, %19 ]
  %.0.pn = phi i8* [ %.0, %13 ], [ %.1, %19 ]
  %.1 = getelementptr inbounds i8, i8* %.0.pn, i64 -1
  %15 = icmp ult i8* %.01, %.1
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = load i8, i8* %.01, align 1
  %18 = load i8, i8* %.1, align 1
  store i8 %18, i8* %.01, align 1
  store i8 %17, i8* %.1, align 1
  br label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %14, !llvm.loop !7

21:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteBytes(%struct._IO_FILE* noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %6, %3
  %.01 = phi i8* [ %1, %3 ], [ %8, %6 ]
  %.0 = phi i32 [ %2, %3 ], [ %7, %6 ]
  %5 = icmp sgt i32 %.0, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = add nsw i32 %.0, -1
  %8 = getelementptr inbounds i8, i8* %.01, i64 1
  %9 = load i8, i8* %.01, align 1
  %10 = sext i8 %9 to i32
  %11 = call i32 @putc(i32 noundef %10, %struct._IO_FILE* noundef %0) #3
  br label %4, !llvm.loop !8

12:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteBytesSwapped(%struct._IO_FILE* noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = add nsw i32 %2, -1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, i8* %1, i64 %5
  br label %7

7:                                                ; preds = %9, %3
  %.01 = phi i8* [ %6, %3 ], [ %11, %9 ]
  %.0 = phi i32 [ %2, %3 ], [ %10, %9 ]
  %8 = icmp sgt i32 %.0, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = add nsw i32 %.0, -1
  %11 = getelementptr inbounds i8, i8* %.01, i64 -1
  %12 = load i8, i8* %.01, align 1
  %13 = sext i8 %12 to i32
  %14 = call i32 @putc(i32 noundef %13, %struct._IO_FILE* noundef %0) #3
  br label %7, !llvm.loop !9

15:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeFloatHighLow(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca [4 x i8], align 1
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  call void @ReadBytes(%struct._IO_FILE* noundef %0, i8* noundef nonnull %3, i32 noundef 4)
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %5 = call double @ConvertFromIeeeSingle(i8* noundef nonnull %4) #3
  ret double %5
}

declare dso_local double @ConvertFromIeeeSingle(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeFloatLowHigh(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca [4 x i8], align 1
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  call void @ReadBytesSwapped(%struct._IO_FILE* noundef %0, i8* noundef nonnull %3, i32 noundef 4)
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %5 = call double @ConvertFromIeeeSingle(i8* noundef nonnull %4) #3
  ret double %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeDoubleHighLow(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca [8 x i8], align 1
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  call void @ReadBytes(%struct._IO_FILE* noundef %0, i8* noundef nonnull %3, i32 noundef 8)
  %4 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %5 = call double @ConvertFromIeeeDouble(i8* noundef nonnull %4) #3
  ret double %5
}

declare dso_local double @ConvertFromIeeeDouble(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeDoubleLowHigh(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca [8 x i8], align 1
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  call void @ReadBytesSwapped(%struct._IO_FILE* noundef %0, i8* noundef nonnull %3, i32 noundef 8)
  %4 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %5 = call double @ConvertFromIeeeDouble(i8* noundef nonnull %4) #3
  ret double %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeExtendedHighLow(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca [10 x i8], align 1
  %3 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  call void @ReadBytes(%struct._IO_FILE* noundef %0, i8* noundef nonnull %3, i32 noundef 10)
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %5 = call double @ConvertFromIeeeExtended(i8* noundef nonnull %4) #3
  ret double %5
}

declare dso_local double @ConvertFromIeeeExtended(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @ReadIeeeExtendedLowHigh(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca [10 x i8], align 1
  %3 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  call void @ReadBytesSwapped(%struct._IO_FILE* noundef %0, i8* noundef nonnull %3, i32 noundef 10)
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %5 = call double @ConvertFromIeeeExtended(i8* noundef nonnull %4) #3
  ret double %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeFloatLowHigh(%struct._IO_FILE* noundef %0, double noundef %1) #0 {
  %3 = alloca [4 x i8], align 1
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  call void @ConvertToIeeeSingle(double noundef %1, i8* noundef nonnull %4) #3
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  call void @WriteBytesSwapped(%struct._IO_FILE* noundef %0, i8* noundef nonnull %5, i32 noundef 4)
  ret void
}

declare dso_local void @ConvertToIeeeSingle(double noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeFloatHighLow(%struct._IO_FILE* noundef %0, double noundef %1) #0 {
  %3 = alloca [4 x i8], align 1
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  call void @ConvertToIeeeSingle(double noundef %1, i8* noundef nonnull %4) #3
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  call void @WriteBytes(%struct._IO_FILE* noundef %0, i8* noundef nonnull %5, i32 noundef 4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeDoubleLowHigh(%struct._IO_FILE* noundef %0, double noundef %1) #0 {
  %3 = alloca [8 x i8], align 1
  %4 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @ConvertToIeeeDouble(double noundef %1, i8* noundef nonnull %4) #3
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @WriteBytesSwapped(%struct._IO_FILE* noundef %0, i8* noundef nonnull %5, i32 noundef 8)
  ret void
}

declare dso_local void @ConvertToIeeeDouble(double noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeDoubleHighLow(%struct._IO_FILE* noundef %0, double noundef %1) #0 {
  %3 = alloca [8 x i8], align 1
  %4 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @ConvertToIeeeDouble(double noundef %1, i8* noundef nonnull %4) #3
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @WriteBytes(%struct._IO_FILE* noundef %0, i8* noundef nonnull %5, i32 noundef 8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeExtendedLowHigh(%struct._IO_FILE* noundef %0, double noundef %1) #0 {
  %3 = alloca [10 x i8], align 1
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  call void @ConvertToIeeeExtended(double noundef %1, i8* noundef nonnull %4) #3
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  call void @WriteBytesSwapped(%struct._IO_FILE* noundef %0, i8* noundef nonnull %5, i32 noundef 10)
  ret void
}

declare dso_local void @ConvertToIeeeExtended(double noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @WriteIeeeExtendedHighLow(%struct._IO_FILE* noundef %0, double noundef %1) #0 {
  %3 = alloca [10 x i8], align 1
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  call void @ConvertToIeeeExtended(double noundef %1, i8* noundef nonnull %4) #3
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  call void @WriteBytes(%struct._IO_FILE* noundef %0, i8* noundef nonnull %5, i32 noundef 10)
  ret void
}

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
