; ModuleID = './20020213-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020213-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { float, i32 }

@a = dso_local global %struct.A zeroinitializer, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = load float, float* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 0), align 4
  %2 = call i32 @bar(float noundef %1)
  store i32 %2, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 1), align 4
  %3 = load i32, i32* @b, align 4
  %4 = add nsw i32 %3, -1
  %5 = icmp slt i32 %2, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 1), align 4
  br label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @b, align 4
  %10 = add nsw i32 %9, -1
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ %7, %6 ], [ %10, %8 ]
  store i32 %12, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 1), align 4
  %13 = load i32, i32* @b, align 4
  %14 = add nsw i32 %13, -1
  %.not = icmp slt i32 %12, %14
  br i1 %.not, label %16, label %15

15:                                               ; preds = %11
  call void @abort() #3
  unreachable

16:                                               ; preds = %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @bar(float noundef %0) #1 {
  ret i32 2241
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  store float 1.000000e+00, float* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 0), align 4
  store i32 3384, i32* @b, align 4
  call void @foo()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
