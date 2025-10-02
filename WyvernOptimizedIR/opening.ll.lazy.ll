; ModuleID = './opening.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/opening.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnode = type { i32, i32, i32, [8 x i32] }

@opening.tree = internal global [21 x %struct.tnode] [%struct.tnode { i32 -1, i32 -1, i32 8, [8 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 20] }, %struct.tnode { i32 2, i32 3, i32 2, [8 x i32] [i32 8, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 2, i32 4, i32 1, [8 x i32] [i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 3, i32 2, i32 2, [8 x i32] [i32 11, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 3, i32 3, i32 6, [8 x i32] [i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 0, i32 0] }, %struct.tnode { i32 3, i32 4, i32 1, [8 x i32] [i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 4, i32 2, i32 1, [8 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 4, i32 3, i32 1, [8 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 4, i32 2, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 4, i32 3, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 3, i32 2, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 2, i32 4, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 3, i32 4, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 2, i32 3, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 2, i32 5, i32 1, [8 x i32] [i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 2, i32 6, i32 1, [8 x i32] [i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 3, i32 5, i32 1, [8 x i32] [i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 5, i32 2, i32 1, [8 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 5, i32 3, i32 1, [8 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 6, i32 2, i32 1, [8 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 2, i32 2, i32 0, [8 x i32] zeroinitializer }], align 16
@rd = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @opening(i32* nocapture noundef writeonly %0, i32* nocapture noundef writeonly %1, i32* nocapture noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 3
  br i1 %7, label %8, label %14

8:                                                ; preds = %6, %4
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i64 0, i64 %10, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 18, %12
  br label %19

14:                                               ; preds = %6
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i64 0, i64 %16, i32 0
  %18 = load i32, i32* %17, align 4
  br label %19

19:                                               ; preds = %14, %8
  %storemerge = phi i32 [ %18, %14 ], [ %13, %8 ]
  store i32 %storemerge, i32* %0, align 4
  %20 = icmp eq i32 %3, 2
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = icmp eq i32 %3, 3
  br i1 %22, label %23, label %29

23:                                               ; preds = %21, %19
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i64 0, i64 %25, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 18, %27
  br label %34

29:                                               ; preds = %21
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i64 0, i64 %31, i32 1
  %33 = load i32, i32* %32, align 4
  br label %34

34:                                               ; preds = %29, %23
  %storemerge1 = phi i32 [ %33, %29 ], [ %28, %23 ]
  store i32 %storemerge1, i32* %1, align 4
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i64 0, i64 %36, i32 2
  %38 = load i32, i32* %37, align 4
  %.not = icmp eq i32 %38, 0
  br i1 %.not, label %50, label %39

39:                                               ; preds = %34
  call void @random_nasko(i32* noundef nonnull @rd) #2
  %40 = load i32, i32* @rd, align 4
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i64 0, i64 %42, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = srem i32 %40, %44
  %46 = sext i32 %41 to i64
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i64 0, i64 %46, i32 3, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %39
  %.0 = phi i32 [ 1, %39 ], [ 0, %50 ]
  ret i32 %.0
}

declare dso_local void @random_nasko(i32* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
