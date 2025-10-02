; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tf.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@tabout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c".de %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c".ps \\n(.s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c".vs \\n(.vu\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c".in \\n(.iu\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c".if \\n(.u .fi\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c".if \\n(.j .ad\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c".if \\n(.j=0 .na\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"..\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c".nf\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c".nr #~ 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c".if n .nr #~ 0.6n\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c".%d\0A\00", align 1
@linestop = external dso_local global [0 x i32], align 4
@.str.12 = private unnamed_addr constant [11 x i8] c".nr #%c 0\0A\00", align 1
@texct = external dso_local global i32, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c".rm %c+\0A\00", align 1
@texstr = external dso_local global [0 x i8], align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@last = external dso_local global i8*, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c".ds #d .d\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c".if \\(ts\\n(.z\\(ts\\(ts .ds #d nl\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c".if \\n+(b.=1 .nr d. \\n(.c-\\n(c.-1\0A\00", align 1
@iline = external dso_local global i32, align 4
@linstart = external dso_local global i32, align 4
@.str.18 = private unnamed_addr constant [36 x i8] c".if \\n-(b.=0 .nr c. \\n(.c-\\n(d.-%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c".fc\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @savefill() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 35)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @rstofill() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 noundef 35)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @endoff() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %17, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 97, %13
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 noundef %14)
  br label %16

16:                                               ; preds = %11, %5
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %2, !llvm.loop !4

20:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @texct, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [0 x i8], [0 x i8]* @texstr, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 noundef %31)
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %21, !llvm.loop !6

36:                                               ; preds = %21
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %38 = load i8*, i8** @last, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* noundef %38)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ifdivert() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveline() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0))
  %3 = load i32, i32* @iline, align 4
  store i32 %3, i32* @linstart, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @restline() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %2 = load i32, i32* @iline, align 4
  %3 = load i32, i32* @linstart, align 4
  %4 = sub nsw i32 %2, %3
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i32 noundef %4)
  store i32 0, i32* @linstart, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanfc() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
