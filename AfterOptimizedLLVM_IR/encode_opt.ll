; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/g721/g721encode/encode.c'
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @pack_output.out_bits, align 4
  %8 = shl i32 %6, %7
  %9 = load i32, i32* @pack_output.out_buffer, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* @pack_output.out_buffer, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @pack_output.out_bits, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* @pack_output.out_bits, align 4
  %14 = load i32, i32* @pack_output.out_bits, align 4
  %15 = icmp sge i32 %14, 8
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i32, i32* @pack_output.out_buffer, align 4
  %18 = and i32 %17, 255
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %5, align 1
  %20 = load i32, i32* @pack_output.out_bits, align 4
  %21 = sub nsw i32 %20, 8
  store i32 %21, i32* @pack_output.out_bits, align 4
  %22 = load i32, i32* @pack_output.out_buffer, align 4
  %23 = lshr i32 %22, 8
  store i32 %23, i32* @pack_output.out_buffer, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %25 = call i64 @fwrite(i8* noundef %5, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %24)
  br label %26

26:                                               ; preds = %16, %2
  %27 = load i32, i32* @pack_output.out_bits, align 4
  %28 = icmp sgt i32 %27, 0
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.g72x_state, align 8
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32 (...)*, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @g72x_init_state(%struct.g72x_state* noundef %6)
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %16 = bitcast i8* %7 to i32*
  store i32* %16, i32** %13, align 8
  store i32 (...)* bitcast (i32 (i32, i32, %struct.g72x_state*)* @g721_encoder to i32 (...)*), i32 (...)** %14, align 8
  store i32 4, i32* %15, align 4
  br label %17

17:                                               ; preds = %65, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 45
  br label %28

28:                                               ; preds = %20, %17
  %29 = phi i1 [ false, %17 ], [ %27, %20 ]
  br i1 %29, label %30, label %70

30:                                               ; preds = %28
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %46 [
    i32 51, label %37
    i32 52, label %38
    i32 53, label %39
    i32 117, label %40
    i32 97, label %42
    i32 108, label %44
  ]

37:                                               ; preds = %30
  store i32 (...)* bitcast (i32 (i32, i32, %struct.g72x_state*)* @g723_24_encoder to i32 (...)*), i32 (...)** %14, align 8
  store i32 3, i32* %15, align 4
  br label %65

38:                                               ; preds = %30
  store i32 (...)* bitcast (i32 (i32, i32, %struct.g72x_state*)* @g721_encoder to i32 (...)*), i32 (...)** %14, align 8
  store i32 4, i32* %15, align 4
  br label %65

39:                                               ; preds = %30
  store i32 (...)* bitcast (i32 (i32, i32, %struct.g72x_state*)* @g723_40_encoder to i32 (...)*), i32 (...)** %14, align 8
  store i32 5, i32* %15, align 4
  br label %65

40:                                               ; preds = %30
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %41 = bitcast i8* %7 to i32*
  store i32* %41, i32** %13, align 8
  br label %65

42:                                               ; preds = %30
  store i32 2, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %43 = bitcast i8* %7 to i32*
  store i32* %43, i32** %13, align 8
  br label %65

44:                                               ; preds = %30
  store i32 3, i32* %11, align 4
  store i32 2, i32* %12, align 4
  %45 = bitcast i16* %8 to i32*
  store i32* %45, i32** %13, align 8
  br label %65

46:                                               ; preds = %30
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  call void @exit(i32 noundef 1) #3
  unreachable

65:                                               ; preds = %44, %42, %40, %39, %38, %37
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %4, align 4
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %69, i8*** %5, align 8
  br label %17, !llvm.loop !4

70:                                               ; preds = %28
  br label %71

71:                                               ; preds = %89, %70
  %72 = load i32*, i32** %13, align 8
  %73 = bitcast i32* %72 to i8*
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %77 = call i64 @fread(i8* noundef %73, i64 noundef %75, i64 noundef 1, %struct._IO_FILE* noundef %76)
  %78 = icmp eq i64 %77, 1
  br i1 %78, label %79, label %99

79:                                               ; preds = %71
  %80 = load i32 (...)*, i32 (...)** %14, align 8
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i16, i16* %8, align 2
  %85 = sext i16 %84 to i32
  br label %89

86:                                               ; preds = %79
  %87 = load i8, i8* %7, align 1
  %88 = zext i8 %87 to i32
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i32 [ %85, %83 ], [ %88, %86 ]
  %91 = load i32, i32* %11, align 4
  %92 = bitcast i32 (...)* %80 to i32 (i32, i32, %struct.g72x_state*, ...)*
  %93 = call i32 (i32, i32, %struct.g72x_state*, ...) %92(i32 noundef %90, i32 noundef %91, %struct.g72x_state* noundef %6)
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %9, align 1
  %95 = load i8, i8* %9, align 1
  %96 = zext i8 %95 to i32
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @pack_output(i32 noundef %96, i32 noundef %97)
  store i32 %98, i32* %10, align 4
  br label %71, !llvm.loop !6

99:                                               ; preds = %71
  br label %100

100:                                              ; preds = %103, %99
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @pack_output(i32 noundef 0, i32 noundef %104)
  store i32 %105, i32* %10, align 4
  br label %100, !llvm.loop !7

106:                                              ; preds = %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %108 = call i32 @fclose(%struct._IO_FILE* noundef %107)
  ret i32 0
}

declare dso_local void @g72x_init_state(%struct.g72x_state* noundef) #1

declare dso_local i32 @g721_encoder(i32 noundef, i32 noundef, %struct.g72x_state* noundef) #1

declare dso_local i32 @g723_24_encoder(i32 noundef, i32 noundef, %struct.g72x_state* noundef) #1

declare dso_local i32 @g723_40_encoder(i32 noundef, i32 noundef, %struct.g72x_state* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
