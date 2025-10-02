; ModuleID = './20020611-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020611-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n = dso_local global i32 30, align 4
@p = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @x() #0 {
  %1 = load i32, i32* @n, align 4
  %2 = icmp ult i32 %1, 31
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %5

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %4, %3
  %storemerge = phi i32 [ 0, %4 ], [ 1, %3 ]
  store i32 %storemerge, i32* @p, align 4
  br i1 %2, label %6, label %7

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7, %6
  %storemerge1 = phi i32 [ 0, %7 ], [ 1, %6 ]
  store i32 %storemerge1, i32* @k, align 4
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  call void @x()
  %1 = load i32, i32* @p, align 4
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %2, label %4

2:                                                ; preds = %0
  %3 = load i32, i32* @k, align 4
  %.not1 = icmp eq i32 %3, 1
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %2, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %2
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %5, %4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
