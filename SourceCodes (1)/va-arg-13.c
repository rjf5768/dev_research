; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-13.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ScanfState = type { i8*, [1 x %struct.__va_list_tag], i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @dummy(%struct.__va_list_tag* noundef %0) #0 {
  %2 = alloca %struct.__va_list_tag*, align 8
  store %struct.__va_list_tag* %0, %struct.__va_list_tag** %2, align 8
  %3 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ule i32 %5, 40
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i32 0, i32 3
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr i8, i8* %9, i32 %5
  %11 = bitcast i8* %10 to i32*
  %12 = add i32 %5, 8
  store i32 %12, i32* %4, align 8
  br label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = getelementptr i8, i8* %15, i32 8
  store i8* %17, i8** %14, align 8
  br label %18

18:                                               ; preds = %13, %7
  %19 = phi i32* [ %11, %7 ], [ %16, %13 ]
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 1234
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  call void @abort() #3
  unreachable

23:                                               ; preds = %18
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ScanfState, align 8
  %4 = alloca %struct.ScanfState*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.ScanfState* %3, %struct.ScanfState** %4, align 8
  %5 = load %struct.ScanfState*, %struct.ScanfState** %4, align 8
  %6 = getelementptr inbounds %struct.ScanfState, %struct.ScanfState* %5, i32 0, i32 1
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load %struct.ScanfState*, %struct.ScanfState** %4, align 8
  %10 = getelementptr inbounds %struct.ScanfState, %struct.ScanfState* %9, i32 0, i32 1
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0
  call void @dummy(%struct.__va_list_tag* noundef %11)
  %12 = load %struct.ScanfState*, %struct.ScanfState** %4, align 8
  %13 = getelementptr inbounds %struct.ScanfState, %struct.ScanfState* %12, i32 0, i32 1
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i64 0, i64 0
  %15 = bitcast %struct.__va_list_tag* %14 to i8*
  call void @llvm.va_end(i8* %15)
  %16 = getelementptr inbounds %struct.ScanfState, %struct.ScanfState* %3, i32 0, i32 1
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i64 0, i64 0
  %18 = bitcast %struct.__va_list_tag* %17 to i8*
  call void @llvm.va_start(i8* %18)
  %19 = getelementptr inbounds %struct.ScanfState, %struct.ScanfState* %3, i32 0, i32 1
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %19, i64 0, i64 0
  call void @dummy(%struct.__va_list_tag* noundef %20)
  %21 = getelementptr inbounds %struct.ScanfState, %struct.ScanfState* %3, i32 0, i32 1
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %21, i64 0, i64 0
  %23 = bitcast %struct.__va_list_tag* %22 to i8*
  call void @llvm.va_end(i8* %23)
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
  call void (i32, ...) @test(i32 noundef 456, i32 noundef 1234)
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
