; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr64979.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr64979.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, [1 x %struct.__va_list_tag]* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.__va_list_tag]*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store [1 x %struct.__va_list_tag]* %1, [1 x %struct.__va_list_tag]** %4, align 8
  %6 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %4, align 8
  %7 = icmp ne [1 x %struct.__va_list_tag]* %6, null
  br i1 %7, label %8, label %62

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %36, %8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %4, align 8
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i64 0, i64 0
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ule i32 %17, 40
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr i8, i8* %21, i32 %17
  %23 = bitcast i8* %22 to i32*
  %24 = add i32 %17, 8
  store i32 %24, i32* %16, align 8
  br label %30

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = getelementptr i8, i8* %27, i32 8
  store i8* %29, i8** %26, align 8
  br label %30

30:                                               ; preds = %25, %19
  %31 = phi i32* [ %23, %19 ], [ %28, %25 ]
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %13, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void @abort() #3
  unreachable

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %9, !llvm.loop !4

39:                                               ; preds = %9
  %40 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %4, align 8
  %41 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %40, i64 0, i64 0
  %42 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ule i32 %43, 160
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %41, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr i8, i8* %47, i32 %43
  %49 = bitcast i8* %48 to double*
  %50 = add i32 %43, 16
  store i32 %50, i32* %42, align 4
  br label %56

51:                                               ; preds = %39
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %41, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = bitcast i8* %53 to double*
  %55 = getelementptr i8, i8* %53, i32 8
  store i8* %55, i8** %52, align 8
  br label %56

56:                                               ; preds = %51, %45
  %57 = phi double* [ %49, %45 ], [ %54, %51 ]
  %58 = load double, double* %57, align 8
  %59 = fcmp une double %58, 5.000000e-01
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  call void @abort() #3
  unreachable

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %2
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 16
  %10 = icmp ule i32 %9, 40
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 3
  %13 = load i8*, i8** %12, align 16
  %14 = getelementptr i8, i8* %13, i32 %9
  %15 = bitcast i8* %14 to i32*
  %16 = add i32 %9, 8
  store i32 %16, i32* %8, align 16
  br label %22

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = getelementptr i8, i8* %19, i32 8
  store i8* %21, i8** %18, align 8
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i32* [ %15, %11 ], [ %20, %17 ]
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %30

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %28
  %31 = phi [1 x %struct.__va_list_tag]* [ null, %28 ], [ %3, %29 ]
  call void @bar(i32 noundef %25, [1 x %struct.__va_list_tag]* noundef %31)
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %33 = bitcast %struct.__va_list_tag* %32 to i8*
  call void @llvm.va_end(i8* %33)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (i32, ...) @foo(i32 noundef 100, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, double noundef 5.000000e-01)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
