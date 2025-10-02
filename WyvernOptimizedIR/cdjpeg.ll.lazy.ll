; ModuleID = './cdjpeg.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/cdjpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local i32 @keymatch(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %25, %3
  %.03 = phi i32 [ 0, %3 ], [ %26, %25 ]
  %.02 = phi i8* [ %1, %3 ], [ %9, %25 ]
  %.01 = phi i8* [ %0, %3 ], [ %5, %25 ]
  %5 = getelementptr inbounds i8, i8* %.01, i64 1
  %6 = load i8, i8* %.01, align 1
  %7 = sext i8 %6 to i32
  %.not = icmp eq i8 %6, 0
  br i1 %.not, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, i8* %.02, i64 1
  %10 = load i8, i8* %.02, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %31

14:                                               ; preds = %8
  %15 = call i16** @__ctype_b_loc() #4
  %16 = load i16*, i16** %15, align 8
  %17 = sext i8 %6 to i64
  %18 = getelementptr inbounds i16, i16* %16, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = and i16 %19, 256
  %.not7 = icmp eq i16 %20, 0
  br i1 %.not7, label %23, label %21

21:                                               ; preds = %14
  %22 = call i32 @tolower(i32 noundef %7) #5
  br label %23

23:                                               ; preds = %21, %14
  %.04 = phi i32 [ %22, %21 ], [ %7, %14 ]
  %.not8 = icmp eq i32 %.04, %11
  br i1 %.not8, label %25, label %24

24:                                               ; preds = %23
  br label %31

25:                                               ; preds = %23
  %26 = add nuw nsw i32 %.03, 1
  br label %4, !llvm.loop !4

27:                                               ; preds = %4
  %28 = icmp slt i32 %.03, %2
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  br label %31

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %29, %24, %13
  %.0 = phi i32 [ 0, %13 ], [ 0, %24 ], [ 0, %29 ], [ 1, %30 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @tolower(i32 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local %struct._IO_FILE* @read_stdin() #3 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  ret %struct._IO_FILE* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local %struct._IO_FILE* @write_stdout() #3 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  ret %struct._IO_FILE* %1
}

attributes #0 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
