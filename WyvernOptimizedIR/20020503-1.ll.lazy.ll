; ModuleID = './20020503-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020503-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %3 = call i8* @inttostr(i64 noundef -1, i8* noundef nonnull %2)
  %4 = load i8, i8* %3, align 1
  %.not = icmp eq i8 %4, 45
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #3
  unreachable

6:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal nonnull i8* @inttostr(i64 noundef %0, i8* noundef writeonly %1) #1 {
  %3 = getelementptr inbounds i8, i8* %1, i64 127
  store i8 0, i8* %3, align 1
  %4 = icmp slt i64 %0, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = sub i64 0, %0
  br label %7

7:                                                ; preds = %5, %2
  %.01 = phi i64 [ %6, %5 ], [ %0, %2 ]
  br label %8

8:                                                ; preds = %13, %7
  %.12 = phi i64 [ %.01, %7 ], [ %14, %13 ]
  %.0 = phi i8* [ %3, %7 ], [ %12, %13 ]
  %9 = urem i64 %.12, 10
  %10 = trunc i64 %9 to i8
  %11 = or i8 %10, 48
  %12 = getelementptr inbounds i8, i8* %.0, i64 -1
  store i8 %11, i8* %12, align 1
  br label %13

13:                                               ; preds = %8
  %14 = udiv i64 %.12, 10
  %15 = icmp ult i64 %.12, 10
  br i1 %15, label %16, label %8, !llvm.loop !4

16:                                               ; preds = %13
  %17 = icmp slt i64 %0, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, i8* %.0, i64 -2
  store i8 45, i8* %19, align 1
  br label %20

20:                                               ; preds = %18, %16
  %.1 = phi i8* [ %19, %18 ], [ %12, %16 ]
  ret i8* %.1
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
