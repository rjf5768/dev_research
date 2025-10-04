; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr27260.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr27260.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local global [65 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 2
  %5 = zext i1 %4 to i64
  %6 = select i1 %4, i32 1, i32 0
  %7 = trunc i32 %6 to i8
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([65 x i8], [65 x i8]* @buf, i64 0, i64 0), i8 %7, i64 64, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8 2, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @buf, i64 0, i64 64), align 16
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %15, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 64
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [65 x i8], [65 x i8]* @buf, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  call void @abort() #3
  unreachable

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %3, !llvm.loop !4

18:                                               ; preds = %3
  call void @foo(i32 noundef 0)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, 64
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [65 x i8], [65 x i8]* @buf, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  call void @abort() #3
  unreachable

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %19, !llvm.loop !6

34:                                               ; preds = %19
  call void @foo(i32 noundef 2)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i32, i32* %2, align 4
  %37 = icmp slt i32 %36, 64
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [65 x i8], [65 x i8]* @buf, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  call void @abort() #3
  unreachable

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %35, !llvm.loop !7

50:                                               ; preds = %35
  %51 = load i8, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @buf, i64 0, i64 64), align 16
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  call void @abort() #3
  unreachable

55:                                               ; preds = %50
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
