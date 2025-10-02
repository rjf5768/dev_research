; ModuleID = './pr71631.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr71631.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@b = dso_local global i32 1, align 4
@c = dso_local global i32 1, align 4
@v = dso_local global i8 0, align 1
@.str = private unnamed_addr constant [3 x i8] c"AB\00", align 1

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local void @foo(i8* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %.0 = phi i8* [ %0, %1 ], [ %3, %5 ]
  %3 = getelementptr inbounds i8, i8* %.0, i64 1
  %4 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %7, label %5

5:                                                ; preds = %2
  %6 = load i8, i8* %3, align 1
  store volatile i8 %6, i8* @v, align 1
  br label %2, !llvm.loop !4

7:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store volatile i32 1, i32* %1, align 4
  store volatile i32 1, i32* %2, align 4
  %3 = load i32, i32* @a, align 4
  %4 = icmp ne i32 %3, -1
  %5 = load volatile i32, i32* %2, align 4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @b, align 4
  %8 = icmp ne i32 %7, 0
  %phi.cast = zext i1 %8 to i32
  br label %9

9:                                                ; preds = %6, %0
  %10 = phi i32 [ 0, %0 ], [ %phi.cast, %6 ]
  %11 = load i32, i32* @c, align 4
  %12 = icmp eq i32 %11, 1
  %13 = load volatile i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  %mulbool = and i1 %4, %14
  %mulbool1 = and i1 %12, %mulbool
  %15 = sext i1 %mulbool1 to i32
  %16 = mul nuw nsw i32 %10, %15
  br i1 %4, label %17, label %18

17:                                               ; preds = %9
  call void @foo(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %17, %9
  %.not2 = icmp eq i32 %16, -1
  br i1 %.not2, label %20, label %19

19:                                               ; preds = %18
  call void @abort() #3
  unreachable

20:                                               ; preds = %18
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
