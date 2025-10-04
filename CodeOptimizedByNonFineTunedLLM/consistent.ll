; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/consistent.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/consistent.c\00", align 1
@__PRETTY_FUNCTION__.consistentKey = private unnamed_addr constant [46 x i8] c"Boolean consistentKey(IndexKey *, IndexKey *)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@__PRETTY_FUNCTION__.consistentNonKey = private unnamed_addr constant [41 x i8] c"Boolean consistentNonKey(Char *, Char *)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @consistentKey(%struct.IndexKey* noundef %0, %struct.IndexKey* noundef %1) #0 {
  %3 = alloca %struct.IndexKey*, align 8
  %4 = alloca %struct.IndexKey*, align 8
  %5 = alloca i8, align 1
  store %struct.IndexKey* %0, %struct.IndexKey** %3, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %4, align 8
  %6 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %7 = icmp ne %struct.IndexKey* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.consistentKey, i64 0, i64 0)) #3
  unreachable

10:                                               ; preds = %8
  %11 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %12 = icmp ne %struct.IndexKey* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %15

14:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.consistentKey, i64 0, i64 0)) #3
  unreachable

15:                                               ; preds = %13
  store i8 1, i8* %5, align 1
  %16 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %17 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %17, i32 0, i32 0
  %19 = load float, float* %18, align 4
  %20 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %21 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %21, i32 0, i32 0
  %23 = load float, float* %22, align 4
  %24 = fcmp ogt float %19, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %15
  %26 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %27 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %27, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %31 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %31, i32 0, i32 0
  %33 = load float, float* %32, align 4
  %34 = fcmp ogt float %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25, %15
  store i8 0, i8* %5, align 1
  br label %102

36:                                               ; preds = %25
  %37 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %38 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %38, i32 0, i32 1
  %40 = load float, float* %39, align 4
  %41 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %42 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %42, i32 0, i32 1
  %44 = load float, float* %43, align 4
  %45 = fcmp ogt float %40, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %36
  %47 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %48 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %48, i32 0, i32 1
  %50 = load float, float* %49, align 4
  %51 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %52 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %52, i32 0, i32 1
  %54 = load float, float* %53, align 4
  %55 = fcmp ogt float %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46, %36
  store i8 0, i8* %5, align 1
  br label %101

57:                                               ; preds = %46
  %58 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %59 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %59, i32 0, i32 2
  %61 = load float, float* %60, align 4
  %62 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %63 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %63, i32 0, i32 2
  %65 = load float, float* %64, align 4
  %66 = fcmp ogt float %61, %65
  br i1 %66, label %77, label %67

67:                                               ; preds = %57
  %68 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %69 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %69, i32 0, i32 2
  %71 = load float, float* %70, align 4
  %72 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %73 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %73, i32 0, i32 2
  %75 = load float, float* %74, align 4
  %76 = fcmp ogt float %71, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67, %57
  store i8 0, i8* %5, align 1
  br label %100

78:                                               ; preds = %67
  %79 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %80 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %80, i32 0, i32 3
  %82 = load float, float* %81, align 4
  %83 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %84 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %84, i32 0, i32 3
  %86 = load float, float* %85, align 4
  %87 = fcmp ogt float %82, %86
  br i1 %87, label %98, label %88

88:                                               ; preds = %78
  %89 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %90 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %90, i32 0, i32 3
  %92 = load float, float* %91, align 4
  %93 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %94 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %94, i32 0, i32 3
  %96 = load float, float* %95, align 4
  %97 = fcmp ogt float %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %88, %78
  store i8 0, i8* %5, align 1
  br label %99

99:                                               ; preds = %98, %88
  br label %100

100:                                              ; preds = %99, %77
  br label %101

101:                                              ; preds = %100, %56
  br label %102

102:                                              ; preds = %101, %35
  %103 = load i8, i8* %5, align 1
  ret i8 %103
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @consistentNonKey(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.consistentNonKey, i64 0, i64 0)) #3
  unreachable

10:                                               ; preds = %8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %15

14:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.consistentNonKey, i64 0, i64 0)) #3
  unreachable

15:                                               ; preds = %13
  %16 = load i8*, i8** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strstr(i8* noundef %16, i8* noundef %17) #4
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i8 1, i8* %5, align 1
  br label %22

21:                                               ; preds = %15
  store i8 0, i8* %5, align 1
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i8, i8* %5, align 1
  ret i8 %23
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
