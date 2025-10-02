; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010329-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010329-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* inttoptr (i64 2147483649 to i8*), i8** %2, align 8
  store i8* inttoptr (i64 -9223372036854775807 to i8*), i8** %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp uge i8* %4, inttoptr (i64 2147483648 to i8*)
  br i1 %5, label %6, label %16

6:                                                ; preds = %0
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ule i8* %7, inttoptr (i64 2147483653 to i8*)
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i8*, i8** %3, align 8
  %11 = icmp uge i8* %10, inttoptr (i64 -9223372036854775808 to i8*)
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ule i8* %13, inttoptr (i64 -9223372036854775803 to i8*)
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @exit(i32 noundef 0) #2
  unreachable

16:                                               ; preds = %12, %9, %6, %0
  call void @abort() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
