; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getFloat.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getFloat.c\00", align 1
@__PRETTY_FUNCTION__.getFloat = private unnamed_addr constant [30 x i8] c"Int getFloat(FILE *, Float *)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"value\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getFloat(%struct._IO_FILE* noundef %0, float* noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store float* %1, float** %4, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = icmp ne %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.getFloat, i64 0, i64 0)) #6
  unreachable

12:                                               ; preds = %10
  %13 = load float*, float** %4, align 8
  %14 = icmp ne float* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.getFloat, i64 0, i64 0)) #6
  unreachable

17:                                               ; preds = %15
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %19 = call i8* @getString(%struct._IO_FILE* noundef %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %59

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = call double @strtod(i8* noundef %23, i8** noundef %6) #7
  %25 = fptrunc double %24 to float
  %26 = load float*, float** %4, align 8
  store float %25, float* %26, align 4
  %27 = load float*, float** %4, align 8
  %28 = load float, float* %27, align 4
  %29 = fpext float %28 to double
  %30 = fcmp oeq double %29, 0.000000e+00
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strlen(i8* noundef %32) #8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = call i32* @__errno_location() #9
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 34
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load float*, float** %4, align 8
  store float 0xC7EFFFFFE0000000, float* %40, align 4
  store i64 3, i64* %7, align 8
  br label %58

41:                                               ; preds = %35, %31, %22
  %42 = load float*, float** %4, align 8
  %43 = load float, float* %42, align 4
  %44 = fpext float %43 to double
  %45 = fcmp olt double %44, 0xC7EFFFFFE091FF3D
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load float*, float** %4, align 8
  store float 0xC7EFFFFFE0000000, float* %47, align 4
  store i64 2, i64* %7, align 8
  br label %57

48:                                               ; preds = %41
  %49 = load float*, float** %4, align 8
  %50 = load float, float* %49, align 4
  %51 = fpext float %50 to double
  %52 = fcmp ogt double %51, 0x47EFFFFFE091FF3D
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load float*, float** %4, align 8
  store float 0x47EFFFFFE0000000, float* %54, align 4
  store i64 2, i64* %7, align 8
  br label %56

55:                                               ; preds = %48
  store i64 0, i64* %7, align 8
  br label %56

56:                                               ; preds = %55, %53
  br label %57

57:                                               ; preds = %56, %46
  br label %58

58:                                               ; preds = %57, %39
  br label %61

59:                                               ; preds = %17
  %60 = load float*, float** %4, align 8
  store float 0xC7EFFFFFE0000000, float* %60, align 4
  store i64 1, i64* %7, align 8
  br label %61

61:                                               ; preds = %59, %58
  %62 = load i64, i64* %7, align 8
  ret i64 %62
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i8* @getString(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local double @strtod(i8* noundef, i8** noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
