; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/ms_struct-bitfield-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/ms_struct-bitfield-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 40, i32* %6, align 4
  store i32 8, i32* %7, align 4
  store i32 32, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 40
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void @abort() #2
  unreachable

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @abort() #2
  unreachable

16:                                               ; preds = %12
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 32
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @abort() #2
  unreachable

20:                                               ; preds = %16
  ret i32 0
}

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
