; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr20601-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr20601-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i8*, [4096 x i8], i8** }

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@g = dso_local global [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)], align 16
@c = dso_local global i8** null, align 8
@b = dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@t = dso_local global %struct.T zeroinitializer, align 8
@a = dso_local global [5 x i32] zeroinitializer, align 16
@d = dso_local global i32 0, align 4
@e = dso_local global i8** null, align 8
@f = dso_local global [16 x i8*] zeroinitializer, align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @foo() #0 {
  br label %1

1:                                                ; preds = %0, %1
  br label %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @bar(i8* noundef %0, i32 noundef %1) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  ret i8* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @g, i64 0, i64 0), i8*** @c, align 8
  store i32 4, i32* @b, align 4
  %3 = call i32 @setup2()
  store i32 %3, i32* %2, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.T, %struct.T* @t, i32 0, i32 0), align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @setup1(i32 noundef %4)
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 1024
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @a, i64 0, i64 4), align 16
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  call void @abort() #3
  unreachable

13:                                               ; preds = %9, %0
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @setup2() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  %3 = load i8**, i8*** @c, align 8
  %4 = getelementptr inbounds i8*, i8** %3, i64 1
  store i8** %4, i8*** @e, align 8
  %5 = load i32, i32* @b, align 4
  %6 = sub nsw i32 %5, 1
  store i32 %6, i32* @d, align 4
  br label %7

7:                                                ; preds = %72, %0
  %8 = load i32, i32* @d, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i8**, i8*** @e, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi i1 [ false, %7 ], [ %17, %10 ]
  br i1 %19, label %20, label %77

20:                                               ; preds = %18
  %21 = load i8**, i8*** @e, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load i8**, i8*** @e, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  call void @abort() #3
  unreachable

37:                                               ; preds = %28, %20
  %38 = load i8**, i8*** @e, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %72 [
    i32 117, label %44
    i32 80, label %57
    i32 45, label %60
  ]

44:                                               ; preds = %37
  %45 = load i8**, i8*** @e, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  call void @abort() #3
  unreachable

50:                                               ; preds = %44
  %51 = load i8**, i8*** @e, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  store i8** %52, i8*** getelementptr inbounds (%struct.T, %struct.T* @t, i32 0, i32 2), align 8
  %53 = load i32, i32* @d, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* @d, align 4
  %55 = load i8**, i8*** @e, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** @e, align 8
  br label %72

57:                                               ; preds = %37
  %58 = load i32, i32* %2, align 4
  %59 = or i32 %58, 4096
  store i32 %59, i32* %2, align 4
  br label %72

60:                                               ; preds = %37
  %61 = load i32, i32* @d, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* @d, align 4
  %63 = load i8**, i8*** @e, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** @e, align 8
  %65 = load i32, i32* %2, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %2, align 4
  %69 = or i32 %68, 1536
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i32, i32* %2, align 4
  store i32 %71, i32* %1, align 4
  br label %87

72:                                               ; preds = %37, %57, %50
  %73 = load i32, i32* @d, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* @d, align 4
  %75 = load i8**, i8*** @e, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i32 1
  store i8** %76, i8*** @e, align 8
  br label %7, !llvm.loop !4

77:                                               ; preds = %18
  %78 = load i32, i32* @d, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %2, align 4
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  call void @abort() #3
  unreachable

85:                                               ; preds = %80, %77
  %86 = load i32, i32* %2, align 4
  store i32 %86, i32* %1, align 4
  br label %87

87:                                               ; preds = %85, %70
  %88 = load i32, i32* %1, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @setup1(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i8* @baz(i8* noundef getelementptr inbounds (%struct.T, %struct.T* @t, i32 0, i32 1, i64 0), i32 noundef 4096)
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i8* @baz(i8* noundef getelementptr inbounds (%struct.T, %struct.T* @t, i32 0, i32 1, i64 0), i32 noundef 4096)
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, 512
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load i8**, i8*** @e, align 8
  store i8** %16, i8*** %6, align 8
  %17 = load i32, i32* @d, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @d, align 4
  store i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @f, i64 0, i64 0), i8*** @e, align 8
  %19 = load i8*, i8** getelementptr inbounds (%struct.T, %struct.T* @t, i32 0, i32 0), align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load i8*, i8** getelementptr inbounds (%struct.T, %struct.T* @t, i32 0, i32 0), align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i8*, i8** getelementptr inbounds (%struct.T, %struct.T* @t, i32 0, i32 0), align 8
  %28 = load i8**, i8*** @e, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  store i8* %27, i8** %29, align 8
  br label %31

30:                                               ; preds = %21, %15
  call void @abort() #3
  unreachable

31:                                               ; preds = %26
  %32 = load i8**, i8*** @e, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  store i8** %33, i8*** %5, align 8
  br label %34

34:                                               ; preds = %40, %31
  %35 = load i8**, i8*** %6, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** %5, align 8
  store i8* %36, i8** %37, align 8
  %38 = icmp ne i8* %36, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39
  %41 = load i8**, i8*** %6, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %42, i8*** %6, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %5, align 8
  br label %34, !llvm.loop !6

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %11
  ret i32 1
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @baz(i8* noundef %0, i32 noundef %1) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = zext i32 %5 to i64
  %7 = icmp ugt i64 %6, 4096
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @foo() #3
  unreachable

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i8* @bar(i8* noundef %10, i32 noundef %11)
  ret i8* %12
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
