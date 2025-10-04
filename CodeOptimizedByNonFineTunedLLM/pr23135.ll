; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr23135.c'
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
define dso_local void @verify(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, %struct.big_t* noundef byval(%struct.big_t) align 8 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %5
  call void @abort() #2
  unreachable

18:                                               ; preds = %13
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.big_t, align 8
  %3 = alloca <2 x i32>, align 8
  %4 = alloca <2 x i32>, align 8
  %5 = alloca <2 x i32>, align 8
  %6 = alloca <2 x i32>, align 8
  %7 = alloca <2 x i32>, align 8
  %8 = alloca <2 x i32>, align 8
  %9 = alloca <2 x i32>, align 8
  %10 = alloca <2 x i32>, align 8
  store i32 0, i32* %1, align 4
  %11 = load <2 x i32>, <2 x i32>* @i, align 8
  %12 = load <2 x i32>, <2 x i32>* @j, align 8
  %13 = add <2 x i32> %11, %12
  store <2 x i32> %13, <2 x i32>* %3, align 8
  %14 = load <2 x i32>, <2 x i32>* %3, align 8
  store <2 x i32> %14, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 8
  %15 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 0), align 8
  %16 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 1), align 4
  call void @verify(i32 noundef %15, i32 noundef %16, i32 noundef 160, i32 noundef 113, %struct.big_t* noundef byval(%struct.big_t) align 8 %2)
  %17 = load <2 x i32>, <2 x i32>* @i, align 8
  %18 = load <2 x i32>, <2 x i32>* @j, align 8
  %19 = mul <2 x i32> %17, %18
  store <2 x i32> %19, <2 x i32>* %4, align 8
  %20 = load <2 x i32>, <2 x i32>* %4, align 8
  store <2 x i32> %20, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 8
  %21 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 0), align 8
  %22 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 1), align 4
  call void @verify(i32 noundef %21, i32 noundef %22, i32 noundef 1500, i32 noundef 1300, %struct.big_t* noundef byval(%struct.big_t) align 8 %2)
  %23 = load <2 x i32>, <2 x i32>* @i, align 8
  %24 = load <2 x i32>, <2 x i32>* @j, align 8
  %25 = sdiv <2 x i32> %23, %24
  store <2 x i32> %25, <2 x i32>* %5, align 8
  %26 = load <2 x i32>, <2 x i32>* %5, align 8
  store <2 x i32> %26, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 8
  %27 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 0), align 8
  %28 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 1), align 4
  call void @verify(i32 noundef %27, i32 noundef %28, i32 noundef 15, i32 noundef 7, %struct.big_t* noundef byval(%struct.big_t) align 8 %2)
  %29 = load <2 x i32>, <2 x i32>* @i, align 8
  %30 = load <2 x i32>, <2 x i32>* @j, align 8
  %31 = and <2 x i32> %29, %30
  store <2 x i32> %31, <2 x i32>* %6, align 8
  %32 = load <2 x i32>, <2 x i32>* %6, align 8
  store <2 x i32> %32, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 8
  %33 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 0), align 8
  %34 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 1), align 4
  call void @verify(i32 noundef %33, i32 noundef %34, i32 noundef 2, i32 noundef 4, %struct.big_t* noundef byval(%struct.big_t) align 8 %2)
  %35 = load <2 x i32>, <2 x i32>* @i, align 8
  %36 = load <2 x i32>, <2 x i32>* @j, align 8
  %37 = or <2 x i32> %35, %36
  store <2 x i32> %37, <2 x i32>* %7, align 8
  %38 = load <2 x i32>, <2 x i32>* %7, align 8
  store <2 x i32> %38, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 8
  %39 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 0), align 8
  %40 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 1), align 4
  call void @verify(i32 noundef %39, i32 noundef %40, i32 noundef 158, i32 noundef 109, %struct.big_t* noundef byval(%struct.big_t) align 8 %2)
  %41 = load <2 x i32>, <2 x i32>* @i, align 8
  %42 = load <2 x i32>, <2 x i32>* @j, align 8
  %43 = xor <2 x i32> %41, %42
  store <2 x i32> %43, <2 x i32>* %8, align 8
  %44 = load <2 x i32>, <2 x i32>* %8, align 8
  store <2 x i32> %44, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 8
  %45 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 0), align 8
  %46 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 1), align 4
  call void @verify(i32 noundef %45, i32 noundef %46, i32 noundef 156, i32 noundef 105, %struct.big_t* noundef byval(%struct.big_t) align 8 %2)
  %47 = load <2 x i32>, <2 x i32>* @i, align 8
  %48 = sub <2 x i32> zeroinitializer, %47
  store <2 x i32> %48, <2 x i32>* %9, align 8
  %49 = load <2 x i32>, <2 x i32>* %9, align 8
  store <2 x i32> %49, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 8
  %50 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 0), align 8
  %51 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 1), align 4
  call void @verify(i32 noundef %50, i32 noundef %51, i32 noundef -150, i32 noundef -100, %struct.big_t* noundef byval(%struct.big_t) align 8 %2)
  %52 = load <2 x i32>, <2 x i32>* @i, align 8
  %53 = xor <2 x i32> %52, <i32 -1, i32 -1>
  store <2 x i32> %53, <2 x i32>* %10, align 8
  %54 = load <2 x i32>, <2 x i32>* %10, align 8
  store <2 x i32> %54, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 8
  %55 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 0), align 8
  %56 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 1), align 4
  call void @verify(i32 noundef %55, i32 noundef %56, i32 noundef -151, i32 noundef -101, %struct.big_t* noundef byval(%struct.big_t) align 8 %2)
  %57 = load <2 x i32>, <2 x i32>* %3, align 8
  %58 = load <2 x i32>, <2 x i32>* %4, align 8
  %59 = add <2 x i32> %57, %58
  %60 = load <2 x i32>, <2 x i32>* %6, align 8
  %61 = add <2 x i32> %59, %60
  %62 = load <2 x i32>, <2 x i32>* %7, align 8
  %63 = add <2 x i32> %61, %62
  %64 = load <2 x i32>, <2 x i32>* %8, align 8
  %65 = add <2 x i32> %63, %64
  %66 = load <2 x i32>, <2 x i32>* %9, align 8
  %67 = add <2 x i32> %65, %66
  %68 = load <2 x i32>, <2 x i32>* %10, align 8
  %69 = add <2 x i32> %67, %68
  store <2 x i32> %69, <2 x i32>* @k, align 8
  %70 = load <2 x i32>, <2 x i32>* @k, align 8
  store <2 x i32> %70, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 8
  %71 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 0), align 8
  %72 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 1), align 4
  call void @verify(i32 noundef %71, i32 noundef %72, i32 noundef 1675, i32 noundef 1430, %struct.big_t* noundef byval(%struct.big_t) align 8 %2)
  %73 = load <2 x i32>, <2 x i32>* %3, align 8
  %74 = load <2 x i32>, <2 x i32>* %4, align 8
  %75 = mul <2 x i32> %73, %74
  %76 = load <2 x i32>, <2 x i32>* %6, align 8
  %77 = mul <2 x i32> %75, %76
  %78 = load <2 x i32>, <2 x i32>* %7, align 8
  %79 = mul <2 x i32> %77, %78
  %80 = load <2 x i32>, <2 x i32>* %8, align 8
  %81 = mul <2 x i32> %79, %80
  %82 = load <2 x i32>, <2 x i32>* %9, align 8
  %83 = mul <2 x i32> %81, %82
  %84 = load <2 x i32>, <2 x i32>* %10, align 8
  %85 = mul <2 x i32> %83, %84
  store <2 x i32> %85, <2 x i32>* @k, align 8
  %86 = load <2 x i32>, <2 x i32>* @k, align 8
  store <2 x i32> %86, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 8
  %87 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 0), align 8
  %88 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 1), align 4
  call void @verify(i32 noundef %87, i32 noundef %88, i32 noundef 1456467968, i32 noundef -1579586240, %struct.big_t* noundef byval(%struct.big_t) align 8 %2)
  %89 = load <2 x i32>, <2 x i32>* %3, align 8
  %90 = load <2 x i32>, <2 x i32>* %4, align 8
  %91 = sdiv <2 x i32> %89, %90
  %92 = load <2 x i32>, <2 x i32>* %5, align 8
  %93 = sdiv <2 x i32> %91, %92
  %94 = load <2 x i32>, <2 x i32>* %6, align 8
  %95 = sdiv <2 x i32> %93, %94
  %96 = load <2 x i32>, <2 x i32>* %7, align 8
  %97 = sdiv <2 x i32> %95, %96
  %98 = load <2 x i32>, <2 x i32>* %8, align 8
  %99 = sdiv <2 x i32> %97, %98
  %100 = load <2 x i32>, <2 x i32>* %9, align 8
  %101 = sdiv <2 x i32> %99, %100
  %102 = load <2 x i32>, <2 x i32>* %10, align 8
  %103 = sdiv <2 x i32> %101, %102
  store <2 x i32> %103, <2 x i32>* @k, align 8
  %104 = load <2 x i32>, <2 x i32>* @k, align 8
  store <2 x i32> %104, <2 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 8
  %105 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 0), align 8
  %106 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* bitcast (%union.anon* @res to [2 x i32]*), i64 0, i64 1), align 4
  call void @verify(i32 noundef %105, i32 noundef %106, i32 noundef 0, i32 noundef 0, %struct.big_t* noundef byval(%struct.big_t) align 8 %2)
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
