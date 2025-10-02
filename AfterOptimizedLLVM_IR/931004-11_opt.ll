; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-11.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, i24 %1, i24 %2, i24 %3, i64 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tiny, align 1
  %8 = alloca i24, align 4
  %9 = alloca %struct.tiny, align 1
  %10 = alloca i24, align 4
  %11 = alloca %struct.tiny, align 1
  %12 = alloca i24, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i24 %1, i24* %8, align 4
  %15 = bitcast %struct.tiny* %7 to i8*
  %16 = bitcast i24* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 4 %16, i64 3, i1 false)
  store i24 %2, i24* %10, align 4
  %17 = bitcast %struct.tiny* %9 to i8*
  %18 = bitcast i24* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 4 %18, i64 3, i1 false)
  store i24 %3, i24* %12, align 4
  %19 = bitcast %struct.tiny* %11 to i8*
  %20 = bitcast i24* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 4 %20, i64 3, i1 false)
  store i32 %0, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  %21 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i32 0, i32 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 10
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  call void @abort() #3
  unreachable

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i32 0, i32 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 20
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  call void @abort() #3
  unreachable

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i32 0, i32 2
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 30
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  call void @abort() #3
  unreachable

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 11
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  call void @abort() #3
  unreachable

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 21
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  call void @abort() #3
  unreachable

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 2
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 31
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  call void @abort() #3
  unreachable

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.tiny, %struct.tiny* %11, i32 0, i32 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 12
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  call void @abort() #3
  unreachable

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.tiny, %struct.tiny* %11, i32 0, i32 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 22
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  call void @abort() #3
  unreachable

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.tiny, %struct.tiny* %11, i32 0, i32 2
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 32
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  call void @abort() #3
  unreachable

74:                                               ; preds = %68
  %75 = load i64, i64* %14, align 8
  %76 = icmp ne i64 %75, 123
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  call void @abort() #3
  unreachable

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x %struct.tiny], align 1
  %3 = alloca i24, align 4
  %4 = alloca i24, align 4
  %5 = alloca i24, align 4
  store i32 0, i32* %1, align 4
  %6 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %7 = getelementptr inbounds %struct.tiny, %struct.tiny* %6, i32 0, i32 0
  store i8 10, i8* %7, align 1
  %8 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %9 = getelementptr inbounds %struct.tiny, %struct.tiny* %8, i32 0, i32 0
  store i8 11, i8* %9, align 1
  %10 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %11 = getelementptr inbounds %struct.tiny, %struct.tiny* %10, i32 0, i32 0
  store i8 12, i8* %11, align 1
  %12 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %13 = getelementptr inbounds %struct.tiny, %struct.tiny* %12, i32 0, i32 1
  store i8 20, i8* %13, align 1
  %14 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %15 = getelementptr inbounds %struct.tiny, %struct.tiny* %14, i32 0, i32 1
  store i8 21, i8* %15, align 1
  %16 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %17 = getelementptr inbounds %struct.tiny, %struct.tiny* %16, i32 0, i32 1
  store i8 22, i8* %17, align 1
  %18 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %19 = getelementptr inbounds %struct.tiny, %struct.tiny* %18, i32 0, i32 2
  store i8 30, i8* %19, align 1
  %20 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %21 = getelementptr inbounds %struct.tiny, %struct.tiny* %20, i32 0, i32 2
  store i8 31, i8* %21, align 1
  %22 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %23 = getelementptr inbounds %struct.tiny, %struct.tiny* %22, i32 0, i32 2
  store i8 32, i8* %23, align 1
  %24 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %25 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %26 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %27 = bitcast i24* %3 to i8*
  %28 = bitcast %struct.tiny* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 1 %28, i64 3, i1 false)
  %29 = load i24, i24* %3, align 4
  %30 = bitcast i24* %4 to i8*
  %31 = bitcast %struct.tiny* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 1 %31, i64 3, i1 false)
  %32 = load i24, i24* %4, align 4
  %33 = bitcast i24* %5 to i8*
  %34 = bitcast %struct.tiny* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 1 %34, i64 3, i1 false)
  %35 = load i24, i24* %5, align 4
  %36 = call i32 @f(i32 noundef 3, i24 %29, i24 %32, i24 %35, i64 noundef 123)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
