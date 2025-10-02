; ModuleID = './hypre_memory.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/hypre_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [43 x i8] c"Out of memory trying to allocate %d bytes\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [86 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/hypre_memory.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_OutOfMemory(i32 noundef %0) #0 {
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 noundef %0) #3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = call i32 @fflush(%struct._IO_FILE* noundef %3) #3
  call void @hypre_error_handler(i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 78, i32 noundef 2) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local void @hypre_error_handler(i8* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @hypre_MAlloc(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = sext i32 %0 to i64
  %5 = call noalias i8* @malloc(i64 noundef %4) #3
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call i32 @hypre_OutOfMemory(i32 noundef %0)
  br label %9

9:                                                ; preds = %7, %3
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %9
  %.0 = phi i8* [ %5, %9 ], [ null, %10 ]
  ret i8* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @hypre_CAlloc(i32 noundef %0, i32 noundef %1) #0 {
  %3 = mul nsw i32 %0, %1
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = sext i32 %0 to i64
  %7 = sext i32 %1 to i64
  %8 = call noalias i8* @calloc(i64 noundef %6, i64 noundef %7) #3
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = call i32 @hypre_OutOfMemory(i32 noundef %3)
  br label %12

12:                                               ; preds = %10, %5
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %12
  %.0 = phi i8* [ %8, %12 ], [ null, %13 ]
  ret i8* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @hypre_ReAlloc(i8* noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i8* %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = sext i32 %1 to i64
  %6 = call noalias i8* @malloc(i64 noundef %5) #3
  br label %10

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = call i8* @realloc(i8* noundef nonnull %0, i64 noundef %8) #3
  br label %10

10:                                               ; preds = %7, %4
  %.0 = phi i8* [ %6, %4 ], [ %9, %7 ]
  %11 = icmp eq i8* %.0, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = icmp sgt i32 %1, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = call i32 @hypre_OutOfMemory(i32 noundef %1)
  br label %16

16:                                               ; preds = %14, %12, %10
  ret i8* %.0
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @hypre_Free(i8* noundef %0) #0 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  call void @free(i8* noundef %0) #3
  br label %3

3:                                                ; preds = %2, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
