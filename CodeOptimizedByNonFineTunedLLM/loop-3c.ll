; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-3c.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-3c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [255 x i8*] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 256, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i32, i32* %4, align 4
  %9 = shl i32 %8, 3
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* bitcast ([255 x i8*]* @a to i8*), i64 %10
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 1
  store i32 %13, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [255 x i8*], [255 x i8*]* @a, i64 0, i64 %14
  store i8* %11, i8** %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %7
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 1073741840
  br i1 %20, label %7, label %21, !llvm.loop !4

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8* null, i8** getelementptr inbounds ([255 x i8*], [255 x i8*]* @a, i64 0, i64 16), align 16
  store i8* null, i8** getelementptr inbounds ([255 x i8*], [255 x i8*]* @a, i64 0, i64 8), align 16
  %2 = call i32 @f(i32 noundef 1610612736)
  %3 = load i8*, i8** getelementptr inbounds ([255 x i8*], [255 x i8*]* @a, i64 0, i64 16), align 16
  %4 = icmp ne i8* %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i8*, i8** getelementptr inbounds ([255 x i8*], [255 x i8*]* @a, i64 0, i64 8), align 16
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %0
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  store i8* null, i8** getelementptr inbounds ([255 x i8*], [255 x i8*]* @a, i64 0, i64 16), align 16
  store i8* null, i8** getelementptr inbounds ([255 x i8*], [255 x i8*]* @a, i64 0, i64 8), align 16
  %10 = call i32 @f(i32 noundef 1073741824)
  %11 = load i8*, i8** getelementptr inbounds ([255 x i8*], [255 x i8*]* @a, i64 0, i64 16), align 16
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i8*, i8** getelementptr inbounds ([255 x i8*], [255 x i8*]* @a, i64 0, i64 8), align 16
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %9
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
