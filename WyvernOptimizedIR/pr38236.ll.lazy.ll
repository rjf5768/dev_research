; ModuleID = './pr38236.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38236.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i32 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @foo(%struct.X* nocapture noundef readonly %0, i32* nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.X, align 4
  %6 = alloca %struct.X, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %4
  %.0 = phi %struct.X* [ %5, %7 ], [ %0, %4 ]
  %.not2 = icmp eq i32 %3, 0
  br i1 %.not2, label %11, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.X, %struct.X* %5, i64 0, i32 0
  br label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.X, %struct.X* %6, i64 0, i32 0
  br label %13

13:                                               ; preds = %11, %9
  %.01 = phi i32* [ %10, %9 ], [ %12, %11 ]
  store i32 1, i32* %.01, align 4
  %14 = getelementptr inbounds %struct.X, %struct.X* %.0, i64 0, i32 0
  %15 = load i32, i32* %14, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @foo(%struct.X* noundef null, i32* noundef null, i32 noundef 1, i32 noundef 1)
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
