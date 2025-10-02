; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030928-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030928-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"a1111\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"a1112\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"a1113\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"a1114\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"a1115\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"a1116\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"a1117\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"a1118\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_addrs(i8** noundef %0, i32* noundef %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  store i8** %0, i8*** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = sub nsw i32 %7, 65536
  %9 = mul nsw i32 %8, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %10
  %12 = load i8**, i8*** %3, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  store i8* %11, i8** %13, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 131072
  %18 = mul nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %19
  %21 = load i8**, i8*** %3, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 196608
  %27 = mul nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %28
  %30 = load i8**, i8*** %3, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 262144
  %36 = mul nsw i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %37
  %39 = load i8**, i8*** %3, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 3
  store i8* %38, i8** %40, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 327680
  %45 = mul nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %46
  %48 = load i8**, i8*** %3, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 4
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 393216
  %54 = mul nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 %55
  %57 = load i8**, i8*** %3, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 5
  store i8* %56, i8** %58, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 6
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 458752
  %63 = mul nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %64
  %66 = load i8**, i8*** %3, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 6
  store i8* %65, i8** %67, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 524288
  %72 = mul nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %73
  %75 = load i8**, i8*** %3, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 7
  store i8* %74, i8** %76, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i8*], align 16
  %3 = alloca [8 x i32], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %15, %0
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 1
  %11 = mul nsw i32 65536, %10
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %13
  store i32 %11, i32* %14, align 4
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %5, !llvm.loop !4

18:                                               ; preds = %5
  %19 = getelementptr inbounds [8 x i8*], [8 x i8*]* %2, i64 0, i64 0
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  call void @get_addrs(i8** noundef %19, i32* noundef %20)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %34, %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i8*], [8 x i8*]* %2, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 97
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  call void @abort() #2
  unreachable

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %21, !llvm.loop !6

37:                                               ; preds = %21
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
