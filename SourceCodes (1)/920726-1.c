; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920726-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920726-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.spurious = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"i i \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"5 20 \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @first(i8* noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.va_start(i8* %12)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %63, %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %13
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 105
  br i1 %27, label %28, label %54

28:                                               ; preds = %20
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 16
  %32 = icmp ule i32 %31, 40
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %29, i32 0, i32 3
  %35 = load i8*, i8** %34, align 16
  %36 = getelementptr i8, i8* %35, i32 %31
  %37 = bitcast i8* %36 to i32*
  %38 = add i32 %31, 8
  store i32 %38, i32* %30, align 16
  br label %44

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %29, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = getelementptr i8, i8* %41, i32 8
  store i8* %43, i8** %40, align 8
  br label %44

44:                                               ; preds = %39, %33
  %45 = phi i32* [ %37, %33 ], [ %42, %39 ]
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %47, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %48) #5
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @strlen(i8* noundef %50)
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 %51
  store i8* %53, i8** %9, align 8
  br label %62

54:                                               ; preds = %20
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %9, align 8
  store i8 %59, i8* %60, align 1
  br label %62

62:                                               ; preds = %54, %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %13, !llvm.loop !4

66:                                               ; preds = %13
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %68 = bitcast %struct.__va_list_tag* %67 to i8*
  call void @llvm.va_end(i8* %68)
  %69 = load i8*, i8** %9, align 8
  store i8 0, i8* %69, align 1
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @second(i8* noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca %struct.spurious, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.va_start(i8* %12)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %63, %2
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %13
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 105
  br i1 %27, label %28, label %54

28:                                               ; preds = %20
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 16
  %32 = icmp ule i32 %31, 40
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %29, i32 0, i32 3
  %35 = load i8*, i8** %34, align 16
  %36 = getelementptr i8, i8* %35, i32 %31
  %37 = bitcast i8* %36 to i32*
  %38 = add i32 %31, 8
  store i32 %38, i32* %30, align 16
  br label %44

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %29, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = getelementptr i8, i8* %41, i32 8
  store i8* %43, i8** %40, align 8
  br label %44

44:                                               ; preds = %39, %33
  %45 = phi i32* [ %37, %33 ], [ %42, %39 ]
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %47, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %48) #5
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @strlen(i8* noundef %50)
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 %51
  store i8* %53, i8** %9, align 8
  br label %62

54:                                               ; preds = %20
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %9, align 8
  store i8 %59, i8* %60, align 1
  br label %62

62:                                               ; preds = %54, %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %13, !llvm.loop !6

66:                                               ; preds = %13
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %68 = bitcast %struct.__va_list_tag* %67 to i8*
  call void @llvm.va_end(i8* %68)
  %69 = load i8*, i8** %9, align 8
  store i8 0, i8* %69, align 1
  %70 = getelementptr inbounds %struct.spurious, %struct.spurious* %3, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca %struct.spurious, align 4
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %6 = call i32 (i8*, i8*, ...) @first(i8* noundef %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5, i32 noundef 20)
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %8 = call i32 (i8*, i8*, ...) @second(i8* noundef %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5, i32 noundef 20)
  %9 = getelementptr inbounds %struct.spurious, %struct.spurious* %4, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %11 = call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %0
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %15 = call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %0
  call void @abort() #6
  unreachable

18:                                               ; preds = %13
  call void @exit(i32 noundef 0) #6
  unreachable
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
