; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65401.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65401.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [64 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.S* %0, %struct.S** %2, align 8
  %5 = load %struct.S*, %struct.S** %2, align 8
  %6 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 0
  %7 = getelementptr inbounds [64 x i16], [64 x i16]* %6, i64 0, i64 0
  %8 = bitcast i16* %7 to i8*
  store i8* %8, i8** %4, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %36, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ult i32 %10, 64
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = mul i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = mul i32 %21, 2
  %23 = add i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 8
  %29 = or i32 %19, %28
  %30 = trunc i32 %29 to i16
  %31 = load %struct.S*, %struct.S** %2, align 8
  %32 = getelementptr inbounds %struct.S, %struct.S* %31, i32 0, i32 0
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [64 x i16], [64 x i16]* %32, i64 0, i64 %34
  store i16 %30, i16* %35, align 2
  br label %36

36:                                               ; preds = %12
  %37 = load i32, i32* %3, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %9, !llvm.loop !4

39:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.S* %0, %struct.S** %2, align 8
  %5 = load %struct.S*, %struct.S** %2, align 8
  %6 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 0
  %7 = getelementptr inbounds [64 x i16], [64 x i16]* %6, i64 0, i64 0
  %8 = bitcast i16* %7 to i8*
  store i8* %8, i8** %4, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %36, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ult i32 %10, 64
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = mul i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl i32 %19, 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = mul i32 %22, 2
  %24 = add i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %20, %28
  %30 = trunc i32 %29 to i16
  %31 = load %struct.S*, %struct.S** %2, align 8
  %32 = getelementptr inbounds %struct.S, %struct.S* %31, i32 0, i32 0
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [64 x i16], [64 x i16]* %32, i64 0, i64 %34
  store i16 %30, i16* %35, align 2
  br label %36

36:                                               ; preds = %12
  %37 = load i32, i32* %3, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %9, !llvm.loop !6

39:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.S, align 2
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %18, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp ult i32 %5, 64
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = sub i32 64, %9
  %11 = shl i32 %10, 8
  %12 = add i32 %8, %11
  %13 = trunc i32 %12 to i16
  %14 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  %15 = load i32, i32* %2, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [64 x i16], [64 x i16]* %14, i64 0, i64 %16
  store i16 %13, i16* %17, align 2
  br label %18

18:                                               ; preds = %7
  %19 = load i32, i32* %2, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %4, !llvm.loop !7

21:                                               ; preds = %4
  call void @foo(%struct.S* noundef %3)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i32, i32* %2, align 4
  %24 = icmp ult i32 %23, 64
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  %27 = load i32, i32* %2, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [64 x i16], [64 x i16]* %26, i64 0, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = sub i32 64, %33
  %35 = shl i32 %34, 8
  %36 = add i32 %32, %35
  %37 = icmp ne i32 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  call void @abort() #2
  unreachable

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %2, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %22, !llvm.loop !8

43:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %58, %43
  %45 = load i32, i32* %2, align 4
  %46 = icmp ult i32 %45, 64
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  %50 = sub i32 64, %49
  %51 = shl i32 %50, 8
  %52 = add i32 %48, %51
  %53 = trunc i32 %52 to i16
  %54 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  %55 = load i32, i32* %2, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [64 x i16], [64 x i16]* %54, i64 0, i64 %56
  store i16 %53, i16* %57, align 2
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %2, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %44, !llvm.loop !9

61:                                               ; preds = %44
  call void @bar(%struct.S* noundef %3)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %80, %61
  %63 = load i32, i32* %2, align 4
  %64 = icmp ult i32 %63, 64
  br i1 %64, label %65, label %83

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  %67 = load i32, i32* %2, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [64 x i16], [64 x i16]* %66, i64 0, i64 %68
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = load i32, i32* %2, align 4
  %73 = sub i32 64, %72
  %74 = load i32, i32* %2, align 4
  %75 = shl i32 %74, 8
  %76 = add i32 %73, %75
  %77 = icmp ne i32 %71, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  call void @abort() #2
  unreachable

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %2, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %2, align 4
  br label %62, !llvm.loop !10

83:                                               ; preds = %62
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
