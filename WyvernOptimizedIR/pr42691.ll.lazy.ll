; ModuleID = './pr42691.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42691.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.add._D_inf = private unnamed_addr constant { [4 x i16] } { [4 x i16] [i16 0, i16 0, i16 0, i16 32752] }, align 8
@__const.add._D_inf2 = private unnamed_addr constant { [4 x i16] } { [4 x i16] [i16 0, i16 0, i16 0, i16 32752] }, align 8
@__const.main.infinit = private unnamed_addr constant { [4 x i16] } { [4 x i16] [i16 0, i16 0, i16 0, i16 32752] }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @add(double* nocapture noundef readonly %0, double* noundef %1) #0 {
  br label %3

3:                                                ; preds = %16, %2
  %.01 = phi i32 [ 0, %2 ], [ %17, %16 ]
  %.0 = phi double* [ null, %2 ], [ %.1, %16 ]
  %4 = zext i32 %.01 to i64
  %5 = getelementptr inbounds double, double* %1, i64 %4
  %6 = load double, double* %5, align 8
  %7 = load double, double* %0, align 8
  %8 = fcmp oeq double %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %18

10:                                               ; preds = %3
  %11 = load double, double* %5, align 8
  %12 = fcmp une double %11, 0x7FF0000000000000
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void @abort() #3
  unreachable

14:                                               ; preds = %10
  br i1 true, label %16, label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %15, %14
  %.1 = phi double* [ %.0, %14 ], [ %5, %15 ]
  %17 = add i32 %.01, 1
  br label %3

18:                                               ; preds = %9
  %.not = icmp eq double* %.0, null
  br i1 %.not, label %20, label %19

19:                                               ; preds = %18
  store double 0.000000e+00, double* %.0, align 8
  br label %20

20:                                               ; preds = %19, %18
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [2 x double], align 16
  %2 = alloca double, align 8
  %3 = getelementptr inbounds [2 x double], [2 x double]* %1, i64 0, i64 0
  store double 0x7FF0000000000000, double* %3, align 16
  %4 = getelementptr inbounds [2 x double], [2 x double]* %1, i64 0, i64 1
  store double 2.300000e+01, double* %4, align 8
  store double 2.300000e+01, double* %2, align 8
  %5 = getelementptr inbounds [2 x double], [2 x double]* %1, i64 0, i64 0
  %6 = call i32 @add(double* noundef nonnull %2, double* noundef nonnull %5)
  ret i32 %6
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
