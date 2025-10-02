; ModuleID = './url.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Trimaran/netbench-url/url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._StrTreeNode = type { i32, i8*, i32, i32*, %struct._StrTreeNode*, %struct._PatternNode* }
%struct._PatternNode = type { i32, i32, i32, %struct._IO_FILE*, i8*, i32, i32, i32*, %struct.rtentry*, %struct._PatternNode* }
%struct.rtentry = type opaque

@.str = private unnamed_addr constant [81 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/Trimaran/netbench-url/url.c\00", align 1
@__FUNCTION__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Usage: url inputfilename #numberofpackets\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"URL table initialized, reading packets... \0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"URL finished for %d packets\0A\00", align 1
@tree_head = dso_local global %struct._StrTreeNode* null, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @internet_checksum(i16* nocapture noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.02 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %.01 = phi i32 [ %1, %2 ], [ %11, %5 ]
  %.0 = phi i16* [ %0, %2 ], [ %6, %5 ]
  %4 = icmp sgt i32 %.01, 1
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds i16, i16* %.0, i64 1
  %7 = load i16, i16* %.0, align 2
  %8 = zext i16 %7 to i64
  %9 = xor i64 %8, -1
  %10 = add i64 %.02, %9
  %11 = add nsw i32 %.01, -2
  br label %3, !llvm.loop !4

12:                                               ; preds = %3
  %13 = icmp eq i32 %.01, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %12
  %15 = bitcast i16* %.0 to i8*
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i64
  %18 = add i64 %.02, %17
  br label %19

19:                                               ; preds = %14, %12
  %.1 = phi i64 [ %18, %14 ], [ %.02, %12 ]
  br label %20

20:                                               ; preds = %21, %19
  %.2 = phi i64 [ %.1, %19 ], [ %24, %21 ]
  %.not = icmp ult i64 %.2, 65536
  br i1 %.not, label %25, label %21

21:                                               ; preds = %20
  %22 = and i64 %.2, 65535
  %23 = lshr i64 %.2, 16
  %24 = add nuw nsw i64 %22, %23
  br label %20, !llvm.loop !6

25:                                               ; preds = %20
  %trunc = trunc i64 %.2 to i16
  %rev = call i16 @llvm.bswap.i16(i16 %trunc)
  %26 = zext i16 %rev to i64
  ret i64 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #1 {
  %.not = icmp eq i32 %0, 3
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__FUNCTION__.main, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0)) #8
  unreachable

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 2
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @atoi(i8* noundef %6) #9
  %8 = getelementptr inbounds i8*, i8** %1, i64 1
  %9 = load i8*, i8** %8, align 8
  call void @db_init(i8* noundef %9) #10
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %10)
  br label %12

12:                                               ; preds = %29, %4
  %.0 = phi i32 [ 0, %4 ], [ %30, %29 ]
  %13 = icmp ult i32 %.0, %7
  br i1 %13, label %14, label %31

14:                                               ; preds = %12
  %15 = call i8* @get_next_packet(i32 noundef %.0) #10
  %16 = getelementptr inbounds i8, i8* %15, i64 10
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %15, i64 11
  store i8 0, i8* %17, align 1
  %18 = bitcast i8* %15 to i16*
  %19 = call i64 @internet_checksum(i16* noundef %18, i32 noundef 20)
  %20 = call i32 @packet_size(i32 noundef %.0) #10
  %21 = call %struct.rtentry* @find_destination(i8* noundef %15, i32 noundef %20) #10
  %22 = bitcast i8* %15 to i16*
  %23 = call i64 @internet_checksum(i16* noundef %22, i32 noundef 20)
  %24 = lshr i64 %23, 8
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds i8, i8* %15, i64 10
  store i8 %25, i8* %26, align 1
  %27 = trunc i64 %23 to i8
  %28 = getelementptr inbounds i8, i8* %15, i64 11
  store i8 %27, i8* %28, align 1
  call void @free(i8* noundef %15) #10
  br label %29

29:                                               ; preds = %14
  %30 = add i32 %.0, 1
  br label %12, !llvm.loop !7

31:                                               ; preds = %12
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef %7) #10
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @_fatal(i8* noundef, i8* noundef, i32 noundef, i8* noundef, ...) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

declare dso_local void @db_init(i8* noundef) #4

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

declare dso_local i8* @get_next_packet(i32 noundef) #4

declare dso_local %struct.rtentry* @find_destination(i8* noundef, i32 noundef) #4

declare dso_local i32 @packet_size(i32 noundef) #4

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #7

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind }
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
