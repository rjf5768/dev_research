; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20051104-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20051104-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i8* }

@s = dso_local global %struct.anon zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* getelementptr inbounds (%struct.anon, %struct.anon* @s, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.anon, %struct.anon* @s, i32 0, i32 1), align 8
  %2 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @s, i32 0, i32 1), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @s, i32 0, i32 0), align 8
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i8, i8* %2, i64 %4
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @s, i32 0, i32 1), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @s, i32 0, i32 0), align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  store i8 0, i8* %13, align 1
  br label %14

14:                                               ; preds = %9, %0
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
