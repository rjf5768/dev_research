; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Trimaran/netbench-url/url.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @internet_checksum(i16* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %9, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load i16*, i16** %3, align 8
  %11 = getelementptr inbounds i16, i16* %10, i32 1
  store i16* %11, i16** %3, align 8
  %12 = load i16, i16* %10, align 2
  %13 = zext i16 %12 to i32
  %14 = xor i32 %13, -1
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %5, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, 2
  store i32 %19, i32* %4, align 4
  br label %6, !llvm.loop !4

20:                                               ; preds = %6
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i16*, i16** %3, align 8
  %25 = bitcast i16* %24 to i8*
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i64
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %23, %20
  br label %31

31:                                               ; preds = %35, %30
  %32 = load i64, i64* %5, align 8
  %33 = lshr i64 %32, 16
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  %37 = and i64 %36, 65535
  %38 = load i64, i64* %5, align 8
  %39 = lshr i64 %38, 16
  %40 = add i64 %37, %39
  store i64 %40, i64* %5, align 8
  br label %31, !llvm.loop !6

41:                                               ; preds = %31
  %42 = load i64, i64* %5, align 8
  %43 = lshr i64 %42, 8
  %44 = and i64 %43, 255
  %45 = load i64, i64* %5, align 8
  %46 = shl i64 %45, 8
  %47 = and i64 %46, 65280
  %48 = add i64 %44, %47
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  ret i64 %49
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__FUNCTION__.main, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0)) #5
  unreachable

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @atoi(i8* noundef %18) #6
  store i32 %19, i32* %7, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  call void @db_init(i8* noundef %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %71, %15
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = call i8* @get_next_packet(i32 noundef %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 10
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, 8
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 11
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %36, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %10, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 10
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 11
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %9, align 8
  %48 = bitcast i8* %47 to i16*
  %49 = call i64 @internet_checksum(i16* noundef %48, i32 noundef 20)
  %50 = and i64 %49, 65535
  store i64 %50, i64* %11, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @packet_size(i32 noundef %52)
  %54 = call %struct.rtentry* @find_destination(i8* noundef %51, i32 noundef %53)
  store %struct.rtentry* %54, %struct.rtentry** %6, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = bitcast i8* %55 to i16*
  %57 = call i64 @internet_checksum(i16* noundef %56, i32 noundef 20)
  %58 = and i64 %57, 65535
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = and i64 %59, 65280
  %61 = ashr i64 %60, 8
  %62 = trunc i64 %61 to i8
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 10
  store i8 %62, i8* %64, align 1
  %65 = load i64, i64* %11, align 8
  %66 = and i64 %65, 255
  %67 = trunc i64 %66 to i8
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 11
  store i8 %67, i8* %69, align 1
  %70 = load i8*, i8** %9, align 8
  call void @free(i8* noundef %70) #7
  br label %71

71:                                               ; preds = %29
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %25, !llvm.loop !7

74:                                               ; preds = %25
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %75, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef %76)
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @_fatal(i8* noundef, i8* noundef, i32 noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

declare dso_local void @db_init(i8* noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local i8* @get_next_packet(i32 noundef) #3

declare dso_local %struct.rtentry* @find_destination(i8* noundef, i32 noundef) #3

declare dso_local i32 @packet_size(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

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
