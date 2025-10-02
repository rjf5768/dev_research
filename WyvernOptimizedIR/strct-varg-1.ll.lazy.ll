; ModuleID = './strct-varg-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strct-varg-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, ...) #0 {
  %2 = alloca i64, align 8
  %tmpcast = bitcast i64* %2 to %struct.s*
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  call void @abort() #5
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %1
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %8 = load i32, i32* %7, align 16
  %9 = icmp ult i32 %8, 41
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %12 = load i8*, i8** %11, align 16
  %13 = sext i32 %8 to i64
  %14 = getelementptr i8, i8* %12, i64 %13
  %15 = add i32 %8, 8
  store i32 %15, i32* %7, align 16
  br label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr i8, i8* %18, i64 8
  store i8* %19, i8** %17, align 8
  br label %20

20:                                               ; preds = %16, %10
  %.in = phi i8* [ %14, %10 ], [ %18, %16 ]
  %21 = bitcast i8* %.in to i64*
  %22 = load i64, i64* %21, align 4
  store i64 %22, i64* %2, align 8
  %23 = bitcast i64* %2 to i32*
  %24 = load i32, i32* %23, align 8
  %.not1 = icmp eq i32 %24, 43690
  br i1 %.not1, label %25, label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.s, %struct.s* %tmpcast, i64 0, i32 1
  %27 = load i32, i32* %26, align 4
  %.not2 = icmp eq i32 %27, 21845
  br i1 %.not2, label %29, label %28

28:                                               ; preds = %25, %20
  call void @abort() #5
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %25
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %31 = load i32, i32* %30, align 16
  %32 = icmp ult i32 %31, 41
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %35 = load i8*, i8** %34, align 16
  %36 = sext i32 %31 to i64
  %37 = getelementptr i8, i8* %35, i64 %36
  %38 = add i32 %31, 8
  store i32 %38, i32* %30, align 16
  br label %43

39:                                               ; preds = %29
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr i8, i8* %41, i64 8
  store i8* %42, i8** %40, align 8
  br label %43

43:                                               ; preds = %39, %33
  %.in3 = phi i8* [ %37, %33 ], [ %41, %39 ]
  %44 = bitcast i8* %.in3 to i32*
  %45 = load i32, i32* %44, align 4
  %.not4 = icmp eq i32 %45, 3
  br i1 %.not4, label %47, label %46

46:                                               ; preds = %43
  call void @abort() #5
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %43
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %49 = load i32, i32* %48, align 16
  %50 = icmp ult i32 %49, 41
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %53 = load i8*, i8** %52, align 16
  %54 = sext i32 %49 to i64
  %55 = getelementptr i8, i8* %53, i64 %54
  %56 = add i32 %49, 8
  store i32 %56, i32* %48, align 16
  br label %61

57:                                               ; preds = %47
  %58 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr i8, i8* %59, i64 8
  store i8* %60, i8** %58, align 8
  br label %61

61:                                               ; preds = %57, %51
  %.in5 = phi i8* [ %55, %51 ], [ %59, %57 ]
  %62 = bitcast i8* %.in5 to i64*
  %63 = load i64, i64* %62, align 4
  store i64 %63, i64* %2, align 8
  %64 = bitcast i64* %2 to i32*
  %65 = load i32, i32* %64, align 8
  %.not6 = icmp eq i32 %65, 65535
  br i1 %.not6, label %66, label %69

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.s, %struct.s* %tmpcast, i64 0, i32 1
  %68 = load i32, i32* %67, align 4
  %.not7 = icmp eq i32 %68, 4369
  br i1 %.not7, label %70, label %69

69:                                               ; preds = %66, %61
  call void @abort() #5
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %66
  %71 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %71)
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %69, %46, %28, %5
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i64, align 8
  %tmpcast = bitcast i64* %1 to %struct.s*
  %2 = alloca i64, align 8
  %tmpcast1 = bitcast i64* %2 to %struct.s*
  %3 = bitcast i64* %1 to i32*
  store i32 43690, i32* %3, align 8
  %4 = getelementptr inbounds %struct.s, %struct.s* %tmpcast, i64 0, i32 1
  store i32 21845, i32* %4, align 4
  %5 = bitcast i64* %2 to i32*
  store i32 65535, i32* %5, align 8
  %6 = getelementptr inbounds %struct.s, %struct.s* %tmpcast1, i64 0, i32 1
  store i32 4369, i32* %6, align 4
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* %2, align 8
  %9 = call i32 (i32, ...) @f(i32 noundef 2, i64 %7, i32 noundef 3, i64 %8)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
