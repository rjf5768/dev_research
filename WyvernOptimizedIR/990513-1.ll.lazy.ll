; ModuleID = './990513-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990513-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @foo(i32* noundef writeonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds i32, i32* %0, i64 256
  br label %4

4:                                                ; preds = %5, %2
  %.0 = phi i32* [ %3, %2 ], [ %9, %5 ]
  %.not = icmp eq i32* %.0, %0
  br i1 %.not, label %10, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds i32, i32* %.0, i64 -1
  store i32 %1, i32* %6, align 4
  %7 = getelementptr inbounds i32, i32* %.0, i64 -2
  store i32 %1, i32* %7, align 4
  %8 = getelementptr inbounds i32, i32* %.0, i64 -3
  store i32 %1, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %.0, i64 -4
  store i32 %1, i32* %9, align 4
  br label %4, !llvm.loop !4

10:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [256 x i32], align 16
  %2 = bitcast [256 x i32]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(1024) %2, i8 0, i64 1024, i1 false)
  %3 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  call void @foo(i32* noundef nonnull %3, i32 noundef 6)
  %4 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %5 = load i32, i32* %4, align 16
  %.not = icmp eq i32 %5, 6
  br i1 %.not, label %7, label %6

6:                                                ; preds = %0
  call void @abort() #4
  unreachable

7:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
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
