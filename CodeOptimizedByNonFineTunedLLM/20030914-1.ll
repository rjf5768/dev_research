; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030914-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030914-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { [16 x i32] }

; Function Attrs: noinline nounwind uwtable
define dso_local x86_fp80 @f(i32 noundef %0, %struct.s* noundef byval(%struct.s) align 8 %1, x86_fp80 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca x86_fp80, align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store x86_fp80 %2, x86_fp80* %5, align 16
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %19, %3
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 16
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.s, %struct.s* %1, i32 0, i32 0
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to x86_fp80
  %17 = load x86_fp80, x86_fp80* %5, align 16
  %18 = fadd x86_fp80 %17, %16
  store x86_fp80 %18, x86_fp80* %5, align 16
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %7, !llvm.loop !4

22:                                               ; preds = %7
  %23 = load x86_fp80, x86_fp80* %5, align 16
  ret x86_fp80 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.s, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %14, %0
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 16
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  %10 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 0
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %12
  store i32 %9, i32* %13, align 4
  br label %14

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %4, !llvm.loop !6

17:                                               ; preds = %4
  %18 = call x86_fp80 @f(i32 noundef 1, %struct.s* noundef byval(%struct.s) align 8 %2, x86_fp80 noundef 0xK400C9C40000000000000)
  %19 = fcmp une x86_fp80 %18, 0xK400C9E60000000000000
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

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
