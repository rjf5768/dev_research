; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950221-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950221-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsefile = type { i64, i8* }

@basepf = dso_local global %struct.parsefile zeroinitializer, align 8
@parsefile = dso_local global %struct.parsefile* @basepf, align 8
@el = dso_local global i32 0, align 4
@filler = dso_local global [12288 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @g1(i32 noundef %0, i32* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i8*, i8** %3, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g2(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 3735928559
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @abort() #3
  unreachable

6:                                                ; preds = %1
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %9 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %0
  %13 = load i32, i32* @el, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* @el, align 4
  %17 = call i8* @g1(i32 noundef %16, i32* noundef %7)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @strcpy(i8* noundef %18, i8* noundef %19)
  br label %27

21:                                               ; preds = %12, %0
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %24 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @g2(i64 noundef %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %15
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  store i32 0, i32* @el, align 4
  %1 = load %struct.parsefile*, %struct.parsefile** @parsefile, align 8
  %2 = getelementptr inbounds %struct.parsefile, %struct.parsefile* %1, i32 0, i32 0
  store i64 3735928559, i64* %2, align 8
  %3 = call i32 @f()
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
