; ModuleID = './ffs-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ffs-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }

@ffstesttab = dso_local global [8 x %struct.anon] [%struct.anon { i32 -2147483648, i32 32 }, %struct.anon { i32 -1515870811, i32 1 }, %struct.anon { i32 1515870810, i32 2 }, %struct.anon { i32 -889323520, i32 18 }, %struct.anon { i32 32768, i32 16 }, %struct.anon { i32 42405, i32 1 }, %struct.anon { i32 23130, i32 2 }, %struct.anon { i32 3232, i32 6 }], align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %16, %0
  %.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %2 = icmp ult i32 %.0, 8
  br i1 %2, label %3, label %18

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @ffstesttab, i64 0, i64 %4, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @llvm.cttz.i32(i32 %6, i1 true), !range !4
  %8 = add nuw nsw i32 %7, 1
  %9 = icmp eq i32 %6, 0
  %10 = select i1 %9, i32 0, i32 %8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @ffstesttab, i64 0, i64 %11, i32 1
  %13 = load i32, i32* %12, align 4
  %.not = icmp eq i32 %10, %13
  br i1 %.not, label %15, label %14

14:                                               ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !5

18:                                               ; preds = %1
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %18, %14
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i32 0, i32 33}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
