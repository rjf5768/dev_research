; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/return-addr.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/return-addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%p %p %p %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"assertion failed on line %i: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"0 != test_max_2 ()\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"0 != test_max_3 ()\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"0 != test_min_2 ()\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"0 != test_min_3 ()\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"0 != test_min_3_phi (0)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @get_max_2(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 1
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @get_max_3(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  br label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i8* [ %10, %8 ], [ %13, %11 ]
  ret i8* %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @get_min_2(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 -1
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @get_min_3(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 -1
  br label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 -1
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i8* [ %10, %8 ], [ %13, %11 ]
  ret i8* %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @test_max_2() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = call i8* @get_max_2(i8* noundef %1)
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ugt i8* %5, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i8*, i8** %2, align 8
  br label %10

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i8* [ %8, %7 ], [ %1, %9 ]
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @test_max_3() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = call i8* @get_max_3(i8* noundef %1, i8* noundef %2)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ult i8* %6, %1
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = icmp ult i8* %1, %2
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %12

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %10
  %13 = phi i8* [ %2, %10 ], [ %1, %11 ]
  br label %16

14:                                               ; preds = %0
  %15 = load i8*, i8** %3, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i8* [ %13, %12 ], [ %15, %14 ]
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  ret i8* %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @test_min_2() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = call i8* @get_min_2(i8* noundef %1)
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ult i8* %5, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i8*, i8** %2, align 8
  br label %10

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i8* [ %8, %7 ], [ %1, %9 ]
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @test_min_3() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = call i8* @get_min_3(i8* noundef %1, i8* noundef %2)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ugt i8* %6, %1
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = icmp ugt i8* %1, %2
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %12

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %10
  %13 = phi i8* [ %2, %10 ], [ %1, %11 ]
  br label %16

14:                                               ; preds = %0
  %15 = load i8*, i8** %3, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i8* [ %13, %12 ], [ %15, %14 ]
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  ret i8* %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @test_min_3_phi(i32 noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %4, i8** %6, align 8
  store i8* %5, i8** %7, align 8
  %12 = call i8* @get_min_3(i8* noundef %4, i8* noundef %5)
  store i8* %12, i8** %8, align 8
  %13 = call i8* @get_min_3(i8* noundef %4, i8* noundef %5)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i8*, i8** %8, align 8
  br label %21

19:                                               ; preds = %1
  %20 = load i8*, i8** %6, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i8* [ %18, %17 ], [ %20, %19 ]
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i8*, i8** %9, align 8
  br label %30

28:                                               ; preds = %21
  %29 = load i8*, i8** %7, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i8* [ %27, %26 ], [ %29, %28 ]
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef %32, i8* noundef %33, i8* noundef %34, i8* noundef %35)
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i8*, i8** %10, align 8
  store i8* %40, i8** %2, align 8
  br label %43

41:                                               ; preds = %30
  %42 = load i8*, i8** %11, align 8
  store i8* %42, i8** %2, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i8*, i8** %2, align 8
  ret i8* %44
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i8* @test_max_2()
  %3 = icmp ne i8* null, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %8

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  call void @abort() #3
  unreachable

7:                                                ; No predecessors!
  br label %8

8:                                                ; preds = %7, %4
  %9 = call i8* @test_max_3()
  %10 = icmp ne i8* null, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %15

12:                                               ; preds = %8
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  call void @abort() #3
  unreachable

14:                                               ; No predecessors!
  br label %15

15:                                               ; preds = %14, %11
  %16 = call i8* @test_min_2()
  %17 = icmp ne i8* null, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %22

19:                                               ; preds = %15
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  call void @abort() #3
  unreachable

21:                                               ; No predecessors!
  br label %22

22:                                               ; preds = %21, %18
  %23 = call i8* @test_min_3()
  %24 = icmp ne i8* null, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %29

26:                                               ; preds = %22
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  call void @abort() #3
  unreachable

28:                                               ; No predecessors!
  br label %29

29:                                               ; preds = %28, %25
  %30 = call i8* @test_min_3_phi(i32 noundef 0)
  %31 = icmp ne i8* null, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %36

33:                                               ; preds = %29
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  call void @abort() #3
  unreachable

35:                                               ; No predecessors!
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

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
