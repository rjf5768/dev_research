; ModuleID = './va-arg-18.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, ...) #0 {
  %10 = alloca [1 x %struct.__va_list_tag], align 16
  %11 = bitcast [1 x %struct.__va_list_tag]* %10 to i8*
  call void @llvm.va_start(i8* nonnull %11)
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, i32 0
  %13 = load i32, i32* %12, align 16
  %14 = icmp ult i32 %13, 41
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, i32 3
  %17 = load i8*, i8** %16, align 16
  %18 = sext i32 %13 to i64
  %19 = getelementptr i8, i8* %17, i64 %18
  %20 = add i32 %13, 8
  store i32 %20, i32* %12, align 16
  br label %25

21:                                               ; preds = %9
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr i8, i8* %23, i64 8
  store i8* %24, i8** %22, align 8
  br label %25

25:                                               ; preds = %21, %15
  %.in = phi i8* [ %19, %15 ], [ %23, %21 ]
  %26 = bitcast i8* %.in to i32*
  %27 = load i32, i32* %26, align 4
  %.not = icmp eq i32 %27, 10
  br i1 %.not, label %29, label %28

28:                                               ; preds = %25
  call void @abort() #4
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %25
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, i32 0
  %31 = load i32, i32* %30, align 16
  %32 = icmp ult i32 %31, 41
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, i32 3
  %35 = load i8*, i8** %34, align 16
  %36 = sext i32 %31 to i64
  %37 = getelementptr i8, i8* %35, i64 %36
  %38 = add i32 %31, 8
  store i32 %38, i32* %30, align 16
  br label %43

39:                                               ; preds = %29
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr i8, i8* %41, i64 8
  store i8* %42, i8** %40, align 8
  br label %43

43:                                               ; preds = %39, %33
  %.in1 = phi i8* [ %37, %33 ], [ %41, %39 ]
  %44 = bitcast i8* %.in1 to i32*
  %45 = load i32, i32* %44, align 4
  %.not2 = icmp eq i32 %45, 11
  br i1 %.not2, label %47, label %46

46:                                               ; preds = %43
  call void @abort() #4
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %43
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, i32 0
  %49 = load i32, i32* %48, align 16
  %50 = icmp ult i32 %49, 41
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, i32 3
  %53 = load i8*, i8** %52, align 16
  %54 = sext i32 %49 to i64
  %55 = getelementptr i8, i8* %53, i64 %54
  %56 = add i32 %49, 8
  store i32 %56, i32* %48, align 16
  br label %61

57:                                               ; preds = %47
  %58 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr i8, i8* %59, i64 8
  store i8* %60, i8** %58, align 8
  br label %61

61:                                               ; preds = %57, %51
  %.in3 = phi i8* [ %55, %51 ], [ %59, %57 ]
  %62 = bitcast i8* %.in3 to i32*
  %63 = load i32, i32* %62, align 4
  %.not4 = icmp eq i32 %63, 12
  br i1 %.not4, label %65, label %64

64:                                               ; preds = %61
  call void @abort() #4
  br label %UnifiedUnreachableBlock

65:                                               ; preds = %61
  %66 = bitcast [1 x %struct.__va_list_tag]* %10 to i8*
  call void @llvm.va_end(i8* %66)
  ret void

UnifiedUnreachableBlock:                          ; preds = %64, %46, %28
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  call void (double, double, double, double, double, double, double, double, double, ...) @f(double noundef 1.000000e+00, double noundef 2.000000e+00, double noundef 3.000000e+00, double noundef 4.000000e+00, double noundef 5.000000e+00, double noundef 6.000000e+00, double noundef 7.000000e+00, double noundef 8.000000e+00, double noundef 9.000000e+00, i32 noundef 10, i32 noundef 11, i32 noundef 12)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
