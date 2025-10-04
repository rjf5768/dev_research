; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ipa-sra-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ipa-sra-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bovid = type { float, i32, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 2000
  %9 = zext i1 %8 to i32
  %10 = call i32 @ox(i32 noundef %9, %struct.bovid* noundef null)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ox(i32 noundef %0, %struct.bovid* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bovid*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.bovid* %1, %struct.bovid** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.bovid*, %struct.bovid** %4, align 8
  %10 = getelementptr inbounds %struct.bovid, %struct.bovid* %9, i32 0, i32 0
  %11 = load float, float* %10, align 8
  %12 = fptosi float %11 to i32
  store i32 %12, i32* %5, align 4
  br label %14

13:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
