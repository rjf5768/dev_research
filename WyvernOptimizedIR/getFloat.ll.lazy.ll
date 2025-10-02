; ModuleID = './getFloat.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getFloat.c\00", align 1
@__PRETTY_FUNCTION__.getFloat = private unnamed_addr constant [30 x i8] c"Int getFloat(FILE *, Float *)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"value\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getFloat(%struct._IO_FILE* noundef %0, float* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %.not = icmp eq %struct._IO_FILE* %0, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.getFloat, i64 0, i64 0)) #6
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  %.not1 = icmp eq float* %1, null
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %6
  br label %9

8:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.getFloat, i64 0, i64 0)) #6
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  %10 = call i8* @getString(%struct._IO_FILE* noundef nonnull %0) #7
  %.not2 = icmp eq i8* %10, null
  br i1 %.not2, label %36, label %11

11:                                               ; preds = %9
  %12 = call double @strtod(i8* noundef nonnull %10, i8** noundef nonnull %3) #7
  %13 = fptrunc double %12 to float
  store float %13, float* %1, align 4
  %14 = fcmp oeq float %13, 0.000000e+00
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %strlenfirst = load i8, i8* %16, align 1
  %.not3 = icmp eq i8 %strlenfirst, 0
  br i1 %.not3, label %22, label %17

17:                                               ; preds = %15
  %18 = call i32* @__errno_location() #8
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 34
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store float 0xC7EFFFFFE0000000, float* %1, align 4
  br label %35

22:                                               ; preds = %17, %15, %11
  %23 = load float, float* %1, align 4
  %24 = fpext float %23 to double
  %25 = fcmp olt double %24, 0xC7EFFFFFE091FF3D
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store float 0xC7EFFFFFE0000000, float* %1, align 4
  br label %34

27:                                               ; preds = %22
  %28 = load float, float* %1, align 4
  %29 = fpext float %28 to double
  %30 = fcmp ogt double %29, 0x47EFFFFFE091FF3D
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store float 0x47EFFFFFE0000000, float* %1, align 4
  br label %33

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %31
  %.0 = phi i64 [ 2, %31 ], [ 0, %32 ]
  br label %34

34:                                               ; preds = %33, %26
  %.1 = phi i64 [ 2, %26 ], [ %.0, %33 ]
  br label %35

35:                                               ; preds = %34, %21
  %.2 = phi i64 [ 3, %21 ], [ %.1, %34 ]
  br label %37

36:                                               ; preds = %9
  store float 0xC7EFFFFFE0000000, float* %1, align 4
  br label %37

37:                                               ; preds = %36, %35
  %.3 = phi i64 [ %.2, %35 ], [ 1, %36 ]
  ret i64 %.3

UnifiedUnreachableBlock:                          ; preds = %8, %5
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i8* @getString(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local double @strtod(i8* noundef, i8** noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
