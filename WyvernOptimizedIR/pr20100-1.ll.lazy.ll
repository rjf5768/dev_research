; ModuleID = './pr20100-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr20100-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = internal global i16 0, align 2
@p = internal global i16 0, align 2
@e = dso_local global i8 0, align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local signext i8 @frob(i16 noundef zeroext %0, i16 noundef zeroext %1) #0 {
  store i16 %0, i16* @g, align 2
  store i16 %1, i16* @p, align 2
  %3 = call zeroext i16 @inc_g()
  %4 = call signext i8 @ring_empty()
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal zeroext i16 @inc_g() #0 {
  %1 = call zeroext i16 @next_g()
  store i16 %1, i16* @g, align 2
  ret i16 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal signext i8 @ring_empty() #1 {
  %1 = call zeroext i16 @curr_p()
  %2 = call zeroext i16 @curr_g()
  %3 = icmp eq i16 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %6

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i8 [ 1, %4 ], [ 0, %5 ]
  ret i8 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local zeroext i16 @get_n() #2 {
  br label %1

1:                                                ; preds = %7, %0
  %.0 = phi i16 [ 0, %0 ], [ %9, %7 ]
  %2 = call signext i8 @ring_empty()
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %3, label %5

3:                                                ; preds = %1
  %4 = icmp ult i16 %.0, 5
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi i1 [ false, %1 ], [ %4, %3 ]
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = call zeroext i16 @inc_g()
  %9 = add i16 %.0, 1
  br label %1, !llvm.loop !4

10:                                               ; preds = %5
  ret i16 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal zeroext i16 @curr_g() #1 {
  %1 = load i16, i16* @g, align 2
  ret i16 %1
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  store i8 3, i8* @e, align 1
  %1 = call signext i8 @frob(i16 noundef zeroext 0, i16 noundef zeroext 2)
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %2, label %14

2:                                                ; preds = %0
  %3 = load i16, i16* @g, align 2
  %.not1 = icmp eq i16 %3, 1
  br i1 %.not1, label %4, label %14

4:                                                ; preds = %2
  %5 = load i16, i16* @p, align 2
  %.not2 = icmp eq i16 %5, 2
  br i1 %.not2, label %6, label %14

6:                                                ; preds = %4
  %7 = load i8, i8* @e, align 1
  %.not3 = icmp eq i8 %7, 3
  br i1 %.not3, label %8, label %14

8:                                                ; preds = %6
  %9 = call zeroext i16 @get_n()
  %.not4 = icmp eq i16 %9, 1
  br i1 %.not4, label %10, label %14

10:                                               ; preds = %8
  %11 = load i16, i16* @g, align 2
  %.not5 = icmp eq i16 %11, 2
  br i1 %.not5, label %12, label %14

12:                                               ; preds = %10
  %13 = load i16, i16* @p, align 2
  %.not6 = icmp eq i16 %13, 2
  br i1 %.not6, label %15, label %14

14:                                               ; preds = %12, %10, %8, %6, %4, %2, %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %15, %14
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal zeroext i16 @next_g() #1 {
  %1 = load i16, i16* @g, align 2
  %2 = zext i16 %1 to i32
  %3 = load i8, i8* @e, align 1
  %4 = zext i8 %3 to i32
  %5 = add nsw i32 %4, -1
  %6 = icmp eq i32 %5, %2
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %11

8:                                                ; preds = %0
  %9 = load i16, i16* @g, align 2
  %10 = add i16 %9, 1
  br label %11

11:                                               ; preds = %8, %7
  %12 = phi i16 [ 0, %7 ], [ %10, %8 ]
  ret i16 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal zeroext i16 @curr_p() #1 {
  %1 = load i16, i16* @p, align 2
  ret i16 %1
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
