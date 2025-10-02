; ModuleID = './PR640.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/PR640.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"ERROR\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"All done.\0A\00", align 1
@str = private unnamed_addr constant [10 x i8] c"All done.\00", align 1
@str.1 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = call i32 @test_stdarg(i32 noundef 1)
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @str.1, i64 0, i64 0))
  br label %6

5:                                                ; preds = %2
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 1, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal i32 @test_stdarg(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = bitcast i32* %2 to i8*
  %4 = call i32 (i8*, ...) @test_stdarg_va(i8* noundef nonnull %3, i32 noundef 1, i64 noundef 1981891429, i32 noundef 2, i32* noundef nonnull %2)
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  br label %13

6:                                                ; preds = %1
  %7 = bitcast i32* %2 to i8*
  %8 = call i32 (i8*, ...) @test_stdarg_builtin_va(i8* noundef nonnull %7, i32 noundef 1, i64 noundef 1981891433, i32 noundef 2, i32* noundef nonnull %2)
  %.not1 = icmp eq i32 %8, 1
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %6
  br label %13

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 1
  br label %13

13:                                               ; preds = %10, %9, %5
  %.0 = phi i32 [ 0, %5 ], [ 0, %9 ], [ %12, %10 ]
  ret i32 %.0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal i32 @test_stdarg_va(i8* noundef readnone %0, ...) #1 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %5 = load i32, i32* %4, align 16
  %6 = icmp ult i32 %5, 41
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %9 = load i8*, i8** %8, align 16
  %10 = sext i32 %5 to i64
  %11 = getelementptr i8, i8* %9, i64 %10
  %12 = add i32 %5, 8
  store i32 %12, i32* %4, align 16
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr i8, i8* %15, i64 8
  store i8* %16, i8** %14, align 8
  br label %17

17:                                               ; preds = %13, %7
  %.in = phi i8* [ %11, %7 ], [ %15, %13 ]
  %18 = bitcast i8* %.in to i32*
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %21 = load i32, i32* %20, align 16
  %22 = icmp ult i32 %21, 41
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %25 = load i8*, i8** %24, align 16
  %26 = sext i32 %21 to i64
  %27 = getelementptr i8, i8* %25, i64 %26
  %28 = add i32 %21, 8
  store i32 %28, i32* %20, align 16
  br label %33

29:                                               ; preds = %17
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr i8, i8* %31, i64 8
  store i8* %32, i8** %30, align 8
  br label %33

33:                                               ; preds = %29, %23
  %.in1 = phi i8* [ %27, %23 ], [ %31, %29 ]
  %34 = bitcast i8* %.in1 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %37 = load i32, i32* %36, align 16
  %38 = icmp ult i32 %37, 41
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %41 = load i8*, i8** %40, align 16
  %42 = sext i32 %37 to i64
  %43 = getelementptr i8, i8* %41, i64 %42
  %44 = add i32 %37, 8
  store i32 %44, i32* %36, align 16
  br label %49

45:                                               ; preds = %33
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr i8, i8* %47, i64 8
  store i8* %48, i8** %46, align 8
  br label %49

49:                                               ; preds = %45, %39
  %.in2 = phi i8* [ %43, %39 ], [ %47, %45 ]
  %50 = bitcast i8* %.in2 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %53 = load i32, i32* %52, align 16
  %54 = icmp ult i32 %53, 41
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %57 = load i8*, i8** %56, align 16
  %58 = sext i32 %53 to i64
  %59 = getelementptr i8, i8* %57, i64 %58
  %60 = add i32 %53, 8
  store i32 %60, i32* %52, align 16
  br label %65

61:                                               ; preds = %49
  %62 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr i8, i8* %63, i64 8
  store i8* %64, i8** %62, align 8
  br label %65

65:                                               ; preds = %61, %55
  %.in3 = phi i8* [ %59, %55 ], [ %63, %61 ]
  %66 = bitcast i8* %.in3 to i8**
  %67 = load i8*, i8** %66, align 8
  %68 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %68)
  %69 = icmp eq i8* %67, %0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = icmp eq i32 %19, 1
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = icmp eq i64 %35, 1981891429
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = icmp eq i32 %51, 2
  %phi.cast = zext i1 %75 to i32
  br label %76

76:                                               ; preds = %74, %72, %70, %65
  %77 = phi i32 [ 0, %72 ], [ 0, %70 ], [ 0, %65 ], [ %phi.cast, %74 ]
  ret i32 %77
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal i32 @test_stdarg_builtin_va(i8* noundef readnone %0, ...) #1 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %5 = load i32, i32* %4, align 16
  %6 = icmp ult i32 %5, 41
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %9 = load i8*, i8** %8, align 16
  %10 = sext i32 %5 to i64
  %11 = getelementptr i8, i8* %9, i64 %10
  %12 = add i32 %5, 8
  store i32 %12, i32* %4, align 16
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr i8, i8* %15, i64 8
  store i8* %16, i8** %14, align 8
  br label %17

17:                                               ; preds = %13, %7
  %.in = phi i8* [ %11, %7 ], [ %15, %13 ]
  %18 = bitcast i8* %.in to i32*
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %21 = load i32, i32* %20, align 16
  %22 = icmp ult i32 %21, 41
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %25 = load i8*, i8** %24, align 16
  %26 = sext i32 %21 to i64
  %27 = getelementptr i8, i8* %25, i64 %26
  %28 = add i32 %21, 8
  store i32 %28, i32* %20, align 16
  br label %33

29:                                               ; preds = %17
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr i8, i8* %31, i64 8
  store i8* %32, i8** %30, align 8
  br label %33

33:                                               ; preds = %29, %23
  %.in1 = phi i8* [ %27, %23 ], [ %31, %29 ]
  %34 = bitcast i8* %.in1 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %37 = load i32, i32* %36, align 16
  %38 = icmp ult i32 %37, 41
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %41 = load i8*, i8** %40, align 16
  %42 = sext i32 %37 to i64
  %43 = getelementptr i8, i8* %41, i64 %42
  %44 = add i32 %37, 8
  store i32 %44, i32* %36, align 16
  br label %49

45:                                               ; preds = %33
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr i8, i8* %47, i64 8
  store i8* %48, i8** %46, align 8
  br label %49

49:                                               ; preds = %45, %39
  %.in2 = phi i8* [ %43, %39 ], [ %47, %45 ]
  %50 = bitcast i8* %.in2 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %53 = load i32, i32* %52, align 16
  %54 = icmp ult i32 %53, 41
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %57 = load i8*, i8** %56, align 16
  %58 = sext i32 %53 to i64
  %59 = getelementptr i8, i8* %57, i64 %58
  %60 = add i32 %53, 8
  store i32 %60, i32* %52, align 16
  br label %65

61:                                               ; preds = %49
  %62 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr i8, i8* %63, i64 8
  store i8* %64, i8** %62, align 8
  br label %65

65:                                               ; preds = %61, %55
  %.in3 = phi i8* [ %59, %55 ], [ %63, %61 ]
  %66 = bitcast i8* %.in3 to i8**
  %67 = load i8*, i8** %66, align 8
  %68 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %68)
  %69 = icmp eq i8* %67, %0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = icmp eq i32 %19, 1
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = icmp eq i64 %35, 1981891433
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = icmp eq i32 %51, 2
  %phi.cast = zext i1 %75 to i32
  br label %76

76:                                               ; preds = %74, %72, %70, %65
  %77 = phi i32 [ 0, %72 ], [ 0, %70 ], [ 0, %65 ], [ %phi.cast, %74 ]
  ret i32 %77
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
