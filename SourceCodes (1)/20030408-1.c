; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030408-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030408-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__const.test1.X = private unnamed_addr constant [8 x i8] c"ABCDEFGH", align 1
@__const.test2.X = private unnamed_addr constant [10 x i8] c"ABCDE\00\00\00\00\00", align 1
@__const.test3.X = private unnamed_addr constant %struct.foo { i8 65, i8 0, i8 67, i8 0, i8 69, i8 0, i8 71, i8 0, i8 73, i8 0 }, align 1
@__const.test4.X = private unnamed_addr constant %struct.foo { i8 0, i8 66, i8 0, i8 68, i8 0, i8 70, i8 0, i8 72, i8 0, i8 74 }, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1() #0 {
  %1 = alloca [8 x i8], align 1
  %2 = alloca [8 x i8], align 1
  %3 = bitcast [8 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test1.X, i32 0, i32 0), i64 8, i1 false)
  %4 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 8, i1 false)
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 65
  br i1 %9, label %45, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 66
  br i1 %14, label %45, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 2
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 67
  br i1 %19, label %45, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 3
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 68
  br i1 %24, label %45, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 4
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 69
  br i1 %29, label %45, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 5
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 70
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 6
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 71
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 7
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 72
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %35, %30, %25, %20, %15, %10, %0
  call void @abort() #3
  unreachable

46:                                               ; preds = %40
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = alloca [10 x i8], align 1
  %3 = bitcast [10 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test2.X, i32 0, i32 0), i64 10, i1 false)
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 10, i1 false)
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 65
  br i1 %9, label %55, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 66
  br i1 %14, label %55, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 2
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 67
  br i1 %19, label %55, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 3
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 68
  br i1 %24, label %55, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 4
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 69
  br i1 %29, label %55, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 5
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 6
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 7
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 9
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %45, %40, %35, %30, %25, %20, %15, %10, %0
  call void @abort() #3
  unreachable

56:                                               ; preds = %50
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test3() #0 {
  %1 = alloca %struct.foo, align 1
  %2 = alloca [10 x i8], align 1
  %3 = bitcast %struct.foo* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds (%struct.foo, %struct.foo* @__const.test3.X, i32 0, i32 0), i64 10, i1 false)
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %5 = bitcast %struct.foo* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 10, i1 false)
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 65
  br i1 %9, label %55, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 2
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 67
  br i1 %19, label %55, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 3
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %55, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 4
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 69
  br i1 %29, label %55, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 5
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 6
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 71
  br i1 %39, label %55, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 7
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 73
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 9
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %45, %40, %35, %30, %25, %20, %15, %10, %0
  call void @abort() #3
  unreachable

56:                                               ; preds = %50
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test4() #0 {
  %1 = alloca %struct.foo, align 1
  %2 = alloca [10 x i8], align 1
  %3 = bitcast %struct.foo* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds (%struct.foo, %struct.foo* @__const.test4.X, i32 0, i32 0), i64 10, i1 false)
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %5 = bitcast %struct.foo* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 10, i1 false)
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %55, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 66
  br i1 %14, label %55, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 2
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 3
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 68
  br i1 %24, label %55, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 4
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %55, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 5
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 70
  br i1 %34, label %55, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 6
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 7
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 72
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 9
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 74
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %45, %40, %35, %30, %25, %20, %15, %10, %0
  call void @abort() #3
  unreachable

56:                                               ; preds = %50
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @test1()
  %3 = call i32 @test2()
  %4 = call i32 @test3()
  %5 = call i32 @test4()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
