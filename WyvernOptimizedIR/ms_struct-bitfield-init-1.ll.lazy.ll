; ModuleID = './ms_struct-bitfield-init-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/ms_struct-bitfield-init-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i8, i8, i8, i8 }
%struct.anon.1 = type { i8, i8, i8, i8 }
%struct.anon.2 = type { i8, i8, i8, i8 }
%struct.anon.3 = type { i8, i8, i8, i8 }
%struct.anon.4 = type { i8, [3 x i8], i8, [3 x i8] }
%struct.anon.5 = type { i8, i8, i8, i8 }
%struct.anon.6 = type { i8, i8 }
%struct.anon.7 = type { i8, [3 x i8] }

@t1 = dso_local global { i8, i8, [2 x i8], i8, i8, [2 x i8] } { i8 1, i8 0, [2 x i8] undef, i8 2, i8 0, [2 x i8] undef }, align 4
@t2 = dso_local global %struct.anon.0 { i8 3, i8 undef, i8 4, i8 undef }, align 2
@t3 = dso_local global %struct.anon.1 { i8 5, i8 undef, i8 6, i8 undef }, align 2
@t5 = dso_local global %struct.anon.2 { i8 7, i8 undef, i8 8, i8 undef }, align 2
@t6 = dso_local global %struct.anon.3 { i8 5, i8 undef, i8 10, i8 undef }, align 2
@t7 = dso_local global %struct.anon.4 { i8 5, [3 x i8] undef, i8 10, [3 x i8] undef }, align 4
@t8 = dso_local global %struct.anon.5 { i8 5, i8 undef, i8 10, i8 undef }, align 2
@t10 = dso_local global %struct.anon.6 { i8 5, i8 10 }, align 1
@t4 = dso_local global %struct.anon.7 zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, [2 x i8], i8, i8, [2 x i8] }* @t1 to i32*), align 4
  %2 = and i32 %1, 4095
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* bitcast (i8* getelementptr inbounds ({ i8, i8, [2 x i8], i8, i8, [2 x i8] }, { i8, i8, [2 x i8], i8, i8, [2 x i8] }* @t1, i64 0, i32 3) to i32*), align 4
  %5 = and i32 %4, 4095
  %.not1 = icmp eq i32 %5, 2
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %3, %0
  call void @abort() #2
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %3
  %8 = load i8, i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @t2, i64 0, i32 0), align 2
  %.mask = and i8 %8, 15
  %.not2 = icmp eq i8 %.mask, 3
  br i1 %.not2, label %9, label %11

9:                                                ; preds = %7
  %10 = load i8, i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @t2, i64 0, i32 2), align 2
  %.not3 = icmp eq i8 %10, 4
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9, %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  %13 = load i8, i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @t3, i64 0, i32 0), align 2
  %.mask5 = and i8 %13, 15
  %.not4 = icmp eq i8 %.mask5, 5
  br i1 %.not4, label %14, label %16

14:                                               ; preds = %12
  %15 = load i8, i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @t3, i64 0, i32 2), align 2
  %.not6 = icmp eq i8 %15, 6
  br i1 %.not6, label %17, label %16

16:                                               ; preds = %14, %12
  call void @abort() #2
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  %18 = load i8, i8* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @t5, i64 0, i32 0), align 2
  %.mask8 = and i8 %18, 15
  %.not7 = icmp eq i8 %.mask8, 7
  br i1 %.not7, label %19, label %21

19:                                               ; preds = %17
  %20 = load i8, i8* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @t5, i64 0, i32 2), align 2
  %.not9 = icmp eq i8 %20, 8
  br i1 %.not9, label %22, label %21

21:                                               ; preds = %19, %17
  call void @abort() #2
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %19
  %23 = load i8, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @t6, i64 0, i32 0), align 2
  %.mask11 = and i8 %23, 15
  %.not10 = icmp eq i8 %.mask11, 5
  br i1 %.not10, label %24, label %26

24:                                               ; preds = %22
  %25 = load i8, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @t6, i64 0, i32 2), align 2
  %.not12 = icmp eq i8 %25, 10
  br i1 %.not12, label %27, label %26

26:                                               ; preds = %24, %22
  call void @abort() #2
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %24
  %28 = load i8, i8* getelementptr inbounds (%struct.anon.4, %struct.anon.4* @t7, i64 0, i32 0), align 4
  %.mask14 = and i8 %28, 15
  %.not13 = icmp eq i8 %.mask14, 5
  br i1 %.not13, label %29, label %31

29:                                               ; preds = %27
  %30 = load i8, i8* getelementptr inbounds (%struct.anon.4, %struct.anon.4* @t7, i64 0, i32 2), align 4
  %.not15 = icmp eq i8 %30, 10
  br i1 %.not15, label %32, label %31

31:                                               ; preds = %29, %27
  call void @abort() #2
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %29
  %33 = load i8, i8* getelementptr inbounds (%struct.anon.5, %struct.anon.5* @t8, i64 0, i32 0), align 2
  %.mask17 = and i8 %33, 15
  %.not16 = icmp eq i8 %.mask17, 5
  br i1 %.not16, label %34, label %36

34:                                               ; preds = %32
  %35 = load i8, i8* getelementptr inbounds (%struct.anon.5, %struct.anon.5* @t8, i64 0, i32 2), align 2
  %.mask19 = and i8 %35, 127
  %.not18 = icmp eq i8 %.mask19, 10
  br i1 %.not18, label %37, label %36

36:                                               ; preds = %34, %32
  call void @abort() #2
  br label %UnifiedUnreachableBlock

37:                                               ; preds = %34
  %38 = load i8, i8* getelementptr inbounds (%struct.anon.6, %struct.anon.6* @t10, i64 0, i32 0), align 1
  %.mask21 = and i8 %38, 15
  %.not20 = icmp eq i8 %.mask21, 5
  br i1 %.not20, label %39, label %41

39:                                               ; preds = %37
  %40 = load i8, i8* getelementptr inbounds (%struct.anon.6, %struct.anon.6* @t10, i64 0, i32 1), align 1
  %.not22 = icmp eq i8 %40, 10
  br i1 %.not22, label %42, label %41

41:                                               ; preds = %39, %37
  call void @abort() #2
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %39
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %41, %36, %31, %26, %21, %16, %11, %6
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
