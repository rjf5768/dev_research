; ModuleID = './gentwf.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/gentwf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodbox = type { %struct.flare*, %struct.flare*, i32 }
%struct.flare = type { i32, i32*, %struct.flare* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tnode* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [7 x i8] c"%s.pin\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.twf\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\0Anet %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%s %s %d %s %d %s %d %s %d\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"    pin   %s  nodes   \00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"    equiv %s  nodes   \00", align 1
@xNodules = external dso_local global %struct.nodbox*, align 8
@edgeList = external dso_local global %struct.edgebox*, align 8
@rectArray = external dso_local global %struct.rect*, align 8
@eArray = external dso_local global %struct.ebox*, align 8
@yNodules = external dso_local global %struct.nodbox*, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Pin: %s has location outside the range\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"of the edge: %d %d to which it was assigned\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"by an amount: %d\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@TWsignal = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"\0A\0A\0A\0A\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"%d  %d  at  %d\0A\00", align 1
@str = private unnamed_addr constant [6 x i8] c"\0A\0A\0A\0A\0A\00", align 1
@str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gentwf() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca [4 x i8], align 1
  %3 = alloca [4 x i8], align 1
  %4 = alloca [4 x i8], align 1
  %5 = alloca [12 x i8], align 1
  %6 = alloca [4 x i8], align 1
  %7 = alloca [128 x i8], align 16
  %8 = alloca [128 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %14 = load i8*, i8** @cktName, align 8
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %13, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %14) #6
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %17 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %16, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %19 = load i8*, i8** @cktName, align 8
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %18, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef %19) #6
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %22 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %21, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %23

23:                                               ; preds = %381, %0
  %.011 = phi i32 [ undef, %0 ], [ %.1425, %381 ]
  %.0 = phi %struct.flare* [ undef, %0 ], [ %.14, %381 ]
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %24) #6
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %382

27:                                               ; preds = %23
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %28, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 4)
  %29 = icmp eq i32 %bcmp, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %31) #6
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %33) #6
  br label %381

35:                                               ; preds = %27
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %bcmp40 = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %36, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 4)
  %37 = icmp eq i32 %bcmp40, 0
  br i1 %37, label %38, label %380

38:                                               ; preds = %35
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %43 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %39, i8* noundef nonnull %40, i32* noundef nonnull %9, i8* noundef nonnull %41, i32* noundef nonnull %10, i8* noundef nonnull %42, i32* noundef nonnull %11, i8* noundef nonnull %43, i32* noundef nonnull %12) #6
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %48) #6
  br label %53

50:                                               ; preds = %38
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %51) #6
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %54, i64 %56, i32 0
  br label %58

58:                                               ; preds = %114, %53
  %.028 = phi i32 [ 1000000, %53 ], [ %.230, %114 ]
  %.112 = phi i32 [ %.011, %53 ], [ %.314, %114 ]
  %.09.in = phi %struct.flare** [ %57, %53 ], [ %115, %114 ]
  %.1 = phi %struct.flare* [ %.0, %53 ], [ %.3, %114 ]
  %.09 = load %struct.flare*, %struct.flare** %.09.in, align 8
  %.not = icmp eq %struct.flare* %.09, null
  br i1 %.not, label %116, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.flare, %struct.flare* %.09, i64 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %62, i64 %63, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %.not64 = icmp slt i32 %65, %66
  br i1 %.not64, label %70, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %65, %68
  br label %72

70:                                               ; preds = %59
  %71 = load i32, i32* %9, align 4
  %.neg65 = sub i32 %71, %65
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi i32 [ %69, %67 ], [ %.neg65, %70 ]
  %74 = icmp slt i32 %73, %.028
  br i1 %74, label %75, label %113

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %78 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %79 = getelementptr inbounds %struct.flare, %struct.flare* %.09, i64 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ebox, %struct.ebox* %78, i64 %83, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.rect, %struct.rect* %77, i64 %86, i32 1
  %88 = load i32, i32* %87, align 4
  %.not66 = icmp sgt i32 %76, %88
  br i1 %.not66, label %112, label %89

89:                                               ; preds = %75
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %92 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %93 = getelementptr inbounds %struct.flare, %struct.flare* %.09, i64 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ebox, %struct.ebox* %92, i64 %97, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.rect, %struct.rect* %91, i64 %100, i32 1
  %102 = load i32, i32* %101, align 4
  %.not67 = icmp slt i32 %90, %102
  br i1 %.not67, label %112, label %103

