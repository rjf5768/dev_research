; ModuleID = './20050316-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050316-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { <2 x i32> }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @test1(double noundef %0) #0 {
  ret double %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @test2(double noundef %0) #0 {
  %.cast = bitcast double %0 to i64
  ret i64 %.cast
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %union.anon, align 8
  %2 = call double @test1(double noundef 0xFFFFFFFDFFFFFFFD)
  %3 = bitcast %union.anon* %1 to double*
  store double %2, double* %3, align 8
  %4 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0, i64 0
  %5 = load i32, i32* %4, align 8
  %.not = icmp eq i32 %5, -3
  br i1 %.not, label %6, label %9

6:                                                ; preds = %0
  %7 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0, i64 1
  %8 = load i32, i32* %7, align 4
  %.not1 = icmp eq i32 %8, -3
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %6, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %6
  %11 = call i64 @test2(double noundef 0xFFFFFFFDFFFFFFFD)
  %12 = bitcast %union.anon* %1 to i64*
  store i64 %11, i64* %12, align 8
  %13 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0, i64 0
  %14 = load i32, i32* %13, align 8
  %.not2 = icmp eq i32 %14, -3
  br i1 %.not2, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0, i64 1
  %17 = load i32, i32* %16, align 4
  %.not3 = icmp eq i32 %17, -3
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %15, %10
  call void @abort() #3
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %15
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %18, %9
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
