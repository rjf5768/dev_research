; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20060910-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20060910-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ty = type { i8*, i8* }

@b = dso_local global [6 x i8] zeroinitializer, align 1
@s = dso_local global %struct.input_ty zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @input_getc_complicated(%struct.input_ty* noundef %0) #0 {
  %2 = alloca %struct.input_ty*, align 8
  store %struct.input_ty* %0, %struct.input_ty** %2, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check_header(%struct.input_ty* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_ty*, align 8
  %4 = alloca i32, align 4
  store %struct.input_ty* %0, %struct.input_ty** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp ult i32 %6, 6
  br i1 %7, label %8, label %34

8:                                                ; preds = %5
  %9 = load %struct.input_ty*, %struct.input_ty** %3, align 8
  %10 = getelementptr inbounds %struct.input_ty, %struct.input_ty* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.input_ty*, %struct.input_ty** %3, align 8
  %13 = getelementptr inbounds %struct.input_ty, %struct.input_ty* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ult i8* %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = load %struct.input_ty*, %struct.input_ty** %3, align 8
  %18 = getelementptr inbounds %struct.input_ty, %struct.input_ty* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %18, align 8
  %21 = load i8, i8* %19, align 1
  %22 = zext i8 %21 to i32
  br label %26

23:                                               ; preds = %8
  %24 = load %struct.input_ty*, %struct.input_ty** %3, align 8
  %25 = call i32 @input_getc_complicated(%struct.input_ty* noundef %24)
  br label %26

26:                                               ; preds = %23, %16
  %27 = phi i32 [ %22, %16 ], [ %25, %23 ]
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %35

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %5, !llvm.loop !4

34:                                               ; preds = %5
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 0), i8** getelementptr inbounds (%struct.input_ty, %struct.input_ty* @s, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 1, i64 0), i8** getelementptr inbounds (%struct.input_ty, %struct.input_ty* @s, i32 0, i32 1), align 8
  %2 = call i32 @check_header(%struct.input_ty* noundef @s)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  %6 = load i8*, i8** getelementptr inbounds (%struct.input_ty, %struct.input_ty* @s, i32 0, i32 0), align 8
  %7 = load i8*, i8** getelementptr inbounds (%struct.input_ty, %struct.input_ty* @s, i32 0, i32 1), align 8
  %8 = icmp ne i8* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  call void @abort() #2
  unreachable

10:                                               ; preds = %5
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