103:                                              ; preds = %89
  %104 = load i32, i32* %9, align 4
  %.not68 = icmp slt i32 %65, %104
  br i1 %.not68, label %108, label %105

105:                                              ; preds = %103
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 %65, %106
  br label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %9, align 4
  %.neg69 = sub i32 %109, %65
  br label %110

110:                                              ; preds = %108, %105
  %111 = phi i32 [ %107, %105 ], [ %.neg69, %108 ]
  br label %112

112:                                              ; preds = %110, %89, %75
  %.129 = phi i32 [ %111, %110 ], [ %.028, %89 ], [ %.028, %75 ]
  %.213 = phi i32 [ 1, %110 ], [ %.112, %89 ], [ %.112, %75 ]
  %.2 = phi %struct.flare* [ %.09, %110 ], [ %.1, %89 ], [ %.1, %75 ]
  br label %113

113:                                              ; preds = %112, %72
  %.230 = phi i32 [ %.129, %112 ], [ %.028, %72 ]
  %.314 = phi i32 [ %.213, %112 ], [ %.112, %72 ]
  %.3 = phi %struct.flare* [ %.2, %112 ], [ %.1, %72 ]
  br label %114

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.flare, %struct.flare* %.09, i64 0, i32 2
  br label %58, !llvm.loop !4

116:                                              ; preds = %58
  %117 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %117, i64 %119, i32 1
  br label %121

121:                                              ; preds = %177, %116
  %.331 = phi i32 [ %.028, %116 ], [ %.533, %177 ]
  %.415 = phi i32 [ %.112, %116 ], [ %.617, %177 ]
  %.01.in = phi %struct.flare** [ %120, %116 ], [ %178, %177 ]
  %.4 = phi %struct.flare* [ %.1, %116 ], [ %.6, %177 ]
  %.01 = load %struct.flare*, %struct.flare** %.01.in, align 8
  %.not41 = icmp eq %struct.flare* %.01, null
  br i1 %.not41, label %179, label %122

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.flare, %struct.flare* %.01, i64 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %125, i64 %126, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %9, align 4
  %.not58 = icmp slt i32 %128, %129
  br i1 %.not58, label %133, label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %9, align 4
  %132 = sub nsw i32 %128, %131
  br label %135

133:                                              ; preds = %122
  %134 = load i32, i32* %9, align 4
  %.neg59 = sub i32 %134, %128
  br label %135

135:                                              ; preds = %133, %130
  %136 = phi i32 [ %132, %130 ], [ %.neg59, %133 ]
  %137 = icmp slt i32 %136, %.331
  br i1 %137, label %138, label %176

138:                                              ; preds = %135
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %141 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %142 = getelementptr inbounds %struct.flare, %struct.flare* %.01, i64 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.ebox, %struct.ebox* %141, i64 %146, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.rect, %struct.rect* %140, i64 %149, i32 1
  %151 = load i32, i32* %150, align 4
  %.not60 = icmp sgt i32 %139, %151
  br i1 %.not60, label %175, label %152

152:                                              ; preds = %138
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %155 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %156 = getelementptr inbounds %struct.flare, %struct.flare* %.01, i64 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.ebox, %struct.ebox* %155, i64 %160, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.rect, %struct.rect* %154, i64 %163, i32 1
  %165 = load i32, i32* %164, align 4
  %.not61 = icmp slt i32 %153, %165
  br i1 %.not61, label %175, label %166

166:                                              ; preds = %152
  %167 = load i32, i32* %9, align 4
  %.not62 = icmp slt i32 %128, %167
  br i1 %.not62, label %171, label %168

168:                                              ; preds = %166
  %169 = load i32, i32* %9, align 4
  %170 = sub nsw i32 %128, %169
  br label %173

171:                                              ; preds = %166
  %172 = load i32, i32* %9, align 4
  %.neg63 = sub i32 %172, %128
  br label %173

173:                                              ; preds = %171, %168
  %174 = phi i32 [ %170, %168 ], [ %.neg63, %171 ]
  br label %175

175:                                              ; preds = %173, %152, %138
  %.432 = phi i32 [ %174, %173 ], [ %.331, %152 ], [ %.331, %138 ]
  %.516 = phi i32 [ 1, %173 ], [ %.415, %152 ], [ %.415, %138 ]
  %.5 = phi %struct.flare* [ %.01, %173 ], [ %.4, %152 ], [ %.4, %138 ]
  br label %176

