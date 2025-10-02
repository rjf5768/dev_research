; ModuleID = './readgeo.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/readgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clbox = type { i32, i32, i32, i32, i32, i32, i32, %struct.clbox* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@bbr = external dso_local global i32, align 4
@bbt = external dso_local global i32, align 4
@bbl = external dso_local global i32, align 4
@bbb = external dso_local global i32, align 4
@edgeCount = external dso_local global i32, align 4
@hFixedEdgeRoot = external dso_local global %struct.tnode*, align 8
@vFixedEdgeRoot = external dso_local global %struct.tnode*, align 8
@hEdgeRoot = external dso_local global %struct.tnode*, align 8
@vEdgeRoot = external dso_local global %struct.tnode*, align 8
@edgeList = external dso_local global %struct.edgebox*, align 8
@cellList = external dso_local global %struct.clbox**, align 8
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" %d %d \00", align 1
@fpdebug = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Found unparsable keyword: < %s > in \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"the .geo file\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Current cell: %d\0A\00", align 1
@numberCells = external dso_local global i32, align 4
@numProbes = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @readgeo(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca [32 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* @bbr, align 4
  store i32 0, i32* @bbt, align 4
  store i32 10000000, i32* @bbl, align 4
  store i32 10000000, i32* @bbb, align 4
  store i32 0, i32* @edgeCount, align 4
  store %struct.tnode* null, %struct.tnode** @hFixedEdgeRoot, align 8
  store %struct.tnode* null, %struct.tnode** @vFixedEdgeRoot, align 8
  store %struct.tnode* null, %struct.tnode** @hEdgeRoot, align 8
  store %struct.tnode* null, %struct.tnode** @vEdgeRoot, align 8
  %6 = call noalias dereferenceable_or_null(16040) i8* @malloc(i64 noundef 16040) #7
  store i8* %6, i8** bitcast (%struct.edgebox** @edgeList to i8**), align 8
  %7 = call noalias dereferenceable_or_null(400) i8* @malloc(i64 noundef 400) #7
  store i8* %7, i8** bitcast (%struct.clbox*** @cellList to i8**), align 8
  br label %8

8:                                                ; preds = %14, %1
  %.018 = phi i32 [ 1, %1 ], [ %15, %14 ]
  %9 = icmp ult i32 %.018, 50
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %12 = zext i32 %.018 to i64
  %13 = getelementptr inbounds %struct.clbox*, %struct.clbox** %11, i64 %12
  store %struct.clbox* null, %struct.clbox** %13, align 8
  br label %14

14:                                               ; preds = %10
  %15 = add nuw nsw i32 %.018, 1
  br label %8, !llvm.loop !4

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %339, %16
  %.017 = phi i32 [ 0, %16 ], [ %25, %339 ]
  %.014 = phi i32 [ 0, %16 ], [ %.4, %339 ]
  %.011 = phi i32 [ undef, %16 ], [ %.112, %339 ]
  %.08 = phi i32 [ undef, %16 ], [ %.19, %339 ]
  %.05 = phi i32 [ undef, %16 ], [ %.16, %339 ]
  %.02 = phi i32 [ undef, %16 ], [ %.13, %339 ]
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %18) #7
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %340

21:                                               ; preds = %17
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %22, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 5)
  %23 = icmp eq i32 %bcmp, 0
  br i1 %23, label %24, label %331

24:                                               ; preds = %21
  %25 = add nuw nsw i32 %.017, 1
  %26 = urem i32 %25, 50
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i8*, i8** bitcast (%struct.clbox*** @cellList to i8**), align 8
  %30 = add nuw nsw i32 %.017, 51
  %31 = zext i32 %30 to i64
  %32 = shl nuw nsw i64 %31, 3
  %33 = call i8* @realloc(i8* noundef %29, i64 noundef %32) #7
  store i8* %33, i8** bitcast (%struct.clbox*** @cellList to i8**), align 8
  br label %34

34:                                               ; preds = %40, %28
  %.119 = phi i32 [ %25, %28 ], [ %41, %40 ]
  %35 = add nuw nsw i32 %.017, 50
  %.not34 = icmp ugt i32 %.119, %35
  br i1 %.not34, label %42, label %36

