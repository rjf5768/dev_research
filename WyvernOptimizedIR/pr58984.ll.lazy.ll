; ModuleID = './pr58984.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58984.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i24 }
%struct.T = type <{ i8, i16, i8 }>

@a = dso_local global i32 0, align 4
@c = dso_local global i32* @a, align 8
@__const.main.o = private unnamed_addr constant { i8, i8, i8, i8 } { i8 1, i8 64, i8 0, i8 undef }, align 4
@n = dso_local global i32 0, align 4
@m = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@__const.main.p = private unnamed_addr constant { i8, i8, i8, i8 } { i8 1, i8 64, i8 0, i8 undef }, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @foo(i32 16385)
  %2 = load i32, i32* @n, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %4

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %3, %0
  store i32 1, i32* @m, align 4
  %5 = load i32, i32* @a, align 4
  %.not1 = icmp eq i32 %5, 1
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %4
  call void @abort() #4
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  store i32 0, i32* @e, align 4
  %8 = call i32 @bar(i32 16385)
  %9 = load i32, i32* @n, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %10, label %11

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %7
  %12 = load i32, i32* @m, align 4
  %13 = or i32 %12, 1
  store i32 %13, i32* @m, align 4
  %14 = load i32, i32* @a, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %11
  call void @abort() #4
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %11
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %15, %6
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @foo(i32 %0) #2 {
  %2 = alloca %struct.S, align 4
  %3 = bitcast %struct.S* %2 to i32*
  store i32 %0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* @e, align 4
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = load i32*, i32** @c, align 8
  %9 = load i32, i32* %8, align 4
  %10 = xor i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = bitcast %struct.S* %2 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 507904
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %16, label %14

14:                                               ; preds = %7
  %15 = load i32, i32* @b, align 4
  br label %21

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* @e, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @e, align 4
  br label %4, !llvm.loop !4

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %20, %14
  %.0 = phi i32 [ %15, %14 ], [ 0, %20 ]
  ret i32 %.0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @bar(i32 %0) #2 {
  %2 = alloca i32, align 4
  %tmpcast = bitcast i32* %2 to %struct.T*
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %16, %1
  %4 = load i32, i32* @e, align 4
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32*, i32** @c, align 8
  %8 = load i32, i32* %7, align 4
  %9 = xor i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = getelementptr inbounds %struct.T, %struct.T* %tmpcast, i64 0, i32 1
  %11 = load i16, i16* %10, align 1
  %12 = and i16 %11, 1984
  %.not = icmp eq i16 %12, 0
  br i1 %.not, label %15, label %13

13:                                               ; preds = %6
  %14 = load i32, i32* @b, align 4
  br label %20

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* @e, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @e, align 4
  br label %3, !llvm.loop !6

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %13
  %.0 = phi i32 [ %14, %13 ], [ 0, %19 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
