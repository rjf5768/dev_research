; ModuleID = './931004-11.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, i24 %1, i24 %2, i24 %3, i64 noundef %4) #0 {
  %6 = alloca %struct.tiny, align 1
  %7 = alloca i24, align 4
  %8 = alloca %struct.tiny, align 1
  %9 = alloca i24, align 4
  %10 = alloca %struct.tiny, align 1
  %11 = alloca i24, align 4
  store i24 %1, i24* %7, align 4
  %12 = getelementptr inbounds %struct.tiny, %struct.tiny* %6, i64 0, i32 0
  %13 = bitcast i24* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %12, i8* noundef nonnull align 4 dereferenceable(3) %13, i64 3, i1 false)
  store i24 %2, i24* %9, align 4
  %14 = getelementptr inbounds %struct.tiny, %struct.tiny* %8, i64 0, i32 0
  %15 = bitcast i24* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %14, i8* noundef nonnull align 4 dereferenceable(3) %15, i64 3, i1 false)
  store i24 %3, i24* %11, align 4
  %16 = getelementptr inbounds %struct.tiny, %struct.tiny* %10, i64 0, i32 0
  %17 = bitcast i24* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %16, i8* noundef nonnull align 4 dereferenceable(3) %17, i64 3, i1 false)
  %18 = getelementptr inbounds %struct.tiny, %struct.tiny* %6, i64 0, i32 0
  %19 = load i8, i8* %18, align 1
  %.not = icmp eq i8 %19, 10
  br i1 %.not, label %21, label %20

20:                                               ; preds = %5
  call void @abort() #4
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.tiny, %struct.tiny* %6, i64 0, i32 1
  %23 = load i8, i8* %22, align 1
  %.not1 = icmp eq i8 %23, 20
  br i1 %.not1, label %25, label %24

24:                                               ; preds = %21
  call void @abort() #4
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tiny, %struct.tiny* %6, i64 0, i32 2
  %27 = load i8, i8* %26, align 1
  %.not2 = icmp eq i8 %27, 30
  br i1 %.not2, label %29, label %28

28:                                               ; preds = %25
  call void @abort() #4
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tiny, %struct.tiny* %8, i64 0, i32 0
  %31 = load i8, i8* %30, align 1
  %.not3 = icmp eq i8 %31, 11
  br i1 %.not3, label %33, label %32

32:                                               ; preds = %29
  call void @abort() #4
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tiny, %struct.tiny* %8, i64 0, i32 1
  %35 = load i8, i8* %34, align 1
  %.not4 = icmp eq i8 %35, 21
  br i1 %.not4, label %37, label %36

36:                                               ; preds = %33
  call void @abort() #4
  br label %UnifiedUnreachableBlock

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tiny, %struct.tiny* %8, i64 0, i32 2
  %39 = load i8, i8* %38, align 1
  %.not5 = icmp eq i8 %39, 31
  br i1 %.not5, label %41, label %40

40:                                               ; preds = %37
  call void @abort() #4
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.tiny, %struct.tiny* %10, i64 0, i32 0
  %43 = load i8, i8* %42, align 1
  %.not6 = icmp eq i8 %43, 12
  br i1 %.not6, label %45, label %44

44:                                               ; preds = %41
  call void @abort() #4
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.tiny, %struct.tiny* %10, i64 0, i32 1
  %47 = load i8, i8* %46, align 1
  %.not7 = icmp eq i8 %47, 22
  br i1 %.not7, label %49, label %48

48:                                               ; preds = %45
  call void @abort() #4
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.tiny, %struct.tiny* %10, i64 0, i32 2
  %51 = load i8, i8* %50, align 1
  %.not8 = icmp eq i8 %51, 32
  br i1 %.not8, label %53, label %52

52:                                               ; preds = %49
  call void @abort() #4
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %49
  %.not9 = icmp eq i64 %4, 123
  br i1 %.not9, label %55, label %54

54:                                               ; preds = %53
  call void @abort() #4
  br label %UnifiedUnreachableBlock

55:                                               ; preds = %53
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %54, %52, %48, %44, %40, %36, %32, %28, %24, %20
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
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
  %23 = call i32 @f(i32 noundef 3, i24 %16, i24 %19, i24 %22, i64 noundef 123)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
