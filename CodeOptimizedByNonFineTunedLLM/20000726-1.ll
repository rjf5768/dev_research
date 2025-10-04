; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000726-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000726-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adjust_template = type { i16, i16, i16, i16 }

@adjust = internal global %struct.adjust_template { i16 0, i16 0, i16 1, i16 1 }, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i32 0, i32* %1, align 4
  store i16 1, i16* %2, align 2
  store i16 1, i16* %3, align 2
  call void @adjust_xy(i16* noundef %2, i16* noundef %3)
  %4 = load i16, i16* %2, align 2
  %5 = sext i16 %4 to i32
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #2
  unreachable

8:                                                ; preds = %0
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @adjust_xy(i16* noundef %0, i16* noundef %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  store i16* %0, i16** %3, align 8
  store i16* %1, i16** %4, align 8
  %5 = load i16, i16* getelementptr inbounds (%struct.adjust_template, %struct.adjust_template* @adjust, i32 0, i32 0), align 2
  %6 = sext i16 %5 to i32
  %7 = load i16*, i16** %3, align 8
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i32
  %10 = mul nsw i32 %6, %9
  %11 = load i16, i16* getelementptr inbounds (%struct.adjust_template, %struct.adjust_template* @adjust, i32 0, i32 1), align 2
  %12 = sext i16 %11 to i32
  %13 = load i16*, i16** %4, align 8
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  %16 = mul nsw i32 %12, %15
  %17 = add nsw i32 %10, %16
  %18 = load i16, i16* getelementptr inbounds (%struct.adjust_template, %struct.adjust_template* @adjust, i32 0, i32 2), align 2
  %19 = sext i16 %18 to i32
  %20 = add nsw i32 %17, %19
  %21 = trunc i32 %20 to i16
  %22 = load i16*, i16** %3, align 8
  store i16 %21, i16* %22, align 2
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

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
