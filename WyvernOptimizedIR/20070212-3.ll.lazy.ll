; ModuleID = './20070212-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20070212-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i32, i32 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @bar(%struct.foo* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  store i32 %1, i32* %5, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %8, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.foo, %struct.foo* %0, i64 0, i32 0
  br label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.foo, %struct.foo* %0, i64 0, i32 1
  br label %10

10:                                               ; preds = %8, %6
  %.01 = phi i32* [ %7, %6 ], [ %9, %8 ]
  %11 = load i32, i32* %.01, align 4
  %12 = getelementptr inbounds %struct.foo, %struct.foo* %0, i64 0, i32 0
  store i32 1, i32* %12, align 4
  %.not2 = icmp eq i32 %3, 0
  br i1 %.not2, label %14, label %13

13:                                               ; preds = %10
  br label %15

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14, %13
  %.0 = phi i32* [ %.01, %13 ], [ %5, %14 ]
  %16 = load i32, i32* %.0, align 4
  %17 = add nsw i32 %11, %16
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.foo, align 4
  %2 = getelementptr inbounds %struct.foo, %struct.foo* %1, i64 0, i32 0
  store i32 0, i32* %2, align 4
  %3 = getelementptr inbounds %struct.foo, %struct.foo* %1, i64 0, i32 1
  store i32 1, i32* %3, align 4
  %4 = call i32 @bar(%struct.foo* noundef nonnull %1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #3
  unreachable

6:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
