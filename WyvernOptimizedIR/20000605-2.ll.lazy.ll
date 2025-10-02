; ModuleID = './20000605-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000605-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.F = type { i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1(%struct.F* nocapture noundef %0, %struct.F* nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %14, %2
  %.0 = phi i32 [ 0, %2 ], [ %10, %14 ]
  %4 = getelementptr inbounds %struct.F, %struct.F* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %struct.F, %struct.F* %1, i64 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = add nuw nsw i32 %.0, 1
  %11 = icmp ugt i32 %.0, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #3
  unreachable

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.F, %struct.F* %0, i64 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  br label %3, !llvm.loop !4

18:                                               ; preds = %3
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.F, align 4
  %2 = alloca %struct.F, align 4
  %3 = getelementptr inbounds %struct.F, %struct.F* %1, i64 0, i32 0
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds %struct.F, %struct.F* %2, i64 0, i32 0
  store i32 1, i32* %4, align 4
  call void @f1(%struct.F* noundef nonnull %1, %struct.F* noundef nonnull %2)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
