; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/20100222-1_1.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/20100222-1_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"FAILED: Got %d, expected %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"SUCCESS: Got %d, expected %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @printIntC(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = mul nsw i32 3, %3
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 (i32)* @returnFunc() #0 {
  ret i32 (i32)* @printIntC
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @callFunc(i32 (i32)* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32 (i32)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 (i32)* %0, i32 (i32)** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32 (i32)*, i32 (i32)** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 %8(i32 noundef %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef %15, i32 noundef %16)
  call void @abort() #3
  unreachable

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef %19, i32 noundef %20)
  br label %22

22:                                               ; preds = %18
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
