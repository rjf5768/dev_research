; ModuleID = './960416-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960416-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.t_le = type { %struct.anon }
%struct.anon = type { i64, i64 }
%union.t_be = type { %struct.anon.0 }
%struct.anon.0 = type { i64, i64 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f_le(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %union.t_le, align 8
  %6 = alloca %union.t_le, align 8
  %7 = alloca %union.t_le, align 8
  %8 = alloca %union.t_le, align 8
  %9 = alloca %union.t_le, align 8
  %10 = alloca %union.t_le, align 8
  %11 = getelementptr inbounds %union.t_le, %union.t_le* %5, i64 0, i32 0, i32 0
  store i64 %0, i64* %11, align 8
  %12 = getelementptr inbounds %union.t_le, %union.t_le* %5, i64 0, i32 0, i32 1
  store i64 %1, i64* %12, align 8
  %13 = getelementptr inbounds %union.t_le, %union.t_le* %6, i64 0, i32 0, i32 0
  store i64 %2, i64* %13, align 8
  %14 = getelementptr inbounds %union.t_le, %union.t_le* %6, i64 0, i32 0, i32 1
  store i64 %3, i64* %14, align 8
  %15 = getelementptr inbounds %union.t_le, %union.t_le* %5, i64 0, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %2, %3
  %18 = getelementptr inbounds %union.t_le, %union.t_le* %6, i64 0, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = sub i64 0, %17
  br label %23

23:                                               ; preds = %21, %4
  %.01 = phi i64 [ %22, %21 ], [ %17, %4 ]
  %.0 = phi i64 [ -1, %21 ], [ 0, %4 ]
  %24 = sub i64 %1, %16
  %25 = getelementptr inbounds %union.t_le, %union.t_le* %5, i64 0, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %union.t_le, %union.t_le* %6, i64 0, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = mul i64 %26, %28
  %30 = getelementptr inbounds %union.t_le, %union.t_le* %9, i64 0, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %union.t_le, %union.t_le* %5, i64 0, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %union.t_le, %union.t_le* %6, i64 0, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 %32, %34
  %36 = getelementptr inbounds %union.t_le, %union.t_le* %8, i64 0, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = mul i64 %24, %.01
  %38 = getelementptr inbounds %union.t_le, %union.t_le* %10, i64 0, i32 0, i32 0
  %39 = xor i64 %37, %.0
  store i64 %39, i64* %38, align 8
  %40 = getelementptr inbounds %union.t_le, %union.t_le* %8, i64 0, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %35, %41
  %43 = getelementptr inbounds %union.t_le, %union.t_le* %9, i64 0, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %42, %44
  %46 = getelementptr inbounds %union.t_le, %union.t_le* %10, i64 0, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %45, %47
  %49 = getelementptr inbounds %union.t_le, %union.t_le* %7, i64 0, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %union.t_le, %union.t_le* %9, i64 0, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %union.t_le, %union.t_le* %8, i64 0, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %51, %53
  %55 = getelementptr inbounds %union.t_le, %union.t_le* %9, i64 0, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %54, %56
  %58 = getelementptr inbounds %union.t_le, %union.t_le* %10, i64 0, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %57, %59
  %61 = getelementptr inbounds %union.t_le, %union.t_le* %7, i64 0, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %60
  %64 = trunc i64 %63 to i32
  ret i32 %64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f_be(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %union.t_be, align 8
  %6 = alloca %union.t_be, align 8
  %7 = alloca %union.t_be, align 8
  %8 = alloca %union.t_be, align 8
  %9 = alloca %union.t_be, align 8
  %10 = alloca %union.t_be, align 8
  %11 = alloca %union.t_be, align 8
  %12 = getelementptr inbounds %union.t_be, %union.t_be* %5, i64 0, i32 0, i32 0
  store i64 %0, i64* %12, align 8
  %13 = getelementptr inbounds %union.t_be, %union.t_be* %5, i64 0, i32 0, i32 1
  store i64 %1, i64* %13, align 8
  %14 = getelementptr inbounds %union.t_be, %union.t_be* %6, i64 0, i32 0, i32 0
  store i64 %2, i64* %14, align 8
  %15 = getelementptr inbounds %union.t_be, %union.t_be* %6, i64 0, i32 0, i32 1
  store i64 %3, i64* %15, align 8
  %16 = getelementptr inbounds %union.t_be, %union.t_be* %5, i64 0, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %union.t_be, %union.t_be* %5, i64 0, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %union.t_be, %union.t_be* %6, i64 0, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %3, %21
  %23 = getelementptr inbounds %union.t_be, %union.t_be* %6, i64 0, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = sub i64 0, %22
  br label %28

28:                                               ; preds = %26, %4
  %.01 = phi i64 [ %27, %26 ], [ %22, %4 ]
  %.0 = phi i64 [ -1, %26 ], [ 0, %4 ]
  %29 = sub i64 %17, %19
  %30 = getelementptr inbounds %union.t_be, %union.t_be* %5, i64 0, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %union.t_be, %union.t_be* %6, i64 0, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = mul i64 %31, %33
  %35 = getelementptr inbounds %union.t_be, %union.t_be* %9, i64 0, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = getelementptr inbounds %union.t_be, %union.t_be* %5, i64 0, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %union.t_be, %union.t_be* %6, i64 0, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = mul i64 %37, %39
  %41 = getelementptr inbounds %union.t_be, %union.t_be* %8, i64 0, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = mul i64 %29, %.01
  %43 = getelementptr inbounds %union.t_be, %union.t_be* %10, i64 0, i32 0, i32 0
  %44 = xor i64 %42, %.0
  store i64 %44, i64* %43, align 8
  %45 = shl i64 %40, 1
  %46 = getelementptr inbounds %union.t_be, %union.t_be* %9, i64 0, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %45, %47
  %49 = add i64 %48, %44
  %50 = getelementptr inbounds %union.t_be, %union.t_be* %7, i64 0, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  %51 = getelementptr inbounds %union.t_be, %union.t_be* %8, i64 0, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %47, %52
  %54 = getelementptr inbounds %union.t_be, %union.t_be* %9, i64 0, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %53, %55
  %57 = getelementptr inbounds %union.t_be, %union.t_be* %10, i64 0, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %56, %58
  %60 = getelementptr inbounds %union.t_be, %union.t_be* %11, i64 0, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %union.t_be, %union.t_be* %7, i64 0, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %union.t_be, %union.t_be* %11, i64 0, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %62, %64
  %66 = trunc i64 %65 to i32
  ret i32 %66
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %union.t_be, align 8
  %2 = alloca %union.t_le, align 8
  %3 = alloca %union.t_le, align 8
  %4 = getelementptr inbounds %union.t_be, %union.t_be* %1, i64 0, i32 0, i32 0
  store i64 268435456, i64* %4, align 8
  %5 = getelementptr inbounds %union.t_be, %union.t_be* %1, i64 0, i32 0, i32 1
  store i64 3758096384, i64* %5, align 8
  br i1 false, label %6, label %8

6:                                                ; preds = %0
  br i1 undef, label %8, label %7

7:                                                ; preds = %6
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6, %0
  %9 = getelementptr inbounds %union.t_be, %union.t_be* %1, i64 0, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, -2305843008945258496
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = getelementptr inbounds %union.t_le, %union.t_le* %2, i64 0, i32 0, i32 0
  store i64 4294967296, i64* %13, align 8
  %14 = getelementptr inbounds %union.t_le, %union.t_le* %3, i64 0, i32 0, i32 0
  store i64 4294967296, i64* %14, align 8
  %15 = getelementptr inbounds %union.t_le, %union.t_le* %2, i64 0, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %union.t_le, %union.t_le* %3, i64 0, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @f_le(i64 4294967296, i64 %16, i64 4294967296, i64 %18)
  %.not = icmp eq i32 %19, -1
  br i1 %.not, label %21, label %20

20:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %12, %8
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %21, %20, %7
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
