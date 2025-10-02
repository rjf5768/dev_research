; ModuleID = './920908-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920908-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, ...) #0 {
  %2 = alloca %struct.T, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %6 = load i32, i32* %5, align 16
  %7 = icmp ult i32 %6, 41
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %10 = load i8*, i8** %9, align 16
  %11 = sext i32 %6 to i64
  %12 = getelementptr i8, i8* %10, i64 %11
  %13 = add i32 %6, 8
  store i32 %13, i32* %5, align 16
  br label %18

14:                                               ; preds = %1
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr i8, i8* %16, i64 8
  store i8* %17, i8** %15, align 8
  br label %18

18:                                               ; preds = %14, %8
  %.in = phi i8* [ %12, %8 ], [ %16, %14 ]
  %19 = bitcast i8* %.in to i32*
  %20 = getelementptr inbounds %struct.T, %struct.T* %2, i64 0, i32 0
  %21 = load i32, i32* %19, align 4
  store i32 %21, i32* %20, align 4
  %.not = icmp eq i32 %21, 10
  br i1 %.not, label %23, label %22

22:                                               ; preds = %18
  call void @abort() #5
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %18
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %25 = load i32, i32* %24, align 16
  %26 = icmp ult i32 %25, 41
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %29 = load i8*, i8** %28, align 16
  %30 = sext i32 %25 to i64
  %31 = getelementptr i8, i8* %29, i64 %30
  %32 = add i32 %25, 8
  store i32 %32, i32* %24, align 16
  br label %37

33:                                               ; preds = %23
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr i8, i8* %35, i64 8
  store i8* %36, i8** %34, align 8
  br label %37

37:                                               ; preds = %33, %27
  %.in1 = phi i8* [ %31, %27 ], [ %35, %33 ]
  %38 = bitcast i8* %.in1 to i32*
  %39 = getelementptr inbounds %struct.T, %struct.T* %2, i64 0, i32 0
  %40 = load i32, i32* %38, align 4
  store i32 %40, i32* %39, align 4
  %.not2 = icmp eq i32 %40, 20
  br i1 %.not2, label %42, label %41

41:                                               ; preds = %37
  call void @abort() #5
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %37
  %43 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %43)
  %44 = getelementptr inbounds %struct.T, %struct.T* %2, i64 0, i32 0
  %45 = load i32, i32* %44, align 4
  ret i32 %45

UnifiedUnreachableBlock:                          ; preds = %41, %22
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #4 {
  %1 = call i32 (i32, ...) @f(i32 noundef 2, i32 10, i32 20)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
