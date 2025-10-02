; ModuleID = './bf-sign-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bf-sign-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i40, i64, i40, i56 }

@x = dso_local global %struct.X zeroinitializer, align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i64, i64* bitcast (%struct.X* @x to i64*), align 8
  %2 = and i64 %1, 6
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #2
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = load i64, i64* bitcast (%struct.X* @x to i64*), align 8
  %6 = shl i64 %5, 30
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %7 to i32
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  call void @abort() #2
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %4
  %12 = load i64, i64* getelementptr inbounds (%struct.X, %struct.X* @x, i64 0, i32 1), align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %11
  %17 = load i64, i64* bitcast (i56* getelementptr inbounds (%struct.X, %struct.X* @x, i64 0, i32 3) to i64*), align 8
  %18 = and i64 %17, 1125831187365888
  %.not1 = icmp eq i64 %18, 0
  br i1 %.not1, label %20, label %19

19:                                               ; preds = %16
  call void @abort() #2
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  %21 = load i64, i64* getelementptr inbounds (%struct.X, %struct.X* @x, i64 0, i32 1), align 8
  %22 = and i64 %21, 9223372028264841216
  %.not2 = icmp eq i64 %22, 0
  br i1 %.not2, label %24, label %23

23:                                               ; preds = %20
  call void @abort() #2
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  br i1 false, label %25, label %26

25:                                               ; preds = %24
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %24
  %27 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.X, %struct.X* @x, i64 0, i32 2) to i64*), align 8
  %28 = and i64 %27, 25769803776
  %.not3 = icmp eq i64 %28, 0
  br i1 %.not3, label %30, label %29

29:                                               ; preds = %26
  call void @abort() #2
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %26
  br i1 false, label %31, label %32

31:                                               ; preds = %30
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %30
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %32, %31, %29, %25, %23, %19, %15, %10, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
