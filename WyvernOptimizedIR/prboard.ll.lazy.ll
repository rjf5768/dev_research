; ModuleID = './prboard.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/prboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s.brd\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@numcells = external dso_local global i32, align 4
@numpads = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"\0A\0A\0A\0ABOUNDING BOX OF CELL:%6d  is \00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"LEFT:%6d  BOTTOM:%6d  RIGHT:%6d  TOP:%6d\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\0ATHESE ARE THE TILES COMPRISING THIS CELL\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"LEFT:%6d  BOTTOM:%6d\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"  RIGHT:%6d  TOP:%6d\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"THESE ARE THE TERMINALS FOR THIS CELL\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"TERMINAL:%s   XPOS:%6d   YPOS:%6d\0A\0A\00", align 1
@pinnames = external dso_local global i8**, align 8
@.str.10 = private unnamed_addr constant [35 x i8] c"TERMINAL:%s   XPOS:%6d   YPOS:%6d\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"ACTUALS           XPOS:%6d   YPOS:%6d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"   SITE:%6d\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @prboard() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %3 = load i8*, i8** @cktName, align 8
  %4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %2, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %3) #5
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %6 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5
  %7 = icmp eq %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %10) #5
  call void @exit(i32 noundef 0) #6
  unreachable

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %145, %12
  %.03 = phi i32 [ 1, %12 ], [ %146, %145 ]
  %14 = load i32, i32* @numcells, align 4
  %15 = load i32, i32* @numpads, align 4
  %16 = add nsw i32 %14, %15
  %.not = icmp sgt i32 %.03, %16
  br i1 %.not, label %147, label %17

17:                                               ; preds = %13
  %18 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %19 = zext i32 %.03 to i64
  %20 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %18, i64 %19
  %21 = load %struct.cellbox*, %struct.cellbox** %20, align 8
  %22 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i64 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i64 0, i32 21, i64 %24
  %26 = load %struct.tilebox*, %struct.tilebox** %25, align 8
  %27 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %26, i64 0, i32 17
  %28 = load %struct.termbox*, %struct.termbox** %27, align 8
  %29 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i64 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i64 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 noundef %.03) #5
  %34 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %26, i64 0, i32 9
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, %30
  %37 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %26, i64 0, i32 11
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, %32
  %40 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %26, i64 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %30
  %43 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %26, i64 0, i32 12
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %32
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 noundef %36, i32 noundef %39, i32 noundef %42, i32 noundef %45) #5
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* nonnull %6)
  br label %48

48:                                               ; preds = %64, %17
  %.pn = phi %struct.tilebox* [ %26, %17 ], [ %.01, %64 ]
  %.01.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.pn, i64 0, i32 0
  %.01 = load %struct.tilebox*, %struct.tilebox** %.01.in, align 8
  %.not4 = icmp eq %struct.tilebox* %.01, null
  br i1 %.not4, label %65, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 9
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, %30
  %53 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 11
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, %32
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef %52, i32 noundef %55) #5
  %57 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %30
  %60 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 12
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %32
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 noundef %59, i32 noundef %62) #5
  br label %64

64:                                               ; preds = %49
  br label %48, !llvm.loop !4

65:                                               ; preds = %48
  %66 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* nonnull %6)
  br label %67

67:                                               ; preds = %82, %65
  %.0 = phi %struct.termbox* [ %28, %65 ], [ %84, %82 ]
  %.not5 = icmp eq %struct.termbox* %.0, null
  br i1 %.not5, label %85, label %68

68:                                               ; preds = %67
  %69 = load i8**, i8*** @pinnames, align 8
  %70 = getelementptr inbounds %struct.termbox, %struct.termbox* %.0, i64 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %69, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds %struct.termbox, %struct.termbox* %.0, i64 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, %30
  %78 = getelementptr inbounds %struct.termbox, %struct.termbox* %.0, i64 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, %32
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* noundef %74, i32 noundef %77, i32 noundef %80) #5
  br label %82

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.termbox, %struct.termbox* %.0, i64 0, i32 0
  %84 = load %struct.termbox*, %struct.termbox** %83, align 8
  br label %67, !llvm.loop !6

85:                                               ; preds = %67
  %86 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i64 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %144

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %141, %89
  %.02 = phi i32 [ 1, %89 ], [ %142, %141 ]
  %91 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i64 0, i32 18
  %92 = load i32, i32* %91, align 4
  %.not6 = icmp sgt i32 %.02, %92
  br i1 %.not6, label %143, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i64 0, i32 20
  %95 = load %struct.uncombox*, %struct.uncombox** %94, align 8
  %96 = zext i32 %.02 to i64
  %97 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %95, i64 %96, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %.02 to i64
  %100 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %95, i64 %99, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i64 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i64 0, i32 21, i64 %104
  %106 = load %struct.tilebox*, %struct.tilebox** %105, align 8
  %107 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %106, i64 0, i32 18
  %108 = load %struct.locbox*, %struct.locbox** %107, align 8
  %109 = sext i32 %101 to i64
  %110 = getelementptr inbounds %struct.locbox, %struct.locbox* %108, i64 %109, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i64 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i64 0, i32 21, i64 %114
  %116 = load %struct.tilebox*, %struct.tilebox** %115, align 8
  %117 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %116, i64 0, i32 18
  %118 = load %struct.locbox*, %struct.locbox** %117, align 8
  %119 = sext i32 %101 to i64
  %120 = getelementptr inbounds %struct.locbox, %struct.locbox* %118, i64 %119, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i8**, i8*** @pinnames, align 8
  %123 = sext i32 %98 to i64
  %124 = getelementptr inbounds i8*, i8** %122, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = add nsw i32 %111, %30
  %127 = add nsw i32 %121, %32
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* noundef %125, i32 noundef %126, i32 noundef %127) #5
  %129 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i64 0, i32 20
  %130 = load %struct.uncombox*, %struct.uncombox** %129, align 8
  %131 = zext i32 %.02 to i64
  %132 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %130, i64 %131, i32 9
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, %30
  %135 = zext i32 %.02 to i64
  %136 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %130, i64 %135, i32 10
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, %32
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 noundef %134, i32 noundef %138) #5
  %140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 noundef %101) #5
  br label %141

141:                                              ; preds = %93
  %142 = add nuw nsw i32 %.02, 1
  br label %90, !llvm.loop !7

143:                                              ; preds = %90
  br label %144

144:                                              ; preds = %143, %85
  br label %145

145:                                              ; preds = %144
  %146 = add nuw nsw i32 %.03, 1
  br label %13, !llvm.loop !8

147:                                              ; preds = %13
  %148 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %6) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
