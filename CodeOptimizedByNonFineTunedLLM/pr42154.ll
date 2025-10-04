; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42154.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42154.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { [1 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i8 %0) #0 {
  %2 = alloca %struct.A, align 1
  %3 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 0
  %4 = bitcast [1 x i8]* %3 to i8*
  store i8 %0, i8* %4, align 1
  %5 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 0
  %6 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 97
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void @abort() #2
  unreachable

11:                                               ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.A, align 1
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %12, %0
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 0
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [1 x i8], [1 x i8]* %8, i64 0, i64 %10
  store i8 97, i8* %11, align 1
  br label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %4, !llvm.loop !4

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 0
  %17 = bitcast [1 x i8]* %16 to i8*
  %18 = load i8, i8* %17, align 1
  call void @foo(i8 %18)
  ret i32 0
}

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
