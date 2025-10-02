; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr79354.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr79354.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@d = dso_local global i64 0, align 8
@e = dso_local global float 0.000000e+00, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* @g, align 4
  br label %3

3:                                                ; preds = %15, %1
  %4 = load i32, i32* @g, align 4
  %5 = icmp slt i32 %4, 32
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = load i32, i32* @f, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i64, i64* @d, align 8
  %11 = uitofp i64 %10 to float
  store float %11, float* @e, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (i32* @b to i8*), i8* align 4 bitcast (float* @e to i8*), i64 4, i1 false)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* @b, align 4
  br label %14

14:                                               ; preds = %9, %6
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* @g, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @g, align 4
  br label %3, !llvm.loop !4

18:                                               ; preds = %3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 5, i32* %2, align 4
  store i32 1, i32* @f, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !6
  call void @foo(i32* noundef %2)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !7
  call void @foo(i32* noundef @b)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !8
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind }

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
