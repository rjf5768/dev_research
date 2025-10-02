; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-trap-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-trap-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@ap = dso_local global [1 x %struct.__va_list_tag] zeroinitializer, align 16
@f = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local [1 x %struct.__va_list_tag]* @foo() #0 {
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.va_start(i8* bitcast ([1 x %struct.__va_list_tag]* @ap to i8*))
  %3 = call [1 x %struct.__va_list_tag]* @foo()
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ule i32 %6, 160
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i32 0, i32 3
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr i8, i8* %10, i32 %6
  %12 = bitcast i8* %11 to float*
  %13 = add i32 %6, 16
  store i32 %13, i32* %5, align 4
  br label %19

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to float*
  %18 = getelementptr i8, i8* %16, i32 8
  store i8* %18, i8** %15, align 8
  br label %19

19:                                               ; preds = %14, %8
  %20 = phi float* [ %12, %8 ], [ %17, %14 ]
  %21 = load float, float* %20, align 4
  store float %21, float* @f, align 4
  call void @llvm.va_end(i8* bitcast ([1 x %struct.__va_list_tag]* @ap to i8*))
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (i32, ...) @bar(i32 noundef 1, i32 noundef 0)
  call void @abort() #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
