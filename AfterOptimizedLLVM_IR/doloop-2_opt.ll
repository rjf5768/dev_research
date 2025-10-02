; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/doloop-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/doloop-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  store i32 0, i32* %1, align 4
  store i16 0, i16* %2, align 2
  br label %3

3:                                                ; preds = %6, %0
  %4 = load volatile i32, i32* @i, align 4
  %5 = add i32 %4, 1
  store volatile i32 %5, i32* @i, align 4
  br label %6

6:                                                ; preds = %3
  %7 = load i16, i16* %2, align 2
  %8 = add i16 %7, -1
  store i16 %8, i16* %2, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %3, label %11, !llvm.loop !4

11:                                               ; preds = %6
  %12 = load volatile i32, i32* @i, align 4
  %13 = icmp ne i32 %12, 65536
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @abort() #2
  unreachable

15:                                               ; preds = %11
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
