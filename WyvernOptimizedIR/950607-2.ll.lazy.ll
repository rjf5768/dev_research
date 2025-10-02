; ModuleID = './950607-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950607-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Point = type { i64, i64 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.Point, align 8
  %8 = alloca %struct.Point, align 8
  %9 = alloca %struct.Point, align 8
  %10 = getelementptr inbounds %struct.Point, %struct.Point* %7, i64 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.Point, %struct.Point* %7, i64 0, i32 1
  store i64 %1, i64* %11, align 8
  %12 = getelementptr inbounds %struct.Point, %struct.Point* %8, i64 0, i32 0
  store i64 %2, i64* %12, align 8
  %13 = getelementptr inbounds %struct.Point, %struct.Point* %8, i64 0, i32 1
  store i64 %3, i64* %13, align 8
  %14 = getelementptr inbounds %struct.Point, %struct.Point* %9, i64 0, i32 0
  store i64 %4, i64* %14, align 8
  %15 = getelementptr inbounds %struct.Point, %struct.Point* %9, i64 0, i32 1
  store i64 %5, i64* %15, align 8
  %16 = getelementptr inbounds %struct.Point, %struct.Point* %8, i64 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.Point, %struct.Point* %7, i64 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %17, %19
  %21 = getelementptr inbounds %struct.Point, %struct.Point* %9, i64 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.Point, %struct.Point* %7, i64 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %22, %24
  %26 = mul nsw i64 %20, %25
  %27 = getelementptr inbounds %struct.Point, %struct.Point* %8, i64 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, %24
  %30 = getelementptr inbounds %struct.Point, %struct.Point* %9, i64 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.Point, %struct.Point* %7, i64 0, i32 0
  %33 = load i64, i64* %32, align 8
  %.neg = sub i64 %33, %31
  %.neg1 = mul i64 %.neg, %29
  %34 = add i64 %.neg1, %26
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %6
  br label %41

37:                                               ; preds = %6
  %38 = icmp slt i64 %34, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  br label %41

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40, %39, %36
  %.0 = phi i32 [ 0, %36 ], [ 1, %39 ], [ 2, %40 ]
  ret i32 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.Point, align 8
  %2 = alloca %struct.Point, align 8
  %3 = alloca %struct.Point, align 8
  %4 = getelementptr inbounds %struct.Point, %struct.Point* %1, i64 0, i32 0
  store i64 -23250, i64* %4, align 8
  %5 = getelementptr inbounds %struct.Point, %struct.Point* %1, i64 0, i32 1
  store i64 23250, i64* %5, align 8
  %6 = getelementptr inbounds %struct.Point, %struct.Point* %2, i64 0, i32 0
  store i64 23250, i64* %6, align 8
  %7 = getelementptr inbounds %struct.Point, %struct.Point* %2, i64 0, i32 1
  store i64 -23250, i64* %7, align 8
  %8 = getelementptr inbounds %struct.Point, %struct.Point* %3, i64 0, i32 0
  store i64 -23250, i64* %8, align 8
  %9 = getelementptr inbounds %struct.Point, %struct.Point* %3, i64 0, i32 1
  store i64 -23250, i64* %9, align 8
  %10 = getelementptr inbounds %struct.Point, %struct.Point* %1, i64 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.Point, %struct.Point* %1, i64 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.Point, %struct.Point* %2, i64 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.Point, %struct.Point* %2, i64 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.Point, %struct.Point* %3, i64 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.Point, %struct.Point* %3, i64 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @f(i64 %11, i64 %13, i64 %15, i64 %17, i64 %19, i64 %21)
  %.not = icmp eq i32 %22, 1
  br i1 %.not, label %24, label %23

23:                                               ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %24, %23
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
