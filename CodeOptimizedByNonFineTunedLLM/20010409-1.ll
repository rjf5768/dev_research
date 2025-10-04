; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010409-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010409-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { %struct.A**, i32 }
%struct.A = type { i32, i32 }

@b = dso_local global i32 1, align 4
@c = dso_local global i32 0, align 4
@d = dso_local global [1 x %struct.B] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@a = dso_local global %struct.A* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.A* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.A*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.A* %0, %struct.A** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 4
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = load i32, i32* %6, align 4
  %12 = mul nsw i32 %11, 25
  %13 = add nsw i32 %10, %12
  store i32 %13, i32* @c, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.A* @bar(i8* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  call void @abort() #3
  unreachable

14:                                               ; preds = %5
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i8* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.A**, %struct.A*** getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 0), align 16
  %6 = load i32, i32* getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 1), align 8
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.A*, %struct.A** %5, i64 %7
  %9 = load %struct.A*, %struct.A** %8, align 8
  call void @foo(%struct.A* noundef %9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef 200)
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @b, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 0, i32 65536
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strlen(i8* noundef %15)
  %17 = trunc i64 %16 to i32
  %18 = call %struct.A* @bar(i8* noundef %10, i32 noundef %14, i32 noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef 201)
  %19 = load %struct.A**, %struct.A*** getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 0), align 16
  %20 = load i32, i32* getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 1), align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.A*, %struct.A** %19, i64 %21
  store %struct.A* %18, %struct.A** %22, align 8
  %23 = load %struct.A**, %struct.A*** getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 0), align 16
  %24 = load i32, i32* getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 1), align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.A*, %struct.A** %23, i64 %25
  %27 = load %struct.A*, %struct.A** %26, align 8
  %28 = getelementptr inbounds %struct.A, %struct.A* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %2
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.A**, %struct.A*** getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 0), align 16
  %37 = load i32, i32* getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 1), align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.A*, %struct.A** %36, i64 %38
  %40 = load %struct.A*, %struct.A** %39, align 8
  %41 = getelementptr inbounds %struct.A, %struct.A* %40, i32 0, i32 1
  store i32 %35, i32* %41, align 4
  br label %42

42:                                               ; preds = %33, %2
  ret void
}

declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  store i32 0, i32* getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 1), align 8
  store %struct.A** @a, %struct.A*** getelementptr inbounds ([1 x %struct.B], [1 x %struct.B]* @d, i64 0, i64 0, i32 0), align 16
  call void @test(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32* noundef null)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
