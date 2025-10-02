; ModuleID = './strlen-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strlen-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { x86_fp80, [80 x i8] }

@u = internal global %union.anon zeroinitializer, align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %34, %0
  %.01 = phi i64 [ 0, %0 ], [ %35, %34 ]
  %2 = icmp ult i64 %.01, 8
  br i1 %2, label %3, label %36

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %31, %3
  %.02 = phi i64 [ 0, %3 ], [ %32, %31 ]
  %5 = icmp ult i64 %.02, 64
  br i1 %5, label %6, label %33

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %10, %6
  %.03 = phi i64 [ 0, %6 ], [ %12, %10 ]
  %.0 = phi i8* [ bitcast (%union.anon* @u to i8*), %6 ], [ %11, %10 ]
  %8 = icmp ult i64 %.03, %.01
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  store i8 0, i8* %.0, align 1
  br label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds i8, i8* %.0, i64 1
  %12 = add i64 %.03, 1
  br label %7, !llvm.loop !4

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %17, %13
  %.14 = phi i64 [ 0, %13 ], [ %19, %17 ]
  %.1 = phi i8* [ %.0, %13 ], [ %18, %17 ]
  %15 = icmp ult i64 %.14, %.02
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  store i8 97, i8* %.1, align 1
  br label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds i8, i8* %.1, i64 1
  %19 = add i64 %.14, 1
  br label %14, !llvm.loop !6

20:                                               ; preds = %14
  store i8 0, i8* %.1, align 1
  br label %21

21:                                               ; preds = %24, %20
  %.25 = phi i64 [ 0, %20 ], [ %25, %24 ]
  %.1.pn = phi i8* [ %.1, %20 ], [ %.2, %24 ]
  %.2 = getelementptr inbounds i8, i8* %.1.pn, i64 1
  %22 = icmp ult i64 %.25, 8
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  store i8 98, i8* %.2, align 1
  br label %24

24:                                               ; preds = %23
  %25 = add i64 %.25, 1
  br label %21, !llvm.loop !7

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %.01
  %28 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %27) #3
  %.not = icmp eq i64 %.02, %28
  br i1 %.not, label %30, label %29

29:                                               ; preds = %26
  call void @abort() #4
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  %32 = add i64 %.02, 1
  br label %4, !llvm.loop !8

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %33
  %35 = add i64 %.01, 1
  br label %1, !llvm.loop !9

36:                                               ; preds = %1
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %36, %29
  unreachable
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
