; ModuleID = './931004-13.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, i32 %1, i32 %2, i32 %3, i64 noundef %4) #0 {
  %6 = alloca i32, align 4
  %tmpcast = bitcast i32* %6 to %struct.tiny*
  %7 = alloca i32, align 4
  %tmpcast1 = bitcast i32* %7 to %struct.tiny*
  %8 = alloca i32, align 4
  %tmpcast2 = bitcast i32* %8 to %struct.tiny*
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = bitcast i32* %6 to i8*
  %10 = load i8, i8* %9, align 4
  %.not = icmp eq i8 %10, 10
  br i1 %.not, label %12, label %11

11:                                               ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.tiny, %struct.tiny* %tmpcast, i64 0, i32 1
  %14 = load i8, i8* %13, align 1
  %.not3 = icmp eq i8 %14, 20
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tiny, %struct.tiny* %tmpcast, i64 0, i32 2
  %18 = load i8, i8* %17, align 2
  %.not4 = icmp eq i8 %18, 30
  br i1 %.not4, label %20, label %19

19:                                               ; preds = %16
  call void @abort() #3
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tiny, %struct.tiny* %tmpcast, i64 0, i32 3
  %22 = load i8, i8* %21, align 1
  %.not5 = icmp eq i8 %22, 40
  br i1 %.not5, label %24, label %23

23:                                               ; preds = %20
  call void @abort() #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  %25 = bitcast i32* %7 to i8*
  %26 = load i8, i8* %25, align 4
  %.not6 = icmp eq i8 %26, 11
  br i1 %.not6, label %28, label %27

27:                                               ; preds = %24
  call void @abort() #3
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tiny, %struct.tiny* %tmpcast1, i64 0, i32 1
  %30 = load i8, i8* %29, align 1
  %.not7 = icmp eq i8 %30, 21
  br i1 %.not7, label %32, label %31

31:                                               ; preds = %28
  call void @abort() #3
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tiny, %struct.tiny* %tmpcast1, i64 0, i32 2
  %34 = load i8, i8* %33, align 2
  %.not8 = icmp eq i8 %34, 31
  br i1 %.not8, label %36, label %35

35:                                               ; preds = %32
  call void @abort() #3
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tiny, %struct.tiny* %tmpcast1, i64 0, i32 3
  %38 = load i8, i8* %37, align 1
  %.not9 = icmp eq i8 %38, 41
  br i1 %.not9, label %40, label %39

39:                                               ; preds = %36
  call void @abort() #3
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %36
  %41 = bitcast i32* %8 to i8*
  %42 = load i8, i8* %41, align 4
  %.not10 = icmp eq i8 %42, 12
  br i1 %.not10, label %44, label %43

43:                                               ; preds = %40
  call void @abort() #3
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tiny, %struct.tiny* %tmpcast2, i64 0, i32 1
  %46 = load i8, i8* %45, align 1
  %.not11 = icmp eq i8 %46, 22
  br i1 %.not11, label %48, label %47

47:                                               ; preds = %44
  call void @abort() #3
  br label %UnifiedUnreachableBlock

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.tiny, %struct.tiny* %tmpcast2, i64 0, i32 2
  %50 = load i8, i8* %49, align 2
  %.not12 = icmp eq i8 %50, 32
  br i1 %.not12, label %52, label %51

51:                                               ; preds = %48
  call void @abort() #3
  br label %UnifiedUnreachableBlock

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tiny, %struct.tiny* %tmpcast2, i64 0, i32 3
  %54 = load i8, i8* %53, align 1
  %.not13 = icmp eq i8 %54, 42
  br i1 %.not13, label %56, label %55

55:                                               ; preds = %52
  call void @abort() #3
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %52
  %.not14 = icmp eq i64 %4, 123
  br i1 %.not14, label %58, label %57

57:                                               ; preds = %56
  call void @abort() #3
  br label %UnifiedUnreachableBlock

58:                                               ; preds = %56
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %57, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca [3 x %struct.tiny], align 4
  %2 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 0, i32 0
  store i8 10, i8* %2, align 4
  %3 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1, i32 0
  store i8 11, i8* %3, align 4
  %4 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2, i32 0
  store i8 12, i8* %4, align 4
  %5 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 0, i32 1
  store i8 20, i8* %5, align 1
  %6 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1, i32 1
  store i8 21, i8* %6, align 1
  %7 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2, i32 1
  store i8 22, i8* %7, align 1
  %8 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 0, i32 2
  store i8 30, i8* %8, align 2
  %9 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1, i32 2
  store i8 31, i8* %9, align 2
  %10 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2, i32 2
  store i8 32, i8* %10, align 2
  %11 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 0, i32 3
  store i8 40, i8* %11, align 1
  %12 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1, i32 3
  store i8 41, i8* %12, align 1
  %13 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2, i32 3
  store i8 42, i8* %13, align 1
  %14 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1
  %15 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2
  %16 = bitcast [3 x %struct.tiny]* %1 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = bitcast %struct.tiny* %14 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %struct.tiny* %15 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @f(i32 noundef 3, i32 %17, i32 %19, i32 %21, i64 noundef 123)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
