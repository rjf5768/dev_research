; ModuleID = './hprobes.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/hprobes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlink1 = type { i32, %struct.dlink1*, %struct.dlink1* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@vFixedList = external dso_local global %struct.dlink1*, align 8
@edgeList = external dso_local global %struct.edgebox*, align 8
@Vptrs = external dso_local global %struct.dlink1**, align 8
@Vroot = external dso_local global %struct.tnode*, align 8
@numProbes = external dso_local global i32, align 4
@edgeCount = external dso_local global i32, align 4
@hEdgeRoot = external dso_local global %struct.tnode*, align 8
@fpdebug = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [12 x i8] c"hprobe:%d  \00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"start:%d  end:%d  loc:%d  UorR:%d\0A\00", align 1
@vFixedEnd = external dso_local global %struct.dlink1*, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"hprobe:%d  start:%d  end:%d  loc:%d  UorR:%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @hprobes() #0 {
  br label %1

1:                                                ; preds = %692, %0
  %.027 = phi i32 [ undef, %0 ], [ %.532, %692 ]
  %.021 = phi i32 [ undef, %0 ], [ %.526, %692 ]
  %.015 = phi i32 [ undef, %0 ], [ %.520, %692 ]
  %.09 = phi i32 [ undef, %0 ], [ %.514, %692 ]
  %.0.in = phi %struct.dlink1** [ @vFixedList, %0 ], [ %693, %692 ]
  %.0 = load %struct.dlink1*, %struct.dlink1** %.0.in, align 8
  %.not = icmp eq %struct.dlink1* %.0, null
  br i1 %.not, label %694, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %5, i64 %6, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %692

11:                                               ; preds = %2
  %12 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %13 = sext i32 %4 to i64
  %14 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %12, i64 %13, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %4 to i64
  %17 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %12, i64 %16, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %20 = sext i32 %4 to i64
  %21 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %19, i64 %20, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %4 to i64
  %24 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %19, i64 %23, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %19, i64 %26, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %65

30:                                               ; preds = %11
  %31 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %32 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %33 = call i32 @tprop(%struct.tnode* noundef %32, i32 noundef %15) #2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %31, i64 %34
  br label %36

36:                                               ; preds = %62, %30
  %.116 = phi i32 [ %.015, %30 ], [ %.217, %62 ]
  %.110 = phi i32 [ %.09, %30 ], [ %.211, %62 ]
  %.02.in = phi %struct.dlink1** [ %35, %30 ], [ %63, %62 ]
  %.02 = load %struct.dlink1*, %struct.dlink1** %.02.in, align 8
  %.not90 = icmp eq %struct.dlink1* %.02, null
  br i1 %.not90, label %.loopexit43, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.02, i64 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %40, i64 %41, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %62

46:                                               ; preds = %37
  %47 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %48 = sext i32 %39 to i64
  %49 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %47, i64 %48, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %39 to i64
  %52 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %47, i64 %51, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %55 = sext i32 %39 to i64
  %56 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %54, i64 %55, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, %22
  br i1 %58, label %60, label %59

59:                                               ; preds = %46
  %.not91 = icmp slt i32 %53, %22
  br i1 %.not91, label %61, label %60

60:                                               ; preds = %59, %46
  br label %62

61:                                               ; preds = %59
  br label %64

62:                                               ; preds = %60, %45
  %.217 = phi i32 [ %.116, %45 ], [ %53, %60 ]
  %.211 = phi i32 [ %.110, %45 ], [ %50, %60 ]
  %63 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.02, i64 0, i32 2
  br label %36, !llvm.loop !4

.loopexit43:                                      ; preds = %36
  br label %64

64:                                               ; preds = %.loopexit43, %61
  %.318 = phi i32 [ %53, %61 ], [ %.116, %.loopexit43 ]
  %.312 = phi i32 [ %50, %61 ], [ %.110, %.loopexit43 ]
  br label %66

65:                                               ; preds = %11
  br label %66

66:                                               ; preds = %65, %64
  %.419 = phi i32 [ %.318, %64 ], [ %.015, %65 ]
  %.413 = phi i32 [ %.312, %64 ], [ %.09, %65 ]
  %.13 = phi %struct.dlink1* [ %.02, %64 ], [ null, %65 ]
  %67 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %68 = sext i32 %4 to i64
  %69 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %67, i64 %68, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %67, i64 %71, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %109

75:                                               ; preds = %66
  %76 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %77 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %78 = call i32 @tprop(%struct.tnode* noundef %77, i32 noundef %15) #2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %76, i64 %79
  br label %81

81:                                               ; preds = %106, %75
  %.128 = phi i32 [ %.027, %75 ], [ %.229, %106 ]
  %.122 = phi i32 [ %.021, %75 ], [ %.223, %106 ]
  %.01.in = phi %struct.dlink1** [ %80, %75 ], [ %107, %106 ]
  %.01 = load %struct.dlink1*, %struct.dlink1** %.01.in, align 8
  %.not88 = icmp eq %struct.dlink1* %.01, null
  br i1 %.not88, label %.loopexit42, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.01, i64 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %85, i64 %86, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %106

91:                                               ; preds = %82
  %92 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %93 = sext i32 %84 to i64
  %94 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %92, i64 %93, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %84 to i64
  %97 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %92, i64 %96, i32 2
  %98 = load i32, i32* %97, align 4
  %.not89 = icmp sgt i32 %98, %18
  br i1 %.not89, label %99, label %104

