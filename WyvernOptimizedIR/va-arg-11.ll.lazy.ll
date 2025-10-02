; ModuleID = './va-arg-11.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 (i32, ...) @foo(i32 noundef 5, i32 noundef 4, i32 noundef 3, i32 noundef 2, i32 noundef 1, i32 noundef 0)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %3, %2
  unreachable
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal i32 @foo(i32 noundef %0, ...) #1 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  br label %4

4:                                                ; preds = %17, %1
  %.0 = phi i32 [ 0, %1 ], [ %18, %17 ]
  %5 = icmp ult i32 %.0, 4
  br i1 %5, label %6, label %19

6:                                                ; preds = %4
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %8 = load i32, i32* %7, align 16
  %9 = icmp ult i32 %8, 41
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = add i32 %8, 8
  store i32 %11, i32* %7, align 16
  br label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr i8, i8* %14, i64 8
  store i8* %15, i8** %13, align 8
  br label %16

16:                                               ; preds = %12, %10
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

19:                                               ; preds = %4
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %21 = load i32, i32* %20, align 16
  %22 = icmp ult i32 %21, 41
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %25 = load i8*, i8** %24, align 16
  %26 = sext i32 %21 to i64
  %27 = getelementptr i8, i8* %25, i64 %26
  %28 = add i32 %21, 8
  store i32 %28, i32* %20, align 16
  br label %33

29:                                               ; preds = %19
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr i8, i8* %31, i64 8
  store i8* %32, i8** %30, align 8
  br label %33

33:                                               ; preds = %29, %23
  %.in = phi i8* [ %27, %23 ], [ %31, %29 ]
  %34 = bitcast i8* %.in to i32*
  %35 = load i32, i32* %34, align 4
  %36 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %36)
  ret i32 %35
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
