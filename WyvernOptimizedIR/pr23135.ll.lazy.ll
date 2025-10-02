; ModuleID = './pr23135.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr23135.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { <2 x i32> }
%struct.big_t = type { [131072 x i8] }

@i = dso_local global <2 x i32> <i32 150, i32 100>, align 8
@j = dso_local global <2 x i32> <i32 10, i32 13>, align 8
@res = dso_local global %union.anon zeroinitializer, align 8
@k = dso_local global <2 x i32> zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @verify(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, %struct.big_t* nocapture noundef readnone byval(%struct.big_t) align 8 %4) #0 {
  %.not = icmp eq i32 %0, %2
  br i1 %.not, label %6, label %7

6:                                                ; preds = %5
  %.not1 = icmp eq i32 %1, %3
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %6, %5
  call void @abort() #3
  unreachable

8:                                                ; preds = %6
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.big_t, align 8
  %2 = load <2 x i32>, <2 x i32>* @i, align 8
  %3 = load <2 x i32>, <2 x i32>* @j, align 8
  %4 = add <2 x i32> %2, %3
  store <2 x i32> %4, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 8
  %5 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 8
  %6 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  call void @verify(i32 noundef %5, i32 noundef %6, i32 noundef 160, i32 noundef 113, %struct.big_t* noundef nonnull byval(%struct.big_t) align 8 %1)
  %7 = load <2 x i32>, <2 x i32>* @i, align 8
  %8 = load <2 x i32>, <2 x i32>* @j, align 8
  %9 = mul <2 x i32> %7, %8
  store <2 x i32> %9, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 8
  %10 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 8
  %11 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  call void @verify(i32 noundef %10, i32 noundef %11, i32 noundef 1500, i32 noundef 1300, %struct.big_t* noundef nonnull byval(%struct.big_t) align 8 %1)
  %12 = load <2 x i32>, <2 x i32>* @i, align 8
  %13 = load <2 x i32>, <2 x i32>* @j, align 8
  %14 = sdiv <2 x i32> %12, %13
  store <2 x i32> %14, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 8
  %15 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 8
  %16 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  call void @verify(i32 noundef %15, i32 noundef %16, i32 noundef 15, i32 noundef 7, %struct.big_t* noundef nonnull byval(%struct.big_t) align 8 %1)
  %17 = load <2 x i32>, <2 x i32>* @i, align 8
  %18 = load <2 x i32>, <2 x i32>* @j, align 8
  %19 = and <2 x i32> %17, %18
  store <2 x i32> %19, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 8
  %20 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 8
  %21 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  call void @verify(i32 noundef %20, i32 noundef %21, i32 noundef 2, i32 noundef 4, %struct.big_t* noundef nonnull byval(%struct.big_t) align 8 %1)
  %22 = load <2 x i32>, <2 x i32>* @i, align 8
  %23 = load <2 x i32>, <2 x i32>* @j, align 8
  %24 = or <2 x i32> %22, %23
  store <2 x i32> %24, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 8
  %25 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 8
  %26 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  call void @verify(i32 noundef %25, i32 noundef %26, i32 noundef 158, i32 noundef 109, %struct.big_t* noundef nonnull byval(%struct.big_t) align 8 %1)
  %27 = load <2 x i32>, <2 x i32>* @i, align 8
  %28 = load <2 x i32>, <2 x i32>* @j, align 8
  %29 = xor <2 x i32> %27, %28
  store <2 x i32> %29, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 8
  %30 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 8
  %31 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  call void @verify(i32 noundef %30, i32 noundef %31, i32 noundef 156, i32 noundef 105, %struct.big_t* noundef nonnull byval(%struct.big_t) align 8 %1)
  %32 = load <2 x i32>, <2 x i32>* @i, align 8
  %33 = sub <2 x i32> zeroinitializer, %32
  store <2 x i32> %33, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 8
  %34 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 8
  %35 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  call void @verify(i32 noundef %34, i32 noundef %35, i32 noundef -150, i32 noundef -100, %struct.big_t* noundef nonnull byval(%struct.big_t) align 8 %1)
  %36 = load <2 x i32>, <2 x i32>* @i, align 8
  %37 = xor <2 x i32> %36, <i32 -1, i32 -1>
  store <2 x i32> %37, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 8
  %38 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 8
  %39 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  call void @verify(i32 noundef %38, i32 noundef %39, i32 noundef -151, i32 noundef -101, %struct.big_t* noundef nonnull byval(%struct.big_t) align 8 %1)
  %40 = add <2 x i32> %4, %9
  %41 = add <2 x i32> %40, %19
  %42 = add <2 x i32> %41, %24
  %43 = add <2 x i32> %42, %29
  %44 = sub <2 x i32> %43, %32
  %45 = add <2 x i32> %44, %37
  store <2 x i32> %45, <2 x i32>* @k, align 8
  store <2 x i32> %45, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 8
  %46 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 8
  %47 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  call void @verify(i32 noundef %46, i32 noundef %47, i32 noundef 1675, i32 noundef 1430, %struct.big_t* noundef nonnull byval(%struct.big_t) align 8 %1)
  %48 = mul <2 x i32> %4, %9
  %49 = mul <2 x i32> %48, %19
  %50 = mul <2 x i32> %49, %24
  %51 = mul <2 x i32> %50, %29
  %52 = mul <2 x i32> %51, %33
  %53 = mul <2 x i32> %52, %37
  store <2 x i32> %53, <2 x i32>* @k, align 8
  store <2 x i32> %53, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 8
  %54 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 8
  %55 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  call void @verify(i32 noundef %54, i32 noundef %55, i32 noundef 1456467968, i32 noundef -1579586240, %struct.big_t* noundef nonnull byval(%struct.big_t) align 8 %1)
  %56 = sdiv <2 x i32> %4, %9
  %57 = sdiv <2 x i32> %56, %14
  %58 = sdiv <2 x i32> %57, %19
  %59 = sdiv <2 x i32> %58, %24
  %60 = sdiv <2 x i32> %59, %29
  %61 = sdiv <2 x i32> %60, %33
  %62 = sdiv <2 x i32> %61, %37
  store <2 x i32> %62, <2 x i32>* @k, align 8
  store <2 x i32> %62, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 8
  %63 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 8
  %64 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 4
  call void @verify(i32 noundef %63, i32 noundef %64, i32 noundef 0, i32 noundef 0, %struct.big_t* noundef nonnull byval(%struct.big_t) align 8 %1)
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
