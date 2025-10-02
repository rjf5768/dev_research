; ModuleID = './pr46309.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr46309.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q = dso_local global i32* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32* nocapture noundef readonly %0) #0 {
  %2 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %2, 2
  br i1 %.not, label %15, label %3

3:                                                ; preds = %1
  %4 = load i32, i32* %0, align 4
  %.not1 = icmp eq i32 %4, 3
  br i1 %.not1, label %15, label %5

5:                                                ; preds = %3
  %6 = load i32*, i32** @q, align 8
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 263
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %13, label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %0, align 4
  %.not3 = icmp eq i32 %10, 1
  br i1 %.not3, label %11, label %13

11:                                               ; preds = %9
  call void @abort() #2
  unreachable

12:                                               ; No predecessors!
  br label %14

13:                                               ; preds = %9, %5
  br label %14

14:                                               ; preds = %13, %12
  br label %15

15:                                               ; preds = %14, %3, %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !4
  store i32 2, i32* %1, align 4
  call void @bar(i32* noundef nonnull %1)
  store i32 3, i32* %1, align 4
  call void @bar(i32* noundef nonnull %1)
  store i32 1, i32* %2, align 4
  store i32 0, i32* %1, align 4
  store i32* %2, i32** @q, align 8
  call void @bar(i32* noundef nonnull %1)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %1, align 4
  call void @bar(i32* noundef nonnull %1)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 273}
