; ModuleID = './strcmp-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strcmp-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { x86_fp80, [80 x i8] }

@u1 = internal global %union.anon zeroinitializer, align 16
@u2 = internal global %union.anon zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i8* noundef readonly %0, i8* noundef readonly %1, i32 noundef %2) #0 {
  %4 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %1) #4
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = icmp sgt i32 %4, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  call void @abort() #5
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6, %3
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %13, label %12

12:                                               ; preds = %11
  call void @abort() #5
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %11, %9
  %14 = icmp sgt i32 %2, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = icmp slt i32 %4, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  call void @abort() #5
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15, %13
  br label %19

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %19
  ret void

UnifiedUnreachableBlock:                          ; preds = %17, %12, %8
  unreachable
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  br label %1

1:                                                ; preds = %72, %0
  %.01 = phi i64 [ 0, %0 ], [ %73, %72 ]
  %2 = icmp ult i64 %.01, 8
  br i1 %2, label %3, label %74

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %69, %3
  %.02 = phi i64 [ 0, %3 ], [ %70, %69 ]
  %5 = icmp ult i64 %.02, 8
  br i1 %5, label %6, label %71

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %66, %6
  %.03 = phi i64 [ 0, %6 ], [ %67, %66 ]
  %8 = icmp ult i64 %.03, 64
  br i1 %8, label %9, label %68

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %13, %9
  %.07 = phi i8* [ bitcast (%union.anon* @u1 to i8*), %9 ], [ %14, %13 ]
  %.04 = phi i64 [ 0, %9 ], [ %15, %13 ]
  %11 = icmp ult i64 %.04, %.01
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  store i8 0, i8* %.07, align 1
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, i8* %.07, i64 1
  %15 = add i64 %.04, 1
  br label %10, !llvm.loop !4

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %20, %16
  %.18 = phi i8* [ %.07, %16 ], [ %21, %20 ]
  %.15 = phi i64 [ 0, %16 ], [ %22, %20 ]
  %18 = icmp ult i64 %.15, %.03
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  store i8 97, i8* %.18, align 1
  br label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds i8, i8* %.18, i64 1
  %22 = add i64 %.15, 1
  br label %17, !llvm.loop !6

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %27, %23
  %.29 = phi i8* [ %.18, %23 ], [ %28, %27 ]
  %.26 = phi i64 [ 0, %23 ], [ %29, %27 ]
  %25 = icmp ult i64 %.26, 10
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  store i8 120, i8* %.29, align 1
  br label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds i8, i8* %.29, i64 1
  %29 = add i64 %.26, 1
  br label %24, !llvm.loop !7

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %34, %30
  %.3 = phi i64 [ 0, %30 ], [ %36, %34 ]
  %.0 = phi i8* [ bitcast (%union.anon* @u2 to i8*), %30 ], [ %35, %34 ]
  %32 = icmp ult i64 %.3, %.02
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  store i8 0, i8* %.0, align 1
  br label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds i8, i8* %.0, i64 1
  %36 = add i64 %.3, 1
  br label %31, !llvm.loop !8

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %41, %37
  %.4 = phi i64 [ 0, %37 ], [ %43, %41 ]
  %.1 = phi i8* [ %.0, %37 ], [ %42, %41 ]
  %39 = icmp ult i64 %.4, %.03
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  store i8 97, i8* %.1, align 1
  br label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds i8, i8* %.1, i64 1
  %43 = add i64 %.4, 1
  br label %38, !llvm.loop !9

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %48, %44
  %.5 = phi i64 [ 0, %44 ], [ %50, %48 ]
  %.2 = phi i8* [ %.1, %44 ], [ %49, %48 ]
  %46 = icmp ult i64 %.5, 10
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  store i8 120, i8* %.2, align 1
  br label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds i8, i8* %.2, i64 1
  %50 = add i64 %.5, 1
  br label %45, !llvm.loop !10

51:                                               ; preds = %45
  store i8 0, i8* %.18, align 1
  store i8 0, i8* %.1, align 1
  call void @test(i8* noundef %.07, i8* noundef %.0, i32 noundef 0)
  store i8 97, i8* %.18, align 1
  %52 = getelementptr inbounds i8, i8* %.18, i64 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %.1, align 1
  call void @test(i8* noundef %.07, i8* noundef %.0, i32 noundef 1)
  store i8 0, i8* %.18, align 1
  store i8 97, i8* %.1, align 1
  %53 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 0, i8* %53, align 1
  call void @test(i8* noundef %.07, i8* noundef %.0, i32 noundef -1)
  store i8 98, i8* %.18, align 1
  %54 = getelementptr inbounds i8, i8* %.18, i64 1
  store i8 0, i8* %54, align 1
  store i8 99, i8* %.1, align 1
  %55 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 0, i8* %55, align 1
  call void @test(i8* noundef %.07, i8* noundef %.0, i32 noundef -1)
  store i8 99, i8* %.18, align 1
  %56 = getelementptr inbounds i8, i8* %.18, i64 1
  store i8 0, i8* %56, align 1
  store i8 98, i8* %.1, align 1
  %57 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 0, i8* %57, align 1
  call void @test(i8* noundef %.07, i8* noundef %.0, i32 noundef 1)
  store i8 98, i8* %.18, align 1
  %58 = getelementptr inbounds i8, i8* %.18, i64 1
  store i8 0, i8* %58, align 1
  store i8 -87, i8* %.1, align 1
  %59 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 0, i8* %59, align 1
  call void @test(i8* noundef %.07, i8* noundef %.0, i32 noundef -1)
  store i8 -87, i8* %.18, align 1
  %60 = getelementptr inbounds i8, i8* %.18, i64 1
  store i8 0, i8* %60, align 1
  store i8 98, i8* %.1, align 1
  %61 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 0, i8* %61, align 1
  call void @test(i8* noundef %.07, i8* noundef %.0, i32 noundef 1)
  store i8 -87, i8* %.18, align 1
  %62 = getelementptr inbounds i8, i8* %.18, i64 1
  store i8 0, i8* %62, align 1
  store i8 -86, i8* %.1, align 1
  %63 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 0, i8* %63, align 1
  call void @test(i8* noundef %.07, i8* noundef %.0, i32 noundef -1)
  store i8 -86, i8* %.18, align 1
  %64 = getelementptr inbounds i8, i8* %.18, i64 1
  store i8 0, i8* %64, align 1
  store i8 -87, i8* %.1, align 1
  %65 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 0, i8* %65, align 1
  call void @test(i8* noundef %.07, i8* noundef %.0, i32 noundef 1)
  br label %66

66:                                               ; preds = %51
  %67 = add i64 %.03, 1
  br label %7, !llvm.loop !11

68:                                               ; preds = %7
  br label %69

69:                                               ; preds = %68
  %70 = add i64 %.02, 1
  br label %4, !llvm.loop !12

71:                                               ; preds = %4
  br label %72

72:                                               ; preds = %71
  %73 = add i64 %.01, 1
  br label %1, !llvm.loop !13

74:                                               ; preds = %1
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { noreturn nounwind }

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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
