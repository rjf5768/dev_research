; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58726.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58726.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }

@a = dso_local global i32 0, align 4
@b = dso_local global %union.anon zeroinitializer, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @foo(i16 noundef signext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i16, i16* %2, align 2
  %8 = sext i16 %7 to i32
  br label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @a, align 4
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ]
  %13 = trunc i32 %12 to i16
  ret i16 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 56374, i32* getelementptr inbounds (%union.anon, %union.anon* @b, i32 0, i32 0), align 4
  %4 = load i8, i8* bitcast (%union.anon* @b to i8*), align 4
  %5 = shl i8 %4, 7
  %6 = ashr i8 %5, 7
  %7 = sext i8 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @b, i32 0, i32 0), align 4
  br label %13

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ]
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %2, align 2
  %16 = load i16, i16* %2, align 2
  %17 = call signext i16 @foo(i16 noundef signext %16)
  %18 = sext i16 %17 to i32
  store i32 %18, i32* @c, align 4
  %19 = load i32, i32* @c, align 4
  %20 = icmp ne i32 %19, -9162
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  call void @abort() #2
  unreachable

22:                                               ; preds = %13
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
