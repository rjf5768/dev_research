; ModuleID = './encode.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/g721/g721encode/encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.g72x_state = type { i64, i16, i16, i16, i16, [2 x i16], [6 x i16], [2 x i16], [6 x i16], [2 x i16], i8 }

@pack_output.out_buffer = internal global i32 0, align 4
@pack_output.out_bits = internal global i32 0, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"CCITT ADPCM Encoder -- usage:\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"\09encode [-3|4|5] [-a|u|l] < infile > outfile\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"where:\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\09-3\09Generate G.723 24kbps (3-bit) data\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"\09-4\09Generate G.721 32kbps (4-bit) data [default]\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\09-5\09Generate G.723 40kbps (5-bit) data\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\09-a\09Process 8-bit A-law input data\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"\09-u\09Process 8-bit u-law input data [default]\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\09-l\09Process 16-bit linear PCM input data\0A\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pack_output(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = load i32, i32* @pack_output.out_bits, align 4
  %5 = shl i32 %0, %4
  %6 = load i32, i32* @pack_output.out_buffer, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* @pack_output.out_buffer, align 4
  %8 = add nsw i32 %4, %1
  store i32 %8, i32* @pack_output.out_bits, align 4
  %9 = icmp sgt i32 %8, 7
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* @pack_output.out_buffer, align 4
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %3, align 1
  %13 = load i32, i32* @pack_output.out_bits, align 4
  %14 = add nsw i32 %13, -8
  store i32 %14, i32* @pack_output.out_bits, align 4
  %15 = lshr i32 %11, 8
  store i32 %15, i32* @pack_output.out_buffer, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %char = load i8, i8* %3, align 1
  %chari = sext i8 %char to i32
  %fputc = call i32 @fputc(i32 %chari, %struct._IO_FILE* %16)
  br label %17

17:                                               ; preds = %10, %2
  %18 = load i32, i32* @pack_output.out_bits, align 4
  %19 = icmp sgt i32 %18, 0
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.g72x_state, align 8
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  call void @g72x_init_state(%struct.g72x_state* noundef nonnull %3) #5
  %6 = bitcast i8* %4 to i32*
  br label %7

7:                                                ; preds = %51, %2
  %.011 = phi i32* [ %6, %2 ], [ %.112, %51 ]
  %.09 = phi i32 [ 1, %2 ], [ %.110, %51 ]
  %.07 = phi i32 [ 1, %2 ], [ %.18, %51 ]
  %8 = phi i32 (i32, i32, %struct.g72x_state*, ...)* [ bitcast (i32 (i32, i32, %struct.g72x_state*)* @g721_encoder to i32 (i32, i32, %struct.g72x_state*, ...)*), %2 ], [ %52, %51 ]
  %.03 = phi i32 (...)* [ bitcast (i32 (i32, i32, %struct.g72x_state*)* @g721_encoder to i32 (...)*), %2 ], [ %.14, %51 ]
  %.02 = phi i8** [ %1, %2 ], [ %54, %51 ]
  %.01 = phi i32 [ %0, %2 ], [ %53, %51 ]
  %.0 = phi i32 [ 4, %2 ], [ %.1, %51 ]
  %9 = icmp sgt i32 %.01, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8*, i8** %.02, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 45
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i1 [ false, %7 ], [ %14, %10 ]
  br i1 %16, label %17, label %55

17:                                               ; preds = %15
  %18 = getelementptr inbounds i8*, i8** %.02, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %32 [
    i32 51, label %23
    i32 52, label %24
    i32 53, label %25
    i32 117, label %26
    i32 97, label %28
    i32 108, label %30
  ]

23:                                               ; preds = %17
  br label %51

24:                                               ; preds = %17
  br label %51

25:                                               ; preds = %17
  br label %51

26:                                               ; preds = %17
  %27 = bitcast i8* %4 to i32*
  br label %51

28:                                               ; preds = %17
  %29 = bitcast i8* %4 to i32*
  br label %51

30:                                               ; preds = %17
  %31 = bitcast i16* %5 to i32*
  br label %51

32:                                               ; preds = %17
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %33) #6
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %35) #6
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %37) #6
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %39) #6
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = call i64 @fwrite(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* %41) #6
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %43) #6
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %45) #6
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %47) #6
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %49) #6
  call void @exit(i32 noundef 1) #7
  unreachable

