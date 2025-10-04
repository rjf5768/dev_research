; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2003-07-06-IntOverflow.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-07-06-IntOverflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"compare after overflow is TRUE\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"compare after overflow is FALSE\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"divide after overflow = %d (0x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"divide negative value by power-of-2 = %d (0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"subtract after overflow = %d (0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @compareOvf(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = mul nsw i32 %6, %7
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %9, %10
  %12 = add nsw i32 %8, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 4194304
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %19

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %15
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @divideOvf(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %10, %11
  %13 = add nsw i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sdiv i32 -2147483648, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 noundef %16, i32 noundef %17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @divideNeg(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %10, %11
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sdiv i32 %14, 262144
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 noundef %16, i32 noundef %17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @subtractOvf(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %10, %11
  %13 = add nsw i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sub i32 -2147483648, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 noundef %16, i32 noundef %17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 2097152, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  call void @compareOvf(i32 noundef %3, i32 noundef %4)
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %5, 1
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 2
  call void @divideOvf(i32 noundef %6, i32 noundef %8)
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 2
  call void @divideNeg(i32 noundef %10, i32 noundef %12)
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 1
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 2
  call void @subtractOvf(i32 noundef %14, i32 noundef %16)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
