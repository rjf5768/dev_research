; ModuleID = './pr21173.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr21173.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q = dso_local global i8 0, align 1
@a = dso_local global [2 x i8*] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo(i8* noundef %0) #0 {
  br label %2

2:                                                ; preds = %11, %1
  %.0 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %3 = icmp ult i32 %.0, 2
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = ptrtoint i8* %0 to i64
  %6 = sub i64 %5, ptrtoint (i8* @q to i64)
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [2 x i8*], [2 x i8*]* @a, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr i8, i8* %9, i64 %6
  store i8* %10, i8** %8, align 8
  br label %11

11:                                               ; preds = %4
  %12 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

13:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @foo(i8* noundef nonnull @q)
  br label %1

1:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %2 = icmp ult i32 %.0, 2
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [2 x i8*], [2 x i8*]* @a, i64 0, i64 %4
  %6 = load i8*, i8** %5, align 8
  %.not = icmp eq i8* %6, null
  br i1 %.not, label %8, label %7

7:                                                ; preds = %3
  call void @abort() #3
  unreachable

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8
  %10 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

11:                                               ; preds = %1
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
