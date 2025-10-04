; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20141022-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20141022-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"assert.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = and i64 %6, 4294967291
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 6
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 15
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @f(i32 noundef 0)
  %3 = icmp ne i32 %2, 15
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %4
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  call void @abort() #3
  unreachable

7:                                                ; No predecessors!
  br label %8

8:                                                ; preds = %7, %0
  %9 = call i32 @f(i32 noundef 1)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  call void @abort() #3
  unreachable

14:                                               ; No predecessors!
  br label %15

15:                                               ; preds = %14, %8
  %16 = call i32 @f(i32 noundef 6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  call void @abort() #3
  unreachable

21:                                               ; No predecessors!
  br label %22

22:                                               ; preds = %21, %15
  %23 = call i32 @f(i32 noundef 5)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  call void @abort() #3
  unreachable

28:                                               ; No predecessors!
  br label %29

29:                                               ; preds = %28, %22
  %30 = call i32 @f(i32 noundef 15)
  %31 = icmp ne i32 %30, 15
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  call void @abort() #3
  unreachable

35:                                               ; No predecessors!
  br label %36

36:                                               ; preds = %35, %29
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
