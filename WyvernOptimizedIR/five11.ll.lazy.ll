; ModuleID = './five11.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/BitBench/five11/five11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.linked_list_int = type { i32, i8* }
%struct.linked_list_lli = type { %struct.linked_list_int*, i8* }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Usage: five11 [infile]\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [23 x i8] c"Usage: five11 [infile]\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.linked_list_int* @cons1(i32 noundef %0, %struct.linked_list_int* noundef %1) #0 {
  %3 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #9
  %4 = bitcast i8* %3 to %struct.linked_list_int*
  %5 = getelementptr inbounds %struct.linked_list_int, %struct.linked_list_int* %4, i64 0, i32 0
  store i32 %0, i32* %5, align 8
  %6 = getelementptr inbounds %struct.linked_list_int, %struct.linked_list_int* %4, i64 0, i32 1
  %7 = bitcast i8** %6 to %struct.linked_list_int**
  store %struct.linked_list_int* %1, %struct.linked_list_int** %7, align 8
  ret %struct.linked_list_int* %4
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.linked_list_lli* @cons2(%struct.linked_list_int* noundef %0, %struct.linked_list_lli* noundef %1) #0 {
  %3 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #9
  %4 = bitcast i8* %3 to %struct.linked_list_lli*
  %5 = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %4, i64 0, i32 0
  store %struct.linked_list_int* %0, %struct.linked_list_int** %5, align 8
  %6 = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %4, i64 0, i32 1
  %7 = bitcast i8** %6 to %struct.linked_list_lli**
  store %struct.linked_list_lli* %1, %struct.linked_list_lli** %7, align 8
  ret %struct.linked_list_lli* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_list1(%struct.linked_list_int* noundef %0) #0 {
  br label %2

2:                                                ; preds = %3, %1
  %.0 = phi %struct.linked_list_int* [ %0, %1 ], [ %6, %3 ]
  %.not = icmp eq %struct.linked_list_int* %.0, null
  br i1 %.not, label %8, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.linked_list_int, %struct.linked_list_int* %.0, i64 0, i32 1
  %5 = bitcast i8** %4 to %struct.linked_list_int**
  %6 = load %struct.linked_list_int*, %struct.linked_list_int** %5, align 8
  %7 = bitcast %struct.linked_list_int* %.0 to i8*
  call void @free(i8* noundef %7) #9
  br label %2, !llvm.loop !4

8:                                                ; preds = %2
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_list2(%struct.linked_list_lli* noundef %0) #0 {
  br label %2

2:                                                ; preds = %3, %1
  %.0 = phi %struct.linked_list_lli* [ %0, %1 ], [ %6, %3 ]
  %.not = icmp eq %struct.linked_list_lli* %.0, null
  br i1 %.not, label %10, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %.0, i64 0, i32 1
  %5 = bitcast i8** %4 to %struct.linked_list_lli**
  %6 = load %struct.linked_list_lli*, %struct.linked_list_lli** %5, align 8
  %7 = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %.0, i64 0, i32 0
  %8 = load %struct.linked_list_int*, %struct.linked_list_int** %7, align 8
  call void @free_list1(%struct.linked_list_int* noundef %8)
  %9 = bitcast %struct.linked_list_lli* %.0 to i8*
  call void @free(i8* noundef %9) #9
  br label %2, !llvm.loop !6

10:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @read_x_bits(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = ashr i32 %1, 3
  %5 = and i32 %1, 7
  %6 = sub nuw nsw i32 8, %5
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds i8, i8* %0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %notmask = shl nsw i32 -1, %6
  %11 = xor i32 %notmask, -1
  %12 = and i32 %10, %11
  br label %13

13:                                               ; preds = %15, %3
  %.02 = phi i32 [ %4, %3 ], [ %16, %15 ]
  %.01 = phi i32 [ %6, %3 ], [ %23, %15 ]
  %.0 = phi i32 [ %12, %3 ], [ %22, %15 ]
  %14 = icmp slt i32 %.01, %2
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  %16 = add nsw i32 %.02, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %.0, 8
  %22 = or i32 %21, %20
  %23 = add nuw nsw i32 %.01, 8
  br label %13, !llvm.loop !7

24:                                               ; preds = %13
  %25 = sub nsw i32 %.01, %2
  %26 = ashr i32 %.0, %25
  ret i32 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @read_11_bits(i8* nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = ashr i32 %1, 3
  %4 = and i32 %1, 7
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = add nsw i32 %3, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %4, 3
  %15 = shl i32 %8, %14
  %16 = icmp ult i32 %4, 6
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = sub nsw i32 5, %4
  %19 = lshr i32 %13, %18
  %20 = or i32 %15, %19
  %21 = and i32 %20, 2047
  br label %35

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22
  %24 = add nsw i32 %3, 2
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = add nsw i32 %4, -5
  %30 = shl i32 %13, %29
  %31 = or i32 %15, %30
  %32 = sub nuw nsw i32 13, %4
  %33 = lshr i32 %28, %32
  %.masked = and i32 %31, 2047
  %34 = or i32 %.masked, %33
  br label %35

35:                                               ; preds = %23, %17
  %.0 = phi i32 [ %21, %17 ], [ %34, %23 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.linked_list_lli* @five11(i8* nocapture noundef readonly %0) #0 {
  %2 = call i32 @read_x_bits(i8* noundef %0, i32 noundef 0, i32 noundef 16)
  br label %3

3:                                                ; preds = %18, %1
  %.05 = phi i32 [ 0, %1 ], [ %21, %18 ]
  %.01 = phi i32 [ 16, %1 ], [ %20, %18 ]
  %.0 = phi %struct.linked_list_lli* [ null, %1 ], [ %17, %18 ]
  %4 = icmp slt i32 %.05, %2
  br i1 %4, label %5, label %22

5:                                                ; preds = %3
  %6 = call i32 @read_x_bits(i8* noundef %0, i32 noundef %.01, i32 noundef 5)
  %7 = add nsw i32 %.01, 5
  br label %8

8:                                                ; preds = %13, %5
  %.04 = phi i32 [ 0, %5 ], [ %15, %13 ]
  %.13 = phi %struct.linked_list_int* [ null, %5 ], [ %12, %13 ]
  %.1 = phi i32 [ %7, %5 ], [ %14, %13 ]
  %9 = icmp slt i32 %.04, %6
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = call i32 @read_11_bits(i8* noundef %0, i32 noundef %.1)
  %12 = call %struct.linked_list_int* @cons1(i32 noundef %11, %struct.linked_list_int* noundef %.13)
  br label %13

13:                                               ; preds = %10
  %14 = add nsw i32 %.1, 11
  %15 = add nuw nsw i32 %.04, 1
  br label %8, !llvm.loop !8

16:                                               ; preds = %8
  %17 = call %struct.linked_list_lli* @cons2(%struct.linked_list_int* noundef %.13, %struct.linked_list_lli* noundef %.0)
  br label %18

18:                                               ; preds = %16
  %19 = call i32 @pad_size(i32 noundef %6)
  %20 = add nsw i32 %.1, %19
  %21 = add nuw nsw i32 %.05, 1
  br label %3, !llvm.loop !9

22:                                               ; preds = %3
  ret %struct.linked_list_lli* %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @pad_size(i32 noundef %0) #4 {
  %.neg = mul i32 %0, -11
  %2 = add i32 %.neg, 3
  %3 = and i32 %2, 7
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @calc_sum2(%struct.linked_list_lli* noundef readonly %0) #2 {
  br label %2

2:                                                ; preds = %3, %1
  %.01 = phi i32 [ 0, %1 ], [ %10, %3 ]
  %.0 = phi %struct.linked_list_lli* [ %0, %1 ], [ %6, %3 ]
  %.not = icmp eq %struct.linked_list_lli* %.0, null
  br i1 %.not, label %11, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %.0, i64 0, i32 1
  %5 = bitcast i8** %4 to %struct.linked_list_lli**
  %6 = load %struct.linked_list_lli*, %struct.linked_list_lli** %5, align 8
  %7 = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %.0, i64 0, i32 0
  %8 = load %struct.linked_list_int*, %struct.linked_list_int** %7, align 8
  %9 = call i32 @calc_sum1(%struct.linked_list_int* noundef %8)
  %10 = add nsw i32 %.01, %9
  br label %2, !llvm.loop !10

11:                                               ; preds = %2
  ret i32 %.01
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @calc_sum1(%struct.linked_list_int* noundef readonly %0) #2 {
  br label %2

2:                                                ; preds = %3, %1
  %.01 = phi i32 [ 0, %1 ], [ %9, %3 ]
  %.0 = phi %struct.linked_list_int* [ %0, %1 ], [ %6, %3 ]
  %.not = icmp eq %struct.linked_list_int* %.0, null
  br i1 %.not, label %10, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.linked_list_int, %struct.linked_list_int* %.0, i64 0, i32 1
  %5 = bitcast i8** %4 to %struct.linked_list_int**
  %6 = load %struct.linked_list_int*, %struct.linked_list_int** %5, align 8
  %7 = getelementptr inbounds %struct.linked_list_int, %struct.linked_list_int* %.0, i64 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %.01, %8
  br label %2, !llvm.loop !11

10:                                               ; preds = %2
  ret i32 %.01
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #5 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = call noalias dereferenceable_or_null(150000) i8* @malloc(i64 noundef 150000) #9
  %6 = icmp sgt i32 %0, 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8*, i8** %1, i64 1
  %9 = load i8*, i8** %8, align 8
  %10 = call noalias %struct._IO_FILE* @fopen(i8* noundef %9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #9
  %11 = icmp eq %struct._IO_FILE* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8*, i8** %1, i64 1
  %14 = load i8*, i8** %13, align 8
  call void @perror(i8* noundef %14) #10
  call void @exit(i32 noundef 1) #11
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %7
  %16 = add nsw i32 %0, -1
  br label %19

17:                                               ; preds = %2
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %19

19:                                               ; preds = %17, %15
  %.02 = phi %struct._IO_FILE* [ %10, %15 ], [ %18, %17 ]
  %.01 = phi i32 [ %16, %15 ], [ %0, %17 ]
  %.not = icmp eq i32 %.01, 1
  br i1 %.not, label %21, label %20

20:                                               ; preds = %19
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 noundef 2) #11
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  %22 = call i64 @read_data(%struct._IO_FILE* noundef %.02, i8* noundef %5)
  %23 = call i32 @gettimeofday(%struct.timeval* noundef nonnull %3, i8* noundef null) #9
  br label %24

24:                                               ; preds = %29, %21
  %.03 = phi i32 [ 0, %21 ], [ %30, %29 ]
  %.0 = phi i32 [ undef, %21 ], [ %28, %29 ]
  %25 = icmp ult i32 %.03, 10000
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = call %struct.linked_list_lli* @five11(i8* noundef %5)
  %28 = call i32 @calc_sum2(%struct.linked_list_lli* noundef %27)
  call void @free_list2(%struct.linked_list_lli* noundef %27)
  br label %29

29:                                               ; preds = %26
  %30 = add nuw nsw i32 %.03, 1
  br label %24, !llvm.loop !12

31:                                               ; preds = %24
  %32 = call i32 @gettimeofday(%struct.timeval* noundef nonnull %4, i8* noundef null) #9
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.0) #9
  call void @exit(i32 noundef 0) #11
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %31, %20, %12
  unreachable
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #6

declare dso_local void @perror(i8* noundef) #6

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #7

declare dso_local i32 @printf(i8* noundef, ...) #6

; Function Attrs: noinline nounwind uwtable
define internal i64 @read_data(%struct._IO_FILE* noundef %0, i8* noundef %1) #0 {
  %3 = call i64 @fread(i8* noundef %1, i64 noundef 1, i64 noundef 150000, %struct._IO_FILE* noundef %0) #9
  ret i64 %3
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) #1

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { noreturn nounwind }

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
