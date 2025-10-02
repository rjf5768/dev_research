; ModuleID = './20050316-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050316-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { <2 x i32> }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test1() #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test2(double noundef %0) #0 {
  %.cast = bitcast double %0 to i64
  %2 = trunc i64 %.cast to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @test3() #0 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @test4(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %.cast = bitcast i64 %2 to double
  ret double %.cast
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @test5(double noundef %0) #0 {
  ret double %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %union.anon, align 8
  %2 = call i32 @test1()
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = call i32 @test2(double noundef 0x200000002)
  %.not1 = icmp eq i32 %5, 2
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %4
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = call double @test3()
  %9 = bitcast %union.anon* %1 to double*
  store double %8, double* %9, align 8
  %10 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0, i64 0
  %11 = load i32, i32* %10, align 8
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0, i64 1
  %14 = load i32, i32* %13, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %12, %7
  call void @abort() #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  %17 = call double @test4(i32 noundef 262148)
  %.cast = bitcast double %17 to i64
  %.not4 = icmp eq i64 %.cast, 262148
  br i1 %.not4, label %19, label %18

18:                                               ; preds = %16
  call void @abort() #3
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %16
  %20 = call double @test5(double noundef 0x600000006)
  %21 = bitcast %union.anon* %1 to double*
  store double %20, double* %21, align 8
  %22 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0, i64 0
  %23 = load i32, i32* %22, align 8
  %.not6 = icmp eq i32 %23, 6
  br i1 %.not6, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0, i64 1
  %26 = load i32, i32* %25, align 4
  %.not7 = icmp eq i32 %26, 6
  br i1 %.not7, label %28, label %27

27:                                               ; preds = %24, %19
  call void @abort() #3
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %24
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %27, %18, %15, %6, %3
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
