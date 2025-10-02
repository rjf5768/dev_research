; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020307-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020307-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @f3(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 7
  %5 = icmp uge i64 %4, 6
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 15
  %5 = icmp uge i64 %4, 10
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f5(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 31
  %5 = icmp uge i64 %4, 18
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f6(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 63
  %5 = icmp uge i64 %4, 34
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f7(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 127
  %5 = icmp uge i64 %4, 66
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f8(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 255
  %5 = icmp uge i64 %4, 130
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f9(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 511
  %5 = icmp uge i64 %4, 258
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f10(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 1023
  %5 = icmp uge i64 %4, 514
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f11(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 2047
  %5 = icmp uge i64 %4, 1026
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f12(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 4095
  %5 = icmp uge i64 %4, 2050
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f13(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 8191
  %5 = icmp uge i64 %4, 4098
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f14(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 16383
  %5 = icmp uge i64 %4, 8194
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f15(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 32767
  %5 = icmp uge i64 %4, 16386
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f16(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp uge i64 %4, 32770
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f17(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 131071
  %5 = icmp uge i64 %4, 65538
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f18(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 262143
  %5 = icmp uge i64 %4, 131074
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f19(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 524287
  %5 = icmp uge i64 %4, 262146
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f20(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 1048575
  %5 = icmp uge i64 %4, 524290
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f21(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 2097151
  %5 = icmp uge i64 %4, 1048578
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f22(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 4194303
  %5 = icmp uge i64 %4, 2097154
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f23(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 8388607
  %5 = icmp uge i64 %4, 4194306
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f24(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 16777215
  %5 = icmp uge i64 %4, 8388610
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f25(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 33554431
  %5 = icmp uge i64 %4, 16777218
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f26(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 67108863
  %5 = icmp uge i64 %4, 33554434
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f27(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 134217727
  %5 = icmp uge i64 %4, 67108866
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f28(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 268435455
  %5 = icmp uge i64 %4, 134217730
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f29(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 536870911
  %5 = icmp uge i64 %4, 268435458
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f30(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 1073741823
  %5 = icmp uge i64 %4, 536870914
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f31(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 2147483647
  %5 = icmp uge i64 %4, 1073741826
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @f3(i64 noundef 0)
  call void @f4(i64 noundef 0)
  call void @f5(i64 noundef 0)
  call void @f6(i64 noundef 0)
  call void @f7(i64 noundef 0)
  call void @f8(i64 noundef 0)
  call void @f9(i64 noundef 0)
  call void @f10(i64 noundef 0)
  call void @f11(i64 noundef 0)
  call void @f12(i64 noundef 0)
  call void @f13(i64 noundef 0)
  call void @f14(i64 noundef 0)
  call void @f15(i64 noundef 0)
  call void @f16(i64 noundef 0)
  call void @f17(i64 noundef 0)
  call void @f18(i64 noundef 0)
  call void @f19(i64 noundef 0)
  call void @f20(i64 noundef 0)
  call void @f21(i64 noundef 0)
  call void @f22(i64 noundef 0)
  call void @f23(i64 noundef 0)
  call void @f24(i64 noundef 0)
  call void @f25(i64 noundef 0)
  call void @f26(i64 noundef 0)
  call void @f27(i64 noundef 0)
  call void @f28(i64 noundef 0)
  call void @f29(i64 noundef 0)
  call void @f30(i64 noundef 0)
  call void @f31(i64 noundef 0)
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
