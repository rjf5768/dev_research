; ModuleID = './20030313-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030313-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i64, i64, i64, i64 }

@x = dso_local global %struct.A { i64 13, i64 14, i64 15, i64 16 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %.not = icmp eq i32 %1, 12
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  call void @abort() #4
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %2
  %5 = load i64, i64* %0, align 8
  %.not1 = icmp eq i64 %5, 1
  br i1 %.not1, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds i64, i64* %0, i64 1
  %8 = load i64, i64* %7, align 8
  %.not2 = icmp eq i64 %8, 11
  br i1 %.not2, label %10, label %9

9:                                                ; preds = %6, %4
  call void @abort() #4
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %6
  %11 = getelementptr inbounds i64, i64* %0, i64 2
  %12 = load i64, i64* %11, align 8
  %.not3 = icmp eq i64 %12, 2
  br i1 %.not3, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds i64, i64* %0, i64 3
  %15 = load i64, i64* %14, align 8
  %.not4 = icmp eq i64 %15, 12
  br i1 %.not4, label %17, label %16

16:                                               ; preds = %13, %10
  call void @abort() #4
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %13
  %18 = getelementptr inbounds i64, i64* %0, i64 4
  %19 = load i64, i64* %18, align 8
  %.not5 = icmp eq i64 %19, 3
  br i1 %.not5, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr inbounds i64, i64* %0, i64 5
  %22 = load i64, i64* %21, align 8
  %.not6 = icmp eq i64 %22, 13
  br i1 %.not6, label %24, label %23

23:                                               ; preds = %20, %17
  call void @abort() #4
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  %25 = getelementptr inbounds i64, i64* %0, i64 6
  %26 = load i64, i64* %25, align 8
  %.not7 = icmp eq i64 %26, 4
  br i1 %.not7, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds i64, i64* %0, i64 7
  %29 = load i64, i64* %28, align 8
  %.not8 = icmp eq i64 %29, 14
  br i1 %.not8, label %31, label %30

30:                                               ; preds = %27, %24
  call void @abort() #4
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %27
  %32 = getelementptr inbounds i64, i64* %0, i64 8
  %33 = load i64, i64* %32, align 8
  %.not9 = icmp eq i64 %33, 5
  br i1 %.not9, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds i64, i64* %0, i64 9
  %36 = load i64, i64* %35, align 8
  %.not10 = icmp eq i64 %36, 15
  br i1 %.not10, label %38, label %37

37:                                               ; preds = %34, %31
  call void @abort() #4
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %34
  %39 = getelementptr inbounds i64, i64* %0, i64 10
  %40 = load i64, i64* %39, align 8
  %.not11 = icmp eq i64 %40, 6
  br i1 %.not11, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds i64, i64* %0, i64 11
  %43 = load i64, i64* %42, align 8
  %.not12 = icmp eq i64 %43, 16
  br i1 %.not12, label %45, label %44

44:                                               ; preds = %41, %38
  call void @abort() #4
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %41
  ret void

UnifiedUnreachableBlock:                          ; preds = %44, %37, %30, %23, %16, %9, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca [40 x i64], align 16
  %2 = getelementptr inbounds [40 x i64], [40 x i64]* %1, i64 0, i64 0
  store i64 1, i64* %2, align 16
  %3 = getelementptr inbounds [40 x i64], [40 x i64]* %1, i64 0, i64 1
  store i64 11, i64* %3, align 8
  %4 = getelementptr inbounds [40 x i64], [40 x i64]* %1, i64 0, i64 2
  store i64 2, i64* %4, align 16
  %5 = getelementptr inbounds [40 x i64], [40 x i64]* %1, i64 0, i64 3
  store i64 12, i64* %5, align 8
  %6 = getelementptr inbounds [40 x i64], [40 x i64]* %1, i64 0, i64 4
  store i64 3, i64* %6, align 16
  %7 = call %struct.A* @bar()
  %8 = getelementptr inbounds %struct.A, %struct.A* %7, i64 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds [40 x i64], [40 x i64]* %1, i64 0, i64 5
  store i64 %9, i64* %10, align 8
  %11 = getelementptr inbounds [40 x i64], [40 x i64]* %1, i64 0, i64 6
  store i64 4, i64* %11, align 16
  %12 = call %struct.A* @bar()
  %13 = getelementptr inbounds %struct.A, %struct.A* %12, i64 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds [40 x i64], [40 x i64]* %1, i64 0, i64 7
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds [40 x i64], [40 x i64]* %1, i64 0, i64 8
  store i64 5, i64* %16, align 16
  %17 = call %struct.A* @bar()
  %18 = getelementptr inbounds %struct.A, %struct.A* %17, i64 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds [40 x i64], [40 x i64]* %1, i64 0, i64 9
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds [40 x i64], [40 x i64]* %1, i64 0, i64 10
  store i64 6, i64* %21, align 16
  %22 = call %struct.A* @bar()
  %23 = getelementptr inbounds %struct.A, %struct.A* %22, i64 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds [40 x i64], [40 x i64]* %1, i64 0, i64 11
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds [40 x i64], [40 x i64]* %1, i64 0, i64 0
  call void @foo(i64* noundef nonnull %26, i32 noundef 12)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.A* @bar() #3 {
  ret %struct.A* @x
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
