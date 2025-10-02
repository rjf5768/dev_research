; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920908-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920908-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, ...) #0 {
  %2 = alloca %struct.T, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 16
  %10 = icmp ule i32 %9, 40
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 3
  %13 = load i8*, i8** %12, align 16
  %14 = getelementptr i8, i8* %13, i32 %9
  %15 = bitcast i8* %14 to %struct.T*
  %16 = add i32 %9, 8
  store i32 %16, i32* %8, align 16
  br label %22

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to %struct.T*
  %21 = getelementptr i8, i8* %19, i32 8
  store i8* %21, i8** %18, align 8
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi %struct.T* [ %15, %11 ], [ %20, %17 ]
  %24 = bitcast %struct.T* %2 to i8*
  %25 = bitcast %struct.T* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 10
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  call void @abort() #4
  unreachable

30:                                               ; preds = %22
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 16
  %34 = icmp ule i32 %33, 40
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %31, i32 0, i32 3
  %37 = load i8*, i8** %36, align 16
  %38 = getelementptr i8, i8* %37, i32 %33
  %39 = bitcast i8* %38 to %struct.T*
  %40 = add i32 %33, 8
  store i32 %40, i32* %32, align 16
  br label %46

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %31, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = bitcast i8* %43 to %struct.T*
  %45 = getelementptr i8, i8* %43, i32 8
  store i8* %45, i8** %42, align 8
  br label %46

46:                                               ; preds = %41, %35
  %47 = phi %struct.T* [ %39, %35 ], [ %44, %41 ]
  %48 = bitcast %struct.T* %2 to i8*
  %49 = bitcast %struct.T* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  %50 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 20
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  call void @abort() #4
  unreachable

54:                                               ; preds = %46
  %55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %56 = bitcast %struct.__va_list_tag* %55 to i8*
  call void @llvm.va_end(i8* %56)
  %57 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  ret i32 %58
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.T, align 4
  %3 = alloca %struct.T, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.T, align 4
  store i32 0, i32* %1, align 4
  %6 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 0
  store i32 10, i32* %6, align 4
  %7 = getelementptr inbounds %struct.T, %struct.T* %3, i32 0, i32 0
  store i32 20, i32* %7, align 4
  %8 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.T, %struct.T* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i32, ...) @f(i32 noundef 2, i32 %9, i32 %11)
  %13 = getelementptr inbounds %struct.T, %struct.T* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
