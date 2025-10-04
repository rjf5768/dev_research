; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-4.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.big = type { [32 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@main.x = internal global %struct.big { [32 x i8] c"abc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(%struct.big* noundef byval(%struct.big) align 8 %0, i8* noundef %1, ...) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %1, i8** %3, align 8
  %5 = getelementptr inbounds %struct.big, %struct.big* %0, i32 0, i32 0
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %7 = load i8, i8* %6, align 8
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 97
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.big, %struct.big* %0, i32 0, i32 0
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 1
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 98
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.big, %struct.big* %0, i32 0, i32 0
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 2
  %19 = load i8, i8* %18, align 2
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 99
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %10, %2
  call void @abort() #3
  unreachable

23:                                               ; preds = %16
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %25 = bitcast %struct.__va_list_tag* %24 to i8*
  call void @llvm.va_start(i8* %25)
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 16
  %29 = icmp ule i32 %28, 40
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 3
  %32 = load i8*, i8** %31, align 16
  %33 = getelementptr i8, i8* %32, i32 %28
  %34 = bitcast i8* %33 to i32*
  %35 = add i32 %28, 8
  store i32 %35, i32* %27, align 16
  br label %41

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = getelementptr i8, i8* %38, i32 8
  store i8* %40, i8** %37, align 8
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi i32* [ %34, %30 ], [ %39, %36 ]
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 42
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  call void @abort() #3
  unreachable

46:                                               ; preds = %41
  %47 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 16
  %50 = icmp ule i32 %49, 40
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %47, i32 0, i32 3
  %53 = load i8*, i8** %52, align 16
  %54 = getelementptr i8, i8* %53, i32 %49
  %55 = bitcast i8* %54 to i32*
  %56 = add i32 %49, 8
  store i32 %56, i32* %48, align 16
  br label %62

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %47, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = getelementptr i8, i8* %59, i32 8
  store i8* %61, i8** %58, align 8
  br label %62

62:                                               ; preds = %57, %51
  %63 = phi i32* [ %55, %51 ], [ %60, %57 ]
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 120
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  call void @abort() #3
  unreachable

67:                                               ; preds = %62
  %68 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %69 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 16
  %71 = icmp ule i32 %70, 40
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %68, i32 0, i32 3
  %74 = load i8*, i8** %73, align 16
  %75 = getelementptr i8, i8* %74, i32 %70
  %76 = bitcast i8* %75 to i32*
  %77 = add i32 %70, 8
  store i32 %77, i32* %69, align 16
  br label %83

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %68, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = getelementptr i8, i8* %80, i32 8
  store i8* %82, i8** %79, align 8
  br label %83

83:                                               ; preds = %78, %72
  %84 = phi i32* [ %76, %72 ], [ %81, %78 ]
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  call void @abort() #3
  unreachable

88:                                               ; preds = %83
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %90 = bitcast %struct.__va_list_tag* %89 to i8*
  call void @llvm.va_end(i8* %90)
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (%struct.big*, i8*, ...) @f(%struct.big* noundef byval(%struct.big) align 8 @main.x, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef 42, i32 noundef 120, i32 noundef 0)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
