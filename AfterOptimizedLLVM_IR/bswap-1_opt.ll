; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bswap-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bswap-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @g(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @llvm.bswap.i64(i64 %3)
  ret i64 %4
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %union.anon, align 8
  %4 = alloca %union.anon, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = bitcast %union.anon* %3 to i64*
  store i64 %5, i64* %6, align 8
  %7 = bitcast %union.anon* %3 to [8 x i8]*
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 7
  %9 = load i8, i8* %8, align 1
  %10 = bitcast %union.anon* %4 to [8 x i8]*
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  store i8 %9, i8* %11, align 8
  %12 = bitcast %union.anon* %3 to [8 x i8]*
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 6
  %14 = load i8, i8* %13, align 2
  %15 = bitcast %union.anon* %4 to [8 x i8]*
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 1
  store i8 %14, i8* %16, align 1
  %17 = bitcast %union.anon* %3 to [8 x i8]*
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 5
  %19 = load i8, i8* %18, align 1
  %20 = bitcast %union.anon* %4 to [8 x i8]*
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 2
  store i8 %19, i8* %21, align 2
  %22 = bitcast %union.anon* %3 to [8 x i8]*
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 4
  %24 = load i8, i8* %23, align 4
  %25 = bitcast %union.anon* %4 to [8 x i8]*
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %25, i64 0, i64 3
  store i8 %24, i8* %26, align 1
  %27 = bitcast %union.anon* %3 to [8 x i8]*
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %27, i64 0, i64 3
  %29 = load i8, i8* %28, align 1
  %30 = bitcast %union.anon* %4 to [8 x i8]*
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %30, i64 0, i64 4
  store i8 %29, i8* %31, align 4
  %32 = bitcast %union.anon* %3 to [8 x i8]*
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %32, i64 0, i64 2
  %34 = load i8, i8* %33, align 2
  %35 = bitcast %union.anon* %4 to [8 x i8]*
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %35, i64 0, i64 5
  store i8 %34, i8* %36, align 1
  %37 = bitcast %union.anon* %3 to [8 x i8]*
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %37, i64 0, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = bitcast %union.anon* %4 to [8 x i8]*
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %40, i64 0, i64 6
  store i8 %39, i8* %41, align 2
  %42 = bitcast %union.anon* %3 to [8 x i8]*
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %42, i64 0, i64 0
  %44 = load i8, i8* %43, align 8
  %45 = bitcast %union.anon* %4 to [8 x i8]*
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %45, i64 0, i64 7
  store i8 %44, i8* %46, align 1
  %47 = bitcast %union.anon* %4 to i64*
  %48 = load i64, i64* %47, align 8
  ret i64 %48
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %3 = call i64 @f(i64 noundef 18)
  %4 = call i64 @g(i64 noundef 18)
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #3
  unreachable

7:                                                ; preds = %0
  %8 = call i64 @f(i64 noundef 4660)
  %9 = call i64 @g(i64 noundef 4660)
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  call void @abort() #3
  unreachable

12:                                               ; preds = %7
  %13 = call i64 @f(i64 noundef 1193046)
  %14 = call i64 @g(i64 noundef 1193046)
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  call void @abort() #3
  unreachable

17:                                               ; preds = %12
  %18 = call i64 @f(i64 noundef 305419896)
  %19 = call i64 @g(i64 noundef 305419896)
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  call void @abort() #3
  unreachable

22:                                               ; preds = %17
  %23 = call i64 @f(i64 noundef 78187493520)
  %24 = call i64 @g(i64 noundef 78187493520)
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  call void @abort() #3
  unreachable

27:                                               ; preds = %22
  %28 = call i64 @f(i64 noundef 20015998341138)
  %29 = call i64 @g(i64 noundef 20015998341138)
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  call void @abort() #3
  unreachable

32:                                               ; preds = %27
  %33 = call i64 @f(i64 noundef 5124095575331380)
  %34 = call i64 @g(i64 noundef 5124095575331380)
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  call void @abort() #3
  unreachable

37:                                               ; preds = %32
  %38 = call i64 @f(i64 noundef 1311768467284833366)
  %39 = call i64 @g(i64 noundef 1311768467284833366)
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call void @abort() #3
  unreachable

42:                                               ; preds = %37
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
