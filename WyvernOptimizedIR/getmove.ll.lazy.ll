; ModuleID = './getmove.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/getmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@play = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"gnugo.dat\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@p = external dso_local global [19 x [19 x i8]], align 16
@.str.5 = private unnamed_addr constant [10 x i8] c"%d %d %d \00", align 1
@mymove = external dso_local global i32, align 4
@mk = external dso_local global i32, align 4
@uk = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@opn = external dso_local global [9 x i32], align 16
@.str.7 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@pass = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"illegal move !\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"your move? \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@str = private unnamed_addr constant [15 x i8] c"illegal move !\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @getmove(i8* noundef %0, i32* noundef %1, i32* noundef %2) #0 {
  %4 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store i32 0, i32* @play, align 4
  br label %73

7:                                                ; preds = %3
  %8 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %7
  %11 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %12

12:                                               ; preds = %26, %10
  %.01 = phi i32 [ 0, %10 ], [ %27, %26 ]
  %13 = icmp ult i32 %.01, 19
  br i1 %13, label %14, label %28

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %23, %14
  %.0 = phi i32 [ 0, %14 ], [ %24, %23 ]
  %16 = icmp ult i32 %.0, 19
  br i1 %16, label %17, label %25

17:                                               ; preds = %15
  %18 = zext i32 %.01 to i64
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %fputc = call i32 @fputc(i32 %22, %struct._IO_FILE* %11)
  br label %23

23:                                               ; preds = %17
  %24 = add nuw nsw i32 %.0, 1
  br label %15, !llvm.loop !4

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = add nuw nsw i32 %.01, 1
  br label %12, !llvm.loop !6

28:                                               ; preds = %12
  %29 = load i32, i32* @mymove, align 4
  %30 = load i32, i32* @mk, align 4
  %31 = load i32, i32* @uk, align 4
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 noundef %29, i32 noundef %30, i32 noundef %31) #7
  br label %33

33:                                               ; preds = %40, %28
  %.1 = phi i32 [ 0, %28 ], [ %41, %40 ]
  %34 = icmp ult i32 %.1, 9
  br i1 %34, label %35, label %42

35:                                               ; preds = %33
  %36 = zext i32 %.1 to i64
  %37 = getelementptr inbounds [9 x i32], [9 x i32]* @opn, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 noundef %38) #7
  br label %40

40:                                               ; preds = %35
  %41 = add nuw nsw i32 %.1, 1
  br label %33, !llvm.loop !7

42:                                               ; preds = %33
  %43 = call i32 @fclose(%struct._IO_FILE* noundef %11) #7
  store i32 -1, i32* @play, align 4
  br label %72

44:                                               ; preds = %7
  %45 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @pass, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @pass, align 4
  store i32 -1, i32* %1, align 4
  br label %71

50:                                               ; preds = %44
  store i32 0, i32* @pass, align 4
  %51 = call i32 @getij(i8* noundef %0, i32* noundef %1, i32* noundef %2) #7
  %.not = icmp eq i32 %51, 0
  br i1 %.not, label %63, label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %.not3 = icmp eq i8 %58, 0
  br i1 %.not3, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @suicide(i32 noundef %60, i32 noundef %61) #7
  %.not4 = icmp eq i32 %62, 0
  br i1 %.not4, label %70, label %63

63:                                               ; preds = %59, %52, %50
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %65 = call i32 @feof(%struct._IO_FILE* noundef %64) #7
  %.not2 = icmp eq i32 %65, 0
  br i1 %.not2, label %67, label %66

66:                                               ; preds = %63
  call void @exit(i32 noundef 1) #8
  unreachable

67:                                               ; preds = %63
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @str, i64 0, i64 0))
  %68 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)) #7
  %69 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef %0) #7
  call void @getmove(i8* noundef %0, i32* noundef %1, i32* noundef %2)
  br label %70

70:                                               ; preds = %67, %59
  br label %71

71:                                               ; preds = %70, %47
  br label %72

72:                                               ; preds = %71, %42
  br label %73

73:                                               ; preds = %72, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local i32 @getij(i8* noundef, i32* noundef, i32* noundef) #2

declare dso_local i32 @suicide(i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i32 @__isoc99_scanf(i8* noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