36:                                               ; preds = %34
  %37 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %38 = zext i32 %.119 to i64
  %39 = getelementptr inbounds %struct.clbox*, %struct.clbox** %37, i64 %38
  store %struct.clbox* null, %struct.clbox** %39, align 8
  br label %40

40:                                               ; preds = %36
  %41 = add nuw nsw i32 %.119, 1
  br label %34, !llvm.loop !6

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %24
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %44) #7
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %3) #7
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %47) #7
  br label %49

49:                                               ; preds = %242, %43
  %.115 = phi i32 [ %.014, %43 ], [ %.3, %242 ]
  %.112 = phi i32 [ %.011, %43 ], [ %.213, %242 ]
  %.19 = phi i32 [ %.08, %43 ], [ %.210, %242 ]
  %.16 = phi i32 [ %.05, %43 ], [ %.27, %242 ]
  %.13 = phi i32 [ %.02, %43 ], [ %.24, %242 ]
  %.01 = phi i32 [ 1, %43 ], [ %243, %242 ]
  %.0 = phi %struct.clbox* [ null, %43 ], [ %.2, %242 ]
  %50 = load i32, i32* %3, align 4
  %.not = icmp sgt i32 %.01, %50
  br i1 %.not, label %244, label %51

51:                                               ; preds = %49
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* noundef nonnull %4, i32* noundef nonnull %5) #7
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @bbr, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* @bbr, align 4
  br label %58

58:                                               ; preds = %56, %51
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @bbl, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* @bbl, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @bbt, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* @bbt, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @bbb, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* @bbb, align 4
  br label %76

76:                                               ; preds = %74, %70
  %77 = icmp eq i32 %.01, 1
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  br label %241

81:                                               ; preds = %76
  %82 = load i32, i32* @edgeCount, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @edgeCount, align 4
  %84 = icmp eq %struct.clbox* %.0, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #7
  %87 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %88 = zext i32 %25 to i64
  %89 = getelementptr inbounds %struct.clbox*, %struct.clbox** %87, i64 %88
  %90 = bitcast %struct.clbox** %89 to i8**
  store i8* %86, i8** %90, align 8
  %91 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %92 = zext i32 %25 to i64
  %93 = getelementptr inbounds %struct.clbox*, %struct.clbox** %91, i64 %92
  %94 = load %struct.clbox*, %struct.clbox** %93, align 8
  br label %99

95:                                               ; preds = %81
  %96 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #7
  %97 = getelementptr inbounds %struct.clbox, %struct.clbox* %.0, i64 0, i32 7
  %98 = bitcast %struct.clbox** %97 to i8**
  store i8* %96, i8** %98, align 8
  %.cast25 = bitcast i8* %96 to %struct.clbox*
  br label %99

99:                                               ; preds = %95, %85
  %.1 = phi %struct.clbox* [ %94, %85 ], [ %.cast25, %95 ]
  %100 = getelementptr inbounds %struct.clbox, %struct.clbox* %.1, i64 0, i32 7
  store %struct.clbox* null, %struct.clbox** %100, align 8
  %101 = load i32, i32* @edgeCount, align 4
  %102 = getelementptr inbounds %struct.clbox, %struct.clbox* %.1, i64 0, i32 0
  store i32 %101, i32* %102, align 8
  %103 = getelementptr inbounds %struct.clbox, %struct.clbox* %.1, i64 0, i32 1
  store i32 0, i32* %103, align 4
  %104 = getelementptr inbounds %struct.clbox, %struct.clbox* %.1, i64 0, i32 6
  store i32 1000000, i32* %104, align 8
  %105 = add nsw i32 %.115, 1
  %106 = icmp sgt i32 %.115, 399
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = load i8*, i8** bitcast (%struct.edgebox** @edgeList to i8**), align 8
  %109 = load i32, i32* @edgeCount, align 4
  %110 = add nsw i32 %109, 400
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, 40
  %113 = call i8* @realloc(i8* noundef %108, i64 noundef %112) #7
  store i8* %113, i8** bitcast (%struct.edgebox** @edgeList to i8**), align 8
  br label %114

114:                                              ; preds = %107, %99
  %.216 = phi i32 [ 1, %107 ], [ %105, %99 ]
  %115 = and i32 %.01, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %163

