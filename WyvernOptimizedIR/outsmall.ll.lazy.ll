; ModuleID = './outsmall.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/outsmall.c"
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
%struct.bustbox = type { i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }

@bdxlength = external dso_local global i32, align 4
@bdylength = external dso_local global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s.cfs\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@redoFlag = external dso_local global i32, align 4
@fpNodes = dso_local global %struct._IO_FILE* null, align 8
@numcells = external dso_local global i32, align 4
@numpads = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"L NC;\0A94 %s %d %d;\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"L NC;\0AW %d\00", align 1
@PtsOut = external dso_local global %struct.bustbox*, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" %d %d;\0A\00", align 1
@pinnames = external dso_local global i8**, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"PHANTOM\00", align 1
@netarray = external dso_local global %struct.dimbox**, align 8
@termarray = external dso_local global %struct.termnets**, align 8
@blockl = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"L NC;\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"W %d %d %d %d %d %d %d %d %d %d %d;\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @outsmall() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = load i32, i32* @bdxlength, align 4
  %3 = load i32, i32* @bdylength, align 4
  %4 = icmp sgt i32 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %7

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %6, %5
  %.in = phi i32* [ @bdxlength, %5 ], [ @bdylength, %6 ]
  %8 = load i32, i32* %.in, align 4
  %9 = sitofp i32 %8 to double
  %10 = fdiv double %9, 5.000000e+02
  %11 = fptosi double %10 to i32
  %12 = add nsw i32 %11, 1
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %14 = load i8*, i8** @cktName, align 8
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %13, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %14) #6
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %17 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %16, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %18 = icmp eq %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %7
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %21) #6
  call void @exit(i32 noundef 0) #7
  unreachable

23:                                               ; preds = %7
  %24 = load i32, i32* @redoFlag, align 4
  %.not = icmp eq i32 %24, 0
  br i1 %.not, label %28, label %25

25:                                               ; preds = %23
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @fpNodes, align 8
  %27 = call i32 @fclose(%struct._IO_FILE* noundef %26) #6
  br label %28

28:                                               ; preds = %25, %23
  store %struct._IO_FILE* %17, %struct._IO_FILE** @fpNodes, align 8
  br label %29

29:                                               ; preds = %178, %28
  %.02 = phi i32 [ 1, %28 ], [ %179, %178 ]
  %30 = load i32, i32* @numcells, align 4
  %31 = load i32, i32* @numpads, align 4
  %32 = add nsw i32 %30, %31
  %.not5 = icmp sgt i32 %.02, %32
  br i1 %.not5, label %180, label %33

33:                                               ; preds = %29
  %34 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %35 = zext i32 %.02 to i64
  %36 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %34, i64 %35
  %37 = load %struct.cellbox*, %struct.cellbox** %36, align 8
  %38 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i64 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i64 0, i32 21, i64 %40
  %42 = load %struct.tilebox*, %struct.tilebox** %41, align 8
  %43 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %42, i64 0, i32 17
  %44 = load %struct.termbox*, %struct.termbox** %43, align 8
  %45 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i64 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i64 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i64 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i64 0, i32 5
  %52 = load i32, i32* %51, align 8
  call void @initPts(i32 noundef %.02, i8* noundef %50, i32 noundef %52) #6
  br label %53

53:                                               ; preds = %74, %33
  %.pn = phi %struct.tilebox* [ %42, %33 ], [ %.03, %74 ]
  %.03.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.pn, i64 0, i32 0
  %.03 = load %struct.tilebox*, %struct.tilebox** %.03.in, align 8
  %.not6 = icmp eq %struct.tilebox* %.03, null
  br i1 %.not6, label %75, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.03, i64 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.03, i64 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.03, i64 0, i32 11
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.03, i64 0, i32 12
  %62 = load i32, i32* %61, align 4
  call void @addPts(i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62) #6
  %63 = add nsw i32 %56, %46
  %64 = add nsw i32 %58, %46
  %65 = add nsw i32 %60, %48
  %66 = add nsw i32 %62, %48
  %67 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i64 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = add nsw i32 %64, %63
  %70 = sdiv i32 %69, 2
  %71 = add nsw i32 %66, %65
  %72 = sdiv i32 %71, 2
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %17, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* noundef %68, i32 noundef %70, i32 noundef %72) #6
  br label %74

74:                                               ; preds = %54
  br label %53, !llvm.loop !4

75:                                               ; preds = %53
  call void @unbust() #6
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %17, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 noundef %12) #6
  br label %77

