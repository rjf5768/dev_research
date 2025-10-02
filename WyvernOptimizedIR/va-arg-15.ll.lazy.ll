; ModuleID = './va-arg-15.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @vafunction(i8* nocapture noundef readnone %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  br label %4

4:                                                ; preds = %49, %1
  %.01 = phi i32 [ 0, %1 ], [ %51, %49 ]
  %.0 = phi i32 [ 1, %1 ], [ %50, %49 ]
  %5 = icmp ult i32 %.0, 19
  br i1 %5, label %6, label %52

6:                                                ; preds = %4
  %7 = and i32 %.01, 1
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %29, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ult i32 %10, 161
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %14 = load i8*, i8** %13, align 16
  %15 = sext i32 %10 to i64
  %16 = getelementptr i8, i8* %14, i64 %15
  %17 = add i32 %10, 16
  store i32 %17, i32* %9, align 4
  br label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr i8, i8* %20, i64 8
  store i8* %21, i8** %19, align 8
  br label %22

22:                                               ; preds = %18, %12
  %.in3 = phi i8* [ %16, %12 ], [ %20, %18 ]
  %23 = bitcast i8* %.in3 to double*
  %24 = load double, double* %23, align 8
  %25 = sitofp i32 %.0 to double
  %26 = fcmp une double %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  call void @abort() #4
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %22
  br label %48

29:                                               ; preds = %6
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %31 = load i32, i32* %30, align 16
  %32 = icmp ult i32 %31, 41
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %35 = load i8*, i8** %34, align 16
  %36 = sext i32 %31 to i64
  %37 = getelementptr i8, i8* %35, i64 %36
  %38 = add i32 %31, 8
  store i32 %38, i32* %30, align 16
  br label %43

39:                                               ; preds = %29
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr i8, i8* %41, i64 8
  store i8* %42, i8** %40, align 8
  br label %43

43:                                               ; preds = %39, %33
  %.in = phi i8* [ %37, %33 ], [ %41, %39 ]
  %44 = bitcast i8* %.in to i32*
  %45 = load i32, i32* %44, align 4
  %.not2 = icmp eq i32 %45, %.0
  br i1 %.not2, label %47, label %46

46:                                               ; preds = %43
  call void @abort() #4
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %28
  br label %49

49:                                               ; preds = %48
  %50 = add nuw nsw i32 %.0, 1
  %51 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !4

52:                                               ; preds = %4
  %53 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %53)
  ret void

UnifiedUnreachableBlock:                          ; preds = %46, %27
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
  call void (i8*, ...) @vafunction(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef 1, double noundef 2.000000e+00, i32 noundef 3, double noundef 4.000000e+00, i32 noundef 5, double noundef 6.000000e+00, i32 noundef 7, double noundef 8.000000e+00, i32 noundef 9, double noundef 1.000000e+01, i32 noundef 11, double noundef 1.200000e+01, i32 noundef 13, double noundef 1.400000e+01, i32 noundef 15, double noundef 1.600000e+01, i32 noundef 17, double noundef 1.800000e+01)
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