117:                                              ; preds = %114
  %118 = load i32, i32* %5, align 4
  %.not30 = icmp sgt i32 %.16, %118
  br i1 %.not30, label %120, label %119

119:                                              ; preds = %117
  br label %122

120:                                              ; preds = %117
  %121 = load i32, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %119
  %123 = phi i32 [ %.16, %119 ], [ %121, %120 ]
  %124 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %125 = load i32, i32* @edgeCount, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %124, i64 %126, i32 1
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* %5, align 4
  %.not31 = icmp sgt i32 %.16, %128
  br i1 %.not31, label %131, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %5, align 4
  br label %132

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131, %129
  %133 = phi i32 [ %130, %129 ], [ %.16, %131 ]
  %134 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %135 = load i32, i32* @edgeCount, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %134, i64 %136, i32 2
  store i32 %133, i32* %137, align 4
  %138 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %139 = load i32, i32* @edgeCount, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %138, i64 %140, i32 3
  store i32 %.13, i32* %141, align 4
  %142 = load i32, i32* %5, align 4
  %.not32 = icmp sgt i32 %.16, %142
  br i1 %.not32, label %146, label %143

143:                                              ; preds = %132
  %144 = load i32, i32* %5, align 4
  %145 = sub nsw i32 %144, %.16
  br label %149

146:                                              ; preds = %132
  %147 = load i32, i32* %5, align 4
  %148 = sub nsw i32 %.16, %147
  br label %149

149:                                              ; preds = %146, %143
  %150 = phi i32 [ %145, %143 ], [ %148, %146 ]
  %151 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %152 = load i32, i32* @edgeCount, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %151, i64 %153, i32 4
  store i32 %150, i32* %154, align 4
  %155 = load i32, i32* %5, align 4
  %.not33 = icmp sgt i32 %.16, %155
  %156 = select i1 %.not33, i32 -1, i32 1
  %157 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %158 = load i32, i32* @edgeCount, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %157, i64 %159, i32 5
  store i32 %156, i32* %160, align 4
  %161 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** noundef nonnull @vFixedEdgeRoot, i32 noundef %.13, i32 noundef %161) #7
  %162 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** noundef nonnull @vEdgeRoot, i32 noundef %.13, i32 noundef %162) #7
  br label %209

163:                                              ; preds = %114
  %164 = load i32, i32* %4, align 4
  %.not26 = icmp sgt i32 %.13, %164
  br i1 %.not26, label %166, label %165

165:                                              ; preds = %163
  br label %168

166:                                              ; preds = %163
  %167 = load i32, i32* %4, align 4
  br label %168

168:                                              ; preds = %166, %165
  %169 = phi i32 [ %.13, %165 ], [ %167, %166 ]
  %170 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %171 = load i32, i32* @edgeCount, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %170, i64 %172, i32 1
  store i32 %169, i32* %173, align 4
  %174 = load i32, i32* %4, align 4
  %.not27 = icmp sgt i32 %.13, %174
  br i1 %.not27, label %177, label %175

175:                                              ; preds = %168
  %176 = load i32, i32* %4, align 4
  br label %178

177:                                              ; preds = %168
  br label %178

178:                                              ; preds = %177, %175
  %179 = phi i32 [ %176, %175 ], [ %.13, %177 ]
  %180 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %181 = load i32, i32* @edgeCount, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %180, i64 %182, i32 2
  store i32 %179, i32* %183, align 4
  %184 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %185 = load i32, i32* @edgeCount, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %184, i64 %186, i32 3
  store i32 %.16, i32* %187, align 4
  %188 = load i32, i32* %4, align 4
  %.not28 = icmp sgt i32 %.13, %188
  br i1 %.not28, label %192, label %189

189:                                              ; preds = %178
  %190 = load i32, i32* %4, align 4
  %191 = sub nsw i32 %190, %.13
  br label %195

192:                                              ; preds = %178
  %193 = load i32, i32* %4, align 4
  %194 = sub nsw i32 %.13, %193
  br label %195

