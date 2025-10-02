; ModuleID = './20000808-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000808-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Point = type { i64, i64 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @bar() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, %struct.Point* nocapture noundef readonly byval(%struct.Point) align 8 %6, %struct.Point* nocapture noundef readonly byval(%struct.Point) align 8 %7, %struct.Point* nocapture noundef readonly byval(%struct.Point) align 8 %8) #1 {
  %10 = alloca %struct.Point, align 8
  %11 = alloca %struct.Point, align 8
  %12 = alloca %struct.Point, align 8
  %13 = getelementptr inbounds %struct.Point, %struct.Point* %10, i64 0, i32 0
  store i64 %0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.Point, %struct.Point* %10, i64 0, i32 1
  store i64 %1, i64* %14, align 8
  %15 = getelementptr inbounds %struct.Point, %struct.Point* %11, i64 0, i32 0
  store i64 %2, i64* %15, align 8
  %16 = getelementptr inbounds %struct.Point, %struct.Point* %11, i64 0, i32 1
  store i64 %3, i64* %16, align 8
  %17 = getelementptr inbounds %struct.Point, %struct.Point* %12, i64 0, i32 0
  store i64 %4, i64* %17, align 8
  %18 = getelementptr inbounds %struct.Point, %struct.Point* %12, i64 0, i32 1
  store i64 %5, i64* %18, align 8
  %19 = getelementptr inbounds %struct.Point, %struct.Point* %10, i64 0, i32 0
  %20 = load i64, i64* %19, align 8
  %.not = icmp eq i64 %20, 0
  br i1 %.not, label %21, label %54

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.Point, %struct.Point* %10, i64 0, i32 1
  %23 = load i64, i64* %22, align 8
  %.not1 = icmp eq i64 %23, 1
  br i1 %.not1, label %24, label %54

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Point, %struct.Point* %11, i64 0, i32 0
  %26 = load i64, i64* %25, align 8
  %.not2 = icmp eq i64 %26, -1
  br i1 %.not2, label %27, label %54

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Point, %struct.Point* %11, i64 0, i32 1
  %29 = load i64, i64* %28, align 8
  %.not3 = icmp eq i64 %29, 0
  br i1 %.not3, label %30, label %54

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.Point, %struct.Point* %12, i64 0, i32 0
  %32 = load i64, i64* %31, align 8
  %.not4 = icmp eq i64 %32, 1
  br i1 %.not4, label %33, label %54

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.Point, %struct.Point* %12, i64 0, i32 1
  %35 = load i64, i64* %34, align 8
  %.not5 = icmp eq i64 %35, -1
  br i1 %.not5, label %36, label %54

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.Point, %struct.Point* %6, i64 0, i32 0
  %38 = load i64, i64* %37, align 8
  %.not6 = icmp eq i64 %38, -1
  br i1 %.not6, label %39, label %54

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.Point, %struct.Point* %6, i64 0, i32 1
  %41 = load i64, i64* %40, align 8
  %.not7 = icmp eq i64 %41, 1
  br i1 %.not7, label %42, label %54

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.Point, %struct.Point* %7, i64 0, i32 0
  %44 = load i64, i64* %43, align 8
  %.not8 = icmp eq i64 %44, 0
  br i1 %.not8, label %45, label %54

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.Point, %struct.Point* %7, i64 0, i32 1
  %47 = load i64, i64* %46, align 8
  %.not9 = icmp eq i64 %47, -1
  br i1 %.not9, label %48, label %54

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.Point, %struct.Point* %8, i64 0, i32 0
  %50 = load i64, i64* %49, align 8
  %.not10 = icmp eq i64 %50, 1
  br i1 %.not10, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.Point, %struct.Point* %8, i64 0, i32 1
  %53 = load i64, i64* %52, align 8
  %.not11 = icmp eq i64 %53, 0
  br i1 %.not11, label %55, label %54

54:                                               ; preds = %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %9
  call void @abort() #4
  unreachable

55:                                               ; preds = %51
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #1 {
  %1 = alloca %struct.Point, align 8
  %2 = alloca %struct.Point, align 8
  %3 = alloca %struct.Point, align 8
  %4 = alloca %struct.Point, align 8
  %5 = alloca %struct.Point, align 8
  %6 = alloca %struct.Point, align 8
  %7 = getelementptr inbounds %struct.Point, %struct.Point* %1, i64 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.Point, %struct.Point* %1, i64 0, i32 1
  store i64 1, i64* %8, align 8
  %9 = getelementptr inbounds %struct.Point, %struct.Point* %2, i64 0, i32 0
  store i64 -1, i64* %9, align 8
  %10 = getelementptr inbounds %struct.Point, %struct.Point* %2, i64 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.Point, %struct.Point* %3, i64 0, i32 0
  store i64 1, i64* %11, align 8
  %12 = getelementptr inbounds %struct.Point, %struct.Point* %3, i64 0, i32 1
  store i64 -1, i64* %12, align 8
  %13 = getelementptr inbounds %struct.Point, %struct.Point* %4, i64 0, i32 0
  store i64 -1, i64* %13, align 8
  %14 = getelementptr inbounds %struct.Point, %struct.Point* %4, i64 0, i32 1
  store i64 1, i64* %14, align 8
  %15 = getelementptr inbounds %struct.Point, %struct.Point* %5, i64 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.Point, %struct.Point* %5, i64 0, i32 1
  store i64 -1, i64* %16, align 8
  %17 = getelementptr inbounds %struct.Point, %struct.Point* %6, i64 0, i32 0
  store i64 1, i64* %17, align 8
  %18 = getelementptr inbounds %struct.Point, %struct.Point* %6, i64 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.Point, %struct.Point* %1, i64 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.Point, %struct.Point* %1, i64 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.Point, %struct.Point* %2, i64 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.Point, %struct.Point* %2, i64 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.Point, %struct.Point* %3, i64 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.Point, %struct.Point* %3, i64 0, i32 1
  %30 = load i64, i64* %29, align 8
  call void @f(i64 %20, i64 %22, i64 %24, i64 %26, i64 %28, i64 %30, %struct.Point* noundef nonnull byval(%struct.Point) align 8 %4, %struct.Point* noundef nonnull byval(%struct.Point) align 8 %5, %struct.Point* noundef nonnull byval(%struct.Point) align 8 %6)
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  call void @foo()
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
