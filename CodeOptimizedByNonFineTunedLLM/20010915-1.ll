; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010915-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010915-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check = dso_local global i32 0, align 4
@o = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@h = dso_local global i8* null, align 8
@u = dso_local global i8* null, align 8
@r.c = internal global [2 x i8] c"b\00", align 1
@r.cnt = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [5 x i8*], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = bitcast [5 x i8*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 40, i1 false)
  %8 = bitcast i8* %7 to [5 x i8*]*
  %9 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %12, align 8
  %13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %13, align 16
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 0
  %15 = call i32 @x(i32 noundef 5, i8** noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @check, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @o, align 4
  %22 = icmp ne i32 %21, 5
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %2
  call void @abort() #4
  unreachable

24:                                               ; preds = %20
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @x(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @o, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %65

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %65

15:                                               ; preds = %12
  %16 = load i8**, i8*** %5, align 8
  %17 = load i32, i32* @o, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %65

22:                                               ; preds = %15
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* @o, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @s(i8* noundef %27, i8** noundef %8)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %22
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %7, align 8
  store i8 0, i8* %32, align 1
  %34 = load i8*, i8** %7, align 8
  %35 = call i8* @s(i8* noundef %34, i8** noundef %8)
  store i8* %35, i8** @h, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @m(i8* noundef %40)
  store i8* %41, i8** @h, align 8
  br label %42

42:                                               ; preds = %39, %31
  br label %43

43:                                               ; preds = %42, %22
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* @o, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @s(i8* noundef %48, i8** noundef %8)
  store i8* %49, i8** @u, align 8
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* @o, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp eq i8* %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %43
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* @o, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @m(i8* noundef %62)
  store i8* %63, i8** @u, align 8
  br label %64

64:                                               ; preds = %57, %43
  br label %66

65:                                               ; preds = %15, %12, %2
  call void @abort() #4
  unreachable

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %81, %66
  %68 = load i32, i32* @o, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @o, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* @o, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @r(i8* noundef %77)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %83

81:                                               ; preds = %72
  br label %67, !llvm.loop !4

82:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %80
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @s(i8* noundef %0, i8** noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @check, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @check, align 4
  %11 = icmp sgt i32 %9, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  call void @abort() #4
  unreachable

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8**, i8*** %4, align 8
  store i8* %15, i8** %16, align 8
  ret i8* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @m(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @abort() #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @r(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @r.c, i64 0, i64 0), align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %5, %7
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @r.c, i64 0, i64 1), align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  %18 = load i32, i32* @r.cnt, align 4
  %19 = icmp sgt i32 %18, 3
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %9, %1
  call void @abort() #4
  unreachable

21:                                               ; preds = %17
  %22 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @r.c, i64 0, i64 0), align 1
  %23 = add i8 %22, 1
  store i8 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @r.c, i64 0, i64 0), align 1
  %24 = load i32, i32* @r.cnt, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @r.cnt, align 4
  ret i32 1
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