176:                                              ; preds = %175, %135
  %.533 = phi i32 [ %.432, %175 ], [ %.331, %135 ]
  %.617 = phi i32 [ %.516, %175 ], [ %.415, %135 ]
  %.6 = phi %struct.flare* [ %.5, %175 ], [ %.4, %135 ]
  br label %177

177:                                              ; preds = %176
  %178 = getelementptr inbounds %struct.flare, %struct.flare* %.01, i64 0, i32 2
  br label %121, !llvm.loop !6

179:                                              ; preds = %121
  %180 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %180, i64 %182, i32 0
  br label %184

184:                                              ; preds = %240, %179
  %.634 = phi i32 [ %.331, %179 ], [ %.836, %240 ]
  %.718 = phi i32 [ %.415, %179 ], [ %.920, %240 ]
  %.110.in = phi %struct.flare** [ %183, %179 ], [ %241, %240 ]
  %.7 = phi %struct.flare* [ %.4, %179 ], [ %.9, %240 ]
  %.110 = load %struct.flare*, %struct.flare** %.110.in, align 8
  %.not42 = icmp eq %struct.flare* %.110, null
  br i1 %.not42, label %242, label %185

185:                                              ; preds = %184
  %186 = getelementptr inbounds %struct.flare, %struct.flare* %.110, i64 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %188, i64 %189, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %10, align 4
  %.not52 = icmp slt i32 %191, %192
  br i1 %.not52, label %196, label %193

193:                                              ; preds = %185
  %194 = load i32, i32* %10, align 4
  %195 = sub nsw i32 %191, %194
  br label %198

196:                                              ; preds = %185
  %197 = load i32, i32* %10, align 4
  %.neg53 = sub i32 %197, %191
  br label %198

198:                                              ; preds = %196, %193
  %199 = phi i32 [ %195, %193 ], [ %.neg53, %196 ]
  %200 = icmp slt i32 %199, %.634
  br i1 %200, label %201, label %239

201:                                              ; preds = %198
  %202 = load i32, i32* %9, align 4
  %203 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %204 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %205 = getelementptr inbounds %struct.flare, %struct.flare* %.110, i64 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.ebox, %struct.ebox* %204, i64 %209, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.rect, %struct.rect* %203, i64 %212, i32 0
  %214 = load i32, i32* %213, align 4
  %.not54 = icmp sgt i32 %202, %214
  br i1 %.not54, label %238, label %215

215:                                              ; preds = %201
  %216 = load i32, i32* %9, align 4
  %217 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %218 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %219 = getelementptr inbounds %struct.flare, %struct.flare* %.110, i64 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.ebox, %struct.ebox* %218, i64 %223, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.rect, %struct.rect* %217, i64 %226, i32 0
  %228 = load i32, i32* %227, align 4
  %.not55 = icmp slt i32 %216, %228
  br i1 %.not55, label %238, label %229

229:                                              ; preds = %215
  %230 = load i32, i32* %10, align 4
  %.not56 = icmp slt i32 %191, %230
  br i1 %.not56, label %234, label %231

231:                                              ; preds = %229
  %232 = load i32, i32* %10, align 4
  %233 = sub nsw i32 %191, %232
  br label %236

234:                                              ; preds = %229
  %235 = load i32, i32* %10, align 4
  %.neg57 = sub i32 %235, %191
  br label %236

236:                                              ; preds = %234, %231
  %237 = phi i32 [ %233, %231 ], [ %.neg57, %234 ]
  br label %238

238:                                              ; preds = %236, %215, %201
  %.735 = phi i32 [ %237, %236 ], [ %.634, %215 ], [ %.634, %201 ]
  %.819 = phi i32 [ 2, %236 ], [ %.718, %215 ], [ %.718, %201 ]
  %.8 = phi %struct.flare* [ %.110, %236 ], [ %.7, %215 ], [ %.7, %201 ]
  br label %239

239:                                              ; preds = %238, %198
  %.836 = phi i32 [ %.735, %238 ], [ %.634, %198 ]
  %.920 = phi i32 [ %.819, %238 ], [ %.718, %198 ]
  %.9 = phi %struct.flare* [ %.8, %238 ], [ %.7, %198 ]
  br label %240

