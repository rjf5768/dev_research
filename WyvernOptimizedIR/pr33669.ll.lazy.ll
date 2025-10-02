; ModuleID = './pr33669.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr33669.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo_t = type { i32, i32 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i64 @foo(%struct.foo_t* nocapture noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = zext i32 %5 to i64
  %7 = srem i64 %1, %6
  %8 = sub nsw i64 %1, %7
  %9 = trunc i64 %7 to i32
  %10 = add i32 %9, %2
  %11 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %0, i64 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %10, %12
  %14 = add i32 %13, -1
  %15 = urem i32 %14, %12
  %16 = sub i32 %14, %15
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %30

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %0, i64 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %0, i64 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ugt i32 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %0, i64 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %0, i64 0, i32 1
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %19
  br label %30

30:                                               ; preds = %29, %18
  %.0 = phi i64 [ -1, %18 ], [ %8, %29 ]
  ret i64 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.foo_t, align 4
  %2 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %1, i64 0, i32 0
  store i32 8192, i32* %2, align 4
  %3 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %1, i64 0, i32 1
  store i32 0, i32* %3, align 4
  %4 = call i64 @foo(%struct.foo_t* noundef nonnull %1, i64 noundef 0, i32 noundef 4096)
  %.not = icmp eq i64 %4, 0
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
