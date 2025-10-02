; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991216-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991216-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  store i32 2, i32* %4, align 4
  br label %7

7:                                                ; preds = %34, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 16
  %15 = icmp ule i32 %14, 40
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 3
  %18 = load i8*, i8** %17, align 16
  %19 = getelementptr i8, i8* %18, i32 %14
  %20 = bitcast i8* %19 to i32*
  %21 = add i32 %14, 8
  store i32 %21, i32* %13, align 16
  br label %27

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = getelementptr i8, i8* %24, i32 8
  store i8* %26, i8** %23, align 8
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi i32* [ %20, %16 ], [ %25, %22 ]
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  call void @abort() #3
  unreachable

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %7, !llvm.loop !4

37:                                               ; preds = %7
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 16
  %41 = icmp ule i32 %40, 40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 3
  %44 = load i8*, i8** %43, align 16
  %45 = getelementptr i8, i8* %44, i32 %40
  %46 = bitcast i8* %45 to i64*
  %47 = add i32 %40, 8
  store i32 %47, i32* %39, align 16
  br label %53

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = bitcast i8* %50 to i64*
  %52 = getelementptr i8, i8* %50, i32 8
  store i8* %52, i8** %49, align 8
  br label %53

53:                                               ; preds = %48, %42
  %54 = phi i64* [ %46, %42 ], [ %51, %48 ]
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 81985529216486895
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  call void @abort() #3
  unreachable

58:                                               ; preds = %53
  %59 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 16
  %62 = icmp ule i32 %61, 40
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %59, i32 0, i32 3
  %65 = load i8*, i8** %64, align 16
  %66 = getelementptr i8, i8* %65, i32 %61
  %67 = bitcast i8* %66 to i32*
  %68 = add i32 %61, 8
  store i32 %68, i32* %60, align 16
  br label %74

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %59, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = getelementptr i8, i8* %71, i32 8
  store i8* %73, i8** %70, align 8
  br label %74

74:                                               ; preds = %69, %63
  %75 = phi i32* [ %67, %63 ], [ %72, %69 ]
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 85
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  call void @abort() #3
  unreachable

79:                                               ; preds = %74
  %80 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %81 = bitcast %struct.__va_list_tag* %80 to i8*
  call void @llvm.va_end(i8* %81)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (i32, ...) @test(i32 noundef 1, i64 noundef 81985529216486895, i32 noundef 85)
  call void (i32, ...) @test(i32 noundef 2, i32 noundef 2, i64 noundef 81985529216486895, i32 noundef 85)
  call void (i32, ...) @test(i32 noundef 3, i32 noundef 2, i32 noundef 3, i64 noundef 81985529216486895, i32 noundef 85)
  call void (i32, ...) @test(i32 noundef 4, i32 noundef 2, i32 noundef 3, i32 noundef 4, i64 noundef 81985529216486895, i32 noundef 85)
  call void (i32, ...) @test(i32 noundef 5, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i64 noundef 81985529216486895, i32 noundef 85)
  call void (i32, ...) @test(i32 noundef 6, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i64 noundef 81985529216486895, i32 noundef 85)
  call void (i32, ...) @test(i32 noundef 7, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i64 noundef 81985529216486895, i32 noundef 85)
  call void (i32, ...) @test(i32 noundef 8, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i64 noundef 81985529216486895, i32 noundef 85)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
