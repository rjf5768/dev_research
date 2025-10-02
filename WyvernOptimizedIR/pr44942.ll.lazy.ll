; ModuleID = './pr44942.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr44942.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, x86_fp80 noundef %7, ...) #0 {
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  %10 = bitcast [1 x %struct.__va_list_tag]* %9 to i8*
  call void @llvm.va_start(i8* nonnull %10)
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, i32 0
  %12 = load i32, i32* %11, align 16
  %13 = icmp ult i32 %12, 41
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, i32 3
  %16 = load i8*, i8** %15, align 16
  %17 = sext i32 %12 to i64
  %18 = getelementptr i8, i8* %16, i64 %17
  %19 = add i32 %12, 8
  store i32 %19, i32* %11, align 16
  br label %24

20:                                               ; preds = %8
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr i8, i8* %22, i64 8
  store i8* %23, i8** %21, align 8
  br label %24

24:                                               ; preds = %20, %14
  %.in = phi i8* [ %18, %14 ], [ %22, %20 ]
  %25 = bitcast i8* %.in to i32*
  %26 = load i32, i32* %25, align 4
  %.not = icmp eq i32 %26, 1234
  br i1 %.not, label %28, label %27

27:                                               ; preds = %24
  call void @abort() #3
  unreachable

28:                                               ; preds = %24
  %29 = bitcast [1 x %struct.__va_list_tag]* %9 to i8*
  call void @llvm.va_end(i8* %29)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, x86_fp80 noundef %7, i32 noundef %8, x86_fp80 noundef %9, i32 noundef %10, x86_fp80 noundef %11, i32 noundef %12, x86_fp80 noundef %13, ...) #0 {
  %15 = alloca [1 x %struct.__va_list_tag], align 16
  %16 = bitcast [1 x %struct.__va_list_tag]* %15 to i8*
  call void @llvm.va_start(i8* nonnull %16)
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0, i32 0
  %18 = load i32, i32* %17, align 16
  %19 = icmp ult i32 %18, 41
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0, i32 3
  %22 = load i8*, i8** %21, align 16
  %23 = sext i32 %18 to i64
  %24 = getelementptr i8, i8* %22, i64 %23
  %25 = add i32 %18, 8
  store i32 %25, i32* %17, align 16
  br label %30

26:                                               ; preds = %14
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr i8, i8* %28, i64 8
  store i8* %29, i8** %27, align 8
  br label %30

30:                                               ; preds = %26, %20
  %.in = phi i8* [ %24, %20 ], [ %28, %26 ]
  %31 = bitcast i8* %.in to i32*
  %32 = load i32, i32* %31, align 4
  %.not = icmp eq i32 %32, 1234
  br i1 %.not, label %34, label %33

33:                                               ; preds = %30
  call void @abort() #3
  unreachable

34:                                               ; preds = %30
  %35 = bitcast [1 x %struct.__va_list_tag]* %15 to i8*
  call void @llvm.va_end(i8* %35)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, x86_fp80 noundef %7, ...) #0 {
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  %10 = bitcast [1 x %struct.__va_list_tag]* %9 to i8*
  call void @llvm.va_start(i8* nonnull %10)
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %12, 161
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, i32 3
  %16 = load i8*, i8** %15, align 16
  %17 = sext i32 %12 to i64
  %18 = getelementptr i8, i8* %16, i64 %17
  %19 = add i32 %12, 16
  store i32 %19, i32* %11, align 4
  br label %24

20:                                               ; preds = %8
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr i8, i8* %22, i64 8
  store i8* %23, i8** %21, align 8
  br label %24

24:                                               ; preds = %20, %14
  %.in = phi i8* [ %18, %14 ], [ %22, %20 ]
  %25 = bitcast i8* %.in to double*
  %26 = load double, double* %25, align 8
  %27 = fcmp une double %26, 1.234000e+03
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void @abort() #3
  unreachable

29:                                               ; preds = %24
  %30 = bitcast [1 x %struct.__va_list_tag]* %9 to i8*
  call void @llvm.va_end(i8* %30)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test4(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, x86_fp80 noundef %7, double noundef %8, x86_fp80 noundef %9, double noundef %10, x86_fp80 noundef %11, double noundef %12, x86_fp80 noundef %13, ...) #0 {
  %15 = alloca [1 x %struct.__va_list_tag], align 16
  %16 = bitcast [1 x %struct.__va_list_tag]* %15 to i8*
  call void @llvm.va_start(i8* nonnull %16)
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %18, 161
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0, i32 3
  %22 = load i8*, i8** %21, align 16
  %23 = sext i32 %18 to i64
  %24 = getelementptr i8, i8* %22, i64 %23
  %25 = add i32 %18, 16
  store i32 %25, i32* %17, align 4
  br label %30

26:                                               ; preds = %14
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr i8, i8* %28, i64 8
  store i8* %29, i8** %27, align 8
  br label %30

30:                                               ; preds = %26, %20
  %.in = phi i8* [ %24, %20 ], [ %28, %26 ]
  %31 = bitcast i8* %.in to double*
  %32 = load double, double* %31, align 8
  %33 = fcmp une double %32, 1.234000e+03
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void @abort() #3
  unreachable

35:                                               ; preds = %30
  %36 = bitcast [1 x %struct.__va_list_tag]* %15 to i8*
  call void @llvm.va_end(i8* %36)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void (i32, i32, i32, i32, i32, i32, i32, x86_fp80, ...) @test1(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, x86_fp80 noundef 0xK00000000000000000000, i32 noundef 1234)
  call void (i32, i32, i32, i32, i32, i32, i32, x86_fp80, i32, x86_fp80, i32, x86_fp80, i32, x86_fp80, ...) @test2(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, x86_fp80 noundef 0xK00000000000000000000, i32 noundef 0, x86_fp80 noundef 0xK00000000000000000000, i32 noundef 0, x86_fp80 noundef 0xK00000000000000000000, i32 noundef 0, x86_fp80 noundef 0xK00000000000000000000, i32 noundef 1234)
  call void (double, double, double, double, double, double, double, x86_fp80, ...) @test3(double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, x86_fp80 noundef 0xK00000000000000000000, double noundef 1.234000e+03)
  call void (double, double, double, double, double, double, double, x86_fp80, double, x86_fp80, double, x86_fp80, double, x86_fp80, ...) @test4(double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, x86_fp80 noundef 0xK00000000000000000000, double noundef 0.000000e+00, x86_fp80 noundef 0xK00000000000000000000, double noundef 0.000000e+00, x86_fp80 noundef 0xK00000000000000000000, double noundef 0.000000e+00, x86_fp80 noundef 0xK00000000000000000000, double noundef 1.234000e+03)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
