; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950710-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950710-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pair = type { i32, i32 }
%struct.twelve = type { i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @g() #0 {
  %1 = alloca %struct.pair, align 4
  %2 = bitcast %struct.pair* %1 to i64*
  %3 = load i64, i64* %2, align 4
  ret i64 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @f()
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.twelve, align 4
  %4 = alloca %struct.twelve, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %41, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %44

8:                                                ; preds = %5
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %37, %8
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  %13 = bitcast %struct.twelve* %4 to i8*
  %14 = bitcast %struct.twelve* %3 to i8*
  %15 = ptrtoint i8* %13 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = bitcast %struct.twelve* %4 to i8*
  %21 = bitcast %struct.twelve* %3 to i8*
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sub nsw i64 0, %24
  br label %32

26:                                               ; preds = %12
  %27 = bitcast %struct.twelve* %4 to i8*
  %28 = bitcast %struct.twelve* %3 to i8*
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  br label %32

32:                                               ; preds = %26, %19
  %33 = phi i64 [ %25, %19 ], [ %31, %26 ]
  %34 = icmp ult i64 %33, 12
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @abort() #2
  unreachable

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %9, !llvm.loop !4

40:                                               ; preds = %9
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %5, !llvm.loop !6

44:                                               ; preds = %5
  ret void
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
