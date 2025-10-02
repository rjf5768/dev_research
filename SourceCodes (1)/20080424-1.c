; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20080424-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20080424-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bar.i = internal global i32 0, align 4
@g = dso_local global [48 x [3 x [3 x i32]]] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar([3 x i32]* noundef %0, [3 x i32]* noundef %1) #0 {
  %3 = alloca [3 x i32]*, align 8
  %4 = alloca [3 x i32]*, align 8
  store [3 x i32]* %0, [3 x i32]** %3, align 8
  store [3 x i32]* %1, [3 x i32]** %4, align 8
  %5 = load [3 x i32]*, [3 x i32]** %3, align 8
  %6 = load i32, i32* @bar.i, align 4
  %7 = add nsw i32 %6, 8
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [48 x [3 x [3 x i32]]], [48 x [3 x [3 x i32]]]* @g, i64 0, i64 %8
  %10 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %9, i64 0, i64 0
  %11 = icmp ne [3 x i32]* %5, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load [3 x i32]*, [3 x i32]** %4, align 8
  %14 = load i32, i32* @bar.i, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @bar.i, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds [48 x [3 x [3 x i32]]], [48 x [3 x [3 x i32]]]* @g, i64 0, i64 %16
  %18 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %17, i64 0, i64 0
  %19 = icmp ne [3 x i32]* %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12, %2
  call void @abort() #2
  unreachable

21:                                               ; preds = %12
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [3 x [3 x i32]]*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store [3 x [3 x i32]]* getelementptr inbounds ([48 x [3 x [3 x i32]]], [48 x [3 x [3 x i32]]]* @g, i64 0, i64 0), [3 x [3 x i32]]** %1, align 8
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %8, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 8
  store i32 %10, i32* %3, align 4
  %11 = load [3 x [3 x i32]]*, [3 x [3 x i32]]** %1, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %11, i64 %13
  %15 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %14, i64 0, i64 0
  %16 = load [3 x [3 x i32]]*, [3 x [3 x i32]]** %1, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %16, i64 %19
  %21 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %20, i64 0, i64 0
  call void @bar([3 x i32]* noundef %15, [3 x i32]* noundef %21) #3
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %5, !llvm.loop !4

24:                                               ; preds = %5
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
