; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20121108-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20121108-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@temp = dso_local global [16 x i8] c"192.168.190.160\00", align 16
@result = dso_local global i32 -1062682976, align 4
@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"WORKS.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @strtoul1(i8* noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 3
  %10 = load i8**, i8*** %6, align 8
  store i8* %9, i8** %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, getelementptr inbounds ([16 x i8], [16 x i8]* @temp, i64 0, i64 0)
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 192, i32* %4, align 4
  br label %30

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, getelementptr inbounds ([16 x i8], [16 x i8]* @temp, i64 0, i64 4)
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 168, i32* %4, align 4
  br label %30

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, getelementptr inbounds ([16 x i8], [16 x i8]* @temp, i64 0, i64 8)
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 190, i32* %4, align 4
  br label %30

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = icmp eq i8* %23, getelementptr inbounds ([16 x i8], [16 x i8]* @temp, i64 0, i64 12)
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 160, i32* %4, align 4
  br label %30

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %28
  call void @abort() #3
  unreachable

30:                                               ; preds = %25, %21, %17, %13
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @string_to_ip(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %45, %11
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %48

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strtoul1(i8* noundef %19, i8** noundef %5, i32 noundef 10)
  br label %22

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i32 [ %20, %18 ], [ 0, %21 ]
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %24, 8
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 255
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %22
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  br label %42

40:                                               ; preds = %32
  %41 = load i8*, i8** %5, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i8* [ %39, %37 ], [ %41, %40 ]
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %42, %22
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %12, !llvm.loop !4

48:                                               ; preds = %12
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %10
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @string_to_ip(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @temp, i64 0, i64 0))
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %4)
  %6 = load i32, i32* @result, align 4
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %6)
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @result, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  call void @abort() #3
  unreachable

12:                                               ; preds = %0
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
