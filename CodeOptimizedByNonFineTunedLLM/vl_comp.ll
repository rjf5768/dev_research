; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/vl_comp.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/vl_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vl_comp(%struct.vlink* noundef %0, %struct.vlink* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlink*, align 8
  %5 = alloca %struct.vlink*, align 8
  %6 = alloca i32, align 4
  store %struct.vlink* %0, %struct.vlink** %4, align 8
  store %struct.vlink* %1, %struct.vlink** %5, align 8
  %7 = load %struct.vlink*, %struct.vlink** %4, align 8
  %8 = getelementptr inbounds %struct.vlink, %struct.vlink* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.vlink*, %struct.vlink** %5, align 8
  %13 = getelementptr inbounds %struct.vlink, %struct.vlink* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %102

17:                                               ; preds = %11, %2
  %18 = load %struct.vlink*, %struct.vlink** %4, align 8
  %19 = getelementptr inbounds %struct.vlink, %struct.vlink* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.vlink*, %struct.vlink** %5, align 8
  %24 = getelementptr inbounds %struct.vlink, %struct.vlink* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %102

28:                                               ; preds = %22, %17
  %29 = load %struct.vlink*, %struct.vlink** %4, align 8
  %30 = getelementptr inbounds %struct.vlink, %struct.vlink* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %28
  %34 = load %struct.vlink*, %struct.vlink** %5, align 8
  %35 = getelementptr inbounds %struct.vlink, %struct.vlink* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  %39 = load %struct.vlink*, %struct.vlink** %4, align 8
  %40 = getelementptr inbounds %struct.vlink, %struct.vlink* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.vlink*, %struct.vlink** %5, align 8
  %47 = getelementptr inbounds %struct.vlink, %struct.vlink* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45, %38
  %53 = load %struct.vlink*, %struct.vlink** %4, align 8
  %54 = getelementptr inbounds %struct.vlink, %struct.vlink* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.vlink*, %struct.vlink** %5, align 8
  %57 = getelementptr inbounds %struct.vlink, %struct.vlink* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcmp(i8* noundef %55, i8* noundef %58)
  store i32 %59, i32* %3, align 4
  br label %102

60:                                               ; preds = %45, %33, %28
  %61 = load %struct.vlink*, %struct.vlink** %4, align 8
  %62 = getelementptr inbounds %struct.vlink, %struct.vlink* %61, i32 0, i32 7
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.vlink*, %struct.vlink** %5, align 8
  %65 = getelementptr inbounds %struct.vlink, %struct.vlink* %64, i32 0, i32 7
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strcmp(i8* noundef %63, i8* noundef %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %60
  %71 = load %struct.vlink*, %struct.vlink** %4, align 8
  %72 = getelementptr inbounds %struct.vlink, %struct.vlink* %71, i32 0, i32 8
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.vlink*, %struct.vlink** %5, align 8
  %75 = getelementptr inbounds %struct.vlink, %struct.vlink* %74, i32 0, i32 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcmp(i8* noundef %73, i8* noundef %76)
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %70, %60
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %78
  %82 = load %struct.vlink*, %struct.vlink** %4, align 8
  %83 = getelementptr inbounds %struct.vlink, %struct.vlink* %82, i32 0, i32 9
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.vlink*, %struct.vlink** %5, align 8
  %86 = getelementptr inbounds %struct.vlink, %struct.vlink* %85, i32 0, i32 9
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strcmp(i8* noundef %84, i8* noundef %87)
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %81, %78
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %89
  %93 = load %struct.vlink*, %struct.vlink** %4, align 8
  %94 = getelementptr inbounds %struct.vlink, %struct.vlink* %93, i32 0, i32 10
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.vlink*, %struct.vlink** %5, align 8
  %97 = getelementptr inbounds %struct.vlink, %struct.vlink* %96, i32 0, i32 10
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strcmp(i8* noundef %95, i8* noundef %98)
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %92, %89
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %52, %27, %16
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vl_equal(%struct.vlink* noundef %0, %struct.vlink* noundef %1) #0 {
  %3 = alloca %struct.vlink*, align 8
  %4 = alloca %struct.vlink*, align 8
  store %struct.vlink* %0, %struct.vlink** %3, align 8
  store %struct.vlink* %1, %struct.vlink** %4, align 8
  %5 = load %struct.vlink*, %struct.vlink** %3, align 8
  %6 = getelementptr inbounds %struct.vlink, %struct.vlink* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.vlink*, %struct.vlink** %4, align 8
  %9 = getelementptr inbounds %struct.vlink, %struct.vlink* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @strcmp(i8* noundef %7, i8* noundef %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %84

13:                                               ; preds = %2
  %14 = load %struct.vlink*, %struct.vlink** %3, align 8
  %15 = getelementptr inbounds %struct.vlink, %struct.vlink* %14, i32 0, i32 2
  %16 = load i8, i8* %15, align 8
  %17 = sext i8 %16 to i32
  %18 = load %struct.vlink*, %struct.vlink** %4, align 8
  %19 = getelementptr inbounds %struct.vlink, %struct.vlink* %18, i32 0, i32 2
  %20 = load i8, i8* %19, align 8
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %84

23:                                               ; preds = %13
  %24 = load %struct.vlink*, %struct.vlink** %3, align 8
  %25 = getelementptr inbounds %struct.vlink, %struct.vlink* %24, i32 0, i32 4
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.vlink*, %struct.vlink** %4, align 8
  %28 = getelementptr inbounds %struct.vlink, %struct.vlink* %27, i32 0, i32 4
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* noundef %26, i8* noundef %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %84

32:                                               ; preds = %23
  %33 = load %struct.vlink*, %struct.vlink** %3, align 8
  %34 = getelementptr inbounds %struct.vlink, %struct.vlink* %33, i32 0, i32 7
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.vlink*, %struct.vlink** %4, align 8
  %37 = getelementptr inbounds %struct.vlink, %struct.vlink* %36, i32 0, i32 7
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcmp(i8* noundef %35, i8* noundef %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %84

41:                                               ; preds = %32
  %42 = load %struct.vlink*, %struct.vlink** %3, align 8
  %43 = getelementptr inbounds %struct.vlink, %struct.vlink* %42, i32 0, i32 8
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.vlink*, %struct.vlink** %4, align 8
  %46 = getelementptr inbounds %struct.vlink, %struct.vlink* %45, i32 0, i32 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strcmp(i8* noundef %44, i8* noundef %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %84

50:                                               ; preds = %41
  %51 = load %struct.vlink*, %struct.vlink** %3, align 8
  %52 = getelementptr inbounds %struct.vlink, %struct.vlink* %51, i32 0, i32 9
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.vlink*, %struct.vlink** %4, align 8
  %55 = getelementptr inbounds %struct.vlink, %struct.vlink* %54, i32 0, i32 9
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* noundef %53, i8* noundef %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %50
  %60 = load %struct.vlink*, %struct.vlink** %3, align 8
  %61 = getelementptr inbounds %struct.vlink, %struct.vlink* %60, i32 0, i32 10
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.vlink*, %struct.vlink** %4, align 8
  %64 = getelementptr inbounds %struct.vlink, %struct.vlink* %63, i32 0, i32 10
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcmp(i8* noundef %62, i8* noundef %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %59
  %69 = load %struct.vlink*, %struct.vlink** %3, align 8
  %70 = getelementptr inbounds %struct.vlink, %struct.vlink* %69, i32 0, i32 11
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.vlink*, %struct.vlink** %4, align 8
  %73 = getelementptr inbounds %struct.vlink, %struct.vlink* %72, i32 0, i32 11
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = load %struct.vlink*, %struct.vlink** %3, align 8
  %78 = getelementptr inbounds %struct.vlink, %struct.vlink* %77, i32 0, i32 12
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.vlink*, %struct.vlink** %4, align 8
  %81 = getelementptr inbounds %struct.vlink, %struct.vlink* %80, i32 0, i32 12
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br label %84

84:                                               ; preds = %76, %68, %59, %50, %41, %32, %23, %13, %2
  %85 = phi i1 [ false, %68 ], [ false, %59 ], [ false, %50 ], [ false, %41 ], [ false, %32 ], [ false, %23 ], [ false, %13 ], [ false, %2 ], [ %83, %76 ]
  %86 = zext i1 %85 to i32
  ret i32 %86
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