51:                                               ; preds = %30, %28, %26, %25, %24, %23
  %.112 = phi i32* [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %.011, %25 ], [ %.011, %24 ], [ %.011, %23 ]
  %.110 = phi i32 [ 2, %30 ], [ 1, %28 ], [ 1, %26 ], [ %.09, %25 ], [ %.09, %24 ], [ %.09, %23 ]
  %.18 = phi i32 [ 3, %30 ], [ 2, %28 ], [ 1, %26 ], [ %.07, %25 ], [ %.07, %24 ], [ %.07, %23 ]
  %52 = phi i32 (i32, i32, %struct.g72x_state*, ...)* [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ bitcast (i32 (i32, i32, %struct.g72x_state*)* @g723_40_encoder to i32 (i32, i32, %struct.g72x_state*, ...)*), %25 ], [ bitcast (i32 (i32, i32, %struct.g72x_state*)* @g721_encoder to i32 (i32, i32, %struct.g72x_state*, ...)*), %24 ], [ bitcast (i32 (i32, i32, %struct.g72x_state*)* @g723_24_encoder to i32 (i32, i32, %struct.g72x_state*, ...)*), %23 ]
  %.14 = phi i32 (...)* [ %.03, %30 ], [ %.03, %28 ], [ %.03, %26 ], [ bitcast (i32 (i32, i32, %struct.g72x_state*)* @g723_40_encoder to i32 (...)*), %25 ], [ bitcast (i32 (i32, i32, %struct.g72x_state*)* @g721_encoder to i32 (...)*), %24 ], [ bitcast (i32 (i32, i32, %struct.g72x_state*)* @g723_24_encoder to i32 (...)*), %23 ]
  %.1 = phi i32 [ %.0, %30 ], [ %.0, %28 ], [ %.0, %26 ], [ 5, %25 ], [ 4, %24 ], [ 3, %23 ]
  %53 = add nsw i32 %.01, -1
  %54 = getelementptr inbounds i8*, i8** %.02, i64 1
  br label %7, !llvm.loop !4

55:                                               ; preds = %15
  br label %56

56:                                               ; preds = %70, %55
  %.05 = phi i32 [ undef, %55 ], [ %74, %70 ]
  %57 = bitcast i32* %.011 to i8*
  %58 = sext i32 %.09 to i64
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %60 = call i64 @fread(i8* noundef %57, i64 noundef %58, i64 noundef 1, %struct._IO_FILE* noundef %59) #5
  %61 = icmp eq i64 %60, 1
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = icmp eq i32 %.09, 2
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load i16, i16* %5, align 2
  %66 = sext i16 %65 to i32
  br label %70

67:                                               ; preds = %62
  %68 = load i8, i8* %4, align 1
  %69 = zext i8 %68 to i32
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i32 [ %66, %64 ], [ %69, %67 ]
  %72 = call i32 (i32, i32, %struct.g72x_state*, ...) %8(i32 noundef %71, i32 noundef %.07, %struct.g72x_state* noundef nonnull %3) #5
  %73 = and i32 %72, 255
  %74 = call i32 @pack_output(i32 noundef %73, i32 noundef %.0)
  br label %56, !llvm.loop !6

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %77, %75
  %.16 = phi i32 [ %.05, %75 ], [ %78, %77 ]
  %.not = icmp eq i32 %.16, 0
  br i1 %.not, label %79, label %77

77:                                               ; preds = %76
  %78 = call i32 @pack_output(i32 noundef 0, i32 noundef %.0)
  br label %76, !llvm.loop !7

79:                                               ; preds = %76
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %81 = call i32 @fclose(%struct._IO_FILE* noundef %80) #5
  ret i32 0
}

declare dso_local void @g72x_init_state(%struct.g72x_state* noundef) #2

declare dso_local i32 @g721_encoder(i32 noundef, i32 noundef, %struct.g72x_state* noundef) #2

declare dso_local i32 @g723_24_encoder(i32 noundef, i32 noundef, %struct.g72x_state* noundef) #2

declare dso_local i32 @g723_40_encoder(i32 noundef, i32 noundef, %struct.g72x_state* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { cold }
attributes #7 = { noreturn nounwind }

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
