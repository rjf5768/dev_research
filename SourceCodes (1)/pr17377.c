; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr17377.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr17377.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@calls = dso_local global i32 0, align 4
@x = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @f(i32 noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @calls, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @calls, align 4
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i8* @llvm.returnaddress(i32 0)
  store i8* %8, i8** %2, align 8
  br label %15

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %14 [
    i32 1, label %11
    i32 0, label %12
  ]

11:                                               ; preds = %9
  store i8* bitcast (i8* (i32)* @f to i8*), i8** %2, align 8
  br label %15

12:                                               ; preds = %9
  %13 = call i8* @llvm.returnaddress(i32 0)
  store i8* %13, i8** %2, align 8
  br label %15

14:                                               ; preds = %9
  store i8* null, i8** %2, align 8
  br label %15

15:                                               ; preds = %14, %12, %11, %7
  %16 = load i8*, i8** %2, align 8
  ret i8* %16
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @y(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* @x, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i8* @f(i32 noundef %3)
  %5 = load i32, i32* @x, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @x, align 4
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i8, i8* %4, i64 %7
  ret i8* %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %3 = call i8* @y(i32 noundef 4)
  store i8* %3, i8** %2, align 8
  %4 = call i8* @y(i32 noundef 1)
  %5 = icmp ne i8* %4, bitcast (i8* (i32)* @f to i8*)
  br i1 %5, label %19, label %6

6:                                                ; preds = %0
  %7 = call i8* @y(i32 noundef 0)
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %7, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = call i8* @y(i32 noundef 3)
  %12 = icmp ne i8* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = call i8* @y(i32 noundef -1)
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @calls, align 4
  %18 = icmp ne i32 %17, 5
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13, %10, %6, %0
  call void @abort() #3
  unreachable

20:                                               ; preds = %16
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
