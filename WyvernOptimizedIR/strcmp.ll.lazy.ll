; ModuleID = './strcmp.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 7, align 4
@.str = private unnamed_addr constant [9 x i8] c"hi world\00", align 1
@bar = dso_local global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = load i8*, i8** @bar, align 8
  %strcmpload = load i8, i8* %1, align 1
  %2 = icmp eq i8 %strcmpload, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = load i8*, i8** @bar, align 8
  %strcmpload1 = load i8, i8* %5, align 1
  %6 = icmp eq i8 %strcmpload1, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  call void @abort() #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  %9 = load i8*, i8** @bar, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 8
  %strcmpload2 = load i8, i8* %10, align 1
  %.not = icmp eq i8 %strcmpload2, 0
  br i1 %.not, label %12, label %11

11:                                               ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %8
  %13 = load i8*, i8** @bar, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 8
  %strcmpload3 = load i8, i8* %14, align 1
  %.not4 = icmp eq i8 %strcmpload3, 0
  br i1 %.not4, label %16, label %15

15:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  %17 = load i8*, i8** @bar, align 8
  %18 = load i32, i32* @x, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @x, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %strcmpload5 = load i8, i8* %21, align 1
  %22 = icmp eq i8 %strcmpload5, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @x, align 4
  %.not6 = icmp eq i32 %24, 6
  br i1 %.not6, label %26, label %25

25:                                               ; preds = %23, %16
  call void @abort() #3
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %23
  %27 = load i8*, i8** @bar, align 8
  %28 = load i32, i32* @x, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @x, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %strcmpload7 = load i8, i8* %31, align 1
  %32 = icmp eq i8 %strcmpload7, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @x, align 4
  %.not8 = icmp eq i32 %34, 7
  br i1 %.not8, label %36, label %35

35:                                               ; preds = %33, %26
  call void @abort() #3
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %33
  ret void

UnifiedUnreachableBlock:                          ; preds = %35, %25, %15, %11, %7, %3
  unreachable
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
