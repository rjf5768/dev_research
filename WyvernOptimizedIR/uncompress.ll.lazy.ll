; ModuleID = './uncompress.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/pcompress2/uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"ERROR: Could not find infile.\0A\00", align 1
@size = dso_local global i32 0, align 4
@orgpos = dso_local global i32 0, align 4
@in = dso_local global i8* null, align 8
@deari = dso_local global i8* null, align 8
@derle = dso_local global i8* null, align 8
@debw = dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"ERROR: Out of memory\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @uncompress(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds i8*, i8** %1, i64 1
  %4 = load i8*, i8** %3, align 8
  %5 = call noalias %struct._IO_FILE* @fopen(i8* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7
  %6 = icmp eq %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %8) #8
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %2
  %11 = call i64 @fread(i8* noundef bitcast (i32* @size to i8*), i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef nonnull %5) #7
  %12 = call i64 @fread(i8* noundef bitcast (i32* @orgpos to i8*), i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef nonnull %5) #7
  %13 = load i32, i32* @size, align 4
  %14 = shl i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call noalias i8* @malloc(i64 noundef %15) #7
  store i8* %16, i8** @in, align 8
  %17 = shl i32 %13, 1
  %18 = zext i32 %17 to i64
  %19 = call noalias i8* @malloc(i64 noundef %18) #7
  store i8* %19, i8** @deari, align 8
  %20 = load i32, i32* @size, align 4
  %21 = shl i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call noalias i8* @malloc(i64 noundef %22) #7
  store i8* %23, i8** @derle, align 8
  %24 = shl i32 %20, 1
  %25 = zext i32 %24 to i64
  %26 = call noalias i8* @malloc(i64 noundef %25) #7
  store i8* %26, i8** @debw, align 8
  %27 = load i8*, i8** @in, align 8
  %.not = icmp eq i8* %27, null
  br i1 %.not, label %34, label %28

28:                                               ; preds = %10
  %29 = load i8*, i8** @deari, align 8
  %.not1 = icmp eq i8* %29, null
  br i1 %.not1, label %34, label %30

30:                                               ; preds = %28
  %31 = load i8*, i8** @derle, align 8
  %.not2 = icmp eq i8* %31, null
  br i1 %.not2, label %34, label %32

32:                                               ; preds = %30
  %33 = load i8*, i8** @debw, align 8
  %.not3 = icmp eq i8* %33, null
  br i1 %.not3, label %34, label %37

34:                                               ; preds = %32, %30, %28, %10
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %35) #8
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

37:                                               ; preds = %32
  %38 = load i8*, i8** @in, align 8
  %39 = load i32, i32* @size, align 4
  %40 = shl i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = call i64 @fread(i8* noundef %38, i64 noundef 1, i64 noundef %41, %struct._IO_FILE* noundef nonnull %5) #7
  %43 = trunc i64 %42 to i32
  %44 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %5) #7
  %45 = call i32 @do_deari(i32 noundef %43) #7
  %46 = load i8*, i8** @in, align 8
  call void @free(i8* noundef %46) #7
  call void @do_derle(i32 noundef %45)
  %47 = load i8*, i8** @deari, align 8
  call void @free(i8* noundef %47) #7
  call void @do_debwe()
  %48 = load i8*, i8** @derle, align 8
  call void @free(i8* noundef %48) #7
  %49 = load i8*, i8** @debw, align 8
  %50 = load i32, i32* @size, align 4
  %51 = zext i32 %50 to i64
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = call i64 @fwrite(i8* noundef %49, i64 noundef 1, i64 noundef %51, %struct._IO_FILE* noundef %52)
  %54 = load i8*, i8** @debw, align 8
  call void @free(i8* noundef %54) #7
  ret void

