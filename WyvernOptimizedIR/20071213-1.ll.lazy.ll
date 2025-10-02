; ModuleID = './20071213-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071213-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @h(i32 noundef %0, %struct.__va_list_tag* nocapture noundef %1) #0 {
  switch i32 %0, label %75 [
    i32 1, label %3
    i32 5, label %39
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ult i32 %5, 41
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %9 = load i8*, i8** %8, align 8
  %10 = sext i32 %5 to i64
  %11 = getelementptr i8, i8* %9, i64 %10
  %12 = add i32 %5, 8
  store i32 %12, i32* %4, align 8
  br label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr i8, i8* %15, i64 8
  store i8* %16, i8** %14, align 8
  br label %17

17:                                               ; preds = %13, %7
  %.in3 = phi i8* [ %11, %7 ], [ %15, %13 ]
  %18 = bitcast i8* %.in3 to i32*
  %19 = load i32, i32* %18, align 4
  %.not4 = icmp eq i32 %19, 3
  br i1 %.not4, label %20, label %37

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %22, 41
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = sext i32 %22 to i64
  %28 = getelementptr i8, i8* %26, i64 %27
  %29 = add i32 %22, 8
  store i32 %29, i32* %21, align 8
  br label %34

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr i8, i8* %32, i64 8
  store i8* %33, i8** %31, align 8
  br label %34

34:                                               ; preds = %30, %24
  %.in5 = phi i8* [ %28, %24 ], [ %32, %30 ]
  %35 = bitcast i8* %.in5 to i32*
  %36 = load i32, i32* %35, align 4
  %.not6 = icmp eq i32 %36, 4
  br i1 %.not6, label %38, label %37

37:                                               ; preds = %34, %17
  call void @abort() #3
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %34
  br label %76

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %41, 41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = sext i32 %41 to i64
  %47 = getelementptr i8, i8* %45, i64 %46
  %48 = add i32 %41, 8
  store i32 %48, i32* %40, align 8
  br label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr i8, i8* %51, i64 8
  store i8* %52, i8** %50, align 8
  br label %53

53:                                               ; preds = %49, %43
  %.in = phi i8* [ %47, %43 ], [ %51, %49 ]
  %54 = bitcast i8* %.in to i32*
  %55 = load i32, i32* %54, align 4
  %.not = icmp eq i32 %55, 9
  br i1 %.not, label %56, label %73

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %58, 41
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = sext i32 %58 to i64
  %64 = getelementptr i8, i8* %62, i64 %63
  %65 = add i32 %58, 8
  store i32 %65, i32* %57, align 8
  br label %70

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr i8, i8* %68, i64 8
  store i8* %69, i8** %67, align 8
  br label %70

70:                                               ; preds = %66, %60
  %.in1 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %71 = bitcast i8* %.in1 to i32*
  %72 = load i32, i32* %71, align 4
  %.not2 = icmp eq i32 %72, 10
  br i1 %.not2, label %74, label %73

73:                                               ; preds = %70, %53
  call void @abort() #3
  br label %UnifiedUnreachableBlock

74:                                               ; preds = %70
  br label %76

75:                                               ; preds = %2
  call void @abort() #3
  br label %UnifiedUnreachableBlock

76:                                               ; preds = %74, %38
  ret void

UnifiedUnreachableBlock:                          ; preds = %75, %73, %37
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1(i32 noundef %0, i64 noundef %1, ...) #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @h(i32 noundef %0, %struct.__va_list_tag* noundef nonnull %5)
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %6, label %7

6:                                                ; preds = %2
  %.not1 = icmp eq i64 %1, 2
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %6, %2
  call void @abort() #3
  unreachable

8:                                                ; preds = %6
  %9 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %9)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ...) #0 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.va_start(i8* nonnull %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @h(i32 noundef %0, %struct.__va_list_tag* noundef nonnull %7)
  %.not = icmp eq i32 %0, 5
  br i1 %.not, label %8, label %11

8:                                                ; preds = %4
  %.not1 = icmp eq i32 %1, 6
  br i1 %.not1, label %9, label %11

9:                                                ; preds = %8
  %.not2 = icmp eq i32 %2, 7
  br i1 %.not2, label %10, label %11

10:                                               ; preds = %9
  %.not3 = icmp eq i64 %3, 8
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %10, %9, %8, %4
  call void @abort() #3
  unreachable

12:                                               ; preds = %10
  %13 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.va_end(i8* %13)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void (i32, i64, ...) @f1(i32 noundef 1, i64 noundef 2, i32 noundef 3, i32 noundef 4)
  call void (i32, i32, i32, i64, ...) @f2(i32 noundef 5, i32 noundef 6, i32 noundef 7, i64 noundef 8, i32 noundef 9, i32 noundef 10)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
