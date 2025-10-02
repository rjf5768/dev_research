; ModuleID = './simd-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/simd-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { <4 x i32> }

@i = dso_local global <4 x i32> <i32 150, i32 100, i32 150, i32 200>, align 16
@j = dso_local global <4 x i32> <i32 10, i32 13, i32 20, i32 30>, align 16
@k = dso_local global <4 x i32> zeroinitializer, align 16
@res = dso_local global %union.anon zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @verify(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %.not = icmp eq i32 %0, %4
  br i1 %.not, label %9, label %12

9:                                                ; preds = %8
  %.not1 = icmp eq i32 %1, %5
  br i1 %.not1, label %10, label %12

10:                                               ; preds = %9
  %.not2 = icmp eq i32 %2, %6
  br i1 %.not2, label %11, label %12

11:                                               ; preds = %10
  %.not3 = icmp eq i32 %3, %7
  br i1 %.not3, label %13, label %12

12:                                               ; preds = %11, %10, %9, %8
  call void @abort() #3
  unreachable

13:                                               ; preds = %11
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = load <4 x i32>, <4 x i32>* @i, align 16
  %2 = load <4 x i32>, <4 x i32>* @j, align 16
  %3 = add <4 x i32> %1, %2
  store <4 x i32> %3, <4 x i32>* @k, align 16
  store <4 x i32> %3, <4 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 16
  %4 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 16
  %5 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  %6 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 2), align 8
  %7 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 3), align 4
  call void @verify(i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef 160, i32 noundef 113, i32 noundef 170, i32 noundef 230)
  %8 = load <4 x i32>, <4 x i32>* @i, align 16
  %9 = load <4 x i32>, <4 x i32>* @j, align 16
  %10 = mul <4 x i32> %8, %9
  store <4 x i32> %10, <4 x i32>* @k, align 16
  store <4 x i32> %10, <4 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 16
  %11 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 16
  %12 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  %13 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 2), align 8
  %14 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 3), align 4
  call void @verify(i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef 1500, i32 noundef 1300, i32 noundef 3000, i32 noundef 6000)
  %15 = load <4 x i32>, <4 x i32>* @i, align 16
  %16 = load <4 x i32>, <4 x i32>* @j, align 16
  %17 = sdiv <4 x i32> %15, %16
  store <4 x i32> %17, <4 x i32>* @k, align 16
  store <4 x i32> %17, <4 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 16
  %18 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 16
  %19 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  %20 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 2), align 8
  %21 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 3), align 4
  call void @verify(i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef 15, i32 noundef 7, i32 noundef 7, i32 noundef 6)
  %22 = load <4 x i32>, <4 x i32>* @i, align 16
  %23 = load <4 x i32>, <4 x i32>* @j, align 16
  %24 = and <4 x i32> %22, %23
  store <4 x i32> %24, <4 x i32>* @k, align 16
  store <4 x i32> %24, <4 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 16
  %25 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 16
  %26 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  %27 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 2), align 8
  %28 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 3), align 4
  call void @verify(i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef 2, i32 noundef 4, i32 noundef 20, i32 noundef 8)
  %29 = load <4 x i32>, <4 x i32>* @i, align 16
  %30 = load <4 x i32>, <4 x i32>* @j, align 16
  %31 = or <4 x i32> %29, %30
  store <4 x i32> %31, <4 x i32>* @k, align 16
  store <4 x i32> %31, <4 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 16
  %32 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 16
  %33 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  %34 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 2), align 8
  %35 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 3), align 4
  call void @verify(i32 noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef 158, i32 noundef 109, i32 noundef 150, i32 noundef 222)
  %36 = load <4 x i32>, <4 x i32>* @i, align 16
  %37 = load <4 x i32>, <4 x i32>* @j, align 16
  %38 = xor <4 x i32> %36, %37
  store <4 x i32> %38, <4 x i32>* @k, align 16
  store <4 x i32> %38, <4 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 16
  %39 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 16
  %40 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  %41 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 2), align 8
  %42 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 3), align 4
  call void @verify(i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef 156, i32 noundef 105, i32 noundef 130, i32 noundef 214)
  %43 = load <4 x i32>, <4 x i32>* @i, align 16
  %44 = sub <4 x i32> zeroinitializer, %43
  store <4 x i32> %44, <4 x i32>* @k, align 16
  store <4 x i32> %44, <4 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 16
  %45 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 16
  %46 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  %47 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 2), align 8
  %48 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 3), align 4
  call void @verify(i32 noundef %45, i32 noundef %46, i32 noundef %47, i32 noundef %48, i32 noundef -150, i32 noundef -100, i32 noundef -150, i32 noundef -200)
  %49 = load <4 x i32>, <4 x i32>* @i, align 16
  %50 = xor <4 x i32> %49, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %50, <4 x i32>* @k, align 16
  store <4 x i32> %50, <4 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 16
  %51 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 16
  %52 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  %53 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 2), align 8
  %54 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 3), align 4
  call void @verify(i32 noundef %51, i32 noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef -151, i32 noundef -101, i32 noundef -151, i32 noundef -201)
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
