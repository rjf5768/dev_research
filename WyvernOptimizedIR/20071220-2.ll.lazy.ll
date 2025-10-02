; ModuleID = './20071220-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071220-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bar.b = internal global [1 x i8*] [i8* blockaddress(@bar, %2)], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @baz(i8** noundef %0) #0 {
  %2 = call i8** asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8** %0) #2, !srcloc !4
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1() #0 {
  %1 = call i32 @bar()
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bar() #0 {
  %1 = call i8* @baz(i8** noundef getelementptr inbounds ([1 x i8*], [1 x i8*]* @bar.b, i64 0, i64 0))
  br label %2

2:                                                ; preds = %3, %0
  ret i32 17

3:                                                ; No predecessors!
  indirectbr i8* undef, [label %2]
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2() #0 {
  %1 = call i32 @bar()
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @f1()
  %.not = icmp eq i32 %1, 17
  br i1 %.not, label %2, label %8

2:                                                ; preds = %0
  %3 = call i32 @f1()
  %.not1 = icmp eq i32 %3, 17
  br i1 %.not1, label %4, label %8

4:                                                ; preds = %2
  %5 = call i32 @f2()
  %.not2 = icmp eq i32 %5, 17
  br i1 %.not2, label %6, label %8

6:                                                ; preds = %4
  %7 = call i32 @f2()
  %.not3 = icmp eq i32 %7, 17
  br i1 %.not3, label %9, label %8

8:                                                ; preds = %6, %4, %2, %0
  call void @abort() #3
  unreachable

9:                                                ; preds = %6
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
!4 = !{i64 181}
