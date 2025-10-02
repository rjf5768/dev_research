; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20170111-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20170111-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i16, i64, i16, i8, i16, i64* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.S, align 8
  store i32 0, i32* %1, align 4
  store i64 1, i64* %2, align 8
  %4 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  store i16 0, i16* %4, align 8
  %5 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 2
  store i16 0, i16* %6, align 8
  %7 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 3
  store i8 0, i8* %7, align 2
  %8 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 4
  store i16 2, i16* %8, align 4
  %9 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 5
  store i64* %2, i64** %9, align 8
  %10 = call i64 @foo(%struct.S* noundef %3)
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  call void @abort() #2
  unreachable

14:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @foo(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  %3 = alloca i64, align 8
  store %struct.S* %0, %struct.S** %2, align 8
  store i64 1, i64* %3, align 8
  %4 = load %struct.S*, %struct.S** %2, align 8
  %5 = getelementptr inbounds %struct.S, %struct.S* %4, i32 0, i32 4
  %6 = load i16, i16* %5, align 4
  %7 = zext i16 %6 to i64
  %8 = load i64, i64* %3, align 8
  %9 = sdiv i64 %8, %7
  store i64 %9, i64* %3, align 8
  %10 = load %struct.S*, %struct.S** %2, align 8
  %11 = getelementptr inbounds %struct.S, %struct.S* %10, i32 0, i32 5
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* %3, align 8
  ret i64 %17
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