99:                                               ; preds = %91
  %100 = sext i32 %84 to i64
  %101 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %92, i64 %100, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %102, %18
  br i1 %103, label %104, label %105

104:                                              ; preds = %99, %91
  br label %106

105:                                              ; preds = %99
  br label %108

106:                                              ; preds = %104, %90
  %.229 = phi i32 [ %.128, %90 ], [ %98, %104 ]
  %.223 = phi i32 [ %.122, %90 ], [ %95, %104 ]
  %107 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.01, i64 0, i32 2
  br label %81, !llvm.loop !6

.loopexit42:                                      ; preds = %81
  br label %108

108:                                              ; preds = %.loopexit42, %105
  %.330 = phi i32 [ %98, %105 ], [ %.128, %.loopexit42 ]
  %.324 = phi i32 [ %95, %105 ], [ %.122, %.loopexit42 ]
  br label %110

109:                                              ; preds = %66
  br label %110

110:                                              ; preds = %109, %108
  %.431 = phi i32 [ %.330, %108 ], [ %.027, %109 ]
  %.425 = phi i32 [ %.324, %108 ], [ %.021, %109 ]
  %.1 = phi %struct.dlink1* [ %.01, %108 ], [ null, %109 ]
  %.not63 = icmp eq %struct.dlink1* %.13, null
  br i1 %.not63, label %263, label %111

111:                                              ; preds = %110
  %112 = icmp eq %struct.dlink1* %.13, %.1
  br i1 %112, label %113, label %263

113:                                              ; preds = %111
  %114 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %115 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %116 = call i32 @tprop(%struct.tnode* noundef %115, i32 noundef %15) #2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %114, i64 %117
  br label %119

119:                                              ; preds = %153, %113
  %.04.in = phi %struct.dlink1** [ %118, %113 ], [ %154, %153 ]
  %.04 = load %struct.dlink1*, %struct.dlink1** %.04.in, align 8
  %.not83 = icmp eq %struct.dlink1* %.04, null
  br i1 %.not83, label %.loopexit, label %120

120:                                              ; preds = %119
  %121 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %122 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.04, i64 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %121, i64 %124, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %153

129:                                              ; preds = %120
  %130 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %131 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.04, i64 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %130, i64 %133, i32 3
  %135 = load i32, i32* %134, align 4
  %.not85 = icmp slt i32 %135, %.413
  br i1 %.not85, label %137, label %136

136:                                              ; preds = %129
  br label %155

137:                                              ; preds = %129
  %138 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %139 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.04, i64 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %138, i64 %141, i32 1
  %143 = load i32, i32* %142, align 4
  %.not86 = icmp slt i32 %143, %22
  br i1 %.not86, label %144, label %151

144:                                              ; preds = %137
  %145 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %146 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.04, i64 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %145, i64 %148, i32 2
  %150 = load i32, i32* %149, align 4
  %.not87 = icmp sgt i32 %150, %18
  br i1 %.not87, label %152, label %151

151:                                              ; preds = %144, %137
  br label %153

152:                                              ; preds = %144
  br label %155

153:                                              ; preds = %151, %128
  %154 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.04, i64 0, i32 2
  br label %119, !llvm.loop !7

.loopexit:                                        ; preds = %119
  br label %155

155:                                              ; preds = %.loopexit, %152, %136
  %.not84 = phi i1 [ false, %.loopexit ], [ true, %152 ], [ false, %136 ]
  br i1 %.not84, label %261, label %156

