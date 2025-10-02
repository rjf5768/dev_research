; ModuleID = './950710-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950710-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twelve = type { i32, i32, i32 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @g() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  call void @f()
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @f() #3 {
  %1 = alloca %struct.twelve, align 4
  %2 = alloca %struct.twelve, align 4
  br label %3

3:                                                ; preds = %28, %0
  %.0 = phi i32 [ 0, %0 ], [ %29, %28 ]
  %4 = icmp eq i32 %.0, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %25, %5
  %.01 = phi i32 [ 0, %5 ], [ %26, %25 ]
  %7 = icmp eq i32 %.01, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %6
  %9 = ptrtoint %struct.twelve* %2 to i64
  %10 = ptrtoint %struct.twelve* %1 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = ptrtoint %struct.twelve* %2 to i64
  %15 = ptrtoint %struct.twelve* %1 to i64
  %.neg = sub i64 %15, %14
  br label %20

16:                                               ; preds = %8
  %17 = ptrtoint %struct.twelve* %2 to i64
  %18 = ptrtoint %struct.twelve* %1 to i64
  %19 = sub i64 %17, %18
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i64 [ %.neg, %13 ], [ %19, %16 ]
  %22 = icmp ult i64 %21, 12
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #4
  unreachable

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !4

27:                                               ; preds = %6
  br label %28

28:                                               ; preds = %27
  %29 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !6

30:                                               ; preds = %3
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
