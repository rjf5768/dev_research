; ModuleID = './pr41919.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41919.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { i8 }

@g_23 = dso_local global i32 0, align 4
@__const.foo.l_128 = private unnamed_addr constant %struct.S1 { i8 1 }, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i8 @foo()
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  br label %3

3:                                                ; preds = %2, %0
  %4 = zext i1 %.not to i8
  %5 = or i8 %4, -104
  %6 = call signext i8 @bar(i8 noundef signext %5, i8 noundef signext 1)
  %.not1 = icmp eq i8 %6, -104
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %3
  call void @abort() #4
  unreachable

8:                                                ; preds = %3
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i8 @foo() #0 {
  br i1 true, label %2, label %1

1:                                                ; preds = %0
  br label %UnifiedUnreachableBlock

2:                                                ; preds = %0
  br i1 true, label %4, label %3

3:                                                ; preds = %2
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %2
  br i1 true, label %6, label %5

5:                                                ; preds = %4
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  br i1 true, label %8, label %7

7:                                                ; preds = %6
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  br i1 true, label %10, label %9

9:                                                ; preds = %8
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br i1 true, label %12, label %11

11:                                               ; preds = %10
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  br i1 true, label %14, label %13

13:                                               ; preds = %12
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %12
  ret i8 1

UnifiedUnreachableBlock:                          ; preds = %13, %11, %9, %7, %5, %3, %1
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal signext i8 @bar(i8 noundef signext %0, i8 noundef signext %1) #1 {
  %3 = icmp slt i8 %0, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %7

5:                                                ; preds = %2
  %6 = shl i8 %1, 1
  br label %7

7:                                                ; preds = %5, %4
  %8 = phi i8 [ %0, %4 ], [ %6, %5 ]
  ret i8 %8
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
