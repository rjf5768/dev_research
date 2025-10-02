; ModuleID = './va-arg-5.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @va_double(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ult i32 %5, 161
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %9 = load i8*, i8** %8, align 16
  %10 = sext i32 %5 to i64
  %11 = getelementptr i8, i8* %9, i64 %10
  %12 = add i32 %5, 16
  store i32 %12, i32* %4, align 4
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr i8, i8* %15, i64 8
  store i8* %16, i8** %14, align 8
  br label %17

17:                                               ; preds = %13, %7
  %.in = phi i8* [ %11, %7 ], [ %15, %13 ]
  %18 = bitcast i8* %.in to double*
  %19 = load double, double* %18, align 8
  %20 = fcmp une double %19, 0x400921FAFC8B007A
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  call void @abort() #4
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %17
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ult i32 %24, 161
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %28 = load i8*, i8** %27, align 16
  %29 = sext i32 %24 to i64
  %30 = getelementptr i8, i8* %28, i64 %29
  %31 = add i32 %24, 16
  store i32 %31, i32* %23, align 4
  br label %36

32:                                               ; preds = %22
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr i8, i8* %34, i64 8
  store i8* %35, i8** %33, align 8
  br label %36

36:                                               ; preds = %32, %26
  %.in1 = phi i8* [ %30, %26 ], [ %34, %32 ]
  %37 = bitcast i8* %.in1 to double*
  %38 = load double, double* %37, align 8
  %39 = fcmp une double %38, 2.718270e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @abort() #4
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %36
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ult i32 %43, 161
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %47 = load i8*, i8** %46, align 16
  %48 = sext i32 %43 to i64
  %49 = getelementptr i8, i8* %47, i64 %48
  %50 = add i32 %43, 16
  store i32 %50, i32* %42, align 4
  br label %55

51:                                               ; preds = %41
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr i8, i8* %53, i64 8
  store i8* %54, i8** %52, align 8
  br label %55

55:                                               ; preds = %51, %45
  %.in2 = phi i8* [ %49, %45 ], [ %53, %51 ]
  %56 = bitcast i8* %.in2 to double*
  %57 = load double, double* %56, align 8
  %58 = fcmp une double %57, 0x4001E3779131154C
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  call void @abort() #4
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %55
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ult i32 %62, 161
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %66 = load i8*, i8** %65, align 16
  %67 = sext i32 %62 to i64
  %68 = getelementptr i8, i8* %66, i64 %67
  %69 = add i32 %62, 16
  store i32 %69, i32* %61, align 4
  br label %74

70:                                               ; preds = %60
  %71 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr i8, i8* %72, i64 8
  store i8* %73, i8** %71, align 8
  br label %74

74:                                               ; preds = %70, %64
  %.in3 = phi i8* [ %68, %64 ], [ %72, %70 ]
  %75 = bitcast i8* %.in3 to double*
  %76 = load double, double* %75, align 8
  %77 = fcmp une double %76, 0x40012E0BE1B5921E
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  call void @abort() #4
  br label %UnifiedUnreachableBlock

79:                                               ; preds = %74
  %80 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %80)
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %78, %59, %40, %21
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @va_long_double(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = ptrtoint i8* %5 to i64
  %7 = add i64 %6, 15
  %8 = and i64 %7, -16
  %9 = inttoptr i64 %8 to i8*
  %10 = inttoptr i64 %8 to x86_fp80*
  %11 = getelementptr i8, i8* %9, i64 16
  store i8* %11, i8** %4, align 8
  %12 = load x86_fp80, x86_fp80* %10, align 16
  %13 = fcmp une x86_fp80 %12, 0xK4000C90FD7E45803CD14
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  call void @abort() #4
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %1
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = add i64 %18, 15
  %20 = and i64 %19, -16
  %21 = inttoptr i64 %20 to i8*
  %22 = inttoptr i64 %20 to x86_fp80*
  %23 = getelementptr i8, i8* %21, i64 16
  store i8* %23, i8** %16, align 8
  %24 = load x86_fp80, x86_fp80* %22, align 16
  %25 = fcmp une x86_fp80 %24, 0xK4000ADF822BBECAAB8A6
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  call void @abort() #4
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %15
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = add i64 %30, 15
  %32 = and i64 %31, -16
  %33 = inttoptr i64 %32 to i8*
  %34 = inttoptr i64 %32 to x86_fp80*
  %35 = getelementptr i8, i8* %33, i64 16
  store i8* %35, i8** %28, align 8
  %36 = load x86_fp80, x86_fp80* %34, align 16
  %37 = fcmp une x86_fp80 %36, 0xK40008F1BBC8988AA5E0D
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  call void @abort() #4
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %27
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = add i64 %42, 15
  %44 = and i64 %43, -16
  %45 = inttoptr i64 %44 to i8*
  %46 = inttoptr i64 %44 to x86_fp80*
  %47 = getelementptr i8, i8* %45, i64 16
  store i8* %47, i8** %40, align 8
  %48 = load x86_fp80, x86_fp80* %46, align 16
  %49 = fcmp une x86_fp80 %48, 0xK400089705F0DAC90ED23
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  call void @abort() #4
  br label %UnifiedUnreachableBlock

51:                                               ; preds = %39
  %52 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %52)
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %50, %38, %26, %14
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = call i32 (i32, ...) @va_double(i32 noundef 4, double noundef 0x400921FAFC8B007A, double noundef 2.718270e+00, double noundef 0x4001E3779131154C, double noundef 0x40012E0BE1B5921E)
  %2 = call i32 (i32, ...) @va_long_double(i32 noundef 4, x86_fp80 noundef 0xK4000C90FD7E45803CD14, x86_fp80 noundef 0xK4000ADF822BBECAAB8A6, x86_fp80 noundef 0xK40008F1BBC8988AA5E0D, x86_fp80 noundef 0xK400089705F0DAC90ED23)
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
