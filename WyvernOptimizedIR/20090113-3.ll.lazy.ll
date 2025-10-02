; ModuleID = './20090113-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20090113-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type {}
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }

@bitmap_zero_bits = dso_local global %struct.bitmap_element_def zeroinitializer, align 8

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.bitmap_element_def, align 8
  %2 = alloca %struct.bitmap_head_def, align 8
  %3 = bitcast %struct.bitmap_element_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %4 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %1, i64 0, i32 3, i64 0
  store i64 1, i64* %4, align 8
  %5 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %1, i64 0, i32 3, i64 1
  store i64 1, i64* %5, align 8
  %6 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %2, i64 0, i32 0
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %6, align 8
  %7 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %2, i64 0, i32 1
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %7, align 8
  %8 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %2, i64 0, i32 2
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %2, i64 0, i32 3
  store %struct.bitmap_obstack* null, %struct.bitmap_obstack** %9, align 8
  call void @foobar(%struct.bitmap_head_def* noundef nonnull %2)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @foobar(%struct.bitmap_head_def* nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  call void @bmp_iter_set_init(%struct.bitmap_iterator* noundef nonnull %2, %struct.bitmap_head_def* noundef %0, i32 noundef 0, i32* noundef nonnull %3)
  br label %4

4:                                                ; preds = %73, %1
  %5 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %2, i64 0, i32 3
  %6 = load i64, i64* %5, align 8
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %19, label %7

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %12, %7
  %9 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %2, i64 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = and i64 %10, 1
  %.not6 = icmp eq i64 %11, 0
  br i1 %.not6, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %2, i64 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = lshr i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load i32, i32* %3, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %8, !llvm.loop !4

18:                                               ; preds = %8
  br label %71

19:                                               ; preds = %4
  %20 = load i32, i32* %3, align 4
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, i32* %3, align 4
  %23 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %2, i64 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = add i32 %24, 1
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %64, %19
  br label %27

27:                                               ; preds = %51, %26
  %28 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %2, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %.not1 = icmp eq i32 %29, 2
  br i1 %.not1, label %57, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %2, i64 0, i32 0
  %32 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %31, align 8
  %33 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %2, i64 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %32, i64 0, i32 3, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %2, i64 0, i32 3
  store i64 %37, i64* %38, align 8
  %.not4 = icmp eq i64 %37, 0
  br i1 %.not4, label %51, label %39

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %44, %39
  %41 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %2, i64 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = and i64 %42, 1
  %.not5 = icmp eq i64 %43, 0
  br i1 %.not5, label %44, label %50

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %2, i64 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = lshr i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load i32, i32* %3, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %40, !llvm.loop !6

50:                                               ; preds = %40
  br label %71

51:                                               ; preds = %30
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 64
  store i32 %53, i32* %3, align 4
  %54 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %2, i64 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %27, !llvm.loop !7

57:                                               ; preds = %27
  %58 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %2, i64 0, i32 0
  %59 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %58, align 8
  %60 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %59, i64 0, i32 0
  %61 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %60, align 8
  %62 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %2, i64 0, i32 0
  store %struct.bitmap_element_def* %61, %struct.bitmap_element_def** %62, align 8
  %.not2 = icmp eq %struct.bitmap_element_def* %61, null
  br i1 %.not2, label %63, label %64

63:                                               ; preds = %57
  br label %71

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %2, i64 0, i32 0
  %66 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %65, align 8
  %67 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %66, i64 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 %68, 7
  store i32 %69, i32* %3, align 4
  %70 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %2, i64 0, i32 2
  store i32 0, i32* %70, align 8
  br label %26

71:                                               ; preds = %63, %50, %18
  %.not3 = phi i1 [ true, %63 ], [ false, %50 ], [ false, %18 ]
  br i1 %.not3, label %79, label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %2, i64 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = lshr i64 %75, 1
  store i64 %76, i64* %74, align 8
  %77 = load i32, i32* %3, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %4, !llvm.loop !8

79:                                               ; preds = %71
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @bmp_iter_set_init(%struct.bitmap_iterator* nocapture noundef %0, %struct.bitmap_head_def* nocapture noundef readonly %1, i32 noundef %2, i32* nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %1, i64 0, i32 0
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %5, align 8
  %7 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  store %struct.bitmap_element_def* %6, %struct.bitmap_element_def** %7, align 8
  %8 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 1
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %8, align 8
  br label %9

9:                                                ; preds = %21, %4
  %10 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %10, align 8
  %.not = icmp eq %struct.bitmap_element_def* %11, null
  br i1 %.not, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %13, align 8
  br label %27

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %15, align 8
  %17 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %16, i64 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = lshr i32 %2, 7
  %.not3 = icmp ult i32 %18, %19
  br i1 %.not3, label %21, label %20

20:                                               ; preds = %14
  br label %27

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  %23 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %22, align 8
  %24 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %23, i64 0, i32 0
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %24, align 8
  %26 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  store %struct.bitmap_element_def* %25, %struct.bitmap_element_def** %26, align 8
  br label %9

27:                                               ; preds = %20, %12
  %28 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  %29 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %28, align 8
  %30 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %29, i64 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = lshr i32 %2, 7
  %.not1 = icmp eq i32 %31, %32
  br i1 %.not1, label %39, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  %35 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %34, align 8
  %36 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %35, i64 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 7
  br label %39

39:                                               ; preds = %33, %27
  %.0 = phi i32 [ %38, %33 ], [ %2, %27 ]
  %40 = lshr i32 %.0, 6
  %41 = and i32 %40, 1
  %42 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 0
  %44 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %43, align 8
  %45 = zext i32 %41 to i64
  %46 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %44, i64 0, i32 3, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = and i32 %.0, 63
  %49 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %0, i64 0, i32 3
  %50 = zext i32 %48 to i64
  %51 = lshr i64 %47, %50
  store i64 %51, i64* %49, align 8
  %.not2 = icmp eq i64 %51, 0
  %52 = zext i1 %.not2 to i32
  %53 = add i32 %.0, %52
  store i32 %53, i32* %3, align 4
  ret void
}

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
