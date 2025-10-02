; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041214-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041214-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@g.step0_jumps = internal global [3 x i8*] [i8* blockaddress(@g, %22), i8* blockaddress(@g, %46), i8* blockaddress(@g, %65)], align 16
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"asdf\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g(i8* noundef %0, i8* noundef %1, %struct.__va_list_tag* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %96

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %90, %16
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %9, align 1
  %21 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @g.step0_jumps, i64 0, i64 2), align 16
  br label %97

22:                                               ; preds = %97
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  %25 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ule i32 %27, 40
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %25, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr i8, i8* %31, i32 %27
  %33 = bitcast i8* %32 to i32*
  %34 = add i32 %27, 8
  store i32 %34, i32* %26, align 8
  br label %40

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %25, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = getelementptr i8, i8* %37, i32 8
  store i8* %39, i8** %36, align 8
  br label %40

40:                                               ; preds = %35, %29
  %41 = phi i32* [ %33, %29 ], [ %38, %35 ]
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %9, align 1
  %45 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @g.step0_jumps, i64 0, i64 2), align 16
  br label %97

46:                                               ; preds = %97
  %47 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ule i32 %49, 40
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %47, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr i8, i8* %53, i32 %49
  %55 = bitcast i8* %54 to i64*
  %56 = add i32 %49, 8
  store i32 %56, i32* %48, align 8
  br label %62

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %47, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = bitcast i8* %59 to i64*
  %61 = getelementptr i8, i8* %59, i32 8
  store i8* %61, i8** %58, align 8
  br label %62

62:                                               ; preds = %57, %51
  %63 = phi i64* [ %55, %51 ], [ %60, %57 ]
  %64 = load i64, i64* %63, align 8
  br label %87

65:                                               ; preds = %97
  %66 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %67 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ule i32 %68, 40
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %66, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr i8, i8* %72, i32 %68
  %74 = bitcast i8* %73 to i8**
  %75 = add i32 %68, 8
  store i32 %75, i32* %67, align 8
  br label %81

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %66, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = bitcast i8* %78 to i8**
  %80 = getelementptr i8, i8* %78, i32 8
  store i8* %80, i8** %77, align 8
  br label %81

81:                                               ; preds = %76, %70
  %82 = phi i8** [ %74, %70 ], [ %79, %76 ]
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %8, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i8* @strcpy(i8* noundef %84, i8* noundef %85)
  br label %87

87:                                               ; preds = %81, %62
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %7, align 8
  br label %90

90:                                               ; preds = %87
  %91 = load i8*, i8** %7, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %17, label %95, !llvm.loop !4

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %95, %15
  ret i32 0

97:                                               ; preds = %40, %17
  %98 = phi i8* [ %21, %17 ], [ %45, %40 ]
  indirectbr i8* %98, [label %22, label %46, label %65]
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i8* noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %11 = call i32 @g(i8* noundef %8, i8* noundef %9, %struct.__va_list_tag* noundef %10)
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %13 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_end(i8* %13)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  call void (i8*, i8*, ...) @f(i8* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 noundef 0)
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %5 = call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #4
  unreachable

8:                                                ; preds = %0
  ret i32 0
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
