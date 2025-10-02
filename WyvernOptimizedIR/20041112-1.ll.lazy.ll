; ModuleID = './20041112-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041112-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @bar() #0 {
  %1 = load i32, i32* @global, align 4
  %2 = call i8* @foo(i32 noundef %1)
  %.not = icmp eq i8* %2, inttoptr (i64 -1 to i8*)
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  br label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @global, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @global, align 4
  br label %7

7:                                                ; preds = %4, %3
  %.0 = phi i32 [ 1, %3 ], [ 0, %4 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i8* @foo(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load i32, i32* @global, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @global, align 4
  br label %7

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6, %3
  %.0 = phi i8* [ bitcast (i32* @global to i8*), %3 ], [ inttoptr (i64 -1 to i8*), %6 ]
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  store i32 1, i32* @global, align 4
  %1 = call i32 @bar()
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
