; ModuleID = './991216-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991216-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  br label %4

4:                                                ; preds = %24, %1
  %.0 = phi i32 [ 2, %1 ], [ %25, %24 ]
  %.not = icmp sgt i32 %.0, %0
  br i1 %.not, label %26, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %11 = load i8*, i8** %10, align 16
  %12 = sext i32 %7 to i64
  %13 = getelementptr i8, i8* %11, i64 %12
  %14 = add i32 %7, 8
  store i32 %14, i32* %6, align 16
  br label %19

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr i8, i8* %17, i64 8
  store i8* %18, i8** %16, align 8
  br label %19

19:                                               ; preds = %15, %9
  %.in4 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %20 = bitcast i8* %.in4 to i32*
  %21 = load i32, i32* %20, align 4
  %.not5 = icmp eq i32 %21, %.0
  br i1 %.not5, label %23, label %22

22:                                               ; preds = %19
  call void @abort() #4
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

26:                                               ; preds = %4
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %28 = load i32, i32* %27, align 16
  %29 = icmp ult i32 %28, 41
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %32 = load i8*, i8** %31, align 16
  %33 = sext i32 %28 to i64
  %34 = getelementptr i8, i8* %32, i64 %33
  %35 = add i32 %28, 8
  store i32 %35, i32* %27, align 16
  br label %40

36:                                               ; preds = %26
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr i8, i8* %38, i64 8
  store i8* %39, i8** %37, align 8
  br label %40

40:                                               ; preds = %36, %30
  %.in = phi i8* [ %34, %30 ], [ %38, %36 ]
  %41 = bitcast i8* %.in to i64*
  %42 = load i64, i64* %41, align 8
  %.not1 = icmp eq i64 %42, 81985529216486895
  br i1 %.not1, label %44, label %43

43:                                               ; preds = %40
  call void @abort() #4
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %40
  %45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %46 = load i32, i32* %45, align 16
  %47 = icmp ult i32 %46, 41
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %50 = load i8*, i8** %49, align 16
  %51 = sext i32 %46 to i64
  %52 = getelementptr i8, i8* %50, i64 %51
  %53 = add i32 %46, 8
  store i32 %53, i32* %45, align 16
  br label %58

54:                                               ; preds = %44
  %55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr i8, i8* %56, i64 8
  store i8* %57, i8** %55, align 8
  br label %58

58:                                               ; preds = %54, %48
  %.in2 = phi i8* [ %52, %48 ], [ %56, %54 ]
  %59 = bitcast i8* %.in2 to i32*
  %60 = load i32, i32* %59, align 4
  %.not3 = icmp eq i32 %60, 85
  br i1 %.not3, label %62, label %61

61:                                               ; preds = %58
  call void @abort() #4
  br label %UnifiedUnreachableBlock

62:                                               ; preds = %58
  %63 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %63)
  ret void

UnifiedUnreachableBlock:                          ; preds = %61, %43, %22
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
  call void (i32, ...) @test(i32 noundef 1, i64 noundef 81985529216486895, i32 noundef 85)
  call void (i32, ...) @test(i32 noundef 2, i32 noundef 2, i64 noundef 81985529216486895, i32 noundef 85)
  call void (i32, ...) @test(i32 noundef 3, i32 noundef 2, i32 noundef 3, i64 noundef 81985529216486895, i32 noundef 85)
  call void (i32, ...) @test(i32 noundef 4, i32 noundef 2, i32 noundef 3, i32 noundef 4, i64 noundef 81985529216486895, i32 noundef 85)
  call void (i32, ...) @test(i32 noundef 5, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i64 noundef 81985529216486895, i32 noundef 85)
  call void (i32, ...) @test(i32 noundef 6, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i64 noundef 81985529216486895, i32 noundef 85)
  call void (i32, ...) @test(i32 noundef 7, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i64 noundef 81985529216486895, i32 noundef 85)
  call void (i32, ...) @test(i32 noundef 8, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i64 noundef 81985529216486895, i32 noundef 85)
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
