; ModuleID = './ms_struct-bitfield-init.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/ms_struct-bitfield-init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8, i8 }
%struct.anon.0 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.1 = type { i32, i32, i32, i32 }

@t1 = dso_local global %struct.anon { i8 97, i8 98 }, align 1
@t2 = dso_local global %struct.anon.0 { i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105 }, align 1
@t3 = dso_local global %struct.anon.1 { i32 1, i32 2, i32 3, i32 4 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t1, i64 0, i32 0), align 1
  %.not = icmp eq i8 %1, 97
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #2
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t1, i64 0, i32 1), align 1
  %.not1 = icmp eq i8 %4, 98
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #2
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  store i8 99, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t1, i64 0, i32 0), align 1
  store i8 100, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t1, i64 0, i32 1), align 1
  br i1 false, label %7, label %8

7:                                                ; preds = %6
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  %9 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t1, i64 0, i32 1), align 1
  %.not2 = icmp eq i8 %9, 100
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %8
  call void @abort() #2
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8
  %12 = load i8, i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @t2, i64 0, i32 0), align 1
  %.not3 = icmp eq i8 %12, 97
  br i1 %.not3, label %13, label %15

13:                                               ; preds = %11
  %14 = load i8, i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @t2, i64 0, i32 8), align 1
  %.not4 = icmp eq i8 %14, 105
  br i1 %.not4, label %16, label %15

15:                                               ; preds = %13, %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %13
  %17 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @t3, i64 0, i32 0), align 4
  %.not5 = icmp eq i32 %17, 1
  br i1 %.not5, label %18, label %20

18:                                               ; preds = %16
  %19 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @t3, i64 0, i32 3), align 4
  %.not6 = icmp eq i32 %19, 4
  br i1 %.not6, label %21, label %20

20:                                               ; preds = %18, %16
  call void @abort() #2
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %18
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %20, %15, %10, %7, %5, %2
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
