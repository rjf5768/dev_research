; ModuleID = './pr79354.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr79354.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@d = dso_local global i64 0, align 8
@e = dso_local global float 0.000000e+00, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @foo(i32* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %11, %1
  %storemerge = phi i32 [ 0, %1 ], [ %13, %11 ]
  store i32 %storemerge, i32* @g, align 4
  %3 = icmp slt i32 %storemerge, 32
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = load i32, i32* @f, align 4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %10, label %6

6:                                                ; preds = %4
  %7 = load i64, i64* @d, align 8
  %8 = uitofp i64 %7 to float
  store float %8, float* @e, align 4
  store float %8, float* bitcast (i32* @b to float*), align 4
  %9 = load i32, i32* %0, align 4
  store i32 %9, i32* @b, align 4
  br label %10

10:                                               ; preds = %6, %4
  br label %11

11:                                               ; preds = %10
  %12 = load i32, i32* @g, align 4
  %13 = add nsw i32 %12, 1
  br label %2, !llvm.loop !4

14:                                               ; preds = %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i32, align 4
  store i32 5, i32* %1, align 4
  store i32 1, i32* @f, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !6
  call void @foo(i32* noundef nonnull %1)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !7
  call void @foo(i32* noundef nonnull @b)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !8
  ret i32 0
}

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{i64 311}
!7 = !{i64 359}
!8 = !{i64 407}
