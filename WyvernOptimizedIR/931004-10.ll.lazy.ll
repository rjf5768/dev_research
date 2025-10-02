; ModuleID = './931004-10.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, ...) #0 {
  %2 = alloca i16, align 2
  %tmpcast = bitcast i16* %2 to %struct.tiny*
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  br label %5

5:                                                ; preds = %36, %1
  %.0 = phi i32 [ 0, %1 ], [ %37, %36 ]
  %6 = icmp slt i32 %.0, %0
  br i1 %6, label %7, label %38

7:                                                ; preds = %5
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %9 = load i32, i32* %8, align 16
  %10 = icmp ult i32 %9, 41
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %13 = load i8*, i8** %12, align 16
  %14 = sext i32 %9 to i64
  %15 = getelementptr i8, i8* %13, i64 %14
  %16 = add i32 %9, 8
  store i32 %16, i32* %8, align 16
  br label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr i8, i8* %19, i64 8
  store i8* %20, i8** %18, align 8
  br label %21

21:                                               ; preds = %17, %11
  %.in1 = phi i8* [ %15, %11 ], [ %19, %17 ]
  %22 = bitcast i8* %.in1 to i16*
  %23 = load i16, i16* %22, align 1
  store i16 %23, i16* %2, align 2
  %24 = bitcast i16* %2 to i8*
  %25 = load i8, i8* %24, align 2
  %26 = sext i8 %25 to i32
  %27 = add nuw nsw i32 %.0, 10
  %.not2 = icmp eq i32 %27, %26
  br i1 %.not2, label %29, label %28

28:                                               ; preds = %21
  call void @abort() #5
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.tiny, %struct.tiny* %tmpcast, i64 0, i32 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = add nuw nsw i32 %.0, 20
  %.not3 = icmp eq i32 %33, %32
  br i1 %.not3, label %35, label %34

34:                                               ; preds = %29
  call void @abort() #5
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  %37 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !4

38:                                               ; preds = %5
  %39 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %40 = load i32, i32* %39, align 16
  %41 = icmp ult i32 %40, 41
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %44 = load i8*, i8** %43, align 16
  %45 = sext i32 %40 to i64
  %46 = getelementptr i8, i8* %44, i64 %45
  %47 = add i32 %40, 8
  store i32 %47, i32* %39, align 16
  br label %52

48:                                               ; preds = %38
  %49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr i8, i8* %50, i64 8
  store i8* %51, i8** %49, align 8
  br label %52

52:                                               ; preds = %48, %42
  %.in = phi i8* [ %46, %42 ], [ %50, %48 ]
  %53 = bitcast i8* %.in to i64*
  %54 = load i64, i64* %53, align 8
  %.not = icmp eq i64 %54, 123
  br i1 %.not, label %56, label %55

55:                                               ; preds = %52
  call void @abort() #5
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %52
  %57 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %57)
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %55, %34, %28
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
  %1 = alloca [3 x %struct.tiny], align 2
  %2 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 0, i32 0
  store i8 10, i8* %2, align 2
  %3 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1, i32 0
  store i8 11, i8* %3, align 2
  %4 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2, i32 0
  store i8 12, i8* %4, align 2
  %5 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 0, i32 1
  store i8 20, i8* %5, align 1
  %6 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1, i32 1
  store i8 21, i8* %6, align 1
  %7 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2, i32 1
  store i8 22, i8* %7, align 1
  %8 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1
  %9 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2
  %10 = bitcast [3 x %struct.tiny]* %1 to i16*
  %11 = load i16, i16* %10, align 2
  %12 = bitcast %struct.tiny* %8 to i16*
  %13 = load i16, i16* %12, align 2
  %14 = bitcast %struct.tiny* %9 to i16*
  %15 = load i16, i16* %14, align 2
  %16 = call i32 (i32, ...) @f(i32 noundef 3, i16 %11, i16 %13, i16 %15, i64 noundef 123)
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
