; ModuleID = './20040307-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040307-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8, [3 x i8] }

@__const.main.sdata = private unnamed_addr constant %struct.anon { i8 1, [3 x i8] undef }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  br label %2

2:                                                ; preds = %11, %0
  %.0 = phi i32 [ 0, %0 ], [ %8, %11 ]
  %3 = bitcast i32* %1 to i8*
  %4 = load i8, i8* %3, align 4
  %5 = and i8 %4, 1
  %6 = xor i8 %4, 1
  store i8 %6, i8* %3, align 4
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %.loopexit, label %7

7:                                                ; preds = %2
  %8 = add nuw nsw i32 %.0, 1
  %9 = icmp ugt i32 %.0, 99
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7
  br label %2, !llvm.loop !4

.loopexit:                                        ; preds = %2
  br label %12

12:                                               ; preds = %.loopexit, %10
  %.1 = phi i32 [ %8, %10 ], [ %.0, %.loopexit ]
  %.not2 = icmp eq i32 %.1, 1
  br i1 %.not2, label %14, label %13

13:                                               ; preds = %12
  call void @abort() #3
  unreachable

14:                                               ; preds = %12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
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
