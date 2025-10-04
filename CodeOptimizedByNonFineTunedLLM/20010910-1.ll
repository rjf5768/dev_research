; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010910-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010910-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epic_private = type { %struct.epic_rx_desc*, [5 x i32] }
%struct.epic_rx_desc = type { i32 }

@check_rx_ring = internal global [5 x i32] [i32 12, i32 14, i32 16, i32 18, i32 10], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.epic_private, align 8
  %3 = alloca [5 x %struct.epic_rx_desc], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %17, %0
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 5
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [5 x %struct.epic_rx_desc], [5 x %struct.epic_rx_desc]* %3, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.epic_rx_desc, %struct.epic_rx_desc* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %2, i32 0, i32 1
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %15
  store i32 5, i32* %16, align 4
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %5, !llvm.loop !4

20:                                               ; preds = %5
  %21 = getelementptr inbounds [5 x %struct.epic_rx_desc], [5 x %struct.epic_rx_desc]* %3, i64 0, i64 0
  %22 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %2, i32 0, i32 0
  store %struct.epic_rx_desc* %21, %struct.epic_rx_desc** %22, align 8
  call void @epic_init_ring(%struct.epic_private* noundef %2)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %47, %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 5
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [5 x %struct.epic_rx_desc], [5 x %struct.epic_rx_desc]* %3, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.epic_rx_desc, %struct.epic_rx_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* @check_rx_ring, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  call void @abort() #2
  unreachable

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %2, i32 0, i32 1
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %39, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  call void @abort() #2
  unreachable

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %23, !llvm.loop !6

50:                                               ; preds = %23
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @epic_init_ring(%struct.epic_private* noundef %0) #0 {
  %2 = alloca %struct.epic_private*, align 8
  %3 = alloca i32, align 4
  store %struct.epic_private* %0, %struct.epic_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %24, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 5
  br i1 %6, label %7, label %27

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  %10 = mul nsw i32 %9, 2
  %11 = add nsw i32 10, %10
  %12 = load %struct.epic_private*, %struct.epic_private** %2, align 8
  %13 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %12, i32 0, i32 0
  %14 = load %struct.epic_rx_desc*, %struct.epic_rx_desc** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.epic_rx_desc, %struct.epic_rx_desc* %14, i64 %16
  %18 = getelementptr inbounds %struct.epic_rx_desc, %struct.epic_rx_desc* %17, i32 0, i32 0
  store i32 %11, i32* %18, align 4
  %19 = load %struct.epic_private*, %struct.epic_private** %2, align 8
  %20 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %19, i32 0, i32 1
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 %22
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %4, !llvm.loop !7

27:                                               ; preds = %4
  %28 = load %struct.epic_private*, %struct.epic_private** %2, align 8
  %29 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %28, i32 0, i32 0
  %30 = load %struct.epic_rx_desc*, %struct.epic_rx_desc** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.epic_rx_desc, %struct.epic_rx_desc* %30, i64 %33
  %35 = getelementptr inbounds %struct.epic_rx_desc, %struct.epic_rx_desc* %34, i32 0, i32 0
  store i32 10, i32* %35, align 4
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

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
