; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000605-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000605-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.F = type { i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1(%struct.F* noundef %0, %struct.F* noundef %1) #0 {
  %3 = alloca %struct.F*, align 8
  %4 = alloca %struct.F*, align 8
  %5 = alloca i32, align 4
  store %struct.F* %0, %struct.F** %3, align 8
  store %struct.F* %1, %struct.F** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %20, %2
  %7 = load %struct.F*, %struct.F** %3, align 8
  %8 = getelementptr inbounds %struct.F, %struct.F* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.F*, %struct.F** %4, align 8
  %11 = getelementptr inbounds %struct.F, %struct.F* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %6
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = icmp sgt i32 %16, 5
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @abort() #2
  unreachable

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.F*, %struct.F** %3, align 8
  %22 = getelementptr inbounds %struct.F, %struct.F* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %6, !llvm.loop !4

25:                                               ; preds = %6
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.F, align 4
  %3 = alloca %struct.F, align 4
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds %struct.F, %struct.F* %2, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.F, %struct.F* %3, i32 0, i32 0
  store i32 1, i32* %5, align 4
  call void @f1(%struct.F* noundef %2, %struct.F* noundef %3)
  call void @exit(i32 noundef 0) #2
  unreachable
}

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