156:                                              ; preds = %155
  %157 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %158 = load i32, i32* @numProbes, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* @numProbes, align 4
  %160 = load i32, i32* @edgeCount, align 4
  %161 = add nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %157, i64 %162, i32 1
  store i32 %15, i32* %163, align 4
  %164 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %165 = load i32, i32* @numProbes, align 4
  %166 = load i32, i32* @edgeCount, align 4
  %167 = add nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %164, i64 %168, i32 2
  store i32 %.413, i32* %169, align 4
  %170 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %171 = load i32, i32* @numProbes, align 4
  %172 = load i32, i32* @edgeCount, align 4
  %173 = add nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %170, i64 %174, i32 3
  store i32 %22, i32* %175, align 4
  %176 = sub nsw i32 %.413, %15
  %177 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %178 = load i32, i32* @numProbes, align 4
  %179 = load i32, i32* @edgeCount, align 4
  %180 = add nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %177, i64 %181, i32 4
  store i32 %176, i32* %182, align 4
  %183 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %184 = load i32, i32* @numProbes, align 4
  %185 = load i32, i32* @edgeCount, align 4
  %186 = add nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %183, i64 %187, i32 6
  store i32 0, i32* %188, align 4
  %189 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %190 = load i32, i32* @numProbes, align 4
  %191 = load i32, i32* @edgeCount, align 4
  %192 = add nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %189, i64 %193, i32 0
  store i32 0, i32* %194, align 4
  %195 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %196 = load i32, i32* @numProbes, align 4
  %197 = load i32, i32* @edgeCount, align 4
  %198 = add nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %195, i64 %199, i32 5
  store i32 1, i32* %200, align 4
  %201 = load i32, i32* @numProbes, align 4
  %202 = load i32, i32* @edgeCount, align 4
  %203 = add nsw i32 %201, %202
  call void @tinsert(%struct.tnode** noundef nonnull @hEdgeRoot, i32 noundef %22, i32 noundef %203) #2
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %205 = load i32, i32* @numProbes, align 4
  %206 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %204, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %205) #2
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %208 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %207, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 noundef %15, i32 noundef %.413, i32 noundef %22, i32 noundef 1) #2
  %209 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %210 = load i32, i32* @numProbes, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* @numProbes, align 4
  %212 = load i32, i32* @edgeCount, align 4
  %213 = add nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %209, i64 %214, i32 1
  store i32 %15, i32* %215, align 4
  %216 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %217 = load i32, i32* @numProbes, align 4
  %218 = load i32, i32* @edgeCount, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %216, i64 %220, i32 2
  store i32 %.413, i32* %221, align 4
  %222 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %223 = load i32, i32* @numProbes, align 4
  %224 = load i32, i32* @edgeCount, align 4
  %225 = add nsw i32 %223, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %222, i64 %226, i32 3
  store i32 %18, i32* %227, align 4
  %228 = sub nsw i32 %.413, %15
  %229 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %230 = load i32, i32* @numProbes, align 4
  %231 = load i32, i32* @edgeCount, align 4
  %232 = add nsw i32 %230, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %229, i64 %233, i32 4
  store i32 %228, i32* %234, align 4
  %235 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %236 = load i32, i32* @numProbes, align 4
  %237 = load i32, i32* @edgeCount, align 4
  %238 = add nsw i32 %236, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %235, i64 %239, i32 6
  store i32 0, i32* %240, align 4
  %241 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %242 = load i32, i32* @numProbes, align 4
  %243 = load i32, i32* @edgeCount, align 4
  %244 = add nsw i32 %242, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %241, i64 %245, i32 0
  store i32 0, i32* %246, align 4
  %247 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %248 = load i32, i32* @numProbes, align 4
  %249 = load i32, i32* @edgeCount, align 4
  %250 = add nsw i32 %248, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %247, i64 %251, i32 5
  store i32 -1, i32* %252, align 4
  %253 = load i32, i32* @numProbes, align 4
  %254 = load i32, i32* @edgeCount, align 4
  %255 = add nsw i32 %253, %254
  call void @tinsert(%struct.tnode** noundef nonnull @hEdgeRoot, i32 noundef %18, i32 noundef %255) #2
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %257 = load i32, i32* @numProbes, align 4
  %258 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %256, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %257) #2
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %260 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %259, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 noundef %15, i32 noundef %.413, i32 noundef %18, i32 noundef -1) #2
  br label %262

261:                                              ; preds = %155
  call void @doubleBack(%struct.dlink1* noundef nonnull %.0)
  br label %262

262:                                              ; preds = %261, %156
  br label %692

263:                                              ; preds = %111, %110
  %.not64 = icmp eq %struct.dlink1* %.13, null
  br i1 %.not64, label %477, label %264

264:                                              ; preds = %263
  %265 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %266 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.13, i64 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %265, i64 %268, i32 7
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %265, i64 %271, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, -1
  br i1 %274, label %275, label %477

275:                                              ; preds = %264
  %276 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %277 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %278 = call i32 @tprop(%struct.tnode* noundef %277, i32 noundef %.413) #2
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %276, i64 %279
  %281 = load %struct.dlink1*, %struct.dlink1** %280, align 8
  br label %282

282:                                              ; preds = %293, %275
  %.pn82 = phi %struct.dlink1* [ %281, %275 ], [ %.06, %293 ]
  %.06.in = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.pn82, i64 0, i32 2
  %.06 = load %struct.dlink1*, %struct.dlink1** %.06.in, align 8
  %.not74 = icmp eq %struct.dlink1* %.06, null
  br i1 %.not74, label %.loopexit41, label %283

283:                                              ; preds = %282
  %284 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %285 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.06, i64 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %284, i64 %287, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = icmp sgt i32 %289, %.413
  br i1 %290, label %291, label %292

291:                                              ; preds = %283
  br label %294

292:                                              ; preds = %283
  br label %293

293:                                              ; preds = %292
  br label %282, !llvm.loop !8

.loopexit41:                                      ; preds = %282
  br label %294

294:                                              ; preds = %.loopexit41, %291
  %295 = icmp eq %struct.dlink1* %.06, null
  br i1 %295, label %296, label %297

296:                                              ; preds = %294
  br label %299

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.06, i64 0, i32 1
  br label %299

299:                                              ; preds = %297, %296
  %.17.in = phi %struct.dlink1** [ @vFixedEnd, %296 ], [ %298, %297 ]
  br label %300

300:                                              ; preds = %323, %299
  %.28.in = phi %struct.dlink1** [ %.17.in, %299 ], [ %324, %323 ]
  %.28 = load %struct.dlink1*, %struct.dlink1** %.28.in, align 8
  %.not75 = icmp eq %struct.dlink1* %.28, null
  br i1 %.not75, label %.loopexit40, label %301

301:                                              ; preds = %300
  %302 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.28, i64 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %304, i64 %305, i32 5
  %307 = load i32, i32* %306, align 4
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %301
  br label %323

310:                                              ; preds = %301
  %311 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %312 = sext i32 %303 to i64
  %313 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %311, i64 %312, i32 2
  %314 = load i32, i32* %313, align 4
  %.not81 = icmp sgt i32 %314, %.419
  br i1 %.not81, label %315, label %321

315:                                              ; preds = %310
  %316 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %317 = sext i32 %303 to i64
  %318 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %316, i64 %317, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = icmp sgt i32 %319, %.419
  br i1 %320, label %321, label %322

321:                                              ; preds = %315, %310
  br label %323

