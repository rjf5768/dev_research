; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strlen-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strlen-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { x86_fp80, [80 x i8] }

@u = internal global %union.anon zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %7

7:                                                ; preds = %62, %0
  %8 = load i64, i64* %2, align 8
  %9 = icmp ult i64 %8, 8
  br i1 %9, label %10, label %65

10:                                               ; preds = %7
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %58, %10
  %12 = load i64, i64* %3, align 8
  %13 = icmp ult i64 %12, 64
  br i1 %13, label %14, label %61

14:                                               ; preds = %11
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* bitcast (%union.anon* @u to [81 x i8]*), i64 0, i64 0), i8** %6, align 8
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %22, %14
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %2, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %6, align 8
  store i8 0, i8* %20, align 1
  br label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %5, align 8
  br label %15, !llvm.loop !4

25:                                               ; preds = %15
  store i64 0, i64* %5, align 8
  br label %26

26:                                               ; preds = %33, %25
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  store i8 97, i8* %31, align 1
  br label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %26, !llvm.loop !6

36:                                               ; preds = %26
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  store i8 0, i8* %37, align 1
  store i64 0, i64* %5, align 8
  br label %39

39:                                               ; preds = %45, %36
  %40 = load i64, i64* %5, align 8
  %41 = icmp ult i64 %40, 8
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  store i8 98, i8* %43, align 1
  br label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %39, !llvm.loop !7

48:                                               ; preds = %39
  %49 = load i64, i64* %2, align 8
  %50 = getelementptr inbounds i8, i8* getelementptr inbounds ([81 x i8], [81 x i8]* bitcast (%union.anon* @u to [81 x i8]*), i64 0, i64 0), i64 %49
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strlen(i8* noundef %51) #3
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  call void @abort() #4
  unreachable

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %3, align 8
  br label %11, !llvm.loop !8

61:                                               ; preds = %11
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %2, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %2, align 8
  br label %7, !llvm.loop !9

65:                                               ; preds = %7
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { noreturn }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
