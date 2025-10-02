; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050119-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050119-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, i8, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  store %struct.S* %0, %struct.S** %2, align 8
  %3 = load %struct.S*, %struct.S** %2, align 8
  %4 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load %struct.S*, %struct.S** %2, align 8
  %8 = getelementptr inbounds %struct.S, %struct.S* %7, i32 0, i32 1
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %6, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  call void @abort() #2
  unreachable

13:                                               ; preds = %1
  %14 = load %struct.S*, %struct.S** %2, align 8
  %15 = getelementptr inbounds %struct.S, %struct.S* %14, i32 0, i32 2
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  call void @abort() #2
  unreachable

20:                                               ; preds = %13
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x %struct.S], align 1
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %2, i64 0, i64 0
  %4 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  store i8 1, i8* %4, align 1
  %5 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %2, i64 0, i64 0
  %6 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 1
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %2, i64 0, i64 0
  %8 = getelementptr inbounds %struct.S, %struct.S* %7, i32 0, i32 2
  store i8 2, i8* %8, align 1
  %9 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %2, i64 0, i64 0
  %10 = getelementptr inbounds %struct.S, %struct.S* %9, i32 0, i32 3
  store i8 3, i8* %10, align 1
  %11 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %2, i64 0, i64 1
  %12 = getelementptr inbounds %struct.S, %struct.S* %11, i32 0, i32 0
  store i8 3, i8* %12, align 1
  %13 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %2, i64 0, i64 1
  %14 = getelementptr inbounds %struct.S, %struct.S* %13, i32 0, i32 1
  store i8 2, i8* %14, align 1
  %15 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %2, i64 0, i64 1
  %16 = getelementptr inbounds %struct.S, %struct.S* %15, i32 0, i32 2
  store i8 1, i8* %16, align 1
  %17 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %2, i64 0, i64 1
  %18 = getelementptr inbounds %struct.S, %struct.S* %17, i32 0, i32 3
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %2, i64 0, i64 0
  call void @foo(%struct.S* noundef %19)
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
