; ModuleID = './20041113-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041113-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@a = dso_local global double 4.000000e+01, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i32 noundef %0, ...) #0 {
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
  %.not = icmp eq i32 %19, 1
  br i1 %.not, label %21, label %20

20:                                               ; preds = %17
  call void @abort() #4
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %17
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %23 = load i32, i32* %22, align 16
  %24 = icmp ult i32 %23, 41
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %27 = load i8*, i8** %26, align 16
  %28 = sext i32 %23 to i64
  %29 = getelementptr i8, i8* %27, i64 %28
  %30 = add i32 %23, 8
  store i32 %30, i32* %22, align 16
  br label %35

31:                                               ; preds = %21
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr i8, i8* %33, i64 8
  store i8* %34, i8** %32, align 8
  br label %35

35:                                               ; preds = %31, %25
  %.in1 = phi i8* [ %29, %25 ], [ %33, %31 ]
  %36 = bitcast i8* %.in1 to i32*
  %37 = load i32, i32* %36, align 4
  %.not2 = icmp eq i32 %37, 2
  br i1 %.not2, label %39, label %38

38:                                               ; preds = %35
  call void @abort() #4
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %35
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %41 = load i32, i32* %40, align 16
  %42 = icmp ult i32 %41, 41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %45 = load i8*, i8** %44, align 16
  %46 = sext i32 %41 to i64
  %47 = getelementptr i8, i8* %45, i64 %46
  %48 = add i32 %41, 8
  store i32 %48, i32* %40, align 16
  br label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr i8, i8* %51, i64 8
  store i8* %52, i8** %50, align 8
  br label %53

53:                                               ; preds = %49, %43
  %.in3 = phi i8* [ %47, %43 ], [ %51, %49 ]
  %54 = bitcast i8* %.in3 to i32*
  %55 = load i32, i32* %54, align 4
  %.not4 = icmp eq i32 %55, 3
  br i1 %.not4, label %57, label %56

56:                                               ; preds = %53
  call void @abort() #4
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %53
  %58 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %59 = load i32, i32* %58, align 16
  %60 = icmp ult i32 %59, 41
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %63 = load i8*, i8** %62, align 16
  %64 = sext i32 %59 to i64
  %65 = getelementptr i8, i8* %63, i64 %64
  %66 = add i32 %59, 8
  store i32 %66, i32* %58, align 16
  br label %71

67:                                               ; preds = %57
  %68 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr i8, i8* %69, i64 8
  store i8* %70, i8** %68, align 8
  br label %71

71:                                               ; preds = %67, %61
  %.in5 = phi i8* [ %65, %61 ], [ %69, %67 ]
  %72 = bitcast i8* %.in5 to i32*
  %73 = load i32, i32* %72, align 4
  %.not6 = icmp eq i32 %73, 4
  br i1 %.not6, label %75, label %74

74:                                               ; preds = %71
  call void @abort() #4
  br label %UnifiedUnreachableBlock

75:                                               ; preds = %71
  ret void

UnifiedUnreachableBlock:                          ; preds = %74, %56, %38, %20
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #3 {
  %3 = load double, double* @a, align 8
  %4 = fdiv double %3, 1.000000e+01
  %5 = fptosi double %4 to i32
  call void (i32, ...) @test(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef %5)
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
