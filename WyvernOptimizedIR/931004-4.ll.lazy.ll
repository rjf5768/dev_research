; ModuleID = './931004-4.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  br label %4

4:                                                ; preds = %27, %1
  %.0 = phi i32 [ 0, %1 ], [ %28, %27 ]
  %5 = icmp slt i32 %.0, %0
  br i1 %5, label %6, label %29

6:                                                ; preds = %4
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %8 = load i32, i32* %7, align 16
  %9 = icmp ult i32 %8, 41
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %12 = load i8*, i8** %11, align 16
  %13 = sext i32 %8 to i64
  %14 = getelementptr i8, i8* %12, i64 %13
  %15 = add i32 %8, 8
  store i32 %15, i32* %7, align 16
  br label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr i8, i8* %18, i64 8
  store i8* %19, i8** %17, align 8
  br label %20

20:                                               ; preds = %16, %10
  %.in1 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %21 = bitcast i8* %.in1 to i16*
  %22 = load i16, i16* %21, align 2
  %23 = sext i16 %22 to i32
  %24 = add nuw nsw i32 %.0, 10
  %.not2 = icmp eq i32 %24, %23
  br i1 %.not2, label %26, label %25

25:                                               ; preds = %20
  call void @abort() #5
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

29:                                               ; preds = %4
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %31 = load i32, i32* %30, align 16
  %32 = icmp ult i32 %31, 41
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %35 = load i8*, i8** %34, align 16
  %36 = sext i32 %31 to i64
  %37 = getelementptr i8, i8* %35, i64 %36
  %38 = add i32 %31, 8
  store i32 %38, i32* %30, align 16
  br label %43

39:                                               ; preds = %29
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr i8, i8* %41, i64 8
  store i8* %42, i8** %40, align 8
  br label %43

43:                                               ; preds = %39, %33
  %.in = phi i8* [ %37, %33 ], [ %41, %39 ]
  %44 = bitcast i8* %.in to i64*
  %45 = load i64, i64* %44, align 8
  %.not = icmp eq i64 %45, 123
  br i1 %.not, label %47, label %46

46:                                               ; preds = %43
  call void @abort() #5
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %43
  %48 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %48)
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %46, %25
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
  %1 = call i32 (i32, ...) @f(i32 noundef 3, i16 10, i16 11, i16 12, i64 noundef 123)
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
