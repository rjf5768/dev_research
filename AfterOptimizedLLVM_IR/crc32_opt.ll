; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Trimaran/netbench-crc/crc32.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @gen_crc_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %34, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = shl i64 %9, 24
  store i64 %10, i64* %3, align 8
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %26, %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, 2147483648
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = shl i64 %19, 1
  %21 = xor i64 %20, 79764919
  store i64 %21, i64* %3, align 8
  br label %25

22:                                               ; preds = %14
  %23 = load i64, i64* %3, align 8
  %24 = shl i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %11, !llvm.loop !4

29:                                               ; preds = %11
  %30 = load i64, i64* %3, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_table, i64 0, i64 %32
  store i64 %30, i64* %33, align 8
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %4, !llvm.loop !6

37:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @update_crc(i64 noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %30, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = lshr i64 %14, 24
  %16 = trunc i64 %15 to i32
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %5, align 8
  %19 = load i8, i8* %17, align 1
  %20 = sext i8 %19 to i32
  %21 = xor i32 %16, %20
  %22 = and i32 %21, 255
  store i32 %22, i32* %7, align 4
  %23 = load i64, i64* %4, align 8
  %24 = shl i64 %23, 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_table, i64 0, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = xor i64 %24, %28
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %13
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %9, !llvm.loop !7

33:                                               ; preds = %9
  %34 = load i64, i64* %4, align 8
  ret i64 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 0) #4
  unreachable

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @atoi(i8* noundef %18) #5
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %15
  call void @gen_crc_table()
  br label %21

21:                                               ; preds = %25, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = call i8* (i32, ...) bitcast (i8* (...)* @get_next_packet to i8* (i32, ...)*)(i32 noundef %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @packet_size(i32 noundef %29)
  %31 = call i64 @update_crc(i64 noundef 0, i8* noundef %28, i32 noundef %30)
  store i64 %31, i64* %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %21, !llvm.loop !8

34:                                               ; preds = %21
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 noundef %36)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %39 = load i64, i64* %6, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 noundef %40)
  ret i32 0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

declare dso_local i8* @get_next_packet(...) #1

declare dso_local i32 @packet_size(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind readonly willreturn }

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