322:                                              ; preds = %315
  br label %325

323:                                              ; preds = %321, %309
  %324 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.28, i64 0, i32 1
  br label %300, !llvm.loop !9

.loopexit40:                                      ; preds = %300
  br label %325

325:                                              ; preds = %.loopexit40, %322
  %326 = icmp eq %struct.dlink1* %.0, %.28
  br i1 %326, label %327, label %476

327:                                              ; preds = %325
  %328 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %329 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %330 = call i32 @tprop(%struct.tnode* noundef %329, i32 noundef %15) #2
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %328, i64 %331
  br label %333

333:                                              ; preds = %367, %327
  %.15.in = phi %struct.dlink1** [ %332, %327 ], [ %368, %367 ]
  %.15 = load %struct.dlink1*, %struct.dlink1** %.15.in, align 8
  %.not76 = icmp eq %struct.dlink1* %.15, null
  br i1 %.not76, label %.loopexit39, label %334

334:                                              ; preds = %333
  %335 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %336 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.15, i64 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %335, i64 %338, i32 5
  %340 = load i32, i32* %339, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %334
  br label %367

343:                                              ; preds = %334
  %344 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %345 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.15, i64 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %344, i64 %347, i32 3
  %349 = load i32, i32* %348, align 4
  %.not78 = icmp slt i32 %349, %.413
  br i1 %.not78, label %351, label %350

350:                                              ; preds = %343
  br label %369

351:                                              ; preds = %343
  %352 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %353 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.15, i64 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %352, i64 %355, i32 1
  %357 = load i32, i32* %356, align 4
  %.not79 = icmp slt i32 %357, %22
  br i1 %.not79, label %358, label %365

358:                                              ; preds = %351
  %359 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %360 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.15, i64 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %359, i64 %362, i32 2
  %364 = load i32, i32* %363, align 4
  %.not80 = icmp sgt i32 %364, %.419
  br i1 %.not80, label %366, label %365

365:                                              ; preds = %358, %351
  br label %367

366:                                              ; preds = %358
  br label %369

367:                                              ; preds = %365, %342
  %368 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.15, i64 0, i32 2
  br label %333, !llvm.loop !10

.loopexit39:                                      ; preds = %333
  br label %369

369:                                              ; preds = %.loopexit39, %366, %350
  %.not77 = phi i1 [ false, %.loopexit39 ], [ true, %366 ], [ false, %350 ]
  br i1 %.not77, label %475, label %370

370:                                              ; preds = %369
  %371 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %372 = load i32, i32* @numProbes, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* @numProbes, align 4
  %374 = load i32, i32* @edgeCount, align 4
  %375 = add nsw i32 %373, %374
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %371, i64 %376, i32 1
  store i32 %15, i32* %377, align 4
  %378 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %379 = load i32, i32* @numProbes, align 4
  %380 = load i32, i32* @edgeCount, align 4
  %381 = add nsw i32 %379, %380
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %378, i64 %382, i32 2
  store i32 %.413, i32* %383, align 4
  %384 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %385 = load i32, i32* @numProbes, align 4
  %386 = load i32, i32* @edgeCount, align 4
  %387 = add nsw i32 %385, %386
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %384, i64 %388, i32 3
  store i32 %22, i32* %389, align 4
  %390 = sub nsw i32 %.413, %15
  %391 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %392 = load i32, i32* @numProbes, align 4
  %393 = load i32, i32* @edgeCount, align 4
  %394 = add nsw i32 %392, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %391, i64 %395, i32 4
  store i32 %390, i32* %396, align 4
  %397 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %398 = load i32, i32* @numProbes, align 4
  %399 = load i32, i32* @edgeCount, align 4
  %400 = add nsw i32 %398, %399
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %397, i64 %401, i32 6
  store i32 0, i32* %402, align 4
  %403 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %404 = load i32, i32* @numProbes, align 4
  %405 = load i32, i32* @edgeCount, align 4
  %406 = add nsw i32 %404, %405
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %403, i64 %407, i32 0
  store i32 0, i32* %408, align 4
  %409 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %410 = load i32, i32* @numProbes, align 4
  %411 = load i32, i32* @edgeCount, align 4
  %412 = add nsw i32 %410, %411
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %409, i64 %413, i32 5
  store i32 1, i32* %414, align 4
  %415 = load i32, i32* @numProbes, align 4
  %416 = load i32, i32* @edgeCount, align 4
  %417 = add nsw i32 %415, %416
  call void @tinsert(%struct.tnode** noundef nonnull @hEdgeRoot, i32 noundef %22, i32 noundef %417) #2
  %418 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %419 = load i32, i32* @numProbes, align 4
  %420 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %418, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %419) #2
  %421 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %422 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %421, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 noundef %15, i32 noundef %.413, i32 noundef %22, i32 noundef 1) #2
  %423 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %424 = load i32, i32* @numProbes, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* @numProbes, align 4
  %426 = load i32, i32* @edgeCount, align 4
  %427 = add nsw i32 %425, %426
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %423, i64 %428, i32 1
  store i32 %15, i32* %429, align 4
  %430 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %431 = load i32, i32* @numProbes, align 4
  %432 = load i32, i32* @edgeCount, align 4
  %433 = add nsw i32 %431, %432
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %430, i64 %434, i32 2
  store i32 %.413, i32* %435, align 4
  %436 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %437 = load i32, i32* @numProbes, align 4
  %438 = load i32, i32* @edgeCount, align 4
  %439 = add nsw i32 %437, %438
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %436, i64 %440, i32 3
  store i32 %.419, i32* %441, align 4
  %442 = sub nsw i32 %.413, %15
  %443 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %444 = load i32, i32* @numProbes, align 4
  %445 = load i32, i32* @edgeCount, align 4
  %446 = add nsw i32 %444, %445
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %443, i64 %447, i32 4
  store i32 %442, i32* %448, align 4
  %449 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %450 = load i32, i32* @numProbes, align 4
  %451 = load i32, i32* @edgeCount, align 4
  %452 = add nsw i32 %450, %451
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %449, i64 %453, i32 6
  store i32 0, i32* %454, align 4
  %455 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %456 = load i32, i32* @numProbes, align 4
  %457 = load i32, i32* @edgeCount, align 4
  %458 = add nsw i32 %456, %457
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %455, i64 %459, i32 0
  store i32 0, i32* %460, align 4
  %461 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %462 = load i32, i32* @numProbes, align 4
  %463 = load i32, i32* @edgeCount, align 4
  %464 = add nsw i32 %462, %463
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %461, i64 %465, i32 5
  store i32 -1, i32* %466, align 4
  %467 = load i32, i32* @numProbes, align 4
  %468 = load i32, i32* @edgeCount, align 4
  %469 = add nsw i32 %467, %468
  call void @tinsert(%struct.tnode** noundef nonnull @hEdgeRoot, i32 noundef %.419, i32 noundef %469) #2
  %470 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %471 = load i32, i32* @numProbes, align 4
  %472 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %470, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %471) #2
  %473 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %474 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %473, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 noundef %15, i32 noundef %.413, i32 noundef %.419, i32 noundef -1) #2
  br label %475

