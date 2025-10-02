; ModuleID = './pr56799.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56799.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32 }

@hi = dso_local global i32 0, align 4
@lo = dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.S, align 4
  %2 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0
  store i32 65536, i32* %2, align 4
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 1
  store i32 1, i32* %3, align 4
  %4 = call i32 @foo(%struct.S* noundef nonnull %1)
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load i32, i32* @lo, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i32, i32* @hi, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %9, %6, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %13, %12
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @foo(%struct.S* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 65535
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %8, label %5

5:                                                ; preds = %1
  store i32 1, i32* @lo, align 4
  %6 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %.0 = phi i32 [ %7, %5 ], [ 0, %1 ]
  %.not1 = icmp ult i32 %3, 65536
  br i1 %.not1, label %13, label %9

9:                                                ; preds = %8
  store i32 1, i32* @hi, align 4
  %10 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %.0, %11
  br label %13

13:                                               ; preds = %9, %8
  %.1 = phi i32 [ %12, %9 ], [ %.0, %8 ]
  %14 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %.1, %15
  ret i32 %16
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
