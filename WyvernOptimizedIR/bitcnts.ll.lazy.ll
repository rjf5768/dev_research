; ModuleID = './bitcnts.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-bitcount/bitcnts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@next = internal global i64 1, align 8
@main.pBitCntFunc = internal global [7 x i32 (i64)*] [i32 (i64)* @bit_count, i32 (i64)* @bitcount, i32 (i64)* @ntbl_bitcnt, i32 (i64)* @ntbl_bitcount, i32 (i64)* @BW_btbl_bitcount, i32 (i64)* @AR_btbl_bitcount, i32 (i64)* @bit_shifter], align 16
@main.text = internal global [7 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [29 x i8] c"Optimized 1 bit/loop counter\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Ratko's mystery algorithm\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Recursive bit count by nybbles\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Non-recursive bit count by nybbles\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (BW)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (AR)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Shift and count bits\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"%-38s> Bits: %ld\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @rand() #0 {
  %1 = load i64, i64* @next, align 8
  %2 = mul i64 %1, 1103515245
  %3 = add i64 %2, 12345
  store i64 %3, i64* @next, align 8
  %4 = lshr i64 %3, 16
  %5 = trunc i64 %4 to i32
  %6 = urem i32 %5, 32767
  %7 = add nuw nsw i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @srand(i32 noundef %0) #1 {
  %2 = zext i32 %0 to i64
  store i64 %2, i64* @next, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #2 {
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %5) #8
  call void @exit(i32 noundef -1) #9
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8*, i8** %1, i64 1
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @atoi(i8* noundef %9) #10
  call void @srand(i32 noundef 1) #11
  %11 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0)) #11
  br label %12

12:                                               ; preds = %35, %7
  %.03 = phi i32 [ 0, %7 ], [ %36, %35 ]
  %13 = icmp ult i32 %.03, 7
  br i1 %13, label %14, label %37

14:                                               ; preds = %12
  %15 = call i32 @rand() #11
  %16 = sext i32 %15 to i64
  br label %17

17:                                               ; preds = %25, %14
  %.02 = phi i64 [ 0, %14 ], [ %28, %25 ]
  %.01 = phi i64 [ 0, %14 ], [ %27, %25 ]
  %.0 = phi i64 [ %16, %14 ], [ %29, %25 ]
  %18 = sext i32 %10 to i64
  %19 = icmp slt i64 %.02, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = zext i32 %.03 to i64
  %22 = getelementptr inbounds [7 x i32 (i64)*], [7 x i32 (i64)*]* @main.pBitCntFunc, i64 0, i64 %21
  %23 = load i32 (i64)*, i32 (i64)** %22, align 8
  %24 = call i32 %23(i64 noundef %.0) #11
  br label %25

25:                                               ; preds = %20
  %26 = sext i32 %24 to i64
  %27 = add nsw i64 %.01, %26
  %28 = add nuw nsw i64 %.02, 1
  %29 = add nsw i64 %.0, 13
  br label %17, !llvm.loop !4

30:                                               ; preds = %17
  %31 = zext i32 %.03 to i64
  %32 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i64 0, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* noundef %33, i64 noundef %.01) #11
  br label %35

35:                                               ; preds = %30
  %36 = add nuw nsw i32 %.03, 1
  br label %12, !llvm.loop !6

37:                                               ; preds = %12
  ret i32 0
}

declare dso_local i32 @bit_count(i64 noundef) #3

declare dso_local i32 @bitcount(i64 noundef) #3

declare dso_local i32 @ntbl_bitcnt(i64 noundef) #3

declare dso_local i32 @ntbl_bitcount(i64 noundef) #3

declare dso_local i32 @BW_btbl_bitcount(i64 noundef) #3

declare dso_local i32 @AR_btbl_bitcount(i64 noundef) #3

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal i32 @bit_shifter(i64 noundef %0) #4 {
  br label %2

2:                                                ; preds = %8, %1
  %.02 = phi i32 [ 0, %1 ], [ %11, %8 ]
  %.01 = phi i32 [ 0, %1 ], [ %12, %8 ]
  %.0 = phi i64 [ %0, %1 ], [ %13, %8 ]
  %.not = icmp eq i64 %.0, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %2
  %4 = icmp ult i32 %.01, 64
  br label %5

5:                                                ; preds = %3, %2
  %6 = phi i1 [ false, %2 ], [ %4, %3 ]
  br i1 %6, label %7, label %14

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7
  %9 = trunc i64 %.0 to i32
  %10 = and i32 %9, 1
  %11 = add nuw nsw i32 %.02, %10
  %12 = add nuw nsw i32 %.01, 1
  %13 = ashr i64 %.0, 1
  br label %2, !llvm.loop !7

14:                                               ; preds = %5
  ret i32 %.02
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #6

declare dso_local i32 @puts(i8* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind }

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
