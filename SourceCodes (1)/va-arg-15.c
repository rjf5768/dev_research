; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-15.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @vafunction(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_start(i8* %9)
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %67, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 18
  br i1 %12, label %13, label %72

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ule i32 %20, 160
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %18, i32 0, i32 3
  %24 = load i8*, i8** %23, align 16
  %25 = getelementptr i8, i8* %24, i32 %20
  %26 = bitcast i8* %25 to double*
  %27 = add i32 %20, 16
  store i32 %27, i32* %19, align 4
  br label %33

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %18, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to double*
  %32 = getelementptr i8, i8* %30, i32 8
  store i8* %32, i8** %29, align 8
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi double* [ %26, %22 ], [ %31, %28 ]
  %35 = load double, double* %34, align 8
  store double %35, double* %3, align 8
  %36 = load double, double* %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sitofp i32 %37 to double
  %39 = fcmp une double %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  call void @abort() #3
  unreachable

41:                                               ; preds = %33
  br label %66

42:                                               ; preds = %13
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %44 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 16
  %46 = icmp ule i32 %45, 40
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 3
  %49 = load i8*, i8** %48, align 16
  %50 = getelementptr i8, i8* %49, i32 %45
  %51 = bitcast i8* %50 to i32*
  %52 = add i32 %45, 8
  store i32 %52, i32* %44, align 16
  br label %58

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = getelementptr i8, i8* %55, i32 8
  store i8* %57, i8** %54, align 8
  br label %58

58:                                               ; preds = %53, %47
  %59 = phi i32* [ %51, %47 ], [ %56, %53 ]
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  call void @abort() #3
  unreachable

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %10, !llvm.loop !4

72:                                               ; preds = %10
  %73 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %74 = bitcast %struct.__va_list_tag* %73 to i8*
  call void @llvm.va_end(i8* %74)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (i8*, ...) @vafunction(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef 1, double noundef 2.000000e+00, i32 noundef 3, double noundef 4.000000e+00, i32 noundef 5, double noundef 6.000000e+00, i32 noundef 7, double noundef 8.000000e+00, i32 noundef 9, double noundef 1.000000e+01, i32 noundef 11, double noundef 1.200000e+01, i32 noundef 13, double noundef 1.400000e+01, i32 noundef 15, double noundef 1.600000e+01, i32 noundef 17, double noundef 1.800000e+01)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
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
