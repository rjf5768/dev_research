; ModuleID = './linemod.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/linemod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@line_style = dso_local global i32 0, align 4
@dash_length = dso_local global float 1.000000e+01, align 4
@.str = private unnamed_addr constant [11 x i8] c"longdashed\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"long-dashed\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"dotdashed\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"dot-dashed\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"dotted\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"solid\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"shortdashed\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"short-dashed\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [51 x i8] c"Unrecognized line mode `%s' ignored. Using solid.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @linemod(i8* noundef %0) #0 {
  %2 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %1
  br label %42

8:                                                ; preds = %4
  %9 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %41

12:                                               ; preds = %8
  %13 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12
  br label %40

19:                                               ; preds = %15
  %20 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %39

23:                                               ; preds = %19
  %24 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %38

27:                                               ; preds = %23
  %28 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)) #3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0)) #3
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  br label %37

34:                                               ; preds = %30
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i8* noundef %0) #4
  br label %37

37:                                               ; preds = %34, %33
  %storemerge1 = phi i32 [ 0, %34 ], [ 1, %33 ]
  %storemerge = phi float [ 1.000000e+00, %34 ], [ 1.000000e+01, %33 ]
  br label %38

38:                                               ; preds = %37, %26
  %storemerge3 = phi i32 [ %storemerge1, %37 ], [ 0, %26 ]
  %storemerge2 = phi float [ %storemerge, %37 ], [ 1.000000e+00, %26 ]
  br label %39

39:                                               ; preds = %38, %22
  %storemerge5 = phi i32 [ %storemerge3, %38 ], [ 2, %22 ]
  %storemerge4 = phi float [ %storemerge2, %38 ], [ 2.000000e+00, %22 ]
  br label %40

40:                                               ; preds = %39, %18
  %storemerge7 = phi i32 [ %storemerge5, %39 ], [ 1, %18 ]
  %storemerge6 = phi float [ %storemerge4, %39 ], [ 4.000000e+00, %18 ]
  br label %41

41:                                               ; preds = %40, %11
  %storemerge9 = phi i32 [ %storemerge7, %40 ], [ 2, %11 ]
  %storemerge8 = phi float [ %storemerge6, %40 ], [ 9.990000e+02, %11 ]
  br label %42

42:                                               ; preds = %41, %7
  %storemerge11 = phi i32 [ %storemerge9, %41 ], [ 1, %7 ]
  %storemerge10 = phi float [ %storemerge8, %41 ], [ 2.000000e+01, %7 ]
  store i32 %storemerge11, i32* @line_style, align 4
  store float %storemerge10, float* @dash_length, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
