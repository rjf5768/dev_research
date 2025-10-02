; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56051.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56051.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.x2 = private unnamed_addr constant [1 x i64] [i64 8589934592], align 8
@__const.main.x3 = private unnamed_addr constant [1 x i64] [i64 8589934592], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca [1 x i64], align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [1 x i64], align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %17 = bitcast [1 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %17, i8 0, i64 1, i1 false)
  store i32 8, i32* %3, align 4
  %18 = getelementptr inbounds [1 x i8], [1 x i8]* %2, i64 0, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i32, i32* %3, align 4
  %22 = shl i32 1, %21
  %23 = trunc i32 %22 to i8
  %24 = zext i8 %23 to i32
  %25 = icmp slt i32 %20, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = shl i32 1, %27
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %5, align 1
  %30 = getelementptr inbounds [1 x i8], [1 x i8]* %2, i64 0, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %5, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp slt i32 %32, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %0
  call void @abort() #4
  unreachable

41:                                               ; preds = %0
  %42 = bitcast [1 x i64]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 bitcast ([1 x i64]* @__const.main.x2 to i8*), i64 8, i1 false)
  store i32 31, i32* %8, align 4
  %43 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 1, %45
  %47 = sext i32 %46 to i64
  %48 = icmp uge i64 %44, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 1, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %10, align 8
  %53 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp uge i64 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %41
  call void @abort() #4
  unreachable

62:                                               ; preds = %41
  %63 = bitcast [1 x i64]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 bitcast ([1 x i64]* @__const.main.x3 to i8*), i64 8, i1 false)
  store i32 31, i32* %13, align 4
  %64 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i64 0, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = shl i32 1, %66
  %68 = zext i32 %67 to i64
  %69 = icmp uge i64 %65, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %13, align 4
  %72 = shl i32 1, %71
  %73 = zext i32 %72 to i64
  store i64 %73, i64* %15, align 8
  %74 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i64 0, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %15, align 8
  %77 = icmp uge i64 %75, %76
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %62
  call void @abort() #4
  unreachable

83:                                               ; preds = %62
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