240:                                              ; preds = %239
  %241 = getelementptr inbounds %struct.flare, %struct.flare* %.110, i64 0, i32 2
  br label %184, !llvm.loop !7

242:                                              ; preds = %184
  %243 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %243, i64 %245, i32 1
  br label %247

247:                                              ; preds = %303, %242
  %.937 = phi i32 [ %.634, %242 ], [ %.1139, %303 ]
  %.1021 = phi i32 [ %.718, %242 ], [ %.1223, %303 ]
  %.15.in = phi %struct.flare** [ %246, %242 ], [ %304, %303 ]
  %.10 = phi %struct.flare* [ %.7, %242 ], [ %.12, %303 ]
  %.15 = load %struct.flare*, %struct.flare** %.15.in, align 8
  %.not43 = icmp eq %struct.flare* %.15, null
  br i1 %.not43, label %305, label %248

248:                                              ; preds = %247
  %249 = getelementptr inbounds %struct.flare, %struct.flare* %.15, i64 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %251, i64 %252, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %10, align 4
  %.not47 = icmp slt i32 %254, %255
  br i1 %.not47, label %259, label %256

256:                                              ; preds = %248
  %257 = load i32, i32* %10, align 4
  %258 = sub nsw i32 %254, %257
  br label %261

259:                                              ; preds = %248
  %260 = load i32, i32* %10, align 4
  %.neg = sub i32 %260, %254
  br label %261

261:                                              ; preds = %259, %256
  %262 = phi i32 [ %258, %256 ], [ %.neg, %259 ]
  %263 = icmp slt i32 %262, %.937
  br i1 %263, label %264, label %302

264:                                              ; preds = %261
  %265 = load i32, i32* %9, align 4
  %266 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %267 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %268 = getelementptr inbounds %struct.flare, %struct.flare* %.15, i64 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.ebox, %struct.ebox* %267, i64 %272, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.rect, %struct.rect* %266, i64 %275, i32 0
  %277 = load i32, i32* %276, align 4
  %.not48 = icmp sgt i32 %265, %277
  br i1 %.not48, label %301, label %278

278:                                              ; preds = %264
  %279 = load i32, i32* %9, align 4
  %280 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %281 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %282 = getelementptr inbounds %struct.flare, %struct.flare* %.15, i64 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.ebox, %struct.ebox* %281, i64 %286, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.rect, %struct.rect* %280, i64 %289, i32 0
  %291 = load i32, i32* %290, align 4
  %.not49 = icmp slt i32 %279, %291
  br i1 %.not49, label %301, label %292

292:                                              ; preds = %278
  %293 = load i32, i32* %10, align 4
  %.not50 = icmp slt i32 %254, %293
  br i1 %.not50, label %297, label %294

294:                                              ; preds = %292
  %295 = load i32, i32* %10, align 4
  %296 = sub nsw i32 %254, %295
  br label %299

297:                                              ; preds = %292
  %298 = load i32, i32* %10, align 4
  %.neg51 = sub i32 %298, %254
  br label %299

299:                                              ; preds = %297, %294
  %300 = phi i32 [ %296, %294 ], [ %.neg51, %297 ]
  br label %301

301:                                              ; preds = %299, %278, %264
  %.1038 = phi i32 [ %300, %299 ], [ %.937, %278 ], [ %.937, %264 ]
  %.1122 = phi i32 [ 2, %299 ], [ %.1021, %278 ], [ %.1021, %264 ]
  %.11 = phi %struct.flare* [ %.15, %299 ], [ %.10, %278 ], [ %.10, %264 ]
  br label %302

302:                                              ; preds = %301, %261
  %.1139 = phi i32 [ %.1038, %301 ], [ %.937, %261 ]
  %.1223 = phi i32 [ %.1122, %301 ], [ %.1021, %261 ]
  %.12 = phi %struct.flare* [ %.11, %301 ], [ %.10, %261 ]
  br label %303

303:                                              ; preds = %302
  %304 = getelementptr inbounds %struct.flare, %struct.flare* %.15, i64 0, i32 2
  br label %247, !llvm.loop !8

305:                                              ; preds = %247
  br label %306

306:                                              ; preds = %313, %305
  %.027 = phi i32 [ 0, %305 ], [ %309, %313 ]
  %307 = getelementptr inbounds %struct.flare, %struct.flare* %.10, i64 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = add nuw nsw i32 %.027, 1
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  br label %313

