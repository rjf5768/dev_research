; ModuleID = './stcopy.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/stcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@string_count = dso_local global i32 0, align 4
@string_max = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @stcopy(i8* noundef %0) #0 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %14

3:                                                ; preds = %1
  %4 = load i32, i32* @string_max, align 4
  %5 = load i32, i32* @string_count, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @string_count, align 4
  %.not1 = icmp sgt i32 %4, %5
  br i1 %.not1, label %9, label %7

7:                                                ; preds = %3
  %8 = load i32, i32* @string_count, align 4
  store i32 %8, i32* @string_max, align 4
  br label %9

9:                                                ; preds = %7, %3
  %10 = call i64 @strlen(i8* noundef nonnull %0) #3
  %11 = add i64 %10, 1
  %12 = call noalias i8* @malloc(i64 noundef %11) #3
  %13 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %12, i8* noundef nonnull %0) #3
  br label %14

14:                                               ; preds = %9, %2
  %.0 = phi i8* [ %13, %9 ], [ null, %2 ]
  ret i8* %.0
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @stcopyr(i8* noundef %0, i8* noundef %1) #0 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %3, label %7

3:                                                ; preds = %2
  %.not2 = icmp eq i8* %1, null
  br i1 %.not2, label %7, label %4

4:                                                ; preds = %3
  call void @free(i8* noundef %1) #3
  %5 = load i32, i32* @string_count, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @string_count, align 4
  br label %34

7:                                                ; preds = %3, %2
  %.not3 = icmp eq i8* %0, null
  br i1 %.not3, label %8, label %9

8:                                                ; preds = %7
  br label %34

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9
  %11 = call i64 @strlen(i8* noundef nonnull %0) #3
  %12 = trunc i64 %11 to i32
  %13 = add i32 %12, 1
  %.not4 = icmp eq i8* %1, null
  br i1 %.not4, label %23, label %14

14:                                               ; preds = %10
  %15 = call i64 @strlen(i8* noundef nonnull %1) #3
  %16 = add i64 %15, 1
  %17 = sext i32 %13 to i64
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  call void @free(i8* noundef %1) #3
  %20 = sext i32 %13 to i64
  %21 = call noalias i8* @malloc(i64 noundef %20) #3
  br label %22

22:                                               ; preds = %19, %14
  %.01 = phi i8* [ %21, %19 ], [ %1, %14 ]
  br label %32

23:                                               ; preds = %10
  %24 = sext i32 %13 to i64
  %25 = call noalias i8* @malloc(i64 noundef %24) #3
  %26 = load i32, i32* @string_count, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @string_count, align 4
  %28 = load i32, i32* @string_max, align 4
  %.not5 = icmp sgt i32 %28, %26
  br i1 %.not5, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @string_count, align 4
  store i32 %30, i32* @string_max, align 4
  br label %31

31:                                               ; preds = %29, %23
  br label %32

32:                                               ; preds = %31, %22
  %.1 = phi i8* [ %.01, %22 ], [ %25, %31 ]
  %33 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %.1, i8* noundef nonnull %0) #3
  br label %34

34:                                               ; preds = %32, %8, %4
  %.0 = phi i8* [ %33, %32 ], [ null, %8 ], [ null, %4 ]
  ret i8* %.0
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @stfree(i8* noundef %0) #0 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %5, label %2

2:                                                ; preds = %1
  call void @free(i8* noundef %0) #3
  %3 = load i32, i32* @string_count, align 4
  %4 = add nsw i32 %3, -1
  store i32 %4, i32* @string_count, align 4
  br label %5

5:                                                ; preds = %2, %1
  ret void
}

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
