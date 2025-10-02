; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-bitcount/bitarray.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-bitcount/bitarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @alloc_bit_array(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = add i64 %4, 8
  %6 = sub i64 %5, 1
  %7 = udiv i64 %6, 8
  %8 = call noalias i8* @calloc(i64 noundef %7, i64 noundef 1) #2
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  ret i8* %9
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getbit(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sdiv i32 %5, 8
  %7 = load i8*, i8** %3, align 8
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = load i32, i32* %4, align 4
  %14 = srem i32 %13, 8
  %15 = shl i32 1, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @setbit(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sdiv i32 %7, 8
  %9 = load i8*, i8** %4, align 8
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  store i8* %11, i8** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = srem i32 %15, 8
  %17 = shl i32 1, %16
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = or i32 %20, %17
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %18, align 1
  br label %33

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = srem i32 %24, 8
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = and i32 %30, %27
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %28, align 1
  br label %33

33:                                               ; preds = %23, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @flipbit(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sdiv i32 %5, 8
  %7 = load i8*, i8** %3, align 8
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  store i8* %9, i8** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = srem i32 %10, 8
  %12 = shl i32 1, %11
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = xor i32 %15, %12
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %13, align 1
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