195:                                              ; preds = %192, %189
  %196 = phi i32 [ %191, %189 ], [ %194, %192 ]
  %197 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %198 = load i32, i32* @edgeCount, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %197, i64 %199, i32 4
  store i32 %196, i32* %200, align 4
  %201 = load i32, i32* %4, align 4
  %.not29 = icmp sgt i32 %.13, %201
  %202 = select i1 %.not29, i32 -1, i32 1
  %203 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %204 = load i32, i32* @edgeCount, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %203, i64 %205, i32 5
  store i32 %202, i32* %206, align 4
  %207 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** noundef nonnull @hFixedEdgeRoot, i32 noundef %.16, i32 noundef %207) #7
  %208 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** noundef nonnull @hEdgeRoot, i32 noundef %.16, i32 noundef %208) #7
  br label %209

209:                                              ; preds = %195, %149
  %210 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %211 = load i32, i32* @edgeCount, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %210, i64 %212, i32 0
  store i32 %25, i32* %213, align 4
  %214 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %215 = load i32, i32* @edgeCount, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %214, i64 %216, i32 6
  store i32 1, i32* %217, align 4
  %218 = load i32, i32* @edgeCount, align 4
  %219 = add nsw i32 %218, 1
  %220 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %221 = sext i32 %218 to i64
  %222 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %220, i64 %221, i32 8
  store i32 %219, i32* %222, align 4
  %223 = icmp eq i32 %.01, 2
  br i1 %223, label %224, label %232

224:                                              ; preds = %209
  %225 = load i32, i32* @edgeCount, align 4
  %226 = load i32, i32* %3, align 4
  %227 = add nsw i32 %225, %226
  %228 = add nsw i32 %227, -1
  %229 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %230 = sext i32 %225 to i64
  %231 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %229, i64 %230, i32 7
  store i32 %228, i32* %231, align 4
  br label %238

232:                                              ; preds = %209
  %233 = load i32, i32* @edgeCount, align 4
  %234 = add nsw i32 %233, -1
  %235 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %236 = sext i32 %233 to i64
  %237 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %235, i64 %236, i32 7
  store i32 %234, i32* %237, align 4
  br label %238

238:                                              ; preds = %232, %224
  %239 = load i32, i32* %4, align 4
  %240 = load i32, i32* %5, align 4
  br label %241

241:                                              ; preds = %238, %78
  %.3 = phi i32 [ %.115, %78 ], [ %.216, %238 ]
  %.213 = phi i32 [ %80, %78 ], [ %.112, %238 ]
  %.210 = phi i32 [ %79, %78 ], [ %.19, %238 ]
  %.27 = phi i32 [ %80, %78 ], [ %240, %238 ]
  %.24 = phi i32 [ %79, %78 ], [ %239, %238 ]
  %.2 = phi %struct.clbox* [ %.0, %78 ], [ %.1, %238 ]
  br label %242

242:                                              ; preds = %241
  %243 = add nuw nsw i32 %.01, 1
  br label %49, !llvm.loop !7

244:                                              ; preds = %49
  store i32 %.19, i32* %4, align 4
  store i32 %.112, i32* %5, align 4
  %245 = load i32, i32* @edgeCount, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* @edgeCount, align 4
  %247 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #7
  %248 = bitcast i8* %247 to %struct.clbox*
  %249 = getelementptr inbounds %struct.clbox, %struct.clbox* %.0, i64 0, i32 7
  %250 = bitcast %struct.clbox** %249 to i8**
  store i8* %247, i8** %250, align 8
  %251 = getelementptr inbounds %struct.clbox, %struct.clbox* %248, i64 0, i32 7
  store %struct.clbox* null, %struct.clbox** %251, align 8
  %252 = load i32, i32* @edgeCount, align 4
  %253 = getelementptr inbounds %struct.clbox, %struct.clbox* %248, i64 0, i32 0
  store i32 %252, i32* %253, align 8
  %254 = getelementptr inbounds %struct.clbox, %struct.clbox* %248, i64 0, i32 1
  store i32 0, i32* %254, align 4
  %255 = getelementptr inbounds %struct.clbox, %struct.clbox* %248, i64 0, i32 6
  store i32 1000000, i32* %255, align 8
  %256 = add nsw i32 %.115, 1
  %257 = icmp sgt i32 %.115, 399
  br i1 %257, label %258, label %265

