; ModuleID = './20000605-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000605-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._RenderInfo = type { i32, float, i32 }

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct._RenderInfo, align 4
  %2 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %1, i64 0, i32 0
  store i32 0, i32* %2, align 4
  %3 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %1, i64 0, i32 2
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %1, i64 0, i32 1
  store float 1.000000e+00, float* %4, align 4
  %5 = call i32 @render_image_rgb_a(%struct._RenderInfo* noundef nonnull %1)
  %.not = icmp eq i32 %5, 256
  br i1 %.not, label %7, label %6

6:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %0
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %7, %6
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @render_image_rgb_a(%struct._RenderInfo* nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %0, i64 0, i32 1
  %5 = load float, float* %4, align 4
  %6 = fdiv float 1.000000e+00, %5
  %7 = sitofp i32 %3 to float
  %8 = fmul float %6, %7
  %9 = fptosi float %8 to i32
  %10 = sitofp i32 %9 to float
  %11 = fsub float %10, %6
  %12 = fsub float %8, %11
  br label %13

13:                                               ; preds = %26, %1
  %.01 = phi i32 [ %3, %1 ], [ %28, %26 ]
  %.0 = phi float [ %12, %1 ], [ %27, %26 ]
  %14 = icmp slt i32 %.01, 256
  br i1 %14, label %15, label %29

15:                                               ; preds = %13
  %16 = fcmp ult float %.0, 1.000000e+00
  br i1 %16, label %25, label %17

17:                                               ; preds = %15
  %18 = fptosi float %.0 to i32
  %19 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %0, i64 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, %18
  store i32 %21, i32* %19, align 4
  %22 = fptosi float %.0 to i32
  %23 = sitofp i32 %22 to float
  %24 = fsub float %.0, %23
  br label %25

25:                                               ; preds = %17, %15
  %.1 = phi float [ %24, %17 ], [ %.0, %15 ]
  br label %26

26:                                               ; preds = %25
  %27 = fadd float %.1, %6
  %28 = add nsw i32 %.01, 1
  br label %13, !llvm.loop !4

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %0, i64 0, i32 2
  %31 = load i32, i32* %30, align 4
  ret i32 %31
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @bar() #3 {
  ret void
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
