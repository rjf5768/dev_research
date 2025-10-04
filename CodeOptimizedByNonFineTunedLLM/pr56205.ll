; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56205.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56205.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@c = dso_local global [128 x i8] zeroinitializer, align 16
@b = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"baz\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@a = dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s %d %s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bar\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4(i32 noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @c, i64 0, i64 0), align 16
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @b, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @b, align 4
  br label %17

17:                                               ; preds = %14, %10, %2
  %18 = load i32, i32* %3, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @f3(i32 noundef %18, i8* noundef %19, %struct.__va_list_tag* noundef %20)
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %22 = bitcast %struct.__va_list_tag* %21 to i8*
  call void @llvm.va_end(i8* %22)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @f3(i32 noundef %0, i8* noundef %1, %struct.__va_list_tag* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %11 = load i32, i32* @a, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @a, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi i1 [ false, %3 ], [ %19, %15 ]
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  call void (i8*, ...) @f1(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %10, i32 noundef %12, i8* noundef %23)
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  call void @f2(i8* noundef %32, %struct.__va_list_tag* noundef %33)
  br label %34

34:                                               ; preds = %31, %26, %20
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !4
  call void (i32, i8*, ...) @f4(i32 noundef 0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), double noundef 1.200000e+01, i32 noundef 26)
  %2 = load i32, i32* @a, align 4
  %3 = icmp ne i32 %2, 1
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @b, align 4
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  call void @abort() #5
  unreachable

8:                                                ; preds = %4
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define internal void @f1(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !5
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @abort() #5
  unreachable

8:                                                ; preds = %1
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_start(i8* %10)
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 16
  %14 = icmp ule i32 %13, 40
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %11, i32 0, i32 3
  %17 = load i8*, i8** %16, align 16
  %18 = getelementptr i8, i8* %17, i32 %13
  %19 = bitcast i8* %18 to i8**
  %20 = add i32 %13, 8
  store i32 %20, i32* %12, align 16
  br label %26

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %11, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to i8**
  %25 = getelementptr i8, i8* %23, i32 8
  store i8* %25, i8** %22, align 8
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi i8** [ %19, %15 ], [ %24, %21 ]
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %72, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 16
  %35 = icmp ule i32 %34, 40
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %32, i32 0, i32 3
  %38 = load i8*, i8** %37, align 16
  %39 = getelementptr i8, i8* %38, i32 %34
  %40 = bitcast i8* %39 to i32*
  %41 = add i32 %34, 8
  store i32 %41, i32* %33, align 16
  br label %47

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %32, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = getelementptr i8, i8* %44, i32 8
  store i8* %46, i8** %43, align 8
  br label %47

47:                                               ; preds = %42, %36
  %48 = phi i32* [ %40, %36 ], [ %45, %42 ]
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %72, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 16
  %55 = icmp ule i32 %54, 40
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %52, i32 0, i32 3
  %58 = load i8*, i8** %57, align 16
  %59 = getelementptr i8, i8* %58, i32 %54
  %60 = bitcast i8* %59 to i8**
  %61 = add i32 %54, 8
  store i32 %61, i32* %53, align 16
  br label %67

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %52, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = bitcast i8* %64 to i8**
  %66 = getelementptr i8, i8* %64, i32 8
  store i8* %66, i8** %63, align 8
  br label %67

67:                                               ; preds = %62, %56
  %68 = phi i8** [ %60, %56 ], [ %65, %62 ]
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strcmp(i8* noundef %69, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67, %47, %26
  call void @abort() #5
  unreachable

73:                                               ; preds = %67
  %74 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %75 = bitcast %struct.__va_list_tag* %74 to i8*
  call void @llvm.va_end(i8* %75)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @f2(i8* noundef %0, %struct.__va_list_tag* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.__va_list_tag*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.__va_list_tag* %1, %struct.__va_list_tag** %4, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !6
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %69, label %8

8:                                                ; preds = %2
  %9 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ule i32 %11, 40
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %9, i32 0, i32 3
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr i8, i8* %15, i32 %11
  %17 = bitcast i8* %16 to i8**
  %18 = add i32 %11, 8
  store i32 %18, i32* %10, align 8
  br label %24

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %9, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to i8**
  %23 = getelementptr i8, i8* %21, i32 8
  store i8* %23, i8** %20, align 8
  br label %24

24:                                               ; preds = %19, %13
  %25 = phi i8** [ %17, %13 ], [ %22, %19 ]
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strcmp(i8* noundef %26, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %69, label %29

29:                                               ; preds = %24
  %30 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ule i32 %32, 160
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %30, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr i8, i8* %36, i32 %32
  %38 = bitcast i8* %37 to double*
  %39 = add i32 %32, 16
  store i32 %39, i32* %31, align 4
  br label %45

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %30, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = bitcast i8* %42 to double*
  %44 = getelementptr i8, i8* %42, i32 8
  store i8* %44, i8** %41, align 8
  br label %45

45:                                               ; preds = %40, %34
  %46 = phi double* [ %38, %34 ], [ %43, %40 ]
  %47 = load double, double* %46, align 8
  %48 = fcmp une double %47, 1.200000e+01
  br i1 %48, label %69, label %49

49:                                               ; preds = %45
  %50 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ule i32 %52, 40
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr i8, i8* %56, i32 %52
  %58 = bitcast i8* %57 to i32*
  %59 = add i32 %52, 8
  store i32 %59, i32* %51, align 8
  br label %65

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = getelementptr i8, i8* %62, i32 8
  store i8* %64, i8** %61, align 8
  br label %65

65:                                               ; preds = %60, %54
  %66 = phi i32* [ %58, %54 ], [ %63, %60 ]
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 26
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %45, %24, %2
  call void @abort() #5
  unreachable

70:                                               ; preds = %65
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 1173}
!5 = !{i64 186}
!6 = !{i64 600}
