; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-21.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"hello world\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (i8*, ...) @doit(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @doit(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [3 x [1 x %struct.__va_list_tag]*], align 16
  %4 = alloca [1 x %struct.__va_list_tag]**, align 8
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds [3 x [1 x %struct.__va_list_tag]*], [3 x [1 x %struct.__va_list_tag]*]* %3, i64 0, i64 0
  store [1 x %struct.__va_list_tag]** %5, [1 x %struct.__va_list_tag]*** %4, align 8
  %6 = call noalias i8* @malloc(i64 noundef 24) #6
  %7 = bitcast i8* %6 to [1 x %struct.__va_list_tag]*
  %8 = getelementptr inbounds [3 x [1 x %struct.__va_list_tag]*], [3 x [1 x %struct.__va_list_tag]*]* %3, i64 0, i64 0
  store [1 x %struct.__va_list_tag]* %7, [1 x %struct.__va_list_tag]** %8, align 16
  %9 = getelementptr inbounds [3 x [1 x %struct.__va_list_tag]*], [3 x [1 x %struct.__va_list_tag]*]* %3, i64 0, i64 1
  store [1 x %struct.__va_list_tag]* null, [1 x %struct.__va_list_tag]** %9, align 8
  %10 = call noalias i8* @malloc(i64 noundef 24) #6
  %11 = bitcast i8* %10 to [1 x %struct.__va_list_tag]*
  %12 = getelementptr inbounds [3 x [1 x %struct.__va_list_tag]*], [3 x [1 x %struct.__va_list_tag]*]* %3, i64 0, i64 2
  store [1 x %struct.__va_list_tag]* %11, [1 x %struct.__va_list_tag]** %12, align 16
  %13 = getelementptr inbounds [3 x [1 x %struct.__va_list_tag]*], [3 x [1 x %struct.__va_list_tag]*]* %3, i64 0, i64 0
  %14 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %13, align 16
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i64 0, i64 0
  %16 = bitcast %struct.__va_list_tag* %15 to i8*
  call void @llvm.va_start(i8* %16)
  %17 = load i8*, i8** %2, align 8
  %18 = load [1 x %struct.__va_list_tag]**, [1 x %struct.__va_list_tag]*** %4, align 8
  %19 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %18, align 8
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %19, i64 0, i64 0
  %21 = call i32 @vprintf(i8* noundef %17, %struct.__va_list_tag* noundef %20)
  %22 = load [1 x %struct.__va_list_tag]**, [1 x %struct.__va_list_tag]*** %4, align 8
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %22, i32 1
  store [1 x %struct.__va_list_tag]** %23, [1 x %struct.__va_list_tag]*** %4, align 8
  %24 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %22, align 8
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %26 = bitcast %struct.__va_list_tag* %25 to i8*
  call void @llvm.va_end(i8* %26)
  %27 = load [1 x %struct.__va_list_tag]**, [1 x %struct.__va_list_tag]*** %4, align 8
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %27, i32 1
  store [1 x %struct.__va_list_tag]** %28, [1 x %struct.__va_list_tag]*** %4, align 8
  %29 = getelementptr inbounds [3 x [1 x %struct.__va_list_tag]*], [3 x [1 x %struct.__va_list_tag]*]* %3, i64 0, i64 2
  %30 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %29, align 16
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %30, i64 0, i64 0
  %32 = bitcast %struct.__va_list_tag* %31 to i8*
  call void @llvm.va_start(i8* %32)
  %33 = load i8*, i8** %2, align 8
  %34 = load [1 x %struct.__va_list_tag]**, [1 x %struct.__va_list_tag]*** %4, align 8
  %35 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %34, align 8
  %36 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %35, i64 0, i64 0
  %37 = call i32 @vprintf(i8* noundef %33, %struct.__va_list_tag* noundef %36)
  %38 = load [1 x %struct.__va_list_tag]**, [1 x %struct.__va_list_tag]*** %4, align 8
  %39 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %38, align 8
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %39, i64 0, i64 0
  %41 = bitcast %struct.__va_list_tag* %40 to i8*
  call void @llvm.va_end(i8* %41)
  %42 = load [1 x %struct.__va_list_tag]**, [1 x %struct.__va_list_tag]*** %4, align 8
  %43 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %42, align 8
  %44 = icmp eq [1 x %struct.__va_list_tag]* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %1
  call void @abort() #5
  unreachable

46:                                               ; preds = %1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

declare dso_local i32 @vprintf(i8* noundef, %struct.__va_list_tag* noundef) #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