258:                                              ; preds = %244
  %259 = load i8*, i8** bitcast (%struct.edgebox** @edgeList to i8**), align 8
  %260 = load i32, i32* @edgeCount, align 4
  %261 = add nsw i32 %260, 400
  %262 = sext i32 %261 to i64
  %263 = mul nsw i64 %262, 40
  %264 = call i8* @realloc(i8* noundef %259, i64 noundef %263) #7
  store i8* %264, i8** bitcast (%struct.edgebox** @edgeList to i8**), align 8
  br label %265

265:                                              ; preds = %258, %244
  %.4 = phi i32 [ 1, %258 ], [ %256, %244 ]
  %266 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %267 = load i32, i32* @edgeCount, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %266, i64 %268, i32 0
  store i32 %25, i32* %269, align 4
  %270 = load i32, i32* %4, align 4
  %.not21 = icmp sgt i32 %.13, %270
  br i1 %.not21, label %272, label %271

271:                                              ; preds = %265
  br label %274

272:                                              ; preds = %265
  %273 = load i32, i32* %4, align 4
  br label %274

274:                                              ; preds = %272, %271
  %275 = phi i32 [ %.13, %271 ], [ %273, %272 ]
  %276 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %277 = load i32, i32* @edgeCount, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %276, i64 %278, i32 1
  store i32 %275, i32* %279, align 4
  %280 = load i32, i32* %4, align 4
  %.not22 = icmp sgt i32 %.13, %280
  br i1 %.not22, label %283, label %281

281:                                              ; preds = %274
  %282 = load i32, i32* %4, align 4
  br label %284

283:                                              ; preds = %274
  br label %284

284:                                              ; preds = %283, %281
  %285 = phi i32 [ %282, %281 ], [ %.13, %283 ]
  %286 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %287 = load i32, i32* @edgeCount, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %286, i64 %288, i32 2
  store i32 %285, i32* %289, align 4
  %290 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %291 = load i32, i32* @edgeCount, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %290, i64 %292, i32 3
  store i32 %.16, i32* %293, align 4
  %294 = load i32, i32* %4, align 4
  %.not23 = icmp sgt i32 %.13, %294
  br i1 %.not23, label %298, label %295

295:                                              ; preds = %284
  %296 = load i32, i32* %4, align 4
  %297 = sub nsw i32 %296, %.13
  br label %301

298:                                              ; preds = %284
  %299 = load i32, i32* %4, align 4
  %300 = sub nsw i32 %.13, %299
  br label %301

301:                                              ; preds = %298, %295
  %302 = phi i32 [ %297, %295 ], [ %300, %298 ]
  %303 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %304 = load i32, i32* @edgeCount, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %303, i64 %305, i32 4
  store i32 %302, i32* %306, align 4
  %307 = load i32, i32* %4, align 4
  %.not24 = icmp sgt i32 %.13, %307
  %308 = select i1 %.not24, i32 -1, i32 1
  %309 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %310 = load i32, i32* @edgeCount, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %309, i64 %311, i32 5
  store i32 %308, i32* %312, align 4
  %313 = load i32, i32* @edgeCount, align 4
  %314 = add nsw i32 %313, -1
  %315 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %316 = sext i32 %313 to i64
  %317 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %315, i64 %316, i32 7
  store i32 %314, i32* %317, align 4
  %318 = load i32, i32* @edgeCount, align 4
  %319 = load i32, i32* %3, align 4
  %320 = add nsw i32 %319, -1
  %321 = sub nsw i32 %318, %320
  %322 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %323 = sext i32 %318 to i64
  %324 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %322, i64 %323, i32 8
  store i32 %321, i32* %324, align 4
  %325 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %326 = load i32, i32* @edgeCount, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %325, i64 %327, i32 6
  store i32 1, i32* %328, align 4
  %329 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** noundef nonnull @hFixedEdgeRoot, i32 noundef %.16, i32 noundef %329) #7
  %330 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** noundef nonnull @hEdgeRoot, i32 noundef %.16, i32 noundef %330) #7
  br label %339

331:                                              ; preds = %21
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %333 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %334 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %332, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %333) #7
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %336 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %335)
  %337 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %338 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %337, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 noundef %.017) #7
  call void @exit(i32 noundef 0) #8
  unreachable

339:                                              ; preds = %301
  br label %17, !llvm.loop !8

