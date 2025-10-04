; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bcp-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bcp-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = dso_local global i32 0, align 4
@bad_t0 = dso_local global [6 x i32 ()*] [i32 ()* @bad0, i32 ()* @bad1, i32 ()* @bad5, i32 ()* @bad7, i32 ()* @bad8, i32 ()* @bad10], align 16
@bad_t1 = dso_local global [3 x i32 (i32)*] [i32 (i32)* @bad2, i32 (i32)* @bad3, i32 (i32)* @bad6], align 16
@bad_t2 = dso_local global [2 x i32 (i8*)*] [i32 (i8*)* @bad4, i32 (i8*)* @bad9], align 16
@good_t0 = dso_local global [3 x i32 ()*] [i32 ()* @good0, i32 ()* @good1, i32 ()* @good2], align 16
@opt_t0 = dso_local global [3 x i32 ()*] [i32 ()* @opt0, i32 ()* @opt1, i32 ()* @opt2], align 16
@.str = private unnamed_addr constant [3 x i8] c"hi\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bad0() #0 {
  %1 = load i32, i32* @global, align 4
  %2 = call i1 @llvm.is.constant.i32(i32 %1)
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: convergent nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bad1() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bad5() #0 {
  %1 = call i32 @bad2(i32 noundef 1)
  ret i32 %1
}

declare dso_local i32 @bad2(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bad7() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bad8() #0 {
  %1 = alloca [10 x i8], align 1
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bad9(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 123456
  %5 = load i8, i8* %4, align 1
  %6 = call i1 @llvm.is.constant.i8(i8 %5)
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: convergent nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i8(i8) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bad10() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @good0() #0 {
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @good1() #0 {
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @good2() #0 {
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @opt0() #0 {
  %1 = call i32 @bad3(i32 noundef 1)
  ret i32 %1
}

declare dso_local i32 @bad3(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @opt1() #0 {
  %1 = call i32 @bad6(i32 noundef 1)
  ret i32 %1
}

declare dso_local i32 @bad6(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @opt2() #0 {
  ret i32 1
}

declare dso_local i32 @bad4(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %16, %0
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = icmp ult i64 %5, 6
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [6 x i32 ()*], [6 x i32 ()*]* @bad_t0, i64 0, i64 %9
  %11 = load volatile i32 ()*, i32 ()** %10, align 8
  %12 = call i32 %11()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  call void @abort() #4
  unreachable

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  br label %3, !llvm.loop !4

19:                                               ; preds = %3
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 3
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i32 (i32)*], [3 x i32 (i32)*]* @bad_t1, i64 0, i64 %26
  %28 = load volatile i32 (i32)*, i32 (i32)** %27, align 8
  %29 = call i32 %28(i32 noundef 1)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  call void @abort() #4
  unreachable

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %20, !llvm.loop !6

36:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 2
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2 x i32 (i8*)*], [2 x i32 (i8*)*]* @bad_t2, i64 0, i64 %43
  %45 = load volatile i32 (i8*)*, i32 (i8*)** %44, align 8
  %46 = call i32 %45(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  call void @abort() #4
  unreachable

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %37, !llvm.loop !7

53:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %56, 3
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x i32 ()*], [3 x i32 ()*]* @good_t0, i64 0, i64 %60
  %62 = load volatile i32 ()*, i32 ()** %61, align 8
  %63 = call i32 %62()
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  call void @abort() #4
  unreachable

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %54, !llvm.loop !8

70:                                               ; preds = %54
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { convergent nofree nosync nounwind readnone willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
