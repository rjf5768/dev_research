; ModuleID = './931004-12.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, ...) #0 {
  %2 = alloca %struct.tiny, align 1
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  br label %5

5:                                                ; preds = %41, %1
  %.0 = phi i32 [ 0, %1 ], [ %42, %41 ]
  %6 = icmp slt i32 %.0, %0
  br i1 %6, label %7, label %43

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
  %22 = getelementptr inbounds %struct.tiny, %struct.tiny* %2, i64 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %22, i8* noundef nonnull align 1 dereferenceable(3) %.in1, i64 3, i1 false)
  %23 = getelementptr inbounds %struct.tiny, %struct.tiny* %2, i64 0, i32 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = add nuw nsw i32 %.0, 10
  %.not2 = icmp eq i32 %26, %25
  br i1 %.not2, label %28, label %27

27:                                               ; preds = %21
  call void @abort() #5
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.tiny, %struct.tiny* %2, i64 0, i32 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = add nuw nsw i32 %.0, 20
  %.not3 = icmp eq i32 %32, %31
  br i1 %.not3, label %34, label %33

33:                                               ; preds = %28
  call void @abort() #5
  br label %UnifiedUnreachableBlock

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tiny, %struct.tiny* %2, i64 0, i32 2
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = add nuw nsw i32 %.0, 30
  %.not4 = icmp eq i32 %38, %37
  br i1 %.not4, label %40, label %39

39:                                               ; preds = %34
  call void @abort() #5
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !4

43:                                               ; preds = %5
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %45 = load i32, i32* %44, align 16
  %46 = icmp ult i32 %45, 41
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %49 = load i8*, i8** %48, align 16
  %50 = sext i32 %45 to i64
  %51 = getelementptr i8, i8* %49, i64 %50
  %52 = add i32 %45, 8
  store i32 %52, i32* %44, align 16
  br label %57

53:                                               ; preds = %43
  %54 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr i8, i8* %55, i64 8
  store i8* %56, i8** %54, align 8
  br label %57

57:                                               ; preds = %53, %47
  %.in = phi i8* [ %51, %47 ], [ %55, %53 ]
  %58 = bitcast i8* %.in to i64*
  %59 = load i64, i64* %58, align 8
  %.not = icmp eq i64 %59, 123
  br i1 %.not, label %61, label %60

60:                                               ; preds = %57
  call void @abort() #5
  br label %UnifiedUnreachableBlock

61:                                               ; preds = %57
  %62 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %62)
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %60, %39, %33, %27
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
  %1 = alloca [3 x %struct.tiny], align 1
  %2 = alloca i24, align 4
  %3 = alloca i24, align 4
  %4 = alloca i24, align 4
  %5 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 0, i32 0
  store i8 10, i8* %5, align 1
  %6 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1, i32 0
  store i8 11, i8* %6, align 1
  %7 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2, i32 0
  store i8 12, i8* %7, align 1
  %8 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 0, i32 1
  store i8 20, i8* %8, align 1
  %9 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1, i32 1
  store i8 21, i8* %9, align 1
  %10 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2, i32 1
  store i8 22, i8* %10, align 1
  %11 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 0, i32 2
  store i8 30, i8* %11, align 1
  %12 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1, i32 2
  store i8 31, i8* %12, align 1
  %13 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2, i32 2
  store i8 32, i8* %13, align 1
  %14 = bitcast i24* %2 to i8*
  %15 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(3) %14, i8* noundef nonnull align 1 dereferenceable(3) %15, i64 3, i1 false)
  %16 = load i24, i24* %2, align 4
  %17 = bitcast i24* %3 to i8*
  %18 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(3) %17, i8* noundef nonnull align 1 dereferenceable(3) %18, i64 3, i1 false)
  %19 = load i24, i24* %3, align 4
  %20 = bitcast i24* %4 to i8*
  %21 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(3) %20, i8* noundef nonnull align 1 dereferenceable(3) %21, i64 3, i1 false)
  %22 = load i24, i24* %4, align 4
  %23 = call i32 (i32, ...) @f(i32 noundef 3, i24 %16, i24 %19, i24 %22, i64 noundef 123)
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
