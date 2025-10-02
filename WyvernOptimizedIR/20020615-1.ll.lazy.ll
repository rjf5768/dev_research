; ModuleID = './20020615-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020615-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.font_hints_s = type { i32, i32, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }

@main.fh = internal global [3 x %struct.font_hints_s] [%struct.font_hints_s { i32 0, i32 1, i32 0 }, %struct.font_hints_s { i32 0, i32 0, i32 1 }, %struct.font_hints_s zeroinitializer], align 16
@main.gsf = internal global [4 x %struct.gs_fixed_point_s] [%struct.gs_fixed_point_s { i64 196608, i64 80216 }, %struct.gs_fixed_point_s { i64 196608, i64 98697 }, %struct.gs_fixed_point_s { i64 80216, i64 196608 }, %struct.gs_fixed_point_s { i64 98697, i64 196608 }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @line_hints(%struct.font_hints_s* nocapture noundef readonly %0, %struct.gs_fixed_point_s* nocapture noundef readonly %1, %struct.gs_fixed_point_s* nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %2, i64 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %1, i64 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = sub nsw i64 %5, %7
  %9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %2, i64 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %1, i64 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %10, %12
  %14 = getelementptr inbounds %struct.font_hints_s, %struct.font_hints_s* %0, i64 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.font_hints_s, %struct.font_hints_s* %0, i64 0, i32 2
  %17 = load i32, i32* %16, align 4
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %20, label %18

18:                                               ; preds = %3
  %19 = sub nsw i64 0, %8
  br label %20

20:                                               ; preds = %18, %3
  %.03 = phi i64 [ %19, %18 ], [ %8, %3 ]
  %.not7 = icmp eq i32 %17, 0
  br i1 %.not7, label %23, label %21

21:                                               ; preds = %20
  %22 = sub nsw i64 0, %13
  br label %23

23:                                               ; preds = %21, %20
  %.05 = phi i64 [ %22, %21 ], [ %13, %20 ]
  %24 = getelementptr inbounds %struct.font_hints_s, %struct.font_hints_s* %0, i64 0, i32 0
  %25 = load i32, i32* %24, align 4
  %.not8 = icmp eq i32 %25, 0
  br i1 %.not8, label %27, label %26

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26, %23
  %.16 = phi i64 [ %.03, %26 ], [ %.05, %23 ]
  %.14 = phi i64 [ %.05, %26 ], [ %.03, %23 ]
  %.02 = phi i32 [ %17, %26 ], [ %15, %23 ]
  %.01 = phi i32 [ %15, %26 ], [ %17, %23 ]
  %28 = icmp slt i64 %.14, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = sub nsw i64 0, %.14
  br label %32

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i64 [ %30, %29 ], [ %.14, %31 ]
  %34 = icmp slt i64 %.16, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = sub nsw i64 0, %.16
  br label %38

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i64 [ %36, %35 ], [ %.16, %37 ]
  %.not9 = icmp eq i64 %.16, 0
  br i1 %.not9, label %48, label %40

40:                                               ; preds = %38
  %41 = ashr i64 %39, 4
  %.not13 = icmp sgt i64 %33, %41
  br i1 %.not13, label %48, label %42

42:                                               ; preds = %40
  %43 = icmp sgt i64 %.16, 0
  %44 = select i1 %43, i32 2, i32 1
  %.not14 = icmp eq i32 %.02, 0
  br i1 %.not14, label %47, label %45

45:                                               ; preds = %42
  %46 = xor i32 %44, 3
  br label %47

47:                                               ; preds = %45, %42
  %.0 = phi i32 [ %46, %45 ], [ %44, %42 ]
  br label %59

48:                                               ; preds = %40, %38
  %.not10 = icmp eq i64 %.14, 0
  br i1 %.not10, label %57, label %49

49:                                               ; preds = %48
  %50 = ashr i64 %33, 4
  %.not11 = icmp sgt i64 %39, %50
  br i1 %.not11, label %57, label %51

51:                                               ; preds = %49
  %52 = icmp slt i64 %.14, 0
  %53 = select i1 %52, i32 8, i32 4
  %.not12 = icmp eq i32 %.01, 0
  br i1 %.not12, label %56, label %54

54:                                               ; preds = %51
  %55 = xor i32 %53, 12
  br label %56

56:                                               ; preds = %54, %51
  %.1 = phi i32 [ %55, %54 ], [ %53, %51 ]
  br label %58

57:                                               ; preds = %49, %48
  br label %58

58:                                               ; preds = %57, %56
  %.2 = phi i32 [ %.1, %56 ], [ 0, %57 ]
  br label %59

59:                                               ; preds = %58, %47
  %.3 = phi i32 [ %.0, %47 ], [ %.2, %58 ]
  ret i32 %.3
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @line_hints(%struct.font_hints_s* noundef getelementptr inbounds ([3 x %struct.font_hints_s], [3 x %struct.font_hints_s]* @main.fh, i64 0, i64 0), %struct.gs_fixed_point_s* noundef getelementptr inbounds ([4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* @main.gsf, i64 0, i64 0), %struct.gs_fixed_point_s* noundef getelementptr inbounds ([4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* @main.gsf, i64 0, i64 1))
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %2, label %6

2:                                                ; preds = %0
  %3 = call i32 @line_hints(%struct.font_hints_s* noundef getelementptr inbounds ([3 x %struct.font_hints_s], [3 x %struct.font_hints_s]* @main.fh, i64 0, i64 1), %struct.gs_fixed_point_s* noundef getelementptr inbounds ([4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* @main.gsf, i64 0, i64 2), %struct.gs_fixed_point_s* noundef getelementptr inbounds ([4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* @main.gsf, i64 0, i64 3))
  %.not1 = icmp eq i32 %3, 8
  br i1 %.not1, label %4, label %6

4:                                                ; preds = %2
  %5 = call i32 @line_hints(%struct.font_hints_s* noundef getelementptr inbounds ([3 x %struct.font_hints_s], [3 x %struct.font_hints_s]* @main.fh, i64 0, i64 2), %struct.gs_fixed_point_s* noundef getelementptr inbounds ([4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* @main.gsf, i64 0, i64 2), %struct.gs_fixed_point_s* noundef getelementptr inbounds ([4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* @main.gsf, i64 0, i64 3))
  %.not2 = icmp eq i32 %5, 4
  br i1 %.not2, label %7, label %6

6:                                                ; preds = %4, %2, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %7, %6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
