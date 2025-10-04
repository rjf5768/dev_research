; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/12-IOtest/IOtest.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/12-IOtest/IOtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array_count = dso_local global i64 0, align 8
@testarray = dso_local global i8* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getac() #0 {
  %1 = load i64, i64* @array_count, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @setac(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = urem i64 %3, 2684050
  store i64 %4, i64* @array_count, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initarray() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = load i64, i64* %1, align 8
  %4 = icmp ult i64 %3, 2684050
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = load i64, i64* %1, align 8
  %7 = urem i64 %6, 255
  %8 = trunc i64 %7 to i8
  %9 = load i8*, i8** @testarray, align 8
  %10 = load i64, i64* %1, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  store i8 %8, i8* %11, align 1
  %12 = load i64, i64* %1, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %1, align 8
  br label %2, !llvm.loop !4

14:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @array(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i8*, i8** @testarray, align 8
  %4 = load i64, i64* %2, align 8
  %5 = getelementptr inbounds i8, i8* %3, i64 %4
  %6 = load i8, i8* %5, align 1
  ret i8 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @min(i8 noundef signext %0, i8 noundef signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8, i8* %3, align 1
  %12 = sext i8 %11 to i32
  br label %16

13:                                               ; preds = %2
  %14 = load i8, i8* %4, align 1
  %15 = sext i8 %14 to i32
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ %12, %10 ], [ %15, %13 ]
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @max(i8 noundef signext %0, i8 noundef signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8, i8* %4, align 1
  %12 = sext i8 %11 to i32
  br label %16

13:                                               ; preds = %2
  %14 = load i8, i8* %3, align 1
  %15 = sext i8 %14 to i32
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ %12, %10 ], [ %15, %13 ]
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @add(i8 noundef signext %0, i8 noundef signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = add nsw i32 %6, %8
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @mult(i8 noundef signext %0, i8 noundef signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = mul nsw i32 %6, %8
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @loop(void (i8*)* noundef %0, void (i8*)* noundef %1, i8* noundef %2) #0 {
  %4 = alloca void (i8*)*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store void (i8*)* %0, void (i8*)** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load void (i8*)*, void (i8*)** %4, align 8
  %9 = load i8*, i8** %6, align 8
  call void %8(i8* noundef %9)
  br label %10

10:                                               ; preds = %13, %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp ult i64 %11, 2684050
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load void (i8*)*, void (i8*)** %5, align 8
  %15 = load i8*, i8** %6, align 8
  call void %14(i8* noundef %15)
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %7, align 8
  br label %10, !llvm.loop !6

18:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call noalias i8* @malloc(i64 noundef 2684050) #3
  store i8* %2, i8** @testarray, align 8
  call void @testA()
  call void @testB()
  call void @testC()
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @testA() #2

declare dso_local void @testB() #2

declare dso_local void @testC() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
