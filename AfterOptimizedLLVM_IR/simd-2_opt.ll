; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/simd-2.c'
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
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24, %20, %8
  call void @abort() #2
  unreachable

33:                                               ; preds = %28
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load <8 x i16>, <8 x i16>* @i, align 16
  %3 = load <8 x i16>, <8 x i16>* @j, align 16
  %4 = add <8 x i16> %2, %3
  store <8 x i16> %4, <8 x i16>* @k, align 16
  %5 = load <8 x i16>, <8 x i16>* @k, align 16
  store <8 x i16> %5, <8 x i16>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 16
  %6 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 0), align 16
  %7 = sext i16 %6 to i32
  %8 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 1), align 2
  %9 = sext i16 %8 to i32
  %10 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 2), align 4
  %11 = sext i16 %10 to i32
  %12 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 3), align 2
  %13 = sext i16 %12 to i32
  call void @verify(i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 160, i32 noundef 113, i32 noundef 170, i32 noundef 230)
  %14 = load <8 x i16>, <8 x i16>* @i, align 16
  %15 = load <8 x i16>, <8 x i16>* @j, align 16
  %16 = mul <8 x i16> %14, %15
  store <8 x i16> %16, <8 x i16>* @k, align 16
  %17 = load <8 x i16>, <8 x i16>* @k, align 16
  store <8 x i16> %17, <8 x i16>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 16
  %18 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 0), align 16
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 1), align 2
  %21 = sext i16 %20 to i32
  %22 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 2), align 4
  %23 = sext i16 %22 to i32
  %24 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 3), align 2
  %25 = sext i16 %24 to i32
  call void @verify(i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef 1500, i32 noundef 1300, i32 noundef 3000, i32 noundef 6000)
  %26 = load <8 x i16>, <8 x i16>* @i, align 16
  %27 = load <8 x i16>, <8 x i16>* @j, align 16
  %28 = sdiv <8 x i16> %26, %27
  store <8 x i16> %28, <8 x i16>* @k, align 16
  %29 = load <8 x i16>, <8 x i16>* @k, align 16
  store <8 x i16> %29, <8 x i16>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 16
  %30 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 0), align 16
  %31 = sext i16 %30 to i32
  %32 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 1), align 2
  %33 = sext i16 %32 to i32
  %34 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 2), align 4
  %35 = sext i16 %34 to i32
  %36 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 3), align 2
  %37 = sext i16 %36 to i32
  call void @verify(i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef 15, i32 noundef 7, i32 noundef 7, i32 noundef 6)
  %38 = load <8 x i16>, <8 x i16>* @i, align 16
  %39 = load <8 x i16>, <8 x i16>* @j, align 16
  %40 = and <8 x i16> %38, %39
  store <8 x i16> %40, <8 x i16>* @k, align 16
  %41 = load <8 x i16>, <8 x i16>* @k, align 16
  store <8 x i16> %41, <8 x i16>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 16
  %42 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 0), align 16
  %43 = sext i16 %42 to i32
  %44 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 1), align 2
  %45 = sext i16 %44 to i32
  %46 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 2), align 4
  %47 = sext i16 %46 to i32
  %48 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 3), align 2
  %49 = sext i16 %48 to i32
  call void @verify(i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef 2, i32 noundef 4, i32 noundef 20, i32 noundef 8)
  %50 = load <8 x i16>, <8 x i16>* @i, align 16
  %51 = load <8 x i16>, <8 x i16>* @j, align 16
  %52 = or <8 x i16> %50, %51
  store <8 x i16> %52, <8 x i16>* @k, align 16
  %53 = load <8 x i16>, <8 x i16>* @k, align 16
  store <8 x i16> %53, <8 x i16>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 16
  %54 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 0), align 16
  %55 = sext i16 %54 to i32
  %56 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 1), align 2
  %57 = sext i16 %56 to i32
  %58 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 2), align 4
  %59 = sext i16 %58 to i32
  %60 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 3), align 2
  %61 = sext i16 %60 to i32
  call void @verify(i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef 158, i32 noundef 109, i32 noundef 150, i32 noundef 222)
  %62 = load <8 x i16>, <8 x i16>* @i, align 16
  %63 = load <8 x i16>, <8 x i16>* @j, align 16
  %64 = xor <8 x i16> %62, %63
  store <8 x i16> %64, <8 x i16>* @k, align 16
  %65 = load <8 x i16>, <8 x i16>* @k, align 16
  store <8 x i16> %65, <8 x i16>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 16
  %66 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 0), align 16
  %67 = sext i16 %66 to i32
  %68 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 1), align 2
  %69 = sext i16 %68 to i32
  %70 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 2), align 4
  %71 = sext i16 %70 to i32
  %72 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 3), align 2
  %73 = sext i16 %72 to i32
  call void @verify(i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef 156, i32 noundef 105, i32 noundef 130, i32 noundef 214)
  %74 = load <8 x i16>, <8 x i16>* @i, align 16
  %75 = sub <8 x i16> zeroinitializer, %74
  store <8 x i16> %75, <8 x i16>* @k, align 16
  %76 = load <8 x i16>, <8 x i16>* @k, align 16
  store <8 x i16> %76, <8 x i16>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 16
  %77 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 0), align 16
  %78 = sext i16 %77 to i32
  %79 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 1), align 2
  %80 = sext i16 %79 to i32
  %81 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 2), align 4
  %82 = sext i16 %81 to i32
  %83 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 3), align 2
  %84 = sext i16 %83 to i32
  call void @verify(i32 noundef %78, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef -150, i32 noundef -100, i32 noundef -150, i32 noundef -200)
  %85 = load <8 x i16>, <8 x i16>* @i, align 16
  %86 = xor <8 x i16> %85, <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
  store <8 x i16> %86, <8 x i16>* @k, align 16
  %87 = load <8 x i16>, <8 x i16>* @k, align 16
  store <8 x i16> %87, <8 x i16>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 16
  %88 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 0), align 16
  %89 = sext i16 %88 to i32
  %90 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 1), align 2
  %91 = sext i16 %90 to i32
  %92 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 2), align 4
  %93 = sext i16 %92 to i32
  %94 = load i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast (%union.anon* @res to [8 x i16]*), i64 0, i64 3), align 2
  %95 = sext i16 %94 to i32
  call void @verify(i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef -151, i32 noundef -101, i32 noundef -151, i32 noundef -201)
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
