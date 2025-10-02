; ModuleID = './pr58209.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58209.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local global [1024 x i64] zeroinitializer, align 16

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define dso_local i64* @foo(i64 noundef %0) #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %10

4:                                                ; preds = %1
  %5 = add nsw i64 %0, -1
  %6 = call i64* @foo(i64 noundef %5)
  %7 = ptrtoint i64* %6 to i64
  %8 = add i64 %7, 8
  %9 = inttoptr i64 %8 to i64*
  br label %10

10:                                               ; preds = %4, %3
  %.0 = phi i64* [ getelementptr inbounds ([1024 x i64], [1024 x i64]* @buf, i64 0, i64 0), %3 ], [ %9, %4 ]
  ret i64* %.0
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define dso_local i64* @bar(i64 noundef %0) #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %8

4:                                                ; preds = %1
  %5 = add nsw i64 %0, -1
  %6 = call i64* @foo(i64 noundef %5)
  %7 = getelementptr inbounds i64, i64* %6, i64 1
  br label %8

8:                                                ; preds = %4, %3
  %.0 = phi i64* [ getelementptr inbounds ([1024 x i64], [1024 x i64]* @buf, i64 0, i64 0), %3 ], [ %7, %4 ]
  ret i64* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %15, %0
  %.0 = phi i32 [ 0, %0 ], [ %16, %15 ]
  %2 = icmp ult i32 %.0, 27
  br i1 %2, label %3, label %17

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = call i64* @foo(i64 noundef %4)
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds [1024 x i64], [1024 x i64]* @buf, i64 0, i64 %6
  %.not = icmp eq i64* %5, %7
  br i1 %.not, label %8, label %13

8:                                                ; preds = %3
  %9 = zext i32 %.0 to i64
  %10 = call i64* @bar(i64 noundef %9)
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [1024 x i64], [1024 x i64]* @buf, i64 0, i64 %11
  %.not1 = icmp eq i64* %10, %12
  br i1 %.not1, label %14, label %13

13:                                               ; preds = %8, %3
  call void @abort() #3
  unreachable

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

17:                                               ; preds = %1
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
