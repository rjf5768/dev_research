; ModuleID = './printnets.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/printnets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.nrbox = type { %struct.altbox**, i32, i32, i32 }
%struct.altbox = type { i32*, i32, %struct.chanbox* }
%struct.chanbox = type { i32, i32, i32, i32, %struct.chanbox* }

@.str = private unnamed_addr constant [7 x i8] c"%s.pyt\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@largestNet = external dso_local global i32, align 4
@netRoutes = external dso_local global %struct.nrbox*, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"\0A\0Anet %s \00", align 1
@nnameArray = external dso_local global i8**, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"    length %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pins %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"        %s\0A\00", align 1
@pnameArray = external dso_local global i8**, align 8
@pinOffset = external dso_local global i32*, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"channels %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"        %d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @printnets() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %3 = load i8*, i8** @cktName, align 8
  %4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %2, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %3) #4
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %6 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #4
  %7 = icmp eq %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %10) #4
  call void @exit(i32 noundef 0) #5
  unreachable

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %116, %12
  %.02 = phi i32 [ 1, %12 ], [ %117, %116 ]
  %14 = load i32, i32* @largestNet, align 4
  %.not = icmp sgt i32 %.02, %14
  br i1 %.not, label %118, label %15

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %113, %15
  %.01 = phi i32 [ 1, %15 ], [ %114, %113 ]
  %17 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %18 = zext i32 %.02 to i64
  %19 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %17, i64 %18, i32 1
  %20 = load i32, i32* %19, align 8
  %.not5 = icmp sgt i32 %.01, %20
  br i1 %.not5, label %115, label %21

21:                                               ; preds = %16
  %22 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %23 = zext i32 %.02 to i64
  %24 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %22, i64 %23, i32 0
  %25 = load %struct.altbox**, %struct.altbox*** %24, align 8
  %26 = zext i32 %.01 to i64
  %27 = getelementptr inbounds %struct.altbox*, %struct.altbox** %25, i64 %26
  %28 = load %struct.altbox*, %struct.altbox** %27, align 8
  %29 = getelementptr inbounds %struct.altbox, %struct.altbox* %28, i64 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %32 = zext i32 %.02 to i64
  %33 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %31, i64 %32, i32 0
  %34 = load %struct.altbox**, %struct.altbox*** %33, align 8
  %35 = zext i32 %.01 to i64
  %36 = getelementptr inbounds %struct.altbox*, %struct.altbox** %34, i64 %35
  %37 = load %struct.altbox*, %struct.altbox** %36, align 8
  %38 = getelementptr inbounds %struct.altbox, %struct.altbox* %37, i64 0, i32 2
  %39 = load %struct.chanbox*, %struct.chanbox** %38, align 8
  %40 = icmp eq i32 %.01, 1
  br i1 %40, label %41, label %59

41:                                               ; preds = %21
  %42 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %43 = zext i32 %.02 to i64
  %44 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %42, i64 %43, i32 0
  %45 = load %struct.altbox**, %struct.altbox*** %44, align 8
  %46 = zext i32 %.01 to i64
  %47 = getelementptr inbounds %struct.altbox*, %struct.altbox** %45, i64 %46
  %48 = load %struct.altbox*, %struct.altbox** %47, align 8
  %49 = getelementptr inbounds %struct.altbox, %struct.altbox* %48, i64 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i8**, i8*** @nnameArray, align 8
  %52 = zext i32 %.02 to i64
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef %54) #4
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 noundef %50) #4
  %57 = load i32, i32* %30, align 4
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef %57) #4
  br label %59

59:                                               ; preds = %41, %21
  br label %60

60:                                               ; preds = %79, %59
  %.03 = phi i32 [ 1, %59 ], [ %80, %79 ]
  %61 = load i32, i32* %30, align 4
  %.not6 = icmp sgt i32 %.03, %61
  br i1 %.not6, label %81, label %62

62:                                               ; preds = %60
  %63 = icmp eq i32 %.01, 1
  br i1 %63, label %64, label %78

64:                                               ; preds = %62
  %65 = load i8**, i8*** @pnameArray, align 8
  %66 = load i32*, i32** @pinOffset, align 8
  %67 = zext i32 %.02 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %.03 to i64
  %71 = getelementptr inbounds i32, i32* %30, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %65, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* noundef %76) #4
  br label %78

78:                                               ; preds = %64, %62
  br label %79

79:                                               ; preds = %78
  %80 = add nuw nsw i32 %.03, 1
  br label %60, !llvm.loop !4

81:                                               ; preds = %60
  br label %82

82:                                               ; preds = %83, %81
  %.04 = phi i32 [ 0, %81 ], [ %84, %83 ]
  %.0 = phi %struct.chanbox* [ %39, %81 ], [ %86, %83 ]
  %.not7 = icmp eq %struct.chanbox* %.0, null
  br i1 %.not7, label %87, label %83

83:                                               ; preds = %82
  %84 = add nuw nsw i32 %.04, 1
  %85 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %.0, i64 0, i32 4
  %86 = load %struct.chanbox*, %struct.chanbox** %85, align 8
  br label %82, !llvm.loop !6

87:                                               ; preds = %82
  %88 = icmp eq i32 %.01, 1
  br i1 %88, label %89, label %112

89:                                               ; preds = %87
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 noundef %.04) #4
  %91 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %92 = zext i32 %.02 to i64
  %93 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %91, i64 %92, i32 0
  %94 = load %struct.altbox**, %struct.altbox*** %93, align 8
  %95 = zext i32 %.01 to i64
  %96 = getelementptr inbounds %struct.altbox*, %struct.altbox** %94, i64 %95
  %97 = load %struct.altbox*, %struct.altbox** %96, align 8
  %98 = getelementptr inbounds %struct.altbox, %struct.altbox* %97, i64 0, i32 2
  br label %99

99:                                               ; preds = %100, %89
  %.1.in = phi %struct.chanbox** [ %98, %89 ], [ %110, %100 ]
  %.1 = load %struct.chanbox*, %struct.chanbox** %.1.in, align 8
  %.not8 = icmp eq %struct.chanbox* %.1, null
  br i1 %.not8, label %111, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %.1, i64 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %.1, i64 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %.1, i64 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %.1, i64 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef %102, i32 noundef %104, i32 noundef %106, i32 noundef %108) #4
  %110 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %.1, i64 0, i32 4
  br label %99, !llvm.loop !7

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %87
  br label %113

113:                                              ; preds = %112
  %114 = add nuw nsw i32 %.01, 1
  br label %16, !llvm.loop !8

115:                                              ; preds = %16
  br label %116

116:                                              ; preds = %115
  %117 = add nuw nsw i32 %.02, 1
  br label %13, !llvm.loop !9

118:                                              ; preds = %13
  %119 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %6) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
