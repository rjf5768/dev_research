; ModuleID = './va-arg-trap-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-trap-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@ap = dso_local global [1 x %struct.__va_list_tag] zeroinitializer, align 16
@f = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local noalias nonnull [1 x %struct.__va_list_tag]* @foo() #0 {
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, ...) #2 {
  call void @llvm.va_start(i8* bitcast ([1 x %struct.__va_list_tag]* @ap to i8*))
  %2 = call [1 x %struct.__va_list_tag]* @foo()
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = icmp ult i32 %4, 161
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %8 = load i8*, i8** %7, align 8
  %9 = sext i32 %4 to i64
  %10 = getelementptr i8, i8* %8, i64 %9
  %11 = add i32 %4, 16
  store i32 %11, i32* %3, align 4
  br label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr i8, i8* %14, i64 8
  store i8* %15, i8** %13, align 8
  br label %16

16:                                               ; preds = %12, %6
  %.in = phi i8* [ %10, %6 ], [ %14, %12 ]
  %17 = bitcast i8* %.in to float*
  %18 = load float, float* %17, align 4
  store float %18, float* @f, align 4
  call void @llvm.va_end(i8* bitcast ([1 x %struct.__va_list_tag]* @ap to i8*))
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  call void (i32, ...) @bar(i32 noundef 1, i32 noundef 0)
  call void @abort() #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
