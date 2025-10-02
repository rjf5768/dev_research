; ModuleID = './va-arg-26.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-26.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local double @f(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ...) #0 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*
  call void @llvm.va_start(i8* nonnull %8)
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ult i32 %10, 161
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, i32 3
  %14 = load i8*, i8** %13, align 16
  %15 = sext i32 %10 to i64
  %16 = getelementptr i8, i8* %14, i64 %15
  %17 = add i32 %10, 16
  store i32 %17, i32* %9, align 4
  br label %22

18:                                               ; preds = %6
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr i8, i8* %20, i64 8
  store i8* %21, i8** %19, align 8
  br label %22

22:                                               ; preds = %18, %12
  %.in = phi i8* [ %16, %12 ], [ %20, %18 ]
  %23 = bitcast i8* %.in to double*
  %24 = load double, double* %23, align 8
  %25 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*
  call void @llvm.va_end(i8* %25)
  ret double %24
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call double (float, float, float, float, float, float, ...) @f(float noundef 1.000000e+00, float noundef 2.000000e+00, float noundef 3.000000e+00, float noundef 4.000000e+00, float noundef 5.000000e+00, float noundef 6.000000e+00, double noundef 7.000000e+00)
  %2 = fcmp une double %1, 7.000000e+00
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %4, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
