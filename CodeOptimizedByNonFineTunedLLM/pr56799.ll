; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56799.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56799.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32 }

@hi = dso_local global i32 0, align 4
@lo = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 0
  store i32 65536, i32* %4, align 4
  %5 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 1
  store i32 1, i32* %5, align 4
  %6 = call i32 @foo(%struct.S* noundef %2)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %16

9:                                                ; preds = %0
  %10 = load i32, i32* @lo, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* @hi, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @exit(i32 noundef 0) #2
  unreachable

16:                                               ; preds = %12, %9, %0
  call void @abort() #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store %struct.S* %0, %struct.S** %2, align 8
  %6 = load %struct.S*, %struct.S** %2, align 8
  %7 = getelementptr inbounds %struct.S, %struct.S* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* %5, align 2
  %11 = load i16, i16* %5, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  store i32 1, i32* @lo, align 4
  %15 = load %struct.S*, %struct.S** %2, align 8
  %16 = getelementptr inbounds %struct.S, %struct.S* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %14, %1
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 16
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %5, align 2
  %24 = load i16, i16* %5, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  store i32 1, i32* @hi, align 4
  %28 = load %struct.S*, %struct.S** %2, align 8
  %29 = getelementptr inbounds %struct.S, %struct.S* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %27, %20
  %34 = load %struct.S*, %struct.S** %2, align 8
  %35 = getelementptr inbounds %struct.S, %struct.S* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  ret i32 %39
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
