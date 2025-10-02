; ModuleID = './pr90025.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr90025.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@__const.foo.s = private unnamed_addr constant <{ i8, i8, i8, i8, i8, i8, [26 x i8] }> <{ i8 102, i8 111, i8 111, i8 98, i8 97, i8 114, [26 x i8] zeroinitializer }>, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i8* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %13, %1
  %.0 = phi i32 [ 0, %1 ], [ %14, %13 ]
  %3 = icmp ult i32 %.0, 6
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = load i8, i8* %6, align 1
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [7 x i8], [7 x i8]* @.str, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %.not2 = icmp eq i8 %7, %10
  br i1 %.not2, label %12, label %11

11:                                               ; preds = %4
  call void @abort() #4
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %24, %15
  %.1 = phi i32 [ %.0, %15 ], [ %25, %24 ]
  %17 = icmp ult i32 %.1, 32
  br i1 %17, label %18, label %26

18:                                               ; preds = %16
  %19 = zext i32 %.1 to i64
  %20 = getelementptr inbounds i8, i8* %0, i64 %19
  %21 = load i8, i8* %20, align 1
  %.not = icmp eq i8 %21, 0
  br i1 %.not, label %23, label %22

22:                                               ; preds = %18
  call void @abort() #4
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %.1, 1
  br label %16, !llvm.loop !6

26:                                               ; preds = %16
  ret void

UnifiedUnreachableBlock:                          ; preds = %22, %11
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = alloca [32 x i8], align 16
  %3 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %3, i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds (<{ i8, i8, i8, i8, i8, i8, [26 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [26 x i8] }>* @__const.foo.s, i64 0, i32 0), i64 32, i1 false)
  %4 = call i32 @llvm.bswap.i32(i32 %0)
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 8
  %6 = bitcast i8* %5 to i32*
  store i32 %4, i32* %6, align 8
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  call void @bar(i8* noundef nonnull %7)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @foo(i32 noundef 0)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
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
