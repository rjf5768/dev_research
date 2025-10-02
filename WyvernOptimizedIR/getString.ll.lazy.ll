; ModuleID = './getString.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@getString.buffer = internal global [1025 x i8] zeroinitializer, align 16
@getString.name = internal global [10 x i8] c"getString\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getString.c\00", align 1
@__PRETTY_FUNCTION__.getString = private unnamed_addr constant [24 x i8] c"Char *getString(FILE *)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"maximum buffer length exceeded\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"error pushing character back onto stream\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @getString(%struct._IO_FILE* noundef %0) #0 {
  %.not = icmp eq %struct._IO_FILE* %0, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.getString, i64 0, i64 0)) #4
  unreachable

4:                                                ; preds = %2
  %5 = call i32 @fgetc(%struct._IO_FILE* noundef nonnull %0) #5
  br label %6

6:                                                ; preds = %19, %4
  %.02.in = phi i32 [ %5, %4 ], [ %20, %19 ]
  %.not5 = icmp eq i32 %.02.in, -1
  br i1 %.not5, label %17, label %7

7:                                                ; preds = %6
  %.not10 = icmp eq i32 %.02.in, 10
  br i1 %.not10, label %17, label %8

8:                                                ; preds = %7
  %.not11 = icmp eq i32 %.02.in, 13
  br i1 %.not11, label %17, label %9

9:                                                ; preds = %8
  %10 = call i16** @__ctype_b_loc() #6
  %11 = load i16*, i16** %10, align 8
  %12 = sext i32 %.02.in to i64
  %13 = getelementptr inbounds i16, i16* %11, i64 %12
  %14 = load i16, i16* %13, align 2
  %15 = and i16 %14, 8192
  %16 = icmp ne i16 %15, 0
  br label %17

17:                                               ; preds = %9, %8, %7, %6
  %18 = phi i1 [ false, %8 ], [ false, %7 ], [ false, %6 ], [ %16, %9 ]
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = call i32 @fgetc(%struct._IO_FILE* noundef nonnull %0) #5
  br label %6, !llvm.loop !4

21:                                               ; preds = %17
  %22 = icmp eq i32 %.02.in, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %63

24:                                               ; preds = %21
  %25 = icmp eq i32 %.02.in, 10
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = icmp eq i32 %.02.in, 13
  br i1 %27, label %28, label %30

28:                                               ; preds = %26, %24
  %29 = call i32 @ungetc(i32 noundef %.02.in, %struct._IO_FILE* noundef nonnull %0) #5
  br label %63

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  %32 = trunc i32 %.02.in to i8
  store i8 %32, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 0), align 16
  %33 = call i32 @fgetc(%struct._IO_FILE* noundef nonnull %0) #5
  br label %34

34:                                               ; preds = %49, %31
  %.1.in = phi i32 [ %33, %31 ], [ %53, %49 ]
  %.01 = phi i64 [ 1, %31 ], [ %52, %49 ]
  %.not6 = icmp eq i32 %.1.in, -1
  br i1 %.not6, label %42, label %35

35:                                               ; preds = %34
  %36 = call i16** @__ctype_b_loc() #6
  %37 = load i16*, i16** %36, align 8
  %38 = sext i32 %.1.in to i64
  %39 = getelementptr inbounds i16, i16* %37, i64 %38
  %40 = load i16, i16* %39, align 2
  %41 = and i16 %40, 8192
  %.not9 = icmp eq i16 %41, 0
  br label %42

42:                                               ; preds = %35, %34
  %43 = phi i1 [ false, %34 ], [ %.not9, %35 ]
  br i1 %43, label %44, label %54

44:                                               ; preds = %42
  %45 = icmp ugt i64 %.01, 1023
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  call void @errorMessage(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8 noundef signext 0) #5
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @getString.name, i64 0, i64 0), i8 noundef signext 1) #5
  call void @flushErrorMessage() #5
  %47 = add nuw nsw i64 %.01, 1
  %48 = getelementptr inbounds [1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 %47
  store i8 0, i8* %48, align 1
  br label %63

49:                                               ; preds = %44
  %50 = trunc i32 %.1.in to i8
  %51 = getelementptr inbounds [1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 %.01
  store i8 %50, i8* %51, align 1
  %52 = add nuw nsw i64 %.01, 1
  %53 = call i32 @fgetc(%struct._IO_FILE* noundef nonnull %0) #5
  br label %34, !llvm.loop !6

54:                                               ; preds = %42
  %55 = getelementptr inbounds [1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 %.01
  store i8 0, i8* %55, align 1
  %.not7 = icmp eq i32 %.1.in, -1
  br i1 %.not7, label %62, label %56

56:                                               ; preds = %54
  %57 = call i32 @ungetc(i32 noundef %.1.in, %struct._IO_FILE* noundef nonnull %0) #5
  %.not8 = icmp eq i32 %57, %.1.in
  br i1 %.not8, label %58, label %60

58:                                               ; preds = %56
  %59 = icmp eq i32 %57, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %58, %56
  call void @errorMessage(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0) #5
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @getString.name, i64 0, i64 0), i8 noundef signext 1) #5
  call void @flushErrorMessage() #5
  br label %63

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61, %54
  br label %63

63:                                               ; preds = %62, %60, %46, %28, %23
  %.0 = phi i8* [ null, %23 ], [ null, %28 ], [ getelementptr inbounds ([1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 0), %46 ], [ null, %60 ], [ getelementptr inbounds ([1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 0), %62 ]
  ret i8* %.0
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @fgetc(%struct._IO_FILE* noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

declare dso_local void @flushErrorMessage() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
