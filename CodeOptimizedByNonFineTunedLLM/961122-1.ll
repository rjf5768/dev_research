; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/961122-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/961122-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acc = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @addhi(i16 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  %4 = load i16, i16* %3, align 2
  %5 = sext i16 %4 to i64
  %6 = shl i64 %5, 32
  %7 = load i64, i64* @acc, align 8
  %8 = add nsw i64 %7, %6
  store i64 %8, i64* @acc, align 8
  %9 = load i32, i32* %2, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subhi(i16 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  %4 = load i16, i16* %3, align 2
  %5 = sext i16 %4 to i64
  %6 = shl i64 %5, 32
  %7 = load i64, i64* @acc, align 8
  %8 = sub nsw i64 %7, %6
  store i64 %8, i64* @acc, align 8
  %9 = load i32, i32* %2, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i64 281470681743360, i64* @acc, align 8
  %2 = call i32 @addhi(i16 noundef signext 1)
  %3 = load i64, i64* @acc, align 8
  %4 = icmp ne i64 %3, 281474976710656
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #2
  unreachable

6:                                                ; preds = %0
  %7 = call i32 @subhi(i16 noundef signext 1)
  %8 = load i64, i64* @acc, align 8
  %9 = icmp ne i64 %8, 281470681743360
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  call void @abort() #2
  unreachable

11:                                               ; preds = %6
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
