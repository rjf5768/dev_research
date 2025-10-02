; ModuleID = './pr64979.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr64979.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, [1 x %struct.__va_list_tag]* noundef %1) #0 {
  %.not = icmp eq [1 x %struct.__va_list_tag]* %1, null
  br i1 %.not, label %47, label %3

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %25, %3
  %.0 = phi i32 [ 0, %3 ], [ %26, %25 ]
  %5 = icmp ult i32 %.0, 10
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %1, i64 0, i64 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %8, 41
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %1, i64 0, i64 0, i32 3
  %12 = load i8*, i8** %11, align 8
  %13 = sext i32 %8 to i64
  %14 = getelementptr i8, i8* %12, i64 %13
  %15 = add i32 %8, 8
  store i32 %15, i32* %7, align 8
  br label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %1, i64 0, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr i8, i8* %18, i64 8
  store i8* %19, i8** %17, align 8
  br label %20

20:                                               ; preds = %16, %10
  %.in1 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %21 = bitcast i8* %.in1 to i32*
  %22 = load i32, i32* %21, align 4
  %.not2 = icmp eq i32 %.0, %22
  br i1 %.not2, label %24, label %23

23:                                               ; preds = %20
  call void @abort() #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

27:                                               ; preds = %4
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %1, i64 0, i64 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %29, 161
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %1, i64 0, i64 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = sext i32 %29 to i64
  %35 = getelementptr i8, i8* %33, i64 %34
  %36 = add i32 %29, 16
  store i32 %36, i32* %28, align 4
  br label %41

37:                                               ; preds = %27
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %1, i64 0, i64 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr i8, i8* %39, i64 8
  store i8* %40, i8** %38, align 8
  br label %41

41:                                               ; preds = %37, %31
  %.in = phi i8* [ %35, %31 ], [ %39, %37 ]
  %42 = bitcast i8* %.in to double*
  %43 = load double, double* %42, align 8
  %44 = fcmp une double %43, 5.000000e-01
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  call void @abort() #3
  br label %UnifiedUnreachableBlock

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %2
  ret void

UnifiedUnreachableBlock:                          ; preds = %45, %23
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %5 = load i32, i32* %4, align 16
  %6 = icmp ult i32 %5, 41
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %9 = load i8*, i8** %8, align 16
  %10 = sext i32 %5 to i64
  %11 = getelementptr i8, i8* %9, i64 %10
  %12 = add i32 %5, 8
  store i32 %12, i32* %4, align 16
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr i8, i8* %15, i64 8
  store i8* %16, i8** %14, align 8
  br label %17

17:                                               ; preds = %13, %7
  %.in = phi i8* [ %11, %7 ], [ %15, %13 ]
  %18 = bitcast i8* %.in to i32*
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %23

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %21
  %24 = phi [1 x %struct.__va_list_tag]* [ null, %21 ], [ %2, %22 ]
  call void @bar(i32 noundef %0, [1 x %struct.__va_list_tag]* noundef %24)
  %25 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %25)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void (i32, ...) @foo(i32 noundef 100, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, double noundef 5.000000e-01)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
