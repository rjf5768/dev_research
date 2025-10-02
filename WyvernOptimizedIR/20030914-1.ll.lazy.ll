; ModuleID = './20030914-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030914-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { [16 x i32] }

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local x86_fp80 @f(i32 noundef %0, %struct.s* nocapture noundef readonly byval(%struct.s) align 8 %1, x86_fp80 noundef %2) #0 {
  br label %4

4:                                                ; preds = %7, %3
  %.01 = phi x86_fp80 [ %2, %3 ], [ %12, %7 ]
  %.0 = phi i32 [ 0, %3 ], [ %13, %7 ]
  %5 = icmp ult i32 %.0, 16
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds %struct.s, %struct.s* %1, i64 0, i32 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = sitofp i32 %10 to x86_fp80
  %12 = fadd x86_fp80 %.01, %11
  %13 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

14:                                               ; preds = %4
  ret x86_fp80 %.01
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.s, align 8
  br label %2

2:                                                ; preds = %8, %0
  %.0 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %3 = icmp ult i32 %.0, 16
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = add nuw nsw i32 %.0, 1
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds %struct.s, %struct.s* %1, i64 0, i32 0, i64 %6
  store i32 %5, i32* %7, align 4
  br label %8

8:                                                ; preds = %4
  %9 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !6

10:                                               ; preds = %2
  %11 = call x86_fp80 @f(i32 noundef 1, %struct.s* noundef nonnull byval(%struct.s) align 8 %1, x86_fp80 noundef 0xK400C9C40000000000000)
  %12 = fcmp une x86_fp80 %11, 0xK400C9E60000000000000
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void @abort() #3
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %10
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %14, %13
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
