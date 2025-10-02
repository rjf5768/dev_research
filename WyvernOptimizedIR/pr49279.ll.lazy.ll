; ModuleID = './pr49279.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49279.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.S* @bar(%struct.S* noundef %0) #0 {
  %2 = call %struct.S* asm sideeffect "", "=r,0,~{memory},~{dirflag},~{fpsr},~{flags}"(%struct.S* %0) #2, !srcloc !4
  ret %struct.S* %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32* noundef %0, i32* noundef %1) #0 {
  %3 = alloca %struct.S, align 8
  %4 = getelementptr inbounds %struct.S, %struct.S* %3, i64 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = getelementptr inbounds %struct.S, %struct.S* %3, i64 0, i32 1
  store i32* %0, i32** %5, align 8
  %6 = call %struct.S* @bar(%struct.S* noundef nonnull %3)
  %7 = getelementptr inbounds %struct.S, %struct.S* %6, i64 0, i32 1
  store i32* %1, i32** %7, align 8
  %8 = getelementptr inbounds %struct.S, %struct.S* %3, i64 0, i32 1
  %9 = load i32*, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.S, %struct.S* %6, i64 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.S, %struct.S* %3, i64 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @foo(i32* noundef nonnull %1, i32* noundef nonnull %2)
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #3
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 199}