340:                                              ; preds = %17
  store i32 %.017, i32* @numberCells, align 4
  %341 = load i32, i32* @bbb, align 4
  %342 = add nsw i32 %341, -1
  store i32 %342, i32* @bbb, align 4
  %343 = load i32, i32* @bbt, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* @bbt, align 4
  %345 = load i32, i32* @bbl, align 4
  %346 = add nsw i32 %345, -1
  store i32 %346, i32* @bbl, align 4
  %347 = load i32, i32* @bbr, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* @bbr, align 4
  %349 = load i8*, i8** bitcast (%struct.edgebox** @edgeList to i8**), align 8
  %350 = load i32, i32* @edgeCount, align 4
  %351 = mul nsw i32 %350, 3
  %352 = add nsw i32 %351, 5
  %353 = sext i32 %352 to i64
  %354 = mul nsw i64 %353, 40
  %355 = call i8* @realloc(i8* noundef %349, i64 noundef %354) #7
  store i8* %355, i8** bitcast (%struct.edgebox** @edgeList to i8**), align 8
  %356 = load i32, i32* @bbb, align 4
  %.cast = bitcast i8* %355 to %struct.edgebox*
  %357 = load i32, i32* @edgeCount, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* @edgeCount, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %.cast, i64 %359, i32 1
  store i32 %356, i32* %360, align 4
  %361 = load i32, i32* @bbt, align 4
  %362 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %363 = load i32, i32* @edgeCount, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %362, i64 %364, i32 2
  store i32 %361, i32* %365, align 4
  %366 = load i32, i32* @bbl, align 4
  %367 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %368 = load i32, i32* @edgeCount, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %367, i64 %369, i32 3
  store i32 %366, i32* %370, align 4
  %371 = load i32, i32* @bbt, align 4
  %372 = load i32, i32* @bbb, align 4
  %373 = sub nsw i32 %371, %372
  %374 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %375 = load i32, i32* @edgeCount, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %374, i64 %376, i32 4
  store i32 %373, i32* %377, align 4
  %378 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %379 = load i32, i32* @edgeCount, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %378, i64 %380, i32 6
  store i32 1, i32* %381, align 4
  %382 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %383 = load i32, i32* @edgeCount, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %382, i64 %384, i32 5
  store i32 -1, i32* %385, align 4
  %386 = load i32, i32* @edgeCount, align 4
  %387 = add nsw i32 %386, 1
  %388 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %389 = sext i32 %386 to i64
  %390 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %388, i64 %389, i32 7
  store i32 %387, i32* %390, align 4
  %391 = load i32, i32* @edgeCount, align 4
  %392 = add nsw i32 %391, 3
  %393 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %394 = sext i32 %391 to i64
  %395 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %393, i64 %394, i32 8
  store i32 %392, i32* %395, align 4
  %396 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %397 = load i32, i32* @edgeCount, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %396, i64 %398, i32 0
  store i32 -1, i32* %399, align 4
  %400 = load i32, i32* @bbl, align 4
  %401 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %402 = load i32, i32* @edgeCount, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* @edgeCount, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %401, i64 %404, i32 1
  store i32 %400, i32* %405, align 4
  %406 = load i32, i32* @bbr, align 4
  %407 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %408 = load i32, i32* @edgeCount, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %407, i64 %409, i32 2
  store i32 %406, i32* %410, align 4
  %411 = load i32, i32* @bbt, align 4
  %412 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %413 = load i32, i32* @edgeCount, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %412, i64 %414, i32 3
  store i32 %411, i32* %415, align 4
  %416 = load i32, i32* @bbr, align 4
  %417 = load i32, i32* @bbl, align 4
  %418 = sub nsw i32 %416, %417
  %419 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %420 = load i32, i32* @edgeCount, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %419, i64 %421, i32 4
  store i32 %418, i32* %422, align 4
  %423 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %424 = load i32, i32* @edgeCount, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %423, i64 %425, i32 6
  store i32 1, i32* %426, align 4
  %427 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %428 = load i32, i32* @edgeCount, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %427, i64 %429, i32 5
  store i32 -1, i32* %430, align 4
  %431 = load i32, i32* @edgeCount, align 4
  %432 = add nsw i32 %431, 1
  %433 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %434 = sext i32 %431 to i64
  %435 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %433, i64 %434, i32 7
  store i32 %432, i32* %435, align 4
  %436 = load i32, i32* @edgeCount, align 4
  %437 = add nsw i32 %436, -1
  %438 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %439 = sext i32 %436 to i64
  %440 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %438, i64 %439, i32 8
  store i32 %437, i32* %440, align 4
  %441 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %442 = load i32, i32* @edgeCount, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %441, i64 %443, i32 0
  store i32 -1, i32* %444, align 4
  %445 = load i32, i32* @bbb, align 4
  %446 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %447 = load i32, i32* @edgeCount, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* @edgeCount, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %446, i64 %449, i32 1
  store i32 %445, i32* %450, align 4
  %451 = load i32, i32* @bbt, align 4
  %452 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %453 = load i32, i32* @edgeCount, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %452, i64 %454, i32 2
  store i32 %451, i32* %455, align 4
  %456 = load i32, i32* @bbr, align 4
  %457 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %458 = load i32, i32* @edgeCount, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %457, i64 %459, i32 3
  store i32 %456, i32* %460, align 4
  %461 = load i32, i32* @bbt, align 4
  %462 = load i32, i32* @bbb, align 4
  %463 = sub nsw i32 %461, %462
  %464 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %465 = load i32, i32* @edgeCount, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %464, i64 %466, i32 4
  store i32 %463, i32* %467, align 4
  %468 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %469 = load i32, i32* @edgeCount, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %468, i64 %470, i32 6
  store i32 1, i32* %471, align 4
  %472 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %473 = load i32, i32* @edgeCount, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %472, i64 %474, i32 5
  store i32 1, i32* %475, align 4
  %476 = load i32, i32* @edgeCount, align 4
  %477 = add nsw i32 %476, 1
  %478 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %479 = sext i32 %476 to i64
  %480 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %478, i64 %479, i32 7
  store i32 %477, i32* %480, align 4
  %481 = load i32, i32* @edgeCount, align 4
  %482 = add nsw i32 %481, -1
  %483 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %484 = sext i32 %481 to i64
  %485 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %483, i64 %484, i32 8
  store i32 %482, i32* %485, align 4
  %486 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %487 = load i32, i32* @edgeCount, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %486, i64 %488, i32 0
  store i32 -1, i32* %489, align 4
  %490 = load i32, i32* @bbl, align 4
  %491 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %492 = load i32, i32* @edgeCount, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* @edgeCount, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %491, i64 %494, i32 1
  store i32 %490, i32* %495, align 4
  %496 = load i32, i32* @bbr, align 4
  %497 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %498 = load i32, i32* @edgeCount, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %497, i64 %499, i32 2
  store i32 %496, i32* %500, align 4
  %501 = load i32, i32* @bbb, align 4
  %502 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %503 = load i32, i32* @edgeCount, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %502, i64 %504, i32 3
  store i32 %501, i32* %505, align 4
  %506 = load i32, i32* @bbr, align 4
  %507 = load i32, i32* @bbl, align 4
  %508 = sub nsw i32 %506, %507
  %509 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %510 = load i32, i32* @edgeCount, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %509, i64 %511, i32 4
  store i32 %508, i32* %512, align 4
  %513 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %514 = load i32, i32* @edgeCount, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %513, i64 %515, i32 6
  store i32 1, i32* %516, align 4
  %517 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %518 = load i32, i32* @edgeCount, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %517, i64 %519, i32 5
  store i32 1, i32* %520, align 4
  %521 = load i32, i32* @edgeCount, align 4
  %522 = add nsw i32 %521, -3
  %523 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %524 = sext i32 %521 to i64
  %525 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %523, i64 %524, i32 7
  store i32 %522, i32* %525, align 4
  %526 = load i32, i32* @edgeCount, align 4
  %527 = add nsw i32 %526, -1
  %528 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %529 = sext i32 %526 to i64
  %530 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %528, i64 %529, i32 8
  store i32 %527, i32* %530, align 4
  %531 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %532 = load i32, i32* @edgeCount, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %531, i64 %533, i32 0
  store i32 -1, i32* %534, align 4
  store i32 0, i32* @numProbes, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

declare dso_local void @tinsert(%struct.tnode** noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nofree nounwind }
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
!8 = distinct !{!8, !5}
