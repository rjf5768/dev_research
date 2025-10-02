; ModuleID = './sha_driver.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-sha/sha_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.SHA_INFO = type { [5 x i32], i32, i32, [16 x i32] }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.SHA_INFO, align 4
  %4 = icmp slt i32 %0, 2
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @sha_stream(%struct.SHA_INFO* noundef nonnull %3, %struct._IO_FILE* noundef %6) #2
  call void @sha_print(%struct.SHA_INFO* noundef nonnull %3) #2
  br label %22

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %20, %7
  %.01 = phi i8** [ %1, %7 ], [ %11, %20 ]
  %.0 = phi i32 [ %0, %7 ], [ %9, %20 ]
  %9 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %21, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8*, i8** %.01, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = call noalias %struct._IO_FILE* @fopen(i8* noundef %12, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #2
  %14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i8*, i8** %11, align 8
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* noundef %16) #2
  br label %20

18:                                               ; preds = %10
  call void @sha_stream(%struct.SHA_INFO* noundef nonnull %3, %struct._IO_FILE* noundef nonnull %13) #2
  call void @sha_print(%struct.SHA_INFO* noundef nonnull %3) #2
  %19 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %13) #2
  br label %20

20:                                               ; preds = %18, %15
  br label %8, !llvm.loop !4

21:                                               ; preds = %8
  br label %22

22:                                               ; preds = %21, %5
  ret i32 0
}

declare dso_local void @sha_stream(%struct.SHA_INFO* noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @sha_print(%struct.SHA_INFO* noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
