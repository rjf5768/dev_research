; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/PR10189.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/PR10189.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { i32 }
%struct.S2 = type { %struct.S0 }
%struct.S0 = type { i32 }
%struct.S3 = type { i32 }

@g_37 = dso_local global i32 0, align 4
@g_177 = dso_local global %struct.S1 zeroinitializer, align 4
@g_6 = dso_local global %struct.S2 zeroinitializer, align 4
@g_169 = dso_local global %struct.S3 zeroinitializer, align 4
@g_8 = dso_local global i16 0, align 2
@g_20 = dso_local global [1 x [1 x [0 x i32]]] zeroinitializer, align 4
@g_1639 = dso_local global [1 x %struct.S2] zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @safe_53(i16 noundef signext %0, i16 noundef signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %3, align 2
  %6 = sext i16 %5 to i32
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i32
  %9 = sub nsw i32 %6, %8
  %10 = trunc i32 %9 to i16
  ret i16 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @safe_60(i16 noundef signext %0, i32 noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %13

8:                                                ; preds = %2
  %9 = load i16, i16* %3, align 2
  %10 = sext i16 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %10, %11
  br label %13

13:                                               ; preds = %8, %7
  %14 = phi i32 [ 0, %7 ], [ %12, %8 ]
  %15 = trunc i32 %14 to i16
  ret i16 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @func_1(i32 noundef %0) #0 {
  %2 = alloca %struct.S2, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = call signext i8 @func_13(i32 noundef 0, i16 noundef zeroext 0, i16 noundef signext 0)
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i1 [ false, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = bitcast %struct.S2* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ([1 x %struct.S2]* @g_1639 to i8*), i64 4, i1 false)
  %15 = getelementptr inbounds %struct.S2, %struct.S2* %2, i32 0, i32 0
  %16 = getelementptr inbounds %struct.S0, %struct.S0* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @func_13(i32 noundef %0, i16 noundef zeroext %1, i16 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  store i32* @g_37, i32** %8, align 8
  store i32 2, i32* %7, align 4
  br label %9

9:                                                ; preds = %43, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %17, %12
  %14 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @g_177, i32 0, i32 0), align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @g_177, i32 0, i32 0), align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* getelementptr inbounds (%struct.S1, %struct.S1* @g_177, i32 0, i32 0), align 4
  br label %13, !llvm.loop !4

20:                                               ; preds = %13
  store i16 0, i16* %5, align 2
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i16, i16* %5, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp sle i32 %23, 2
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load volatile i32, i32* getelementptr inbounds (%struct.S2, %struct.S2* @g_6, i32 0, i32 0, i32 0), align 4
  %27 = trunc i32 %26 to i16
  %28 = load i32, i32* getelementptr inbounds (%struct.S3, %struct.S3* @g_169, i32 0, i32 0), align 4
  %29 = trunc i32 %28 to i8
  %30 = call signext i8 @func_21(i8 noundef zeroext %29, i32 noundef 0, i32* noundef null)
  %31 = sext i8 %30 to i32
  %32 = call signext i16 @safe_60(i16 noundef signext %27, i32 noundef %31)
  %33 = sext i16 %32 to i32
  %34 = icmp sgt i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %25
  %38 = load i16, i16* %5, align 2
  %39 = zext i16 %38 to i32
  %40 = add nsw i32 %39, 1
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %5, align 2
  br label %21, !llvm.loop !6

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %9, !llvm.loop !7

46:                                               ; preds = %9
  ret i8 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @func_21(i8 noundef zeroext %0, i32 noundef %1, i32* noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32* getelementptr inbounds ([1 x [1 x [0 x i32]]], [1 x [1 x [0 x i32]]]* @g_20, i64 0, i64 0, i64 0, i64 1), i32** %7, align 8
  store i32** %7, i32*** %8, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = load i32, i32* %9, align 4
  %11 = trunc i32 %10 to i16
  %12 = load i16, i16* @g_8, align 2
  %13 = call zeroext i16 @safe_53(i16 noundef signext %11, i16 noundef signext %12)
  %14 = zext i16 %13 to i32
  %15 = load i32**, i32*** %8, align 8
  %16 = load i32*, i32** %15, align 8
  store i32 %14, i32* %16, align 4
  %17 = load i32**, i32*** %8, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %20 = trunc i32 %19 to i8
  ret i8 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S2, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 (...) bitcast (i32 (i32)* @func_1 to i32 (...)*)()
  %4 = getelementptr inbounds %struct.S2, %struct.S2* %2, i32 0, i32 0
  %5 = getelementptr inbounds %struct.S0, %struct.S0* %4, i32 0, i32 0
  store i32 %3, i32* %5, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
