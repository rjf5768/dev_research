; ModuleID = './pr53084.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr53084.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.foo = internal constant [1 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i64 1)], align 8
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i8* nocapture noundef readonly %0) #0 {
  %2 = load i8, i8* %0, align 1
  %.not = icmp eq i8 %2, 111
  br i1 %.not, label %3, label %9

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, i8* %0, i64 1
  %5 = load i8, i8* %4, align 1
  %.not1 = icmp eq i8 %5, 111
  br i1 %.not1, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %0, i64 2
  %8 = load i8, i8* %7, align 1
  %.not2 = icmp eq i8 %8, 0
  br i1 %.not2, label %10, label %9

9:                                                ; preds = %6, %3, %1
  call void @abort() #2
  unreachable

10:                                               ; preds = %6
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @bar(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 1))
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
