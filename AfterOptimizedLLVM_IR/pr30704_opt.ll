; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/pr30704.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/pr30704.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f1() #0 {
  %1 = alloca i64, align 8
  %2 = alloca double, align 8
  store double 0xFFFFFFFFFFFFF, double* %2, align 8
  %3 = bitcast i64* %1 to i8*
  %4 = bitcast double* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = load i64, i64* %1, align 8
  ret i64 %5
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @f2() #0 {
  %1 = alloca i64, align 8
  %2 = alloca double, align 8
  store i64 4483583629026627, i64* %1, align 8
  %3 = bitcast double* %2 to i8*
  %4 = bitcast i64* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = load double, double* %2, align 8
  ret double %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.anon, align 8
  %3 = alloca double, align 8
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %7 = call i64 @f1()
  %8 = bitcast %union.anon* %2 to i64*
  store i64 %7, i64* %8, align 8
  %9 = bitcast %union.anon* %2 to double*
  %10 = load double, double* %9, align 8
  %11 = fcmp une double %10, 0xFFFFFFFFFFFFF
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  call void @abort() #4
  unreachable

13:                                               ; preds = %0
  %14 = call double @f2()
  %15 = bitcast %union.anon* %2 to double*
  store double %14, double* %15, align 8
  %16 = bitcast %union.anon* %2 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 4483583629026627
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  call void @abort() #4
  unreachable

20:                                               ; preds = %13
  store double 2.340000e+02, double* %3, align 8
  %21 = load double, double* %3, align 8
  store double %21, double* %5, align 8
  %22 = bitcast i64* %4 to i8*
  %23 = bitcast double* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = load i64, i64* %4, align 8
  store i64 %24, i64* %6, align 8
  %25 = bitcast i64* %6 to i8*
  %26 = bitcast double* %5 to i8*
  %27 = call i32 @memcmp(i8* noundef %25, i8* noundef %26, i64 noundef 8)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  call void @abort() #4
  unreachable

30:                                               ; preds = %20
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
