; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000403-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000403-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = dso_local global [1 x i64] [i64 9223372036854771713], align 8
@bb = dso_local global [1 x i64] [i64 9223372036854771713], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @aa, i64 0, i64 0), align 8
  %3 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @bb, i64 0, i64 0), align 8
  %4 = call i32 @seqgt(i64 noundef %2, i16 noundef zeroext 4096, i64 noundef %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @aa, i64 0, i64 0), align 8
  %8 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @bb, i64 0, i64 0), align 8
  %9 = call i32 @seqgt2(i64 noundef %7, i16 noundef zeroext 4096, i64 noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %0
  call void @abort() #2
  unreachable

12:                                               ; preds = %6
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @seqgt(i64 noundef %0, i16 noundef zeroext %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i16 %1, i16* %5, align 2
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i16, i16* %5, align 2
  %9 = zext i16 %8 to i64
  %10 = add i64 %7, %9
  %11 = load i64, i64* %6, align 8
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @seqgt2(i64 noundef %0, i16 noundef zeroext %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i16 %1, i16* %5, align 2
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i16, i16* %5, align 2
  %10 = zext i16 %9 to i64
  %11 = add i64 %8, %10
  %12 = load i64, i64* %6, align 8
  %13 = sub i64 %11, %12
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp sgt i64 %14, 0
  %16 = zext i1 %15 to i32
  ret i32 %16
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
