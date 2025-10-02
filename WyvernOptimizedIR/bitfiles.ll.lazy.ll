; ModuleID = './bitfiles.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-bitcount/bitfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfile = type { %struct._IO_FILE*, i8, i8, i8, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.bfile* @bfopen(i8* noundef %0, i8* noundef %1) #0 {
  %3 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %4 = bitcast i8* %3 to %struct.bfile*
  %5 = icmp eq i8* %3, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %15

7:                                                ; preds = %2
  %8 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef %1) #3
  %9 = getelementptr inbounds %struct.bfile, %struct.bfile* %4, i64 0, i32 0
  store %struct._IO_FILE* %8, %struct._IO_FILE** %9, align 8
  %10 = icmp eq %struct._IO_FILE* %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  call void @free(i8* noundef %3) #3
  br label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bfile, %struct.bfile* %4, i64 0, i32 2
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.bfile, %struct.bfile* %4, i64 0, i32 4
  store i8 0, i8* %14, align 1
  br label %15

15:                                               ; preds = %12, %11, %6
  %.0 = phi %struct.bfile* [ null, %6 ], [ null, %11 ], [ %4, %12 ]
  ret %struct.bfile* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bfread(%struct.bfile* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bfile, %struct.bfile* %0, i64 0, i32 2
  %3 = load i8, i8* %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bfile, %struct.bfile* %0, i64 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %8 = call i32 @fgetc(%struct._IO_FILE* noundef %7) #3
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds %struct.bfile, %struct.bfile* %0, i64 0, i32 1
  store i8 %9, i8* %10, align 8
  %11 = getelementptr inbounds %struct.bfile, %struct.bfile* %0, i64 0, i32 2
  store i8 8, i8* %11, align 1
  br label %12

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.bfile, %struct.bfile* %0, i64 0, i32 2
  %14 = load i8, i8* %13, align 1
  %15 = add i8 %14, -1
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds %struct.bfile, %struct.bfile* %0, i64 0, i32 1
  %17 = load i8, i8* %16, align 8
  %18 = sext i8 %17 to i32
  %19 = zext i8 %15 to i32
  %20 = lshr i32 %18, %19
  %21 = and i32 %20, 1
  ret i32 %21
}

declare dso_local i32 @fgetc(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @bfwrite(i32 noundef %0, %struct.bfile* nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bfile, %struct.bfile* %1, i64 0, i32 4
  %4 = load i8, i8* %3, align 1
  %5 = icmp eq i8 %4, 8
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bfile, %struct.bfile* %1, i64 0, i32 3
  %8 = load i8, i8* %7, align 2
  %9 = sext i8 %8 to i32
  %10 = getelementptr inbounds %struct.bfile, %struct.bfile* %1, i64 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %12 = call i32 @fputc(i32 noundef %9, %struct._IO_FILE* noundef %11) #3
  %13 = getelementptr inbounds %struct.bfile, %struct.bfile* %1, i64 0, i32 4
  store i8 0, i8* %13, align 1
  br label %14

14:                                               ; preds = %6, %2
  %15 = getelementptr inbounds %struct.bfile, %struct.bfile* %1, i64 0, i32 4
  %16 = load i8, i8* %15, align 1
  %17 = add i8 %16, 1
  store i8 %17, i8* %15, align 1
  %18 = getelementptr inbounds %struct.bfile, %struct.bfile* %1, i64 0, i32 3
  %19 = load i8, i8* %18, align 2
  %20 = shl i8 %19, 1
  %21 = getelementptr inbounds %struct.bfile, %struct.bfile* %1, i64 0, i32 3
  %22 = trunc i32 %0 to i8
  %23 = and i8 %22, 1
  %24 = or i8 %23, %20
  store i8 %24, i8* %21, align 2
  ret void
}

declare dso_local i32 @fputc(i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @bfclose(%struct.bfile* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bfile, %struct.bfile* %0, i64 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = call i32 @fclose(%struct._IO_FILE* noundef %3) #3
  %5 = bitcast %struct.bfile* %0 to i8*
  call void @free(i8* noundef %5) #3
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
