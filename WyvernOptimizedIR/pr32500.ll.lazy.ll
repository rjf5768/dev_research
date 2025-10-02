; ModuleID = './pr32500.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr32500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 0, align 4
@__const.main.numbers = private unnamed_addr constant [4 x i32] [i32 57005, i32 48879, i32 4919, i32 16962], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @foo(i32 noundef %0) #0 {
  store i32 %0, i32* @x, align 4
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @bar() #1 {
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #1 {
  br label %3

3:                                                ; preds = %19, %2
  %.0 = phi i32 [ 1, %2 ], [ %20, %19 ]
  %4 = icmp ult i32 %.0, 13
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = icmp ult i32 %.0, 5
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = add nsw i32 %.0, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* @__const.main.numbers, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  call void @foo(i32 noundef %11)
  br label %18

12:                                               ; preds = %5
  %13 = icmp ugt i32 %.0, 6
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = icmp ult i32 %.0, 10
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  call void @bar()
  br label %17

17:                                               ; preds = %16, %14, %12
  br label %18

18:                                               ; preds = %17, %7
  br label %19

19:                                               ; preds = %18
  %20 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

21:                                               ; preds = %3
  call void @abort() #4
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
