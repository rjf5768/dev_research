; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020227-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020227-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x = type <{ i8, { float, float } }>

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @f1()
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1() #0 {
  %1 = alloca %struct.x, align 1
  %2 = getelementptr inbounds %struct.x, %struct.x* %1, i32 0, i32 1
  %3 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 0
  %4 = getelementptr inbounds { float, float }, { float, float }* %2, i32 0, i32 1
  store float 1.000000e+00, float* %3, align 1
  store float 0.000000e+00, float* %4, align 1
  %5 = getelementptr inbounds %struct.x, %struct.x* %1, i32 0, i32 0
  store i8 42, i8* %5, align 1
  call void @f2(%struct.x* noundef %1)
  ret void
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2(%struct.x* noundef %0) #0 {
  %2 = alloca %struct.x*, align 8
  store %struct.x* %0, %struct.x** %2, align 8
  %3 = load %struct.x*, %struct.x** %2, align 8
  %4 = getelementptr inbounds %struct.x, %struct.x* %3, i32 0, i32 1
  %5 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 0
  %6 = load float, float* %5, align 1
  %7 = getelementptr inbounds { float, float }, { float, float }* %4, i32 0, i32 1
  %8 = load float, float* %7, align 1
  %9 = fcmp une float %6, 1.000000e+00
  %10 = fcmp une float %8, 0.000000e+00
  %11 = or i1 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.x*, %struct.x** %2, align 8
  %14 = getelementptr inbounds %struct.x, %struct.x* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 42
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  call void @abort() #2
  unreachable

19:                                               ; preds = %12
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
