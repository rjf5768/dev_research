; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-23.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.two = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, %struct.two* noundef byval(%struct.two) align 8 %5, i32 noundef %6, ...) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1 x %struct.__va_list_tag], align 16
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %6, i32* %13, align 4
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i64 0, i64 0
  %17 = bitcast %struct.__va_list_tag* %16 to i8*
  call void @llvm.va_start(i8* %17)
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i64 0, i64 0
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 16
  %21 = icmp ule i32 %20, 40
  br i1 %21, label %22, label %28

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %18, i32 0, i32 3
  %24 = load i8*, i8** %23, align 16
  %25 = getelementptr i8, i8* %24, i32 %20
  %26 = bitcast i8* %25 to i32*
  %27 = add i32 %20, 8
  store i32 %27, i32* %19, align 16
  br label %33

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %18, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = getelementptr i8, i8* %30, i32 8
  store i8* %32, i8** %29, align 8
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi i32* [ %26, %22 ], [ %31, %28 ]
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 2
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %33
  call void @abort() #4
  unreachable

42:                                               ; preds = %38
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.two, align 8
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.two* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 16, i1 false)
  call void (i32, i32, i32, i32, i32, %struct.two*, i32, ...) @foo(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, %struct.two* noundef byval(%struct.two) align 8 %2, i32 noundef 1, i32 noundef 2)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
