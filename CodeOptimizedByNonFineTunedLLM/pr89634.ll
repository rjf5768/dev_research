; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr89634.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr89634.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [18 x i64] [i64 4, i64 2, i64 -200, i64 200, i64 2, i64 -400, i64 400, i64 3, i64 -600, i64 0, i64 600, i64 5, i64 -100, i64 -66, i64 0, i64 66, i64 100, i64 1152921504606846976], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @bar(i64* noundef %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  store i64 1, i64* %4, align 8
  store i64 0, i64* %8, align 8
  %10 = load i64*, i64** %2, align 8
  %11 = load i64, i64* %10, align 8
  %12 = sub i64 %11, 1
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %63, %1
  %14 = load i64, i64* %5, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %66

16:                                               ; preds = %13
  %17 = load i64*, i64** %2, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = call i64* @foo(i64* noundef %18)
  store i64* %19, i64** %6, align 8
  store i64 1, i64* %9, align 8
  br label %20

20:                                               ; preds = %27, %16
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i64*, i64** %6, align 8
  %26 = call i64* @foo(i64* noundef %25)
  store i64* %26, i64** %6, align 8
  br label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %9, align 8
  br label %20, !llvm.loop !4

30:                                               ; preds = %20
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp eq i64 %33, 2
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, i64* %4, align 8
  %37 = mul i64 %36, 2
  store i64 %37, i64* %4, align 8
  br label %62

38:                                               ; preds = %30
  %39 = load i64, i64* %3, align 8
  %40 = sub i64 %39, 1
  %41 = udiv i64 %40, 2
  %42 = sub i64 %41, 1
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = mul i64 2, %43
  %45 = add i64 %44, 1
  %46 = load i64, i64* %4, align 8
  %47 = add i64 %46, 1
  %48 = mul i64 %45, %47
  %49 = load i64, i64* %4, align 8
  %50 = mul i64 2, %49
  %51 = add i64 %50, 1
  %52 = add i64 %48, %51
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = load i64, i64* %7, align 8
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %56, %38
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* %4, align 8
  %61 = mul i64 %60, %59
  store i64 %61, i64* %4, align 8
  br label %62

62:                                               ; preds = %58, %35
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %64, -1
  store i64 %65, i64* %5, align 8
  br label %13, !llvm.loop !6

66:                                               ; preds = %13
  %67 = load i64, i64* %8, align 8
  ret i64 %67
}

; Function Attrs: noinline nounwind uwtable
define internal i64* @foo(i64* noundef %0) #0 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  %4 = load i64*, i64** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = add i64 1, %5
  %7 = getelementptr inbounds i64, i64* %3, i64 %6
  ret i64* %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [18 x i64], align 16
  store i32 0, i32* %1, align 4
  %3 = bitcast [18 x i64]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([18 x i64]* @__const.main.a to i8*), i64 144, i1 false)
  %4 = getelementptr inbounds [18 x i64], [18 x i64]* %2, i64 0, i64 0
  %5 = call i64 @bar(i64* noundef %4)
  %6 = icmp ne i64 %5, 17
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #3
  unreachable

8:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
