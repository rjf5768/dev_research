; ModuleID = './20021118-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021118-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.f = private unnamed_addr constant [3 x float] [float 2.000000e+00, float 3.000000e+00, float 4.000000e+00], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @t1(float* nocapture noundef %0, i32 noundef %1, void (double)* nocapture noundef readonly %2, void (float, float)* nocapture noundef readonly %3) #0 {
  call void %2(double noundef 3.000000e+00) #4
  %5 = add nsw i32 %1, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds float, float* %0, i64 %6
  %8 = load float, float* %7, align 4
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds float, float* %0, i64 %9
  store float %8, float* %10, align 4
  call void %3(float noundef 2.500000e+00, float noundef 3.500000e+00) #4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @t2(float* nocapture noundef %0, i32 noundef %1, void (double)* nocapture noundef readonly %2, void (float, float)* nocapture noundef readonly %3, void (float)* nocapture noundef readonly %4) #0 {
  call void %4(float noundef 6.000000e+00) #4
  call void %2(double noundef 3.000000e+00) #4
  %6 = add nsw i32 %1, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds float, float* %0, i64 %7
  %9 = load float, float* %8, align 4
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds float, float* %0, i64 %10
  store float %9, float* %11, align 4
  call void %3(float noundef 2.500000e+00, float noundef 3.500000e+00) #4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1(double noundef %0) #0 {
  %2 = fcmp une double %0, 3.000000e+00
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  call void @abort() #5
  unreachable

4:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2(float noundef %0, float noundef %1) #0 {
  %3 = fcmp une float %0, 2.500000e+00
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = fcmp une float %1, 3.500000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %4, %2
  call void @abort() #5
  unreachable

7:                                                ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f3(float noundef %0) #0 {
  %2 = fcmp une float %0, 6.000000e+00
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  call void @abort() #5
  unreachable

4:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca [3 x float], align 4
  %2 = bitcast [3 x float]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %2, i8* noundef nonnull align 4 dereferenceable(12) bitcast ([3 x float]* @__const.main.f to i8*), i64 12, i1 false)
  %3 = getelementptr inbounds [3 x float], [3 x float]* %1, i64 0, i64 0
  %4 = call i32 @t1(float* noundef nonnull %3, i32 noundef 0, void (double)* noundef nonnull @f1, void (float, float)* noundef nonnull @f2)
  %5 = getelementptr inbounds [3 x float], [3 x float]* %1, i64 0, i64 0
  %6 = call i32 @t2(float* noundef nonnull %5, i32 noundef 1, void (double)* noundef nonnull @f1, void (float, float)* noundef nonnull @f2, void (float)* noundef nonnull @f3)
  %7 = getelementptr inbounds [3 x float], [3 x float]* %1, i64 0, i64 0
  %8 = load float, float* %7, align 4
  %9 = fcmp une float %8, 3.000000e+00
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = getelementptr inbounds [3 x float], [3 x float]* %1, i64 0, i64 1
  %12 = load float, float* %11, align 4
  %13 = fcmp une float %12, 4.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  call void @abort() #5
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %10, %0
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %15, %14
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
