; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/string-opt-17.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/string-opt-17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"foobarbaz\00", align 1
@check2.r = internal global i64 5, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"az\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"baz\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @test1(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = add i64 %6, 1
  store i64 %7, i64* %4, align 8
  %8 = getelementptr inbounds i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %6
  %9 = call i8* @strcpy(i8* noundef %5, i8* noundef %8)
  %10 = load i64, i64* %4, align 8
  ret i64 %10
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @check2() #0 {
  %1 = load i64, i64* @check2.r, align 8
  %2 = icmp ne i64 %1, 5
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #3
  unreachable

4:                                                ; preds = %0
  %5 = load i64, i64* @check2.r, align 8
  %6 = add i64 %5, 1
  store i64 %6, i64* @check2.r, align 8
  ret i64 %6
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @check2()
  %5 = getelementptr inbounds i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %4
  %6 = call i8* @strcpy(i8* noundef %3, i8* noundef %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %4 = call i64 @test1(i8* noundef %3, i64 noundef 7)
  %5 = icmp ne i64 %4, 8
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %8 = call i32 @memcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 noundef 3)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %0
  call void @abort() #3
  unreachable

11:                                               ; preds = %6
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  call void @test2(i8* noundef %12)
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %14 = call i32 @memcmp(i8* noundef %13, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 noundef 4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  call void @abort() #3
  unreachable

17:                                               ; preds = %11
  call void @exit(i32 noundef 0) #3
  unreachable
}

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

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
