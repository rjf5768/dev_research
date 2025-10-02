; ModuleID = './va-arg-4.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.big = type { [32 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@main.x = internal global %struct.big { [32 x i8] c"abc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(%struct.big* nocapture noundef readonly byval(%struct.big) align 8 %0, i8* nocapture noundef readnone %1, ...) #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = getelementptr inbounds %struct.big, %struct.big* %0, i64 0, i32 0, i64 0
  %5 = load i8, i8* %4, align 8
  %.not = icmp eq i8 %5, 97
  br i1 %.not, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.big, %struct.big* %0, i64 0, i32 0, i64 1
  %8 = load i8, i8* %7, align 1
  %.not1 = icmp eq i8 %8, 98
  br i1 %.not1, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.big, %struct.big* %0, i64 0, i32 0, i64 2
  %11 = load i8, i8* %10, align 2
  %.not2 = icmp eq i8 %11, 99
  br i1 %.not2, label %13, label %12

12:                                               ; preds = %9, %6, %2
  call void @abort() #4
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %9
  %14 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %14)
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %16 = load i32, i32* %15, align 16
  %17 = icmp ult i32 %16, 41
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %20 = load i8*, i8** %19, align 16
  %21 = sext i32 %16 to i64
  %22 = getelementptr i8, i8* %20, i64 %21
  %23 = add i32 %16, 8
  store i32 %23, i32* %15, align 16
  br label %28

24:                                               ; preds = %13
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr i8, i8* %26, i64 8
  store i8* %27, i8** %25, align 8
  br label %28

28:                                               ; preds = %24, %18
  %.in = phi i8* [ %22, %18 ], [ %26, %24 ]
  %29 = bitcast i8* %.in to i32*
  %30 = load i32, i32* %29, align 4
  %.not3 = icmp eq i32 %30, 42
  br i1 %.not3, label %32, label %31

31:                                               ; preds = %28
  call void @abort() #4
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %28
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %34 = load i32, i32* %33, align 16
  %35 = icmp ult i32 %34, 41
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %38 = load i8*, i8** %37, align 16
  %39 = sext i32 %34 to i64
  %40 = getelementptr i8, i8* %38, i64 %39
  %41 = add i32 %34, 8
  store i32 %41, i32* %33, align 16
  br label %46

42:                                               ; preds = %32
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr i8, i8* %44, i64 8
  store i8* %45, i8** %43, align 8
  br label %46

46:                                               ; preds = %42, %36
  %.in4 = phi i8* [ %40, %36 ], [ %44, %42 ]
  %47 = bitcast i8* %.in4 to i32*
  %48 = load i32, i32* %47, align 4
  %.not5 = icmp eq i32 %48, 120
  br i1 %.not5, label %50, label %49

49:                                               ; preds = %46
  call void @abort() #4
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %46
  %51 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %52 = load i32, i32* %51, align 16
  %53 = icmp ult i32 %52, 41
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %56 = load i8*, i8** %55, align 16
  %57 = sext i32 %52 to i64
  %58 = getelementptr i8, i8* %56, i64 %57
  %59 = add i32 %52, 8
  store i32 %59, i32* %51, align 16
  br label %64

60:                                               ; preds = %50
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr i8, i8* %62, i64 8
  store i8* %63, i8** %61, align 8
  br label %64

64:                                               ; preds = %60, %54
  %.in6 = phi i8* [ %58, %54 ], [ %62, %60 ]
  %65 = bitcast i8* %.in6 to i32*
  %66 = load i32, i32* %65, align 4
  %.not7 = icmp eq i32 %66, 0
  br i1 %.not7, label %68, label %67

67:                                               ; preds = %64
  call void @abort() #4
  br label %UnifiedUnreachableBlock

68:                                               ; preds = %64
  %69 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %69)
  ret void

UnifiedUnreachableBlock:                          ; preds = %67, %49, %31, %12
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  call void (%struct.big*, i8*, ...) @f(%struct.big* noundef nonnull byval(%struct.big) align 8 @main.x, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef 42, i32 noundef 120, i32 noundef 0)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
