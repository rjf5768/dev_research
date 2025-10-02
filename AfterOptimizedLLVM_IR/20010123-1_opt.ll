; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010123-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010123-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32, i8* }

@.str = private unnamed_addr constant [10 x i8] c"hey there\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.s*, align 8
  %4 = alloca %struct.s, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %25, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.s, %struct.s* %4, i32 0, i32 0
  store i32 3, i32* %9, align 8
  %10 = getelementptr inbounds %struct.s, %struct.s* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store %struct.s* %4, %struct.s** %3, align 8
  %11 = load %struct.s*, %struct.s** %3, align 8
  %12 = getelementptr inbounds %struct.s, %struct.s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  call void @abort() #2
  unreachable

16:                                               ; preds = %8
  %17 = load %struct.s*, %struct.s** %3, align 8
  %18 = getelementptr inbounds %struct.s, %struct.s* %17, i32 0, i32 0
  store i32 4, i32* %18, align 8
  %19 = load %struct.s*, %struct.s** %3, align 8
  %20 = getelementptr inbounds %struct.s, %struct.s* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 4
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  call void @abort() #2
  unreachable

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %5, !llvm.loop !4

28:                                               ; preds = %5
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
