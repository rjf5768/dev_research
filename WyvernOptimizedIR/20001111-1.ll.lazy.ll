; ModuleID = './20001111-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001111-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@u = internal global i32 0, align 4
@next_buffer = internal global i32 0, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @foo(i32 noundef %0) #0 {
  %2 = load i32, i32* @u, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = mul i32 %2, 52783
  br label %15

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %9, %5
  %.01 = phi i32 [ 0, %5 ], [ %10, %9 ]
  %7 = icmp ult i32 %.01, 2
  br i1 %7, label %8, label %11

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %8
  %10 = add i32 %.01, 1
  br label %6, !llvm.loop !4

11:                                               ; preds = %6
  %12 = load i32, i32* @next_buffer, align 4
  %13 = mul i32 %12, 52783
  %14 = add i32 %13, %0
  br label %15

15:                                               ; preds = %11, %3
  %.0.in = phi i32 [ %4, %3 ], [ %14, %11 ]
  %.0 = zext i32 %.0.in to i64
  ret i64 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @bar() #1 {
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call i64 @foo(i32 noundef 3)
  %.not = icmp eq i64 %1, 3
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  store i32 1, i32* @next_buffer, align 4
  %4 = call i64 @foo(i32 noundef 2)
  %.not1 = icmp eq i64 %4, 52785
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #4
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %6, %5, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
