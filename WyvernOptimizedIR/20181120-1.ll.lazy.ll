; ModuleID = './20181120-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20181120-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U1 = type { i32 }

@d = dso_local global i32 0, align 4
@e = dso_local global i32* @d, align 8
@u = dso_local global %union.U1 { i32 67305985 }, align 4
@c = dso_local global i32 0, align 4
@__const.main.f = private unnamed_addr constant %union.U1 { i32 67305985 }, align 4
@b = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %storemerge = phi i32 [ 0, %0 ], [ %12, %10 ]
  store i32 %storemerge, i32* @c, align 4
  %2 = icmp slt i32 %storemerge, 2
  br i1 %2, label %3, label %13

3:                                                ; preds = %1
  %4 = load i32, i32* @c, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load volatile i32, i32* @b, align 4
  br label %8

8:                                                ; preds = %6, %3
  %9 = load i32*, i32** @e, align 8
  store i32 513, i32* %9, align 4
  br label %10

10:                                               ; preds = %8
  %11 = load i32, i32* @c, align 4
  %12 = add nsw i32 %11, 1
  br label %1, !llvm.loop !4

13:                                               ; preds = %1
  %14 = load i32, i32* @d, align 4
  %15 = load volatile i16, i16* bitcast (%union.U1* @u to i16*), align 4
  %16 = and i16 %15, 32767
  %17 = zext i16 %16 to i32
  %.not = icmp eq i32 %14, %17
  br i1 %.not, label %19, label %18

18:                                               ; preds = %13
  call void @abort() #3
  unreachable

19:                                               ; preds = %13
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
