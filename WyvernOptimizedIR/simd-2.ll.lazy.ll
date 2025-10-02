; ModuleID = './simd-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/simd-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { <8 x i16> }

@i = dso_local global <8 x i16> <i16 150, i16 100, i16 150, i16 200, i16 0, i16 0, i16 0, i16 0>, align 16
@j = dso_local global <8 x i16> <i16 10, i16 13, i16 20, i16 30, i16 1, i16 1, i16 1, i16 1>, align 16
@k = dso_local global <8 x i16> zeroinitializer, align 16
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
  %1 = load <8 x i16>, <8 x i16>* @i, align 16
  %2 = load <8 x i16>, <8 x i16>* @j, align 16
  %3 = add <8 x i16> %1, %2
  store <8 x i16> %3, <8 x i16>* @k, align 16
  store <8 x i16> %3, <8 x i16>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 16
  %4 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 16
  %5 = sext i16 %4 to i32
  %6 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 2
  %7 = sext i16 %6 to i32
  %8 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 2), align 4
  %9 = sext i16 %8 to i32
  %10 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 3), align 2
  %11 = sext i16 %10 to i32
  call void @verify(i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef 160, i32 noundef 113, i32 noundef 170, i32 noundef 230)
  %12 = load <8 x i16>, <8 x i16>* @i, align 16
  %13 = load <8 x i16>, <8 x i16>* @j, align 16
  %14 = mul <8 x i16> %12, %13
  store <8 x i16> %14, <8 x i16>* @k, align 16
  store <8 x i16> %14, <8 x i16>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 16
  %15 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 16
  %16 = sext i16 %15 to i32
  %17 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 2
  %18 = sext i16 %17 to i32
  %19 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 2), align 4
  %20 = sext i16 %19 to i32
  %21 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 3), align 2
  %22 = sext i16 %21 to i32
  call void @verify(i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef 1500, i32 noundef 1300, i32 noundef 3000, i32 noundef 6000)
  %23 = load <8 x i16>, <8 x i16>* @i, align 16
  %24 = load <8 x i16>, <8 x i16>* @j, align 16
  %25 = sdiv <8 x i16> %23, %24
  store <8 x i16> %25, <8 x i16>* @k, align 16
  store <8 x i16> %25, <8 x i16>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 16
  %26 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 16
  %27 = sext i16 %26 to i32
  %28 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 2
  %29 = sext i16 %28 to i32
  %30 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 2), align 4
  %31 = sext i16 %30 to i32
  %32 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 3), align 2
  %33 = sext i16 %32 to i32
  call void @verify(i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef 15, i32 noundef 7, i32 noundef 7, i32 noundef 6)
  %34 = load <8 x i16>, <8 x i16>* @i, align 16
  %35 = load <8 x i16>, <8 x i16>* @j, align 16
  %36 = and <8 x i16> %34, %35
  store <8 x i16> %36, <8 x i16>* @k, align 16
  store <8 x i16> %36, <8 x i16>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 16
  %37 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 16
  %38 = sext i16 %37 to i32
  %39 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 2
  %40 = sext i16 %39 to i32
  %41 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 2), align 4
  %42 = sext i16 %41 to i32
  %43 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 3), align 2
  %44 = sext i16 %43 to i32
  call void @verify(i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef 2, i32 noundef 4, i32 noundef 20, i32 noundef 8)
  %45 = load <8 x i16>, <8 x i16>* @i, align 16
  %46 = load <8 x i16>, <8 x i16>* @j, align 16
  %47 = or <8 x i16> %45, %46
  store <8 x i16> %47, <8 x i16>* @k, align 16
  store <8 x i16> %47, <8 x i16>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 16
  %48 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 16
  %49 = sext i16 %48 to i32
  %50 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 2
  %51 = sext i16 %50 to i32
  %52 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 2), align 4
  %53 = sext i16 %52 to i32
  %54 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 3), align 2
  %55 = sext i16 %54 to i32
  call void @verify(i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef 158, i32 noundef 109, i32 noundef 150, i32 noundef 222)
  %56 = load <8 x i16>, <8 x i16>* @i, align 16
  %57 = load <8 x i16>, <8 x i16>* @j, align 16
  %58 = xor <8 x i16> %56, %57
  store <8 x i16> %58, <8 x i16>* @k, align 16
  store <8 x i16> %58, <8 x i16>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 16
  %59 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 16
  %60 = sext i16 %59 to i32
  %61 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 2
  %62 = sext i16 %61 to i32
  %63 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 2), align 4
  %64 = sext i16 %63 to i32
  %65 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 3), align 2
  %66 = sext i16 %65 to i32
  call void @verify(i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef 156, i32 noundef 105, i32 noundef 130, i32 noundef 214)
  %67 = load <8 x i16>, <8 x i16>* @i, align 16
  %68 = sub <8 x i16> zeroinitializer, %67
  store <8 x i16> %68, <8 x i16>* @k, align 16
  store <8 x i16> %68, <8 x i16>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 16
  %69 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 16
  %70 = sext i16 %69 to i32
  %71 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 2
  %72 = sext i16 %71 to i32
  %73 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 2), align 4
  %74 = sext i16 %73 to i32
  %75 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 3), align 2
  %76 = sext i16 %75 to i32
  call void @verify(i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef -150, i32 noundef -100, i32 noundef -150, i32 noundef -200)
  %77 = load <8 x i16>, <8 x i16>* @i, align 16
  %78 = xor <8 x i16> %77, <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
  store <8 x i16> %78, <8 x i16>* @k, align 16
  store <8 x i16> %78, <8 x i16>* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0), align 16
  %79 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 0), align 16
  %80 = sext i16 %79 to i32
  %81 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 1), align 2
  %82 = sext i16 %81 to i32
  %83 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 2), align 4
  %84 = sext i16 %83 to i32
  %85 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @res, i64 0, i32 0, i64 3), align 2
  %86 = sext i16 %85 to i32
  call void @verify(i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef -151, i32 noundef -101, i32 noundef -151, i32 noundef -201)
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