UnifiedUnreachableBlock:                          ; preds = %34, %7
  unreachable
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @do_deari(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal void @do_derle(i32 noundef %0) #4 {
  br label %2

2:                                                ; preds = %56, %1
  %.01 = phi i32 [ 0, %1 ], [ %.12, %56 ]
  %.0 = phi i32 [ 0, %1 ], [ %.2, %56 ]
  %3 = icmp ult i32 %.01, %0
  br i1 %3, label %4, label %57

4:                                                ; preds = %2
  %5 = load i8*, i8** @deari, align 8
  %6 = zext i32 %.01 to i64
  %7 = getelementptr inbounds i8, i8* %5, i64 %6
  %8 = load i8, i8* %7, align 1
  %.not = icmp sgt i8 %8, -1
  br i1 %.not, label %32, label %9

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %27, %9
  %.03 = phi i32 [ 0, %9 ], [ %29, %27 ]
  %.1 = phi i32 [ %.0, %9 ], [ %28, %27 ]
  %11 = load i8*, i8** @deari, align 8
  %12 = zext i32 %.01 to i64
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = and i8 %14, 127
  %16 = zext i8 %15 to i32
  %17 = icmp ult i32 %.03, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %10
  %19 = load i8*, i8** @deari, align 8
  %20 = add i32 %.01, 1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = load i8*, i8** @derle, align 8
  %25 = zext i32 %.1 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8 %23, i8* %26, align 1
  br label %27

27:                                               ; preds = %18
  %28 = add i32 %.1, 1
  %29 = add i32 %.03, 1
  br label %10, !llvm.loop !4

30:                                               ; preds = %10
  %31 = add i32 %.01, 2
  br label %56

32:                                               ; preds = %4
  %33 = load i8*, i8** @derle, align 8
  %34 = zext i32 %.0 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8*, i8** @deari, align 8
  %37 = zext i32 %.01 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 1
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  %40 = zext i32 %.01 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* nonnull align 1 %39, i64 %43, i1 false)
  %44 = load i8*, i8** @deari, align 8
  %45 = zext i32 %.01 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add i32 %.0, %48
  %50 = zext i32 %.01 to i64
  %51 = getelementptr inbounds i8, i8* %44, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = add nuw nsw i32 %53, 1
  %55 = add i32 %.01, %54
  br label %56

56:                                               ; preds = %32, %30
  %.12 = phi i32 [ %31, %30 ], [ %55, %32 ]
  %.2 = phi i32 [ %.1, %30 ], [ %49, %32 ]
  br label %2, !llvm.loop !6

57:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define internal void @do_debwe() #0 {
  %1 = alloca [256 x i32], align 16
  %2 = alloca [256 x i32], align 16
  %3 = load i8*, i8** @derle, align 8
  %4 = load i32, i32* @size, align 4
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 2
  %7 = call noalias i8* @malloc(i64 noundef %6) #7
  %8 = bitcast i8* %7 to i32*
  br label %9

9:                                                ; preds = %14, %0
  %.02 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %10 = icmp ult i32 %.02, 256
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = zext i32 %.02 to i64
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %12
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %11
  %15 = add i32 %.02, 1
  br label %9, !llvm.loop !7

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %28, %16
  %.13 = phi i32 [ 0, %16 ], [ %29, %28 ]
  %18 = load i32, i32* @size, align 4
  %19 = icmp ult i32 %.13, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = zext i32 %.13 to i64
  %22 = getelementptr inbounds i8, i8* %3, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %20
  %29 = add i32 %.13, 1
  br label %17, !llvm.loop !8

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %41, %30
  %.01 = phi i32 [ 0, %30 ], [ %43, %41 ]
  %.0 = phi i32 [ 0, %30 ], [ %42, %41 ]
  %32 = icmp ult i32 %.01, 256
  br i1 %32, label %33, label %44

33:                                               ; preds = %31
  %34 = zext i32 %.01 to i64
  %35 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %34
  store i32 %.0, i32* %35, align 4
  %36 = zext i32 %.01 to i64
  %37 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = zext i32 %.01 to i64
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %39
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %33
  %42 = add i32 %.0, %38
  %43 = add i32 %.01, 1
  br label %31, !llvm.loop !9

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %65, %44
  %.1 = phi i32 [ 0, %44 ], [ %66, %65 ]
  %46 = load i32, i32* @size, align 4
  %47 = icmp ult i32 %.1, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  %49 = zext i32 %.1 to i64
  %50 = getelementptr inbounds i8, i8* %3, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = zext i8 %51 to i64
  %56 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %54, %57
  %59 = zext i32 %.1 to i64
  %60 = getelementptr inbounds i32, i32* %8, i64 %59
  store i32 %58, i32* %60, align 4
  %61 = zext i8 %51 to i64
  %62 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %48
  %66 = add i32 %.1, 1
  br label %45, !llvm.loop !10

67:                                               ; preds = %45
  %68 = load i32, i32* @orgpos, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %3, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** @debw, align 8
  %73 = load i32, i32* @size, align 4
  %74 = add i32 %73, -1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8 %71, i8* %76, align 1
  br label %77

77:                                               ; preds = %98, %67
  %.2 = phi i32 [ 1, %67 ], [ %99, %98 ]
  %78 = load i32, i32* @size, align 4
  %79 = icmp ult i32 %.2, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %77
  %81 = load i32, i32* @orgpos, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %8, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %3, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = load i8*, i8** @debw, align 8
  %89 = load i32, i32* @size, align 4
  %90 = xor i32 %.2, -1
  %91 = add i32 %89, %90
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  store i8 %87, i8* %93, align 1
  %94 = load i32, i32* @orgpos, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %8, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* @orgpos, align 4
  br label %98

98:                                               ; preds = %80
  %99 = add i32 %.2, 1
  br label %77, !llvm.loop !11

100:                                              ; preds = %77
  call void @free(i8* noundef %7) #7
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }

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
!11 = distinct !{!11, !5}
