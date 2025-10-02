; ModuleID = './20010924-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010924-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8, i8* }
%struct.anon.0 = type { i8, [2 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"62\00", align 1
@a1 = dso_local global %struct.anon { i8 52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0) }, align 8
@a2 = dso_local global %struct.anon.0 { i8 118, [2 x i8] c"cq" }, align 1
@a3 = dso_local global { i8, [3 x i8] } { i8 111, [3 x i8] c"wx\00" }, align 1
@a4 = dso_local global { i8, [2 x i8] } { i8 57, [2 x i8] c"eb" }, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @a1, i64 0, i32 0), align 8
  %.not = icmp eq i8 %1, 52
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #2
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @a1, i64 0, i32 1), align 8
  %5 = load i8, i8* %4, align 1
  %.not1 = icmp eq i8 %5, 54
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %3
  call void @abort() #2
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %3
  %8 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @a1, i64 0, i32 1), align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i8, i8* %9, align 1
  %.not2 = icmp eq i8 %10, 50
  br i1 %.not2, label %12, label %11

11:                                               ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %7
  %13 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @a1, i64 0, i32 1), align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  %15 = load i8, i8* %14, align 1
  %.not3 = icmp eq i8 %15, 0
  br i1 %.not3, label %17, label %16

16:                                               ; preds = %12
  call void @abort() #2
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %12
  %18 = load i8, i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @a2, i64 0, i32 0), align 1
  %.not4 = icmp eq i8 %18, 118
  br i1 %.not4, label %20, label %19

19:                                               ; preds = %17
  call void @abort() #2
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %17
  %21 = load i8, i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @a2, i64 0, i32 1, i64 0), align 1
  %.not5 = icmp eq i8 %21, 99
  br i1 %.not5, label %23, label %22

22:                                               ; preds = %20
  call void @abort() #2
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %20
  %24 = load i8, i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @a2, i64 0, i32 1, i64 1), align 1
  %.not6 = icmp eq i8 %24, 113
  br i1 %.not6, label %26, label %25

25:                                               ; preds = %23
  call void @abort() #2
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %23
  %27 = load i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @a3, i64 0, i32 0), align 1
  %.not7 = icmp eq i8 %27, 111
  br i1 %.not7, label %29, label %28

28:                                               ; preds = %26
  call void @abort() #2
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %26
  %30 = load i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @a3, i64 0, i32 1, i64 0), align 1
  %.not8 = icmp eq i8 %30, 119
  br i1 %.not8, label %32, label %31

31:                                               ; preds = %29
  call void @abort() #2
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %29
  %33 = load i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @a3, i64 0, i32 1, i64 1), align 1
  %.not9 = icmp eq i8 %33, 120
  br i1 %.not9, label %35, label %34

34:                                               ; preds = %32
  call void @abort() #2
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %32
  %36 = load i8, i8* getelementptr inbounds ({ i8, [2 x i8] }, { i8, [2 x i8] }* @a4, i64 0, i32 0), align 1
  %.not10 = icmp eq i8 %36, 57
  br i1 %.not10, label %38, label %37

37:                                               ; preds = %35
  call void @abort() #2
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %35
  %39 = load i8, i8* getelementptr inbounds ({ i8, [2 x i8] }, { i8, [2 x i8] }* @a4, i64 0, i32 1, i64 0), align 1
  %.not11 = icmp eq i8 %39, 101
  br i1 %.not11, label %41, label %40

40:                                               ; preds = %38
  call void @abort() #2
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %38
  %42 = load i8, i8* getelementptr inbounds ({ i8, [2 x i8] }, { i8, [2 x i8] }* @a4, i64 0, i32 1, i64 1), align 1
  %.not12 = icmp eq i8 %42, 98
  br i1 %.not12, label %44, label %43

43:                                               ; preds = %41
  call void @abort() #2
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %41
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %11, %6, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
