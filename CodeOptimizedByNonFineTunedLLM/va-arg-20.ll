; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-20.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.__va_list_tag* noundef %0) #0 {
  %2 = alloca %struct.__va_list_tag*, align 8
  %3 = alloca i64, align 8
  store %struct.__va_list_tag* %0, %struct.__va_list_tag** %2, align 8
  %4 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %5 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ule i32 %6, 40
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i32 0, i32 3
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr i8, i8* %10, i32 %6
  %12 = bitcast i8* %11 to i64*
  %13 = add i32 %6, 8
  store i32 %13, i32* %5, align 8
  br label %19

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to i64*
  %18 = getelementptr i8, i8* %16, i32 8
  store i8* %18, i8** %15, align 8
  br label %19

19:                                               ; preds = %14, %8
  %20 = phi i64* [ %12, %8 ], [ %17, %14 ]
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %22, 16
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  call void @abort() #3
  unreachable

25:                                               ; preds = %19
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i8 noundef signext %0, i8 noundef signext %1, ...) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @foo(%struct.__va_list_tag* noundef %8)
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_end(i8* %10)
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
  call void (i8, i8, ...) @bar(i8 noundef signext 0, i8 noundef signext 0, i64 noundef 16)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

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
