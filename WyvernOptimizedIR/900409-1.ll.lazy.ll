; ModuleID = './900409-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/900409-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @f1(i64 noundef %0) #0 {
  %2 = and i64 %0, 4278190080
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @f2(i64 noundef %0) #0 {
  %2 = and i64 %0, -4278190081
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @f3(i64 noundef %0) #0 {
  %2 = and i64 %0, 255
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @f4(i64 noundef %0) #0 {
  %2 = and i64 %0, -256
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @f5(i64 noundef %0) #0 {
  %2 = and i64 %0, 65535
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @f6(i64 noundef %0) #0 {
  %2 = and i64 %0, -65536
  ret i64 %2
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i64 @f1(i64 noundef 2309737967)
  %.not = icmp eq i64 %1, 2298478592
  br i1 %.not, label %2, label %12

2:                                                ; preds = %0
  %3 = call i64 @f2(i64 noundef 2309737967)
  %.not1 = icmp eq i64 %3, 11259375
  br i1 %.not1, label %4, label %12

4:                                                ; preds = %2
  %5 = call i64 @f3(i64 noundef 2309737967)
  %.not2 = icmp eq i64 %5, 239
  br i1 %.not2, label %6, label %12

6:                                                ; preds = %4
  %7 = call i64 @f4(i64 noundef 2309737967)
  %.not3 = icmp eq i64 %7, 2309737728
  br i1 %.not3, label %8, label %12

8:                                                ; preds = %6
  %9 = call i64 @f5(i64 noundef 2309737967)
  %.not4 = icmp eq i64 %9, 52719
  br i1 %.not4, label %10, label %12

10:                                               ; preds = %8
  %11 = call i64 @f6(i64 noundef 2309737967)
  %.not5 = icmp eq i64 %11, 2309685248
  br i1 %.not5, label %13, label %12

12:                                               ; preds = %10, %8, %6, %4, %2, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %10
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %13, %12
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
