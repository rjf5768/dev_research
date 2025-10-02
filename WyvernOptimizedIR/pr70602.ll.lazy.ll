; ModuleID = './pr70602.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70602.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@__const.main.e = private unnamed_addr constant [21 x { i8, i8, i8 }] [{ i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } zeroinitializer, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } zeroinitializer, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } zeroinitializer, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } zeroinitializer, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } zeroinitializer, { i8, i8, i8 } { i8 18, i8 0, i8 0 }], align 16
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %2 = load i32, i32* @a, align 4
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = load i32, i32* @b, align 4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %6, label %7

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6, %4
  %8 = xor i1 %.not, true
  %9 = zext i1 %8 to i32
  store i32 %9, i32* @b, align 4
  store i32 9, i32* @c, align 4
  br label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @a, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @a, align 4
  br label %1, !llvm.loop !4

13:                                               ; preds = %1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
