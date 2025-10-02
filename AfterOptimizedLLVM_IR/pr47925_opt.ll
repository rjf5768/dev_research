; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr47925.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr47925.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { %struct.s* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(%struct.s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s* %0, %struct.s** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  call void @bar(i32 noundef 0, i32 noundef %7)
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %16, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load %struct.s*, %struct.s** %4, align 8
  %14 = getelementptr inbounds %struct.s, %struct.s* %13, i32 0, i32 0
  %15 = load volatile %struct.s*, %struct.s** %14, align 8
  store %struct.s* %15, %struct.s** %4, align 8
  br label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  br label %8, !llvm.loop !5

19:                                               ; preds = %8
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.s, align 8
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 0
  store %struct.s* %2, %struct.s** %3, align 8
  %4 = call i32 @foo(%struct.s* noundef %2, i32 noundef 10)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 116}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
