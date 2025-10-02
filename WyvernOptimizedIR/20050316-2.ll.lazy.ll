; ModuleID = './20050316-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050316-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @test1(double noundef %0) #0 {
  %.cast = bitcast double %0 to i64
  ret i64 %.cast
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @test2(double noundef %0) #0 {
  %.cast = bitcast double %0 to i64
  ret i64 %.cast
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @test3(double noundef %0) #0 {
  %.cast = bitcast double %0 to i64
  ret i64 %.cast
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %union.anon, align 8
  %2 = call i64 @test1(double noundef 0x4000000040000000)
  %3 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0
  store i64 %2, i64* %3, align 8
  %4 = bitcast %union.anon* %1 to float*
  %5 = load float, float* %4, align 8
  %6 = fcmp une float %5, 2.000000e+00
  br i1 %6, label %12, label %7

7:                                                ; preds = %0
  %8 = bitcast %union.anon* %1 to [2 x float]*
  %9 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 1
  %10 = load float, float* %9, align 4
  %11 = fcmp une float %10, 2.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %7
  %14 = call i64 @test2(double noundef 0x40C0000040C00000)
  %15 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = bitcast %union.anon* %1 to float*
  %17 = load float, float* %16, align 8
  %18 = fcmp une float %17, 6.000000e+00
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = bitcast %union.anon* %1 to [2 x float]*
  %21 = getelementptr inbounds [2 x float], [2 x float]* %20, i64 0, i64 1
  %22 = load float, float* %21, align 4
  %23 = fcmp une float %22, 6.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %13
  call void @abort() #3
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %19
  %26 = call i64 @test3(double noundef 0x400000004)
  %27 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = bitcast %union.anon* %1 to i32*
  %29 = load i32, i32* %28, align 8
  %.not = icmp eq i32 %29, 4
  br i1 %.not, label %30, label %34

30:                                               ; preds = %25
  %31 = bitcast %union.anon* %1 to [2 x i32]*
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %.not1 = icmp eq i32 %33, 4
  br i1 %.not1, label %35, label %34

34:                                               ; preds = %30, %25
  call void @abort() #3
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %30
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %34, %24, %12
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