475:                                              ; preds = %370, %369
  br label %476

476:                                              ; preds = %475, %325
  br label %477

477:                                              ; preds = %476, %264, %263
  %.not65 = icmp eq %struct.dlink1* %.1, null
  br i1 %.not65, label %691, label %478

478:                                              ; preds = %477
  %479 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %480 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.1, i64 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %479, i64 %482, i32 8
  %484 = load i32, i32* %483, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %479, i64 %485, i32 5
  %487 = load i32, i32* %486, align 4
  %488 = icmp eq i32 %487, 1
  br i1 %488, label %489, label %691

489:                                              ; preds = %478
  %490 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %491 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %492 = call i32 @tprop(%struct.tnode* noundef %491, i32 noundef %.425) #2
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %490, i64 %493
  %495 = load %struct.dlink1*, %struct.dlink1** %494, align 8
  br label %496

496:                                              ; preds = %507, %489
  %.pn = phi %struct.dlink1* [ %495, %489 ], [ %.3, %507 ]
  %.3.in = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.pn, i64 0, i32 2
  %.3 = load %struct.dlink1*, %struct.dlink1** %.3.in, align 8
  %.not66 = icmp eq %struct.dlink1* %.3, null
  br i1 %.not66, label %.loopexit38, label %497

497:                                              ; preds = %496
  %498 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %499 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.3, i64 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %498, i64 %501, i32 3
  %503 = load i32, i32* %502, align 4
  %504 = icmp sgt i32 %503, %.425
  br i1 %504, label %505, label %506

505:                                              ; preds = %497
  br label %508

506:                                              ; preds = %497
  br label %507

507:                                              ; preds = %506
  br label %496, !llvm.loop !11

.loopexit38:                                      ; preds = %496
  br label %508

508:                                              ; preds = %.loopexit38, %505
  %509 = icmp eq %struct.dlink1* %.3, null
  br i1 %509, label %510, label %511

510:                                              ; preds = %508
  br label %513

511:                                              ; preds = %508
  %512 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.3, i64 0, i32 1
  br label %513

513:                                              ; preds = %511, %510
  %.4.in = phi %struct.dlink1** [ @vFixedEnd, %510 ], [ %512, %511 ]
  br label %514

514:                                              ; preds = %537, %513
  %.5.in = phi %struct.dlink1** [ %.4.in, %513 ], [ %538, %537 ]
  %.5 = load %struct.dlink1*, %struct.dlink1** %.5.in, align 8
  %.not67 = icmp eq %struct.dlink1* %.5, null
  br i1 %.not67, label %.loopexit37, label %515

515:                                              ; preds = %514
  %516 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.5, i64 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %519 = sext i32 %517 to i64
  %520 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %518, i64 %519, i32 5
  %521 = load i32, i32* %520, align 4
  %522 = icmp sgt i32 %521, 0
  br i1 %522, label %523, label %524

523:                                              ; preds = %515
  br label %537

524:                                              ; preds = %515
  %525 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %526 = sext i32 %517 to i64
  %527 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %525, i64 %526, i32 2
  %528 = load i32, i32* %527, align 4
  %529 = icmp slt i32 %528, %.431
  br i1 %529, label %535, label %530

530:                                              ; preds = %524
  %531 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %532 = sext i32 %517 to i64
  %533 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %531, i64 %532, i32 1
  %534 = load i32, i32* %533, align 4
  %.not73 = icmp slt i32 %534, %.431
  br i1 %.not73, label %536, label %535

535:                                              ; preds = %530, %524
  br label %537

536:                                              ; preds = %530
  br label %539

537:                                              ; preds = %535, %523
  %538 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.5, i64 0, i32 1
  br label %514, !llvm.loop !12

.loopexit37:                                      ; preds = %514
  br label %539