77:                                               ; preds = %93, %75
  %.04 = phi i32 [ 1, %75 ], [ %94, %93 ]
  %78 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %79 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %78, i64 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %.04, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %84 = zext i32 %.04 to i64
  %85 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %83, i64 %84, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %46, %86
  %88 = zext i32 %.04 to i64
  %89 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %83, i64 %88, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %48, %90
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %17, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 noundef %87, i32 noundef %91) #6
  br label %93

93:                                               ; preds = %82
  %94 = add nuw nsw i32 %.04, 1
  br label %77, !llvm.loop !6

95:                                               ; preds = %77
  %96 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %97 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %96, i64 1, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %46, %98
  %100 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %96, i64 1, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %48, %101
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %17, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 noundef %99, i32 noundef %102) #6
  br label %104

104:                                              ; preds = %134, %95
  %.0 = phi %struct.termbox* [ %44, %95 ], [ %136, %134 ]
  %.not7 = icmp eq %struct.termbox* %.0, null
  br i1 %.not7, label %137, label %105

105:                                              ; preds = %104
  %106 = getelementptr inbounds %struct.termbox, %struct.termbox* %.0, i64 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load i8**, i8*** @pinnames, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8*, i8** %108, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %111, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #8
  %.not9 = icmp eq i32 %112, 0
  br i1 %.not9, label %133, label %113

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.termbox, %struct.termbox* %.0, i64 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %48, %115
  %117 = getelementptr inbounds %struct.termbox, %struct.termbox* %.0, i64 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %46, %118
  %120 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %121 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %122 = sext i32 %107 to i64
  %123 = getelementptr inbounds %struct.termnets*, %struct.termnets** %121, i64 %122
  %124 = load %struct.termnets*, %struct.termnets** %123, align 8
  %125 = getelementptr inbounds %struct.termnets, %struct.termnets* %124, i64 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %120, i64 %127
  %129 = load %struct.dimbox*, %struct.dimbox** %128, align 8
  %130 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %129, i64 0, i32 13
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %17, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* noundef %131, i32 noundef %119, i32 noundef %116) #6
  br label %133

133:                                              ; preds = %113, %105
  br label %134

134:                                              ; preds = %133
  %135 = getelementptr inbounds %struct.termbox, %struct.termbox* %.0, i64 0, i32 0
  %136 = load %struct.termbox*, %struct.termbox** %135, align 8
  br label %104, !llvm.loop !7

137:                                              ; preds = %104
  %138 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i64 0, i32 10
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %177

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %174, %141
  %.01 = phi i32 [ 1, %141 ], [ %175, %174 ]
  %143 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i64 0, i32 18
  %144 = load i32, i32* %143, align 4
  %.not8 = icmp sgt i32 %.01, %144
  br i1 %.not8, label %176, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i64 0, i32 20
  %147 = load %struct.uncombox*, %struct.uncombox** %146, align 8
  %148 = zext i32 %.01 to i64
  %149 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %147, i64 %148, i32 9
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %46, %150
  %152 = zext i32 %.01 to i64
  %153 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %147, i64 %152, i32 10
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %48, %154
  %156 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i64 0, i32 20
  %157 = load %struct.uncombox*, %struct.uncombox** %156, align 8
  %158 = zext i32 %.01 to i64
  %159 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %157, i64 %158, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %162 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %163 = sext i32 %160 to i64
  %164 = getelementptr inbounds %struct.termnets*, %struct.termnets** %162, i64 %163
  %165 = load %struct.termnets*, %struct.termnets** %164, align 8
  %166 = getelementptr inbounds %struct.termnets, %struct.termnets* %165, i64 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %161, i64 %168
  %170 = load %struct.dimbox*, %struct.dimbox** %169, align 8
  %171 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %170, i64 0, i32 13
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %17, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* noundef %172, i32 noundef %151, i32 noundef %155) #6
  br label %174

174:                                              ; preds = %145
  %175 = add nuw nsw i32 %.01, 1
  br label %142, !llvm.loop !8

176:                                              ; preds = %142
  br label %177

177:                                              ; preds = %176, %137
  br label %178

178:                                              ; preds = %177
  %179 = add nuw nsw i32 %.02, 1
  br label %29, !llvm.loop !9

180:                                              ; preds = %29
  %181 = load i32, i32* @blockl, align 4
  %182 = load i32, i32* @blockr, align 4
  %183 = load i32, i32* @blockb, align 4
  %184 = load i32, i32* @blockt, align 4
  %185 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* nonnull %17)
  %186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %17, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 noundef %12, i32 noundef %181, i32 noundef %183, i32 noundef %181, i32 noundef %184, i32 noundef %182, i32 noundef %184, i32 noundef %182, i32 noundef %183, i32 noundef %181, i32 noundef %183) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local void @initPts(i32 noundef, i8* noundef, i32 noundef) #2

declare dso_local void @addPts(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @unbust() #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly willreturn }

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
