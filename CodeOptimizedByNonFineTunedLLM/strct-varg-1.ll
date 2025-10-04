; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strct-varg-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strct-varg-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.s, align 4
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  call void @abort() #4
  unreachable

12:                                               ; preds = %1
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 16
  %16 = icmp ule i32 %15, 40
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 3
  %19 = load i8*, i8** %18, align 16
  %20 = getelementptr i8, i8* %19, i32 %15
  %21 = bitcast i8* %20 to %struct.s*
  %22 = add i32 %15, 8
  store i32 %22, i32* %14, align 16
  br label %28

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to %struct.s*
  %27 = getelementptr i8, i8* %25, i32 8
  store i8* %27, i8** %24, align 8
  br label %28

28:                                               ; preds = %23, %17
  %29 = phi %struct.s* [ %21, %17 ], [ %26, %23 ]
  %30 = bitcast %struct.s* %4 to i8*
  %31 = bitcast %struct.s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 8, i1 false)
  %32 = getelementptr inbounds %struct.s, %struct.s* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 43690
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.s, %struct.s* %4, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 21845
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %28
  call void @abort() #4
  unreachable

40:                                               ; preds = %35
  %41 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %42 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 16
  %44 = icmp ule i32 %43, 40
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %41, i32 0, i32 3
  %47 = load i8*, i8** %46, align 16
  %48 = getelementptr i8, i8* %47, i32 %43
  %49 = bitcast i8* %48 to i32*
  %50 = add i32 %43, 8
  store i32 %50, i32* %42, align 16
  br label %56

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %41, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = getelementptr i8, i8* %53, i32 8
  store i8* %55, i8** %52, align 8
  br label %56

56:                                               ; preds = %51, %45
  %57 = phi i32* [ %49, %45 ], [ %54, %51 ]
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 3
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  call void @abort() #4
  unreachable

62:                                               ; preds = %56
  %63 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 16
  %66 = icmp ule i32 %65, 40
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %63, i32 0, i32 3
  %69 = load i8*, i8** %68, align 16
  %70 = getelementptr i8, i8* %69, i32 %65
  %71 = bitcast i8* %70 to %struct.s*
  %72 = add i32 %65, 8
  store i32 %72, i32* %64, align 16
  br label %78

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %63, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = bitcast i8* %75 to %struct.s*
  %77 = getelementptr i8, i8* %75, i32 8
  store i8* %77, i8** %74, align 8
  br label %78

78:                                               ; preds = %73, %67
  %79 = phi %struct.s* [ %71, %67 ], [ %76, %73 ]
  %80 = bitcast %struct.s* %4 to i8*
  %81 = bitcast %struct.s* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 8, i1 false)
  %82 = getelementptr inbounds %struct.s, %struct.s* %4, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 65535
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.s, %struct.s* %4, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 4369
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %78
  call void @abort() #4
  unreachable

90:                                               ; preds = %85
  %91 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %92 = bitcast %struct.__va_list_tag* %91 to i8*
  call void @llvm.va_end(i8* %92)
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.s, align 4
  %3 = alloca %struct.s, align 4
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 0
  store i32 43690, i32* %4, align 4
  %5 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 1
  store i32 21845, i32* %5, align 4
  %6 = getelementptr inbounds %struct.s, %struct.s* %3, i32 0, i32 0
  store i32 65535, i32* %6, align 4
  %7 = getelementptr inbounds %struct.s, %struct.s* %3, i32 0, i32 1
  store i32 4369, i32* %7, align 4
  %8 = bitcast %struct.s* %2 to i64*
  %9 = load i64, i64* %8, align 4
  %10 = bitcast %struct.s* %3 to i64*
  %11 = load i64, i64* %10, align 4
  %12 = call i32 (i32, ...) @f(i32 noundef 2, i64 %9, i32 noundef 3, i64 %11)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