539:                                              ; preds = %.loopexit37, %536
  %540 = icmp eq %struct.dlink1* %.0, %.5
  br i1 %540, label %541, label %690

541:                                              ; preds = %539
  %542 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %543 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %544 = call i32 @tprop(%struct.tnode* noundef %543, i32 noundef %15) #2
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %542, i64 %545
  br label %547

547:                                              ; preds = %581, %541
  %.2.in = phi %struct.dlink1** [ %546, %541 ], [ %582, %581 ]
  %.2 = load %struct.dlink1*, %struct.dlink1** %.2.in, align 8
  %.not68 = icmp eq %struct.dlink1* %.2, null
  br i1 %.not68, label %.loopexit36, label %548

548:                                              ; preds = %547
  %549 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %550 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.2, i64 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %549, i64 %552, i32 5
  %554 = load i32, i32* %553, align 4
  %555 = icmp slt i32 %554, 0
  br i1 %555, label %556, label %557

556:                                              ; preds = %548
  br label %581

557:                                              ; preds = %548
  %558 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %559 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.2, i64 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %558, i64 %561, i32 3
  %563 = load i32, i32* %562, align 4
  %.not70 = icmp slt i32 %563, %.425
  br i1 %.not70, label %565, label %564

564:                                              ; preds = %557
  br label %583

565:                                              ; preds = %557
  %566 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %567 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.2, i64 0, i32 0
  %568 = load i32, i32* %567, align 8
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %566, i64 %569, i32 1
  %571 = load i32, i32* %570, align 4
  %.not71 = icmp slt i32 %571, %.431
  br i1 %.not71, label %572, label %579

572:                                              ; preds = %565
  %573 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %574 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.2, i64 0, i32 0
  %575 = load i32, i32* %574, align 8
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %573, i64 %576, i32 2
  %578 = load i32, i32* %577, align 4
  %.not72 = icmp sgt i32 %578, %18
  br i1 %.not72, label %580, label %579

579:                                              ; preds = %572, %565
  br label %581

580:                                              ; preds = %572
  br label %583

581:                                              ; preds = %579, %556
  %582 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.2, i64 0, i32 2
  br label %547, !llvm.loop !13

.loopexit36:                                      ; preds = %547
  br label %583

583:                                              ; preds = %.loopexit36, %580, %564
  %.not69 = phi i1 [ false, %.loopexit36 ], [ true, %580 ], [ false, %564 ]
  br i1 %.not69, label %689, label %584

584:                                              ; preds = %583
  %585 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %586 = load i32, i32* @numProbes, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* @numProbes, align 4
  %588 = load i32, i32* @edgeCount, align 4
  %589 = add nsw i32 %587, %588
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %585, i64 %590, i32 1
  store i32 %15, i32* %591, align 4
  %592 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %593 = load i32, i32* @numProbes, align 4
  %594 = load i32, i32* @edgeCount, align 4
  %595 = add nsw i32 %593, %594
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %592, i64 %596, i32 2
  store i32 %.425, i32* %597, align 4
  %598 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %599 = load i32, i32* @numProbes, align 4
  %600 = load i32, i32* @edgeCount, align 4
  %601 = add nsw i32 %599, %600
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %598, i64 %602, i32 3
  store i32 %.431, i32* %603, align 4
  %604 = sub nsw i32 %.425, %15
  %605 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %606 = load i32, i32* @numProbes, align 4
  %607 = load i32, i32* @edgeCount, align 4
  %608 = add nsw i32 %606, %607
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %605, i64 %609, i32 4
  store i32 %604, i32* %610, align 4
  %611 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %612 = load i32, i32* @numProbes, align 4
  %613 = load i32, i32* @edgeCount, align 4
  %614 = add nsw i32 %612, %613
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %611, i64 %615, i32 6
  store i32 0, i32* %616, align 4
  %617 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %618 = load i32, i32* @numProbes, align 4
  %619 = load i32, i32* @edgeCount, align 4
  %620 = add nsw i32 %618, %619
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %617, i64 %621, i32 0
  store i32 0, i32* %622, align 4
  %623 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %624 = load i32, i32* @numProbes, align 4
  %625 = load i32, i32* @edgeCount, align 4
  %626 = add nsw i32 %624, %625
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %623, i64 %627, i32 5
  store i32 1, i32* %628, align 4
  %629 = load i32, i32* @numProbes, align 4
  %630 = load i32, i32* @edgeCount, align 4
  %631 = add nsw i32 %629, %630
  call void @tinsert(%struct.tnode** noundef nonnull @hEdgeRoot, i32 noundef %.431, i32 noundef %631) #2
  %632 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %633 = load i32, i32* @numProbes, align 4
  %634 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %632, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %633) #2
  %635 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %636 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %635, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 noundef %15, i32 noundef %.425, i32 noundef %.431, i32 noundef 1) #2
  %637 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %638 = load i32, i32* @numProbes, align 4
  %639 = add nsw i32 %638, 1
  store i32 %639, i32* @numProbes, align 4
  %640 = load i32, i32* @edgeCount, align 4
  %641 = add nsw i32 %639, %640
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %637, i64 %642, i32 1
  store i32 %15, i32* %643, align 4
  %644 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %645 = load i32, i32* @numProbes, align 4
  %646 = load i32, i32* @edgeCount, align 4
  %647 = add nsw i32 %645, %646
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %644, i64 %648, i32 2
  store i32 %.425, i32* %649, align 4
  %650 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %651 = load i32, i32* @numProbes, align 4
  %652 = load i32, i32* @edgeCount, align 4
  %653 = add nsw i32 %651, %652
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %650, i64 %654, i32 3
  store i32 %18, i32* %655, align 4
  %656 = sub nsw i32 %.425, %15
  %657 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %658 = load i32, i32* @numProbes, align 4
  %659 = load i32, i32* @edgeCount, align 4
  %660 = add nsw i32 %658, %659
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %657, i64 %661, i32 4
  store i32 %656, i32* %662, align 4
  %663 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %664 = load i32, i32* @numProbes, align 4
  %665 = load i32, i32* @edgeCount, align 4
  %666 = add nsw i32 %664, %665
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %663, i64 %667, i32 6
  store i32 0, i32* %668, align 4
  %669 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %670 = load i32, i32* @numProbes, align 4
  %671 = load i32, i32* @edgeCount, align 4
  %672 = add nsw i32 %670, %671
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %669, i64 %673, i32 0
  store i32 0, i32* %674, align 4
  %675 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %676 = load i32, i32* @numProbes, align 4
  %677 = load i32, i32* @edgeCount, align 4
  %678 = add nsw i32 %676, %677
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %675, i64 %679, i32 5
  store i32 -1, i32* %680, align 4
  %681 = load i32, i32* @numProbes, align 4
  %682 = load i32, i32* @edgeCount, align 4
  %683 = add nsw i32 %681, %682
  call void @tinsert(%struct.tnode** noundef nonnull @hEdgeRoot, i32 noundef %18, i32 noundef %683) #2
  %684 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %685 = load i32, i32* @numProbes, align 4
  %686 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %684, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %685) #2
  %687 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %688 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %687, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 noundef %15, i32 noundef %.425, i32 noundef %18, i32 noundef -1) #2
  br label %689

