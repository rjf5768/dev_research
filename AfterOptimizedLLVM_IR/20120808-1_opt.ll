; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20120808-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20120808-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global [32 x i8] zeroinitializer, align 16
@i = dso_local global i32 0, align 4
@cp = dso_local global i8* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast [32 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 32, i1 false)
  %8 = load volatile i32, i32* @i, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @d, i64 0, i64 0), i64 %9
  store i8* %10, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %39, %0
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 30
  br i1 %13, label %14, label %42

14:                                               ; preds = %11
  store i32 255, i32* %5, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %29 [
    i32 1, label %20
    i32 2, label %23
    i32 25, label %26
  ]

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = xor i32 %21, 2
  store i32 %22, i32* %5, align 4
  br label %30

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = xor i32 %24, 4
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = xor i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %30

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29, %26, %23, %20
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %31, %32
  %34 = trunc i32 %33 to i8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %36
  store i8 %34, i8* %37, align 1
  %38 = load i8*, i8** %3, align 8
  store volatile i8* %38, i8** @cp, align 8
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %11, !llvm.loop !4

42:                                               ; preds = %11
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %44 = load i8, i8* %43, align 16
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %45, 255
  br i1 %46, label %75, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp ne i32 %50, 253
  br i1 %51, label %75, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 2
  %54 = load i8, i8* %53, align 2
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 251
  br i1 %56, label %75, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 3
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %60, 255
  br i1 %61, label %75, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 4
  %64 = load i8, i8* %63, align 4
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %65, 255
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 25
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp ne i32 %70, 254
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load volatile i8*, i8** @cp, align 8
  %74 = icmp ne i8* %73, getelementptr inbounds ([32 x i8], [32 x i8]* @d, i64 0, i64 30)
  br i1 %74, label %75, label %76

75:                                               ; preds = %72, %67, %62, %57, %52, %47, %42
  call void @abort() #3
  unreachable

76:                                               ; preds = %72
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
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
