; ModuleID = './pr65427.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65427.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global <8 x i32> zeroinitializer, align 32
@c = dso_local global <8 x i32> zeroinitializer, align 32
@d = dso_local global <8 x i32> zeroinitializer, align 32
@b = dso_local global <8 x i32> zeroinitializer, align 32
@e = dso_local global <8 x i32> zeroinitializer, align 32
@f = dso_local global <8 x i32> zeroinitializer, align 32

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %13, %2
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %8, label %4

4:                                                ; preds = %3
  %5 = load <8 x i32>, <8 x i32>* @a, align 32
  %6 = load <8 x i32>, <8 x i32>* @c, align 32
  %7 = xor <8 x i32> %5, %6
  br label %12

8:                                                ; preds = %3
  %9 = load <8 x i32>, <8 x i32>* @a, align 32
  %10 = load <8 x i32>, <8 x i32>* @b, align 32
  %11 = xor <8 x i32> %9, %10
  br label %12

12:                                               ; preds = %8, %4
  %storemerge = phi <8 x i32> [ %11, %8 ], [ %7, %4 ]
  store <8 x i32> %storemerge, <8 x i32>* @d, align 32
  br label %13

13:                                               ; preds = %12
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %14, label %3, !llvm.loop !4

14:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  store <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, <8 x i32>* @a, align 32
  store <8 x i32> <i32 64, i32 128, i32 64, i32 128, i32 64, i32 128, i32 64, i32 128>, <8 x i32>* @b, align 32
  store <8 x i32> <i32 65, i32 130, i32 67, i32 132, i32 69, i32 134, i32 71, i32 136>, <8 x i32>* @e, align 32
  call void @foo(i32 noundef 0, i32 noundef 0)
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(32) bitcast (<8 x i32>* @d to i8*), i8* noundef nonnull dereferenceable(32) bitcast (<8 x i32>* @e to i8*), i64 32)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %2, label %1

1:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

2:                                                ; preds = %0
  store <8 x i32> <i32 128, i32 64, i32 128, i32 64, i32 128, i32 64, i32 128, i32 64>, <8 x i32>* @c, align 32
  store <8 x i32> <i32 129, i32 66, i32 131, i32 68, i32 133, i32 70, i32 135, i32 72>, <8 x i32>* @f, align 32
  call void @foo(i32 noundef 1, i32 noundef 0)
  %bcmp1 = call i32 @bcmp(i8* noundef nonnull dereferenceable(32) bitcast (<8 x i32>* @d to i8*), i8* noundef nonnull dereferenceable(32) bitcast (<8 x i32>* @f to i8*), i64 32)
  %.not2 = icmp eq i32 %bcmp1, 0
  br i1 %.not2, label %4, label %3

3:                                                ; preds = %2
  call void @abort() #5
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %2
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %3, %1
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