689:                                              ; preds = %584, %583
  br label %690

690:                                              ; preds = %689, %539
  br label %691

691:                                              ; preds = %690, %478, %477
  call void @doubleBack(%struct.dlink1* noundef nonnull %.0)
  br label %692

692:                                              ; preds = %691, %262, %10
  %.532 = phi i32 [ %.027, %10 ], [ %.431, %262 ], [ %.431, %691 ]
  %.526 = phi i32 [ %.021, %10 ], [ %.425, %262 ], [ %.425, %691 ]
  %.520 = phi i32 [ %.015, %10 ], [ %.419, %262 ], [ %.419, %691 ]
  %.514 = phi i32 [ %.09, %10 ], [ %.413, %262 ], [ %.413, %691 ]
  %693 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.0, i64 0, i32 2
  br label %1, !llvm.loop !14

694:                                              ; preds = %1
  ret void
}

declare dso_local i32 @tprop(%struct.tnode* noundef, i32 noundef) #1

declare dso_local void @tinsert(%struct.tnode** noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @doubleBack(%struct.dlink1* noundef readonly %0) #0 {
  %2 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %3 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %2, i64 %5, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %2, i64 %8, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %12 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %0, i64 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %11, i64 %14, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %18 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %19 = call i32 @tprop(%struct.tnode* noundef %18, i32 noundef %7) #2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %17, i64 %20
  br label %22

22:                                               ; preds = %217, %1
  %.0.in = phi %struct.dlink1** [ %21, %1 ], [ %218, %217 ]
  %.0 = load %struct.dlink1*, %struct.dlink1** %.0.in, align 8
  %.not = icmp eq %struct.dlink1* %.0, null
  br i1 %.not, label %219, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.0, i64 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %26, i64 %27, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %217

32:                                               ; preds = %23
  %33 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %34 = sext i32 %25 to i64
  %35 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %33, i64 %34, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %25 to i64
  %38 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %33, i64 %37, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %41 = sext i32 %25 to i64
  %42 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %40, i64 %41, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, %10
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = icmp sgt i32 %39, %16
  br i1 %46, label %48, label %47

47:                                               ; preds = %45, %32
  br label %217

48:                                               ; preds = %45
  %49 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %50 = sext i32 %25 to i64
  %51 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %49, i64 %50, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %49, i64 %53, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %113

57:                                               ; preds = %48
  %58 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %59 = sext i32 %25 to i64
  %60 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %58, i64 %59, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %58, i64 %62, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %113

66:                                               ; preds = %57
  %67 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %68 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %69 = call i32 @tprop(%struct.tnode* noundef %68, i32 noundef %7) #2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %67, i64 %70
  br label %72

72:                                               ; preds = %110, %66
  %.01.in = phi %struct.dlink1** [ %71, %66 ], [ %111, %110 ]
  %.01 = load %struct.dlink1*, %struct.dlink1** %.01.in, align 8
  %.not4 = icmp eq %struct.dlink1* %.01, null
  br i1 %.not4, label %.loopexit, label %73

73:                                               ; preds = %72
  %74 = icmp eq %struct.dlink1* %.01, %0
  br i1 %74, label %75, label %76

75:                                               ; preds = %73
  br label %110

76:                                               ; preds = %73
  %77 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %78 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.01, i64 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %77, i64 %80, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %110

85:                                               ; preds = %76
  %86 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %87 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.01, i64 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %86, i64 %89, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %91, %36
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %112

94:                                               ; preds = %85
  %95 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %96 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.01, i64 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %95, i64 %98, i32 1
  %100 = load i32, i32* %99, align 4
  %.not5 = icmp slt i32 %100, %43
  br i1 %.not5, label %101, label %108

101:                                              ; preds = %94
  %102 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %103 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.01, i64 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %102, i64 %105, i32 2
  %107 = load i32, i32* %106, align 4
  %.not6 = icmp sgt i32 %107, %39
  br i1 %.not6, label %109, label %108

108:                                              ; preds = %101, %94
  br label %110

109:                                              ; preds = %101
  br label %112

110:                                              ; preds = %108, %84, %75
  %111 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.01, i64 0, i32 2
  br label %72, !llvm.loop !15

.loopexit:                                        ; preds = %72
  br label %112

112:                                              ; preds = %.loopexit, %109, %93
  %.02 = phi i32 [ 1, %93 ], [ 0, %109 ], [ 1, %.loopexit ]
  br label %114

113:                                              ; preds = %57, %48
  br label %114

114:                                              ; preds = %113, %112
  %.1 = phi i32 [ %.02, %112 ], [ 0, %113 ]
  %.not3 = icmp eq i32 %.1, 0
  br i1 %.not3, label %216, label %115

115:                                              ; preds = %114
  %116 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %117 = load i32, i32* @numProbes, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* @numProbes, align 4
  %119 = load i32, i32* @edgeCount, align 4
  %120 = add nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %116, i64 %121, i32 1
  store i32 %7, i32* %122, align 4
  %123 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %124 = load i32, i32* @numProbes, align 4
  %125 = load i32, i32* @edgeCount, align 4
  %126 = add nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %123, i64 %127, i32 2
  store i32 %36, i32* %128, align 4
  %129 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %130 = load i32, i32* @numProbes, align 4
  %131 = load i32, i32* @edgeCount, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %129, i64 %133, i32 3
  store i32 %43, i32* %134, align 4
  %135 = sub nsw i32 %36, %7
  %136 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %137 = load i32, i32* @numProbes, align 4
  %138 = load i32, i32* @edgeCount, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %136, i64 %140, i32 4
  store i32 %135, i32* %141, align 4
  %142 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %143 = load i32, i32* @numProbes, align 4
  %144 = load i32, i32* @edgeCount, align 4
  %145 = add nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %142, i64 %146, i32 6
  store i32 0, i32* %147, align 4
  %148 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %149 = load i32, i32* @numProbes, align 4
  %150 = load i32, i32* @edgeCount, align 4
  %151 = add nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %148, i64 %152, i32 0
  store i32 0, i32* %153, align 4
  %154 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %155 = load i32, i32* @numProbes, align 4
  %156 = load i32, i32* @edgeCount, align 4
  %157 = add nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %154, i64 %158, i32 5
  store i32 1, i32* %159, align 4
  %160 = load i32, i32* @numProbes, align 4
  %161 = load i32, i32* @edgeCount, align 4
  %162 = add nsw i32 %160, %161
  call void @tinsert(%struct.tnode** noundef nonnull @hEdgeRoot, i32 noundef %43, i32 noundef %162) #2
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %164 = load i32, i32* @numProbes, align 4
  %165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %163, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef %164, i32 noundef %7, i32 noundef %36, i32 noundef %43, i32 noundef 1) #2
  %166 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %167 = load i32, i32* @numProbes, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* @numProbes, align 4
  %169 = load i32, i32* @edgeCount, align 4
  %170 = add nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %166, i64 %171, i32 1
  store i32 %7, i32* %172, align 4
  %173 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %174 = load i32, i32* @numProbes, align 4
  %175 = load i32, i32* @edgeCount, align 4
  %176 = add nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %173, i64 %177, i32 2
  store i32 %36, i32* %178, align 4
  %179 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %180 = load i32, i32* @numProbes, align 4
  %181 = load i32, i32* @edgeCount, align 4
  %182 = add nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %179, i64 %183, i32 3
  store i32 %39, i32* %184, align 4
  %185 = sub nsw i32 %36, %7
  %186 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %187 = load i32, i32* @numProbes, align 4
  %188 = load i32, i32* @edgeCount, align 4
  %189 = add nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %186, i64 %190, i32 4
  store i32 %185, i32* %191, align 4
  %192 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %193 = load i32, i32* @numProbes, align 4
  %194 = load i32, i32* @edgeCount, align 4
  %195 = add nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %192, i64 %196, i32 6
  store i32 0, i32* %197, align 4
  %198 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %199 = load i32, i32* @numProbes, align 4
  %200 = load i32, i32* @edgeCount, align 4
  %201 = add nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %198, i64 %202, i32 0
  store i32 0, i32* %203, align 4
  %204 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %205 = load i32, i32* @numProbes, align 4
  %206 = load i32, i32* @edgeCount, align 4
  %207 = add nsw i32 %205, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %204, i64 %208, i32 5
  store i32 -1, i32* %209, align 4
  %210 = load i32, i32* @numProbes, align 4
  %211 = load i32, i32* @edgeCount, align 4
  %212 = add nsw i32 %210, %211
  call void @tinsert(%struct.tnode** noundef nonnull @hEdgeRoot, i32 noundef %39, i32 noundef %212) #2
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %214 = load i32, i32* @numProbes, align 4
  %215 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %213, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef %214, i32 noundef %7, i32 noundef %36, i32 noundef %39, i32 noundef -1) #2
  br label %216

216:                                              ; preds = %115, %114
  br label %217

217:                                              ; preds = %216, %47, %31
  %218 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.0, i64 0, i32 2
  br label %22, !llvm.loop !16

219:                                              ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
