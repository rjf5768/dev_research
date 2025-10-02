; ModuleID = './strlen.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 6, align 4
@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca [8 x i8], align 1
  %2 = load i32, i32* @x, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @x, align 4
  %4 = and i32 %2, 7
  %.not = icmp eq i32 %4, 6
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %0
  %7 = load i32, i32* @x, align 4
  %.not1 = icmp eq i32 %7, 7
  br i1 %.not1, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  %10 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  store i8 110, i8* %10, align 1
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  store i8 116, i8* %11, align 1
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  store i8 115, i8* %12, align 1
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  store i8 0, i8* %13, align 1
  %strlenfirst = load i8, i8* %10, align 1
  %14 = icmp eq i8 %strlenfirst, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  call void @abort() #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %9
  store i8 110, i8* %10, align 1
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  store i8 116, i8* %17, align 1
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  store i8 115, i8* %18, align 1
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  store i8 0, i8* %19, align 1
  %strlenfirst2 = load i8, i8* %10, align 1
  %20 = icmp eq i8 %strlenfirst2, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  call void @abort() #3
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %16
  store i8 110, i8* %10, align 1
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  store i8 116, i8* %23, align 1
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  store i8 115, i8* %24, align 1
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  store i8 0, i8* %25, align 1
  %strlenfirst3 = load i8, i8* %10, align 1
  %26 = icmp eq i8 %strlenfirst3, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  call void @abort() #3
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %22
  store i8 110, i8* %10, align 1
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  store i8 116, i8* %29, align 1
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  store i8 115, i8* %30, align 1
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  store i8 0, i8* %31, align 1
  br i1 false, label %32, label %33

32:                                               ; preds = %28
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %28
  store i8 110, i8* %10, align 1
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  store i8 116, i8* %34, align 1
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  store i8 115, i8* %35, align 1
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  store i8 0, i8* %36, align 1
  br i1 false, label %37, label %38

37:                                               ; preds = %33
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %33
  store i8 110, i8* %10, align 1
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  store i8 116, i8* %39, align 1
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  store i8 115, i8* %40, align 1
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  store i8 0, i8* %41, align 1
  br i1 false, label %42, label %43

42:                                               ; preds = %38
  br label %UnifiedUnreachableBlock

43:                                               ; preds = %38
  ret void

UnifiedUnreachableBlock:                          ; preds = %42, %37, %32, %27, %21, %15, %8, %5
  unreachable
}

declare dso_local i64 @strlen(i8* noundef) #1

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
