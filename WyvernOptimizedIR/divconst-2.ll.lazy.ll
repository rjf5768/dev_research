; ModuleID = './divconst-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/divconst-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nums = dso_local global [3 x i64] [i64 -1, i64 2147483647, i64 -2147483648], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @f(i64 noundef %0) #0 {
  %2 = sdiv i64 %0, -2147483648
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @r(i64 noundef %0) #0 {
  %2 = srem i64 %0, 2147483648
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @std_eqn(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = mul nsw i64 %2, -2147483648
  %6 = add nsw i64 %5, %3
  %7 = icmp eq i64 %6, %0
  %8 = zext i1 %7 to i64
  ret i64 %8
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %19, %0
  %.0 = phi i32 [ 0, %0 ], [ %20, %19 ]
  %2 = icmp ult i32 %.0, 3
  br i1 %2, label %3, label %21

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [3 x i64], [3 x i64]* @nums, i64 0, i64 %4
  %6 = load i64, i64* %5, align 8
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [3 x i64], [3 x i64]* @nums, i64 0, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @f(i64 noundef %9)
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [3 x i64], [3 x i64]* @nums, i64 0, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @r(i64 noundef %13)
  %15 = call i64 @std_eqn(i64 noundef %6, i64 noundef -2147483648, i64 noundef %10, i64 noundef %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18
  %20 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

21:                                               ; preds = %1
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %21, %17
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
