; ModuleID = './20070517-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20070517-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @example(i32 noundef 10)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @example(i32 noundef %0) #0 {
  %2 = call i32 @get_kind(i32 noundef %0)
  %3 = icmp eq i32 %2, 9
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = icmp eq i32 %2, 10
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %2, 5
  br i1 %7, label %8, label %19

8:                                                ; preds = %6, %4, %1
  %9 = call i32 @some_call()
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = icmp eq i32 %2, 9
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = icmp eq i32 %2, 10
  br i1 %14, label %15, label %16

15:                                               ; preds = %13, %11
  br label %17

16:                                               ; preds = %13
  call void @abort() #4
  unreachable

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17, %8
  br label %19

19:                                               ; preds = %18, %6
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind uwtable
define internal i32 @get_kind(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  store volatile i32 %0, i32* %2, align 4
  %3 = load volatile i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @some_call() #2 {
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
