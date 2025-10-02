; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strlen.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 6, align 4
@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [8 x i8], align 1
  %3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %4 = load i32, i32* @x, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @x, align 4
  %6 = and i32 %4, 7
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 %7
  %9 = call i64 @strlen(i8* noundef %8)
  %10 = icmp ne i64 %9, 5
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  call void @abort() #3
  unreachable

12:                                               ; preds = %0
  %13 = load i32, i32* @x, align 4
  %14 = icmp ne i32 %13, 7
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @abort() #3
  unreachable

16:                                               ; preds = %12
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 110, i8* %19, align 1
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 116, i8* %21, align 1
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8 115, i8* %23, align 1
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 3
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @strlen(i8* noundef %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  call void @abort() #3
  unreachable

30:                                               ; preds = %16
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 110, i8* %32, align 1
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 116, i8* %34, align 1
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  store i8 115, i8* %36, align 1
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 @strlen(i8* noundef %39)
  %41 = icmp ult i64 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  call void @abort() #3
  unreachable

43:                                               ; preds = %30
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 110, i8* %45, align 1
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 116, i8* %47, align 1
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  store i8 115, i8* %49, align 1
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 3
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @strlen(i8* noundef %52)
  %54 = icmp ule i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  call void @abort() #3
  unreachable

56:                                               ; preds = %43
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 110, i8* %58, align 1
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8 116, i8* %60, align 1
  %61 = load i8*, i8** %3, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  store i8 115, i8* %62, align 1
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  %67 = call i64 @strlen(i8* noundef %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  call void @abort() #3
  unreachable

70:                                               ; preds = %56
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  store i8 110, i8* %72, align 1
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8 116, i8* %74, align 1
  %75 = load i8*, i8** %3, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  store i8 115, i8* %76, align 1
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 3
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  %81 = call i64 @strlen(i8* noundef %80)
  %82 = icmp ugt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  call void @abort() #3
  unreachable

84:                                               ; preds = %70
  %85 = load i8*, i8** %3, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  store i8 110, i8* %86, align 1
  %87 = load i8*, i8** %3, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  store i8 116, i8* %88, align 1
  %89 = load i8*, i8** %3, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  store i8 115, i8* %90, align 1
  %91 = load i8*, i8** %3, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  store i8 0, i8* %92, align 1
  %93 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %94 = getelementptr inbounds i8, i8* %93, i64 3
  %95 = call i64 @strlen(i8* noundef %94)
  %96 = icmp uge i64 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  call void @abort() #3
  unreachable

98:                                               ; preds = %84
  ret void
}

declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
