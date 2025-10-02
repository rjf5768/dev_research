; ModuleID = './931017-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931017-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @f()
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @h1() #2 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h2(i32* noundef readnone %0) #3 {
  %.not = icmp eq i32* %0, @v
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  call void @abort() #4
  unreachable

3:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g(i8* nocapture noundef writeonly %0) #3 {
  br label %2

2:                                                ; preds = %11, %1
  %3 = call i32 @h1()
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %21

6:                                                ; preds = %2
  %7 = icmp eq i32 %3, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %8, %6
  br label %10

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %10
  %12 = icmp eq i32 %3, 1
  br i1 %12, label %2, label %13, !llvm.loop !4

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %16, %13
  %15 = call i32 @h2(i32* noundef nonnull @v)
  br label %16

16:                                               ; preds = %14
  %17 = icmp eq i32 %3, 5
  br i1 %17, label %14, label %18, !llvm.loop !6

18:                                               ; preds = %16
  %.not = icmp eq i32 %3, 2
  br i1 %.not, label %20, label %19

19:                                               ; preds = %18
  br label %21

20:                                               ; preds = %18
  store i8 97, i8* %0, align 1
  br label %21

21:                                               ; preds = %20, %19, %5
  %.0 = phi i32 [ 0, %5 ], [ %15, %19 ], [ 0, %20 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f() #3 {
  %1 = alloca i8, align 1
  %2 = call i32 @g(i8* noundef nonnull %1)
  ret i32 undef
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