313:                                              ; preds = %306
  %314 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %315 = sext i32 %312 to i64
  %316 = getelementptr inbounds %struct.ebox, %struct.ebox* %314, i64 %315, i32 11
  %317 = load i32, i32* %316, align 4
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %306, label %319, !llvm.loop !9

319:                                              ; preds = %313
  %320 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %321 = sext i32 %312 to i64
  %322 = getelementptr inbounds %struct.ebox, %struct.ebox* %320, i64 %321, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = sext i32 %312 to i64
  %325 = getelementptr inbounds %struct.ebox, %struct.ebox* %320, i64 %324, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = icmp eq i32 %.1021, 1
  br i1 %327, label %328, label %343

328:                                              ; preds = %319
  %329 = load i32, i32* %10, align 4
  %330 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %331 = sext i32 %323 to i64
  %332 = getelementptr inbounds %struct.rect, %struct.rect* %330, i64 %331, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = sub nsw i32 %329, %333
  %335 = sext i32 %326 to i64
  %336 = getelementptr inbounds %struct.rect, %struct.rect* %330, i64 %335, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %339 = sext i32 %323 to i64
  %340 = getelementptr inbounds %struct.rect, %struct.rect* %338, i64 %339, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = sub nsw i32 %337, %341
  br label %358

343:                                              ; preds = %319
  %344 = load i32, i32* %9, align 4
  %345 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %346 = sext i32 %323 to i64
  %347 = getelementptr inbounds %struct.rect, %struct.rect* %345, i64 %346, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = sub nsw i32 %344, %348
  %350 = sext i32 %326 to i64
  %351 = getelementptr inbounds %struct.rect, %struct.rect* %345, i64 %350, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %354 = sext i32 %323 to i64
  %355 = getelementptr inbounds %struct.rect, %struct.rect* %353, i64 %354, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = sub nsw i32 %352, %356
  br label %358

358:                                              ; preds = %343, %328
  %.026 = phi i32 [ %342, %328 ], [ %357, %343 ]
  %.06 = phi i32 [ %334, %328 ], [ %349, %343 ]
  %359 = icmp slt i32 %.06, 0
  br i1 %359, label %360, label %367

360:                                              ; preds = %358
  %puts45 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.2, i64 0, i64 0))
  %361 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %362 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %361) #6
  %363 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i32 noundef %323, i32 noundef %326) #6
  %364 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef %.06) #6
  %puts46 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.3, i64 0, i64 0))
  %365 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %366 = call i32 @fflush(%struct._IO_FILE* noundef %365) #6
  store i32 1, i32* @TWsignal, align 4
  br label %378

367:                                              ; preds = %358
  %368 = icmp sgt i32 %.06, %.026
  br i1 %368, label %369, label %377

369:                                              ; preds = %367
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @str, i64 0, i64 0))
  %370 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %371 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %370) #6
  %372 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i32 noundef %323, i32 noundef %326) #6
  %373 = sub nsw i32 %.06, %.026
  %374 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef %373) #6
  %puts44 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.1, i64 0, i64 0))
  %375 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %376 = call i32 @fflush(%struct._IO_FILE* noundef %375) #6
  store i32 1, i32* @TWsignal, align 4
  br label %377

377:                                              ; preds = %369, %367
  %.17 = phi i32 [ %.026, %369 ], [ %.06, %367 ]
  br label %378

378:                                              ; preds = %377, %360
  %.28 = phi i32 [ 0, %360 ], [ %.17, %377 ]
  %379 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 noundef %323, i32 noundef %326, i32 noundef %.28) #6
  br label %380

380:                                              ; preds = %378, %35
  %.1324 = phi i32 [ %.1021, %378 ], [ %.011, %35 ]
  %.13 = phi %struct.flare* [ %.10, %378 ], [ %.0, %35 ]
  br label %381

381:                                              ; preds = %380, %30
  %.1425 = phi i32 [ %.011, %30 ], [ %.1324, %380 ]
  %.14 = phi %struct.flare* [ %.0, %30 ], [ %.13, %380 ]
  br label %23, !llvm.loop !10

382:                                              ; preds = %23
  %383 = call i32 @fclose(%struct._IO_FILE* noundef %17) #6
  %384 = call i32 @fclose(%struct._IO_FILE* noundef %22) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
