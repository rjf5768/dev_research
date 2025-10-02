; ModuleID = './crc32.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Trimaran/netbench-crc/crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@crc_table = internal global [256 x i64] zeroinitializer, align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [23 x i8] c"Usage: crc #numpackets\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"CRC completed for %d packets \0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"crc_accum is %u\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @gen_crc_table() #0 {
  br label %1

1:                                                ; preds = %21, %0
  %.0 = phi i32 [ 0, %0 ], [ %22, %21 ]
  %2 = icmp ult i32 %.0, 256
  br i1 %2, label %3, label %23

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = shl nuw nsw i64 %4, 24
  br label %6

6:                                                ; preds = %16, %3
  %.02 = phi i64 [ %5, %3 ], [ %.1, %16 ]
  %.01 = phi i32 [ 0, %3 ], [ %17, %16 ]
  %7 = icmp ult i32 %.01, 8
  br i1 %7, label %8, label %18

8:                                                ; preds = %6
  %9 = and i64 %.02, 2147483648
  %.not = icmp eq i64 %9, 0
  br i1 %.not, label %13, label %10

10:                                               ; preds = %8
  %11 = shl i64 %.02, 1
  %12 = xor i64 %11, 79764919
  br label %15

13:                                               ; preds = %8
  %14 = shl i64 %.02, 1
  br label %15

15:                                               ; preds = %13, %10
  %.1 = phi i64 [ %12, %10 ], [ %14, %13 ]
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !4

18:                                               ; preds = %6
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_table, i64 0, i64 %19
  store i64 %.02, i64* %20, align 8
  br label %21

21:                                               ; preds = %18
  %22 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

23:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @update_crc(i64 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) #1 {
  br label %4

4:                                                ; preds = %7, %3
  %.02 = phi i32 [ 0, %3 ], [ %17, %7 ]
  %.01 = phi i8* [ %1, %3 ], [ %16, %7 ]
  %.0 = phi i64 [ %0, %3 ], [ %15, %7 ]
  %5 = icmp slt i32 %.02, %2
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6
  %8 = shl i64 %.0, 8
  %9 = lshr i64 %.0, 24
  %.masked = and i64 %9, 255
  %10 = load i8, i8* %.01, align 1
  %11 = zext i8 %10 to i64
  %12 = xor i64 %.masked, %11
  %13 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_table, i64 0, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = xor i64 %8, %14
  %16 = getelementptr inbounds i8, i8* %.01, i64 1
  %17 = add nuw nsw i32 %.02, 1
  br label %4, !llvm.loop !7

18:                                               ; preds = %4
  ret i64 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #2 {
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %6, label %3

3:                                                ; preds = %2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %4) #7
  call void @exit(i32 noundef 0) #8
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8*, i8** %1, i64 1
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @atoi(i8* noundef %8) #9
  br label %10

10:                                               ; preds = %6
  call void @gen_crc_table()
  br label %11

11:                                               ; preds = %13, %10
  %.01 = phi i32 [ undef, %10 ], [ %phi.cast, %13 ]
  %.0 = phi i32 [ 0, %10 ], [ %17, %13 ]
  %12 = icmp slt i32 %.0, %9
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = call i8* (i32, ...) bitcast (i8* (...)* @get_next_packet to i8* (i32, ...)*)(i32 noundef %.0) #10
  %15 = call i32 @packet_size(i32 noundef %.0) #10
  %16 = call i64 @update_crc(i64 noundef 0, i8* noundef %14, i32 noundef %15)
  %17 = add nuw nsw i32 %.0, 1
  %phi.cast = trunc i64 %16 to i32
  br label %11, !llvm.loop !8

18:                                               ; preds = %11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 noundef %9) #10
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.01) #10
  ret i32 0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #5

declare dso_local i8* @get_next_packet(...) #3

declare dso_local i32 @packet_size(i32 noundef) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { cold }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind }

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
