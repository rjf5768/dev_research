; ModuleID = './20080519-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20080519-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.du_chain = type { %struct.du_chain*, i32 }

@reg_class_contents = dso_local global [2 x [2 x i64]] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @merge_overlapping_regs([2 x i64]* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds [2 x i64], [2 x i64]* %0, i64 0, i64 0
  %3 = load i64, i64* %2, align 8
  %.not = icmp eq i64 %3, -1
  br i1 %.not, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds [2 x i64], [2 x i64]* %0, i64 0, i64 1
  %6 = load i64, i64* %5, align 8
  %.not1 = icmp eq i64 %6, -1
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %4, %1
  call void @abort() #3
  unreachable

8:                                                ; preds = %4
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @regrename_optimize(%struct.du_chain* nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i64], align 16
  %3 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  store i64 0, i64* %3, align 16
  %4 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %24, %1
  %.01 = phi i32 [ 0, %1 ], [ %25, %24 ]
  %.0 = phi %struct.du_chain* [ %0, %1 ], [ %27, %24 ]
  %6 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %.0, i64 0, i32 0
  %7 = load %struct.du_chain*, %struct.du_chain** %6, align 8
  %.not = icmp eq %struct.du_chain* %7, null
  br i1 %.not, label %28, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %.0, i64 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @reg_class_contents, i64 0, i64 %11, i64 0
  %13 = load i64, i64* %12, align 16
  %14 = xor i64 %13, -1
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %16 = load i64, i64* %15, align 16
  %17 = or i64 %16, %14
  store i64 %17, i64* %15, align 16
  %18 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @reg_class_contents, i64 0, i64 %11, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = xor i64 %19, -1
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  %22 = load i64, i64* %21, align 8
  %23 = or i64 %22, %20
  store i64 %23, i64* %21, align 8
  br label %24

24:                                               ; preds = %8
  %25 = add nuw nsw i32 %.01, 1
  %26 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %.0, i64 0, i32 0
  %27 = load %struct.du_chain*, %struct.du_chain** %26, align 8
  br label %5, !llvm.loop !4

28:                                               ; preds = %5
  %29 = icmp eq i32 %.01, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  br label %47

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %.0, i64 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @reg_class_contents, i64 0, i64 %34, i64 0
  %36 = load i64, i64* %35, align 16
  %37 = xor i64 %36, -1
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %39 = load i64, i64* %38, align 16
  %40 = or i64 %39, %37
  store i64 %40, i64* %38, align 16
  %41 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @reg_class_contents, i64 0, i64 %34, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = xor i64 %42, -1
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = or i64 %45, %43
  store i64 %46, i64* %44, align 8
  call void @merge_overlapping_regs([2 x i64]* noundef nonnull %2)
  br label %47

47:                                               ; preds = %31, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.du_chain, align 8
  %2 = alloca %struct.du_chain, align 8
  %3 = bitcast %struct.du_chain* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %2, i64 0, i32 0
  store %struct.du_chain* %1, %struct.du_chain** %4, align 8
  %5 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %2, i64 0, i32 1
  store i32 1, i32* %5, align 8
  store i64 -1, i64* getelementptr inbounds ([2 x [2 x i64]], [2 x [2 x i64]]* @reg_class_contents, i64 0, i64 0, i64 0), align 16
  store i64 -1, i64* getelementptr inbounds ([2 x [2 x i64]], [2 x [2 x i64]]* @reg_class_contents, i64 0, i64 0, i64 1), align 8
  store i64 0, i64* getelementptr inbounds ([2 x [2 x i64]], [2 x [2 x i64]]* @reg_class_contents, i64 0, i64 1, i64 0), align 16
  store i64 0, i64* getelementptr inbounds ([2 x [2 x i64]], [2 x [2 x i64]]* @reg_class_contents, i64 0, i64 1, i64 1), align 8
  call void @regrename_optimize(%struct.du_chain* noundef nonnull %2)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
