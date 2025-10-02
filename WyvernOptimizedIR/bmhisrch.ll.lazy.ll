; ModuleID = './bmhisrch.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-stringsearch/bmhisrch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@patlen = internal global i32 0, align 4
@pat = internal global i8* null, align 8
@skip = internal global [256 x i32] zeroinitializer, align 16
@skip2 = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @bmhi_init(i8* noundef %0) #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #5
  %3 = trunc i64 %2 to i32
  store i32 %3, i32* @patlen, align 4
  %4 = load i8*, i8** @pat, align 8
  %sext = shl i64 %2, 32
  %5 = ashr exact i64 %sext, 32
  %6 = call i8* @realloc(i8* noundef %4, i64 noundef %5) #6
  store i8* %6, i8** @pat, align 8
  %.not = icmp eq i8* %6, null
  br i1 %.not, label %7, label %8

7:                                                ; preds = %1
  call void @exit(i32 noundef 1) #7
  unreachable

8:                                                ; preds = %1
  %9 = call i32 @atexit(void ()* noundef nonnull @bhmi_cleanup) #6
  br label %10

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %24, %10
  %.0 = phi i32 [ 0, %10 ], [ %25, %24 ]
  %12 = load i32, i32* @patlen, align 4
  %13 = icmp slt i32 %.0, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds i8, i8* %0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = call i32 @toupper(i32 noundef %18) #5
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** @pat, align 8
  %22 = zext i32 %.0 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8 %20, i8* %23, align 1
  br label %24

24:                                               ; preds = %14
  %25 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !4

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %33, %26
  %.1 = phi i32 [ 0, %26 ], [ %34, %33 ]
  %28 = icmp ult i32 %.1, 256
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = load i32, i32* @patlen, align 4
  %31 = zext i32 %.1 to i64
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %31
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29
  %34 = add nuw nsw i32 %.1, 1
  br label %27, !llvm.loop !6

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %61, %35
  %.2 = phi i32 [ 0, %35 ], [ %62, %61 ]
  %37 = load i32, i32* @patlen, align 4
  %38 = add nsw i32 %37, -1
  %39 = icmp slt i32 %.2, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load i32, i32* @patlen, align 4
  %42 = xor i32 %.2, -1
  %43 = add i32 %41, %42
  %44 = load i8*, i8** @pat, align 8
  %45 = zext i32 %.2 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load i32, i32* @patlen, align 4
  %51 = xor i32 %.2, -1
  %52 = add i32 %50, %51
  %53 = load i8*, i8** @pat, align 8
  %54 = zext i32 %.2 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = call i32 @tolower(i32 noundef %57) #5
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %59
  store i32 %52, i32* %60, align 4
  br label %61

61:                                               ; preds = %40
  %62 = add nuw nsw i32 %.2, 1
  br label %36, !llvm.loop !7

63:                                               ; preds = %36
  %64 = load i8*, i8** @pat, align 8
  %65 = load i32, i32* @patlen, align 4
  %66 = add nsw i32 %65, -1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = zext i8 %69 to i64
  %72 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %71
  store i32 32767, i32* %72, align 4
  %73 = call i32 @tolower(i32 noundef %70) #5
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %74
  store i32 32767, i32* %75, align 4
  %76 = load i32, i32* @patlen, align 4
  store i32 %76, i32* @skip2, align 4
  br label %77

77:                                               ; preds = %92, %63
  %.3 = phi i32 [ 0, %63 ], [ %93, %92 ]
  %78 = load i32, i32* @patlen, align 4
  %79 = add nsw i32 %78, -1
  %80 = icmp slt i32 %.3, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load i8*, i8** @pat, align 8
  %83 = zext i32 %.3 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = icmp eq i8 %85, %69
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32, i32* @patlen, align 4
  %89 = xor i32 %.3, -1
  %90 = add i32 %88, %89
  store i32 %90, i32* @skip2, align 4
  br label %91

91:                                               ; preds = %87, %81
  br label %92

92:                                               ; preds = %91
  %93 = add nuw nsw i32 %.3, 1
  br label %77, !llvm.loop !8

94:                                               ; preds = %77
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @atexit(void ()* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @bhmi_cleanup() #0 {
  %1 = load i8*, i8** @pat, align 8
  call void @free(i8* noundef %1) #6
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @toupper(i32 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @tolower(i32 noundef) #1

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local i8* @bmhi_search(i8* noundef readonly %0, i32 noundef %1) #4 {
  %3 = load i32, i32* @patlen, align 4
  %4 = xor i32 %1, -1
  %5 = add i32 %3, %4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %60

8:                                                ; preds = %2
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  br label %11

11:                                               ; preds = %59, %8
  %.02 = phi i32 [ %5, %8 ], [ %56, %59 ]
  br label %12

12:                                               ; preds = %21, %11
  %.1 = phi i32 [ %.02, %11 ], [ %19, %21 ]
  %13 = sext i32 %.1 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %.1, %18
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %12, !llvm.loop !9

22:                                               ; preds = %12
  %23 = sub nsw i32 32767, %1
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %60

26:                                               ; preds = %22
  %27 = add nsw i32 %19, -32767
  %28 = load i32, i32* @patlen, align 4
  %29 = add nsw i32 %28, -1
  %30 = sub nsw i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %10, i64 %31
  br label %33

33:                                               ; preds = %50, %26
  %.01 = phi i32 [ %29, %26 ], [ %34, %50 ]
  %34 = add nsw i32 %.01, -1
  %35 = icmp sgt i32 %.01, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds i8, i8* %32, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = call i32 @toupper(i32 noundef %40) #5
  %42 = load i8*, i8** @pat, align 8
  %43 = sext i32 %34 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %41, %46
  br label %48

48:                                               ; preds = %36, %33
  %49 = phi i1 [ false, %33 ], [ %47, %36 ]
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  br label %33, !llvm.loop !10

51:                                               ; preds = %48
  %52 = icmp slt i32 %.01, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  br label %60

54:                                               ; preds = %51
  %55 = load i32, i32* @skip2, align 4
  %56 = add nsw i32 %27, %55
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %60

59:                                               ; preds = %54
  br label %11

60:                                               ; preds = %58, %53, %25, %7
  %.0 = phi i8* [ null, %7 ], [ null, %25 ], [ %32, %53 ], [ null, %58 ]
  ret i8* %.0
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
