; ModuleID = './20000412-6.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000412-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local global [5 x i16] [i16 1, i16 4, i16 16, i16 64, i16 256], align 2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @bug(i16 noundef zeroext 512, i16* noundef getelementptr inbounds ([5 x i16], [5 x i16]* @buf, i64 0, i64 0), i16* noundef getelementptr inbounds ([5 x i16], [5 x i16]* @buf, i64 0, i64 3))
  %.not = icmp eq i32 %1, 491
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %3, %2
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @bug(i16 noundef zeroext %0, i16* noundef readonly %1, i16* noundef readnone %2) #1 {
  br label %4

4:                                                ; preds = %7, %3
  %.01 = phi i16* [ %1, %3 ], [ %10, %7 ]
  %.0 = phi i16 [ %0, %3 ], [ %9, %7 ]
  %5 = icmp ult i16* %.01, %2
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6
  %8 = load i16, i16* %.01, align 2
  %9 = sub i16 %.0, %8
  %10 = getelementptr inbounds i16, i16* %.01, i64 1
  br label %4, !llvm.loop !4

11:                                               ; preds = %4
  %12 = zext i16 %.0 to i32
  ret i32 %12
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
