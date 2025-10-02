; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr39233.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr39233.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = ptrtoint i8* %4 to i64
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = icmp sgt i64 %9, 6
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %1
  call void @abort() #2
  unreachable

12:                                               ; preds = %8
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  store i32 0, i32* %1, align 4
  store i16 6, i16* %2, align 2
  br label %3

3:                                                ; preds = %11, %0
  %4 = load i16, i16* %2, align 2
  %5 = sext i16 %4 to i32
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load i16, i16* %2, align 2
  %9 = sext i16 %8 to i64
  %10 = inttoptr i64 %9 to i8*
  call void @foo(i8* noundef %10)
  br label %11

11:                                               ; preds = %7
  %12 = load i16, i16* %2, align 2
  %13 = add i16 %12, -1
  store i16 %13, i16* %2, align 2
  br label %3, !llvm.loop !4

14:                                               ; preds = %3
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
