; ModuleID = './va-arg-21.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"hello world\0A\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  call void (i8*, ...) @doit(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @doit(i8* noundef %0, ...) #1 {
  %2 = alloca [3 x [1 x %struct.__va_list_tag]*], align 16
  %3 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #7
  %4 = bitcast [3 x [1 x %struct.__va_list_tag]*]* %2 to i8**
  store i8* %3, i8** %4, align 16
  %5 = getelementptr inbounds [3 x [1 x %struct.__va_list_tag]*], [3 x [1 x %struct.__va_list_tag]*]* %2, i64 0, i64 1
  store [1 x %struct.__va_list_tag]* null, [1 x %struct.__va_list_tag]** %5, align 8
  %6 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #7
  %7 = getelementptr inbounds [3 x [1 x %struct.__va_list_tag]*], [3 x [1 x %struct.__va_list_tag]*]* %2, i64 0, i64 2
  %8 = bitcast [1 x %struct.__va_list_tag]** %7 to i8**
  store i8* %6, i8** %8, align 16
  %9 = bitcast [3 x [1 x %struct.__va_list_tag]*]* %2 to i8**
  %10 = load i8*, i8** %9, align 16
  call void @llvm.va_start(i8* %10)
  %11 = bitcast i8* %10 to %struct.__va_list_tag*
  %12 = call i32 @vprintf(i8* noundef %0, %struct.__va_list_tag* noundef %11) #7
  call void @llvm.va_end(i8* %10)
  %13 = getelementptr inbounds [3 x [1 x %struct.__va_list_tag]*], [3 x [1 x %struct.__va_list_tag]*]* %2, i64 0, i64 2
  %14 = bitcast [1 x %struct.__va_list_tag]** %13 to i8**
  %15 = load i8*, i8** %14, align 16
  call void @llvm.va_start(i8* %15)
  %16 = bitcast i8* %15 to %struct.__va_list_tag*
  %17 = call i32 @vprintf(i8* noundef %0, %struct.__va_list_tag* noundef %16) #7
  call void @llvm.va_end(i8* %15)
  %18 = icmp eq i8* %15, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  call void @abort() #6
  unreachable

20:                                               ; preds = %1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #4

declare dso_local i32 @vprintf(i8* noundef, %struct.__va_list_tag* noundef) #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
