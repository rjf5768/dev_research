; ModuleID = './loadpg.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/loadpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quad = type { i32, i32, i32, i32, %struct.quad*, %struct.quad* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }
%struct.pnode = type { i32, %struct.nnode*, %struct.list2* }
%struct.nnode = type { i32, i32, i16, i16 }
%struct.list2 = type { i32, %struct.list2* }

@pinlist = external dso_local global %struct.quad*, align 8
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [43 x i8] c"pin number: %d of net: %d was supposed to \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"lie between nodes: %d and %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"However, the graph doesn't have an edge \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"between these two nodes\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"pin number: %d of net: %d \00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"specified to lie between nodes: %d and %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"is not within the scope of this channel\0A\00", align 1
@numnodes = external dso_local global i32, align 4
@gnodeArray = external dso_local global %struct.gnode**, align 8
@pnodeArray = external dso_local global %struct.pnode*, align 8
@gtrace = external dso_local global i16**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @loadpg(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gnode*, align 8
  br label %8

8:                                                ; preds = %415, %2
  %.04 = phi i32 [ undef, %2 ], [ %.15, %415 ]
  %.02 = phi i32 [ 1, %2 ], [ %417, %415 ]
  %.01.in = phi %struct.quad** [ @pinlist, %2 ], [ %416, %415 ]
  %.01 = load %struct.quad*, %struct.quad** %.01.in, align 8
  %.not = icmp sgt i32 %.02, %1
  br i1 %.not, label %418, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.quad, %struct.quad* %.01, i64 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = getelementptr inbounds %struct.quad, %struct.quad* %.01, i64 0, i32 2
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = getelementptr inbounds %struct.quad, %struct.quad* %.01, i64 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.quad, %struct.quad* %.01, i64 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @identify2(i32* noundef nonnull %3, i32* noundef nonnull %4, i32 noundef %15, i32* noundef nonnull %5, i32* noundef nonnull %6, %struct.gnode** noundef nonnull %7)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %9
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 noundef %.02, i32 noundef %0) #6
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef %24, i32 noundef %25) #6
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %28 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %27)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %30 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %29)
  call void @exit(i32 noundef 0) #7
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %9
  %32 = icmp eq i32 %18, 1
  br i1 %32, label %33, label %42

33:                                               ; preds = %31
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.02, i32 noundef %0) #6
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 noundef %37, i32 noundef %38) #6
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %41 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %40)
  call void @exit(i32 noundef 0) #7
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load %struct.gnode*, %struct.gnode** %7, align 8
  %48 = getelementptr inbounds %struct.gnode, %struct.gnode* %47, i64 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @numnodes, align 4
  %.not23 = icmp sgt i32 %50, %51
  br i1 %.not23, label %74, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @numnodes, align 4
  %.not27 = icmp sgt i32 %53, %54
  br i1 %.not27, label %74, label %55

55:                                               ; preds = %52
  %56 = load %struct.gnode*, %struct.gnode** %7, align 8
  %57 = getelementptr inbounds %struct.gnode, %struct.gnode* %56, i64 0, i32 2
  store i32 1000000000, i32* %57, align 8
  %58 = getelementptr inbounds %struct.gnode, %struct.gnode* %56, i64 0, i32 3
  store i32 1000000000, i32* %58, align 4
  %59 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.gnode*, %struct.gnode** %59, i64 %61
  br label %63

63:                                               ; preds = %67, %55
  %storemerge28.in = phi %struct.gnode** [ %62, %55 ], [ %69, %67 ]
  %storemerge28 = load %struct.gnode*, %struct.gnode** %storemerge28.in, align 8
  store %struct.gnode* %storemerge28, %struct.gnode** %7, align 8
  %64 = getelementptr inbounds %struct.gnode, %struct.gnode* %storemerge28, i64 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %3, align 4
  %.not29 = icmp eq i32 %65, %66
  br i1 %.not29, label %70, label %67

67:                                               ; preds = %63
  %68 = load %struct.gnode*, %struct.gnode** %7, align 8
  %69 = getelementptr inbounds %struct.gnode, %struct.gnode* %68, i64 0, i32 7
  br label %63, !llvm.loop !4

70:                                               ; preds = %63
  %71 = load %struct.gnode*, %struct.gnode** %7, align 8
  %72 = getelementptr inbounds %struct.gnode, %struct.gnode* %71, i64 0, i32 2
  store i32 1000000000, i32* %72, align 8
  %73 = getelementptr inbounds %struct.gnode, %struct.gnode* %71, i64 0, i32 3
  store i32 1000000000, i32* %73, align 4
  br label %155

74:                                               ; preds = %52, %43
  %75 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.gnode*, %struct.gnode** %75, i64 %77
  %79 = load %struct.gnode*, %struct.gnode** %78, align 8
  %80 = load %struct.gnode*, %struct.gnode** %7, align 8
  %81 = icmp eq %struct.gnode* %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %74
  %83 = load %struct.gnode*, %struct.gnode** %7, align 8
  %84 = getelementptr inbounds %struct.gnode, %struct.gnode* %83, i64 0, i32 7
  %85 = load %struct.gnode*, %struct.gnode** %84, align 8
  %86 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.gnode*, %struct.gnode** %86, i64 %88
  store %struct.gnode* %85, %struct.gnode** %89, align 8
  %90 = bitcast %struct.gnode** %7 to i8**
  %91 = load i8*, i8** %90, align 8
  call void @free(i8* noundef %91) #6
  br label %108

92:                                               ; preds = %74
  %93 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.gnode*, %struct.gnode** %93, i64 %95
  br label %97

97:                                               ; preds = %101, %92
  %.0.in = phi %struct.gnode** [ %96, %92 ], [ %102, %101 ]
  %.0 = load %struct.gnode*, %struct.gnode** %.0.in, align 8
  %98 = getelementptr inbounds %struct.gnode, %struct.gnode* %.0, i64 0, i32 7
  %99 = load %struct.gnode*, %struct.gnode** %98, align 8
  %100 = load %struct.gnode*, %struct.gnode** %7, align 8
  %.not24 = icmp eq %struct.gnode* %99, %100
  br i1 %.not24, label %103, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.gnode, %struct.gnode* %.0, i64 0, i32 7
  br label %97, !llvm.loop !6

103:                                              ; preds = %97
  %104 = load %struct.gnode*, %struct.gnode** %7, align 8
  %105 = getelementptr inbounds %struct.gnode, %struct.gnode* %104, i64 0, i32 7
  %106 = load %struct.gnode*, %struct.gnode** %105, align 8
  %107 = getelementptr inbounds %struct.gnode, %struct.gnode* %.0, i64 0, i32 7
  store %struct.gnode* %106, %struct.gnode** %107, align 8
  %.cast = bitcast %struct.gnode* %104 to i8*
  call void @free(i8* noundef %.cast) #6
  br label %108

108:                                              ; preds = %103, %82
  %109 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.gnode*, %struct.gnode** %109, i64 %111
  %113 = load %struct.gnode*, %struct.gnode** %112, align 8
  %114 = getelementptr inbounds %struct.gnode, %struct.gnode* %113, i64 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %108
  %119 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.gnode*, %struct.gnode** %119, i64 %121
  %123 = load %struct.gnode*, %struct.gnode** %122, align 8
  store %struct.gnode* %123, %struct.gnode** %7, align 8
  %124 = sext i32 %120 to i64
  %125 = getelementptr inbounds %struct.gnode*, %struct.gnode** %119, i64 %124
  %126 = load %struct.gnode*, %struct.gnode** %125, align 8
  %127 = getelementptr inbounds %struct.gnode, %struct.gnode* %126, i64 0, i32 7
  %128 = load %struct.gnode*, %struct.gnode** %127, align 8
  %129 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.gnode*, %struct.gnode** %129, i64 %131
  store %struct.gnode* %128, %struct.gnode** %132, align 8
  %133 = bitcast %struct.gnode** %7 to i8**
  %134 = load i8*, i8** %133, align 8
  call void @free(i8* noundef %134) #6
  br label %154

135:                                              ; preds = %108
  %136 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.gnode*, %struct.gnode** %136, i64 %138
  br label %140

140:                                              ; preds = %146, %135
  %.1.in = phi %struct.gnode** [ %139, %135 ], [ %147, %146 ]
  %.1 = load %struct.gnode*, %struct.gnode** %.1.in, align 8
  %141 = getelementptr inbounds %struct.gnode, %struct.gnode* %.1, i64 0, i32 7
  %142 = load %struct.gnode*, %struct.gnode** %141, align 8
  %143 = getelementptr inbounds %struct.gnode, %struct.gnode* %142, i64 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %3, align 4
  %.not25 = icmp eq i32 %144, %145
  br i1 %.not25, label %148, label %146

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.gnode, %struct.gnode* %.1, i64 0, i32 7
  br label %140, !llvm.loop !7

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.gnode, %struct.gnode* %.1, i64 0, i32 7
  %150 = load %struct.gnode*, %struct.gnode** %149, align 8
  store %struct.gnode* %150, %struct.gnode** %7, align 8
  %151 = getelementptr inbounds %struct.gnode, %struct.gnode* %150, i64 0, i32 7
  %152 = load %struct.gnode*, %struct.gnode** %151, align 8
  %153 = getelementptr inbounds %struct.gnode, %struct.gnode* %.1, i64 0, i32 7
  store %struct.gnode* %152, %struct.gnode** %153, align 8
  %.cast26 = bitcast %struct.gnode* %150 to i8*
  call void @free(i8* noundef %.cast26) #6
  br label %154

154:                                              ; preds = %148, %118
  br label %155

155:                                              ; preds = %154, %70
  %156 = load i32, i32* @numnodes, align 4
  %157 = add nsw i32 %.02, %156
  %158 = icmp eq i32 %17, 1
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %161 = zext i32 %.02 to i64
  %162 = getelementptr inbounds %struct.pnode, %struct.pnode* %160, i64 %161, i32 0
  store i32 0, i32* %162, align 8
  br label %184

163:                                              ; preds = %155
  %164 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %165 = sext i32 %.04 to i64
  %166 = getelementptr inbounds %struct.pnode, %struct.pnode* %164, i64 %165, i32 2
  %167 = load %struct.list2*, %struct.list2** %166, align 8
  %168 = zext i32 %.02 to i64
  %169 = getelementptr inbounds %struct.pnode, %struct.pnode* %164, i64 %168, i32 0
  store i32 %.04, i32* %169, align 8
  %170 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #6
  %171 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %172 = sext i32 %.04 to i64
  %173 = getelementptr inbounds %struct.pnode, %struct.pnode* %171, i64 %172, i32 2
  %174 = bitcast %struct.list2** %173 to i8**
  store i8* %170, i8** %174, align 8
  %175 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %176 = sext i32 %.04 to i64
  %177 = getelementptr inbounds %struct.pnode, %struct.pnode* %175, i64 %176, i32 2
  %178 = load %struct.list2*, %struct.list2** %177, align 8
  %179 = getelementptr inbounds %struct.list2, %struct.list2* %178, i64 0, i32 1
  store %struct.list2* %167, %struct.list2** %179, align 8
  %180 = sext i32 %.04 to i64
  %181 = getelementptr inbounds %struct.pnode, %struct.pnode* %175, i64 %180, i32 2
  %182 = load %struct.list2*, %struct.list2** %181, align 8
  %183 = getelementptr inbounds %struct.list2, %struct.list2* %182, i64 0, i32 0
  store i32 %.02, i32* %183, align 8
  br label %184

184:                                              ; preds = %163, %159
  %.15 = phi i32 [ %.02, %159 ], [ %.04, %163 ]
  %185 = load i32, i32* %5, align 4
  %186 = sub nsw i32 %15, %185
  %187 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #6
  %188 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %189 = sext i32 %157 to i64
  %190 = getelementptr inbounds %struct.gnode*, %struct.gnode** %188, i64 %189
  %191 = bitcast %struct.gnode** %190 to i8**
  store i8* %187, i8** %191, align 8
  %192 = load i32, i32* %3, align 4
  %193 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %194 = sext i32 %157 to i64
  %195 = getelementptr inbounds %struct.gnode*, %struct.gnode** %193, i64 %194
  %196 = load %struct.gnode*, %struct.gnode** %195, align 8
  %197 = getelementptr inbounds %struct.gnode, %struct.gnode* %196, i64 0, i32 0
  store i32 %192, i32* %197, align 8
  %198 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %199 = sext i32 %157 to i64
  %200 = getelementptr inbounds %struct.gnode*, %struct.gnode** %198, i64 %199
  %201 = load %struct.gnode*, %struct.gnode** %200, align 8
  %202 = getelementptr inbounds %struct.gnode, %struct.gnode* %201, i64 0, i32 2
  store i32 %186, i32* %202, align 8
  %203 = sext i32 %157 to i64
  %204 = getelementptr inbounds %struct.gnode*, %struct.gnode** %198, i64 %203
  %205 = load %struct.gnode*, %struct.gnode** %204, align 8
  %206 = getelementptr inbounds %struct.gnode, %struct.gnode* %205, i64 0, i32 1
  store i32 %186, i32* %206, align 4
  %207 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %208 = sext i32 %157 to i64
  %209 = getelementptr inbounds %struct.gnode*, %struct.gnode** %207, i64 %208
  %210 = load %struct.gnode*, %struct.gnode** %209, align 8
  %211 = getelementptr inbounds %struct.gnode, %struct.gnode* %210, i64 0, i32 3
  store i32 %186, i32* %211, align 4
  %212 = sext i32 %157 to i64
  %213 = getelementptr inbounds %struct.gnode*, %struct.gnode** %207, i64 %212
  %214 = load %struct.gnode*, %struct.gnode** %213, align 8
  %215 = getelementptr inbounds %struct.gnode, %struct.gnode* %214, i64 0, i32 4
  store i32 %49, i32* %215, align 8
  %216 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %217 = sext i32 %157 to i64
  %218 = getelementptr inbounds %struct.gnode*, %struct.gnode** %216, i64 %217
  %219 = load %struct.gnode*, %struct.gnode** %218, align 8
  %220 = getelementptr inbounds %struct.gnode, %struct.gnode* %219, i64 0, i32 5
  store i32 0, i32* %220, align 4
  %221 = sext i32 %157 to i64
  %222 = getelementptr inbounds %struct.gnode*, %struct.gnode** %216, i64 %221
  %223 = load %struct.gnode*, %struct.gnode** %222, align 8
  %224 = getelementptr inbounds %struct.gnode, %struct.gnode* %223, i64 0, i32 6
  store i32 0, i32* %224, align 8
  %225 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #6
  %226 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %227 = sext i32 %157 to i64
  %228 = getelementptr inbounds %struct.gnode*, %struct.gnode** %226, i64 %227
  %229 = load %struct.gnode*, %struct.gnode** %228, align 8
  %230 = getelementptr inbounds %struct.gnode, %struct.gnode* %229, i64 0, i32 7
  %231 = bitcast %struct.gnode** %230 to i8**
  store i8* %225, i8** %231, align 8
  %232 = load i32, i32* %4, align 4
  %233 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %234 = sext i32 %157 to i64
  %235 = getelementptr inbounds %struct.gnode*, %struct.gnode** %233, i64 %234
  %236 = load %struct.gnode*, %struct.gnode** %235, align 8
  %237 = getelementptr inbounds %struct.gnode, %struct.gnode* %236, i64 0, i32 7
  %238 = load %struct.gnode*, %struct.gnode** %237, align 8
  %239 = getelementptr inbounds %struct.gnode, %struct.gnode* %238, i64 0, i32 0
  store i32 %232, i32* %239, align 8
  %240 = sub nsw i32 %46, %186
  %241 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %242 = sext i32 %157 to i64
  %243 = getelementptr inbounds %struct.gnode*, %struct.gnode** %241, i64 %242
  %244 = load %struct.gnode*, %struct.gnode** %243, align 8
  %245 = getelementptr inbounds %struct.gnode, %struct.gnode* %244, i64 0, i32 7
  %246 = load %struct.gnode*, %struct.gnode** %245, align 8
  %247 = getelementptr inbounds %struct.gnode, %struct.gnode* %246, i64 0, i32 2
  store i32 %240, i32* %247, align 8
  %248 = sub nsw i32 %46, %186
  %249 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %250 = sext i32 %157 to i64
  %251 = getelementptr inbounds %struct.gnode*, %struct.gnode** %249, i64 %250
  %252 = load %struct.gnode*, %struct.gnode** %251, align 8
  %253 = getelementptr inbounds %struct.gnode, %struct.gnode* %252, i64 0, i32 7
  %254 = load %struct.gnode*, %struct.gnode** %253, align 8
  %255 = getelementptr inbounds %struct.gnode, %struct.gnode* %254, i64 0, i32 1
  store i32 %248, i32* %255, align 4
  %256 = sub nsw i32 %46, %186
  %257 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %258 = sext i32 %157 to i64
  %259 = getelementptr inbounds %struct.gnode*, %struct.gnode** %257, i64 %258
  %260 = load %struct.gnode*, %struct.gnode** %259, align 8
  %261 = getelementptr inbounds %struct.gnode, %struct.gnode* %260, i64 0, i32 7
  %262 = load %struct.gnode*, %struct.gnode** %261, align 8
  %263 = getelementptr inbounds %struct.gnode, %struct.gnode* %262, i64 0, i32 3
  store i32 %256, i32* %263, align 4
  %264 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %265 = sext i32 %157 to i64
  %266 = getelementptr inbounds %struct.gnode*, %struct.gnode** %264, i64 %265
  %267 = load %struct.gnode*, %struct.gnode** %266, align 8
  %268 = getelementptr inbounds %struct.gnode, %struct.gnode* %267, i64 0, i32 7
  %269 = load %struct.gnode*, %struct.gnode** %268, align 8
  %270 = getelementptr inbounds %struct.gnode, %struct.gnode* %269, i64 0, i32 4
  store i32 %49, i32* %270, align 8
  %271 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %272 = sext i32 %157 to i64
  %273 = getelementptr inbounds %struct.gnode*, %struct.gnode** %271, i64 %272
  %274 = load %struct.gnode*, %struct.gnode** %273, align 8
  %275 = getelementptr inbounds %struct.gnode, %struct.gnode* %274, i64 0, i32 7
  %276 = load %struct.gnode*, %struct.gnode** %275, align 8
  %277 = getelementptr inbounds %struct.gnode, %struct.gnode* %276, i64 0, i32 5
  store i32 0, i32* %277, align 4
  %278 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %279 = sext i32 %157 to i64
  %280 = getelementptr inbounds %struct.gnode*, %struct.gnode** %278, i64 %279
  %281 = load %struct.gnode*, %struct.gnode** %280, align 8
  %282 = getelementptr inbounds %struct.gnode, %struct.gnode* %281, i64 0, i32 7
  %283 = load %struct.gnode*, %struct.gnode** %282, align 8
  %284 = getelementptr inbounds %struct.gnode, %struct.gnode* %283, i64 0, i32 6
  store i32 0, i32* %284, align 8
  %285 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %286 = sext i32 %157 to i64
  %287 = getelementptr inbounds %struct.gnode*, %struct.gnode** %285, i64 %286
  %288 = load %struct.gnode*, %struct.gnode** %287, align 8
  %289 = getelementptr inbounds %struct.gnode, %struct.gnode* %288, i64 0, i32 7
  %290 = load %struct.gnode*, %struct.gnode** %289, align 8
  %291 = getelementptr inbounds %struct.gnode, %struct.gnode* %290, i64 0, i32 7
  store %struct.gnode* null, %struct.gnode** %291, align 8
  %292 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %293 = load i32, i32* %3, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.gnode*, %struct.gnode** %292, i64 %294
  %296 = load %struct.gnode*, %struct.gnode** %295, align 8
  store %struct.gnode* %296, %struct.gnode** %7, align 8
  %297 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #6
  %298 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %299 = load i32, i32* %3, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.gnode*, %struct.gnode** %298, i64 %300
  %302 = bitcast %struct.gnode** %301 to i8**
  store i8* %297, i8** %302, align 8
  %303 = load %struct.gnode*, %struct.gnode** %7, align 8
  %304 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %305 = load i32, i32* %3, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.gnode*, %struct.gnode** %304, i64 %306
  %308 = load %struct.gnode*, %struct.gnode** %307, align 8
  %309 = getelementptr inbounds %struct.gnode, %struct.gnode* %308, i64 0, i32 7
  store %struct.gnode* %303, %struct.gnode** %309, align 8
  %310 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %311 = load i32, i32* %3, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.gnode*, %struct.gnode** %310, i64 %312
  %314 = load %struct.gnode*, %struct.gnode** %313, align 8
  %315 = getelementptr inbounds %struct.gnode, %struct.gnode* %314, i64 0, i32 0
  store i32 %157, i32* %315, align 8
  %316 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %317 = load i32, i32* %3, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.gnode*, %struct.gnode** %316, i64 %318
  %320 = load %struct.gnode*, %struct.gnode** %319, align 8
  %321 = getelementptr inbounds %struct.gnode, %struct.gnode* %320, i64 0, i32 1
  store i32 %186, i32* %321, align 4
  %322 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %323 = load i32, i32* %3, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.gnode*, %struct.gnode** %322, i64 %324
  %326 = load %struct.gnode*, %struct.gnode** %325, align 8
  %327 = getelementptr inbounds %struct.gnode, %struct.gnode* %326, i64 0, i32 2
  store i32 %186, i32* %327, align 8
  %328 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %329 = load i32, i32* %3, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.gnode*, %struct.gnode** %328, i64 %330
  %332 = load %struct.gnode*, %struct.gnode** %331, align 8
  %333 = getelementptr inbounds %struct.gnode, %struct.gnode* %332, i64 0, i32 3
  store i32 %186, i32* %333, align 4
  %334 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %335 = load i32, i32* %3, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.gnode*, %struct.gnode** %334, i64 %336
  %338 = load %struct.gnode*, %struct.gnode** %337, align 8
  %339 = getelementptr inbounds %struct.gnode, %struct.gnode* %338, i64 0, i32 4
  store i32 %49, i32* %339, align 8
  %340 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %341 = load i32, i32* %3, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.gnode*, %struct.gnode** %340, i64 %342
  %344 = load %struct.gnode*, %struct.gnode** %343, align 8
  %345 = getelementptr inbounds %struct.gnode, %struct.gnode* %344, i64 0, i32 5
  store i32 0, i32* %345, align 4
  %346 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %347 = load i32, i32* %3, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.gnode*, %struct.gnode** %346, i64 %348
  %350 = load %struct.gnode*, %struct.gnode** %349, align 8
  %351 = getelementptr inbounds %struct.gnode, %struct.gnode* %350, i64 0, i32 6
  store i32 0, i32* %351, align 8
  %352 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %353 = load i32, i32* %4, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.gnode*, %struct.gnode** %352, i64 %354
  %356 = load %struct.gnode*, %struct.gnode** %355, align 8
  store %struct.gnode* %356, %struct.gnode** %7, align 8
  %357 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #6
  %358 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %359 = load i32, i32* %4, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.gnode*, %struct.gnode** %358, i64 %360
  %362 = bitcast %struct.gnode** %361 to i8**
  store i8* %357, i8** %362, align 8
  %363 = load %struct.gnode*, %struct.gnode** %7, align 8
  %364 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %365 = load i32, i32* %4, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.gnode*, %struct.gnode** %364, i64 %366
  %368 = load %struct.gnode*, %struct.gnode** %367, align 8
  %369 = getelementptr inbounds %struct.gnode, %struct.gnode* %368, i64 0, i32 7
  store %struct.gnode* %363, %struct.gnode** %369, align 8
  %370 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %371 = load i32, i32* %4, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.gnode*, %struct.gnode** %370, i64 %372
  %374 = load %struct.gnode*, %struct.gnode** %373, align 8
  %375 = getelementptr inbounds %struct.gnode, %struct.gnode* %374, i64 0, i32 0
  store i32 %157, i32* %375, align 8
  %376 = sub nsw i32 %46, %186
  %377 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %378 = load i32, i32* %4, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.gnode*, %struct.gnode** %377, i64 %379
  %381 = load %struct.gnode*, %struct.gnode** %380, align 8
  %382 = getelementptr inbounds %struct.gnode, %struct.gnode* %381, i64 0, i32 1
  store i32 %376, i32* %382, align 4
  %383 = sub nsw i32 %46, %186
  %384 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %385 = load i32, i32* %4, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.gnode*, %struct.gnode** %384, i64 %386
  %388 = load %struct.gnode*, %struct.gnode** %387, align 8
  %389 = getelementptr inbounds %struct.gnode, %struct.gnode* %388, i64 0, i32 2
  store i32 %383, i32* %389, align 8
  %390 = sub nsw i32 %46, %186
  %391 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %392 = load i32, i32* %4, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.gnode*, %struct.gnode** %391, i64 %393
  %395 = load %struct.gnode*, %struct.gnode** %394, align 8
  %396 = getelementptr inbounds %struct.gnode, %struct.gnode* %395, i64 0, i32 3
  store i32 %390, i32* %396, align 4
  %397 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %398 = load i32, i32* %4, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.gnode*, %struct.gnode** %397, i64 %399
  %401 = load %struct.gnode*, %struct.gnode** %400, align 8
  %402 = getelementptr inbounds %struct.gnode, %struct.gnode* %401, i64 0, i32 4
  store i32 %49, i32* %402, align 8
  %403 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %404 = load i32, i32* %4, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.gnode*, %struct.gnode** %403, i64 %405
  %407 = load %struct.gnode*, %struct.gnode** %406, align 8
  %408 = getelementptr inbounds %struct.gnode, %struct.gnode* %407, i64 0, i32 5
  store i32 0, i32* %408, align 4
  %409 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %410 = load i32, i32* %4, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.gnode*, %struct.gnode** %409, i64 %411
  %413 = load %struct.gnode*, %struct.gnode** %412, align 8
  %414 = getelementptr inbounds %struct.gnode, %struct.gnode* %413, i64 0, i32 6
  store i32 0, i32* %414, align 8
  br label %415

415:                                              ; preds = %184
  %416 = getelementptr inbounds %struct.quad, %struct.quad* %.01, i64 0, i32 4
  %417 = add nuw nsw i32 %.02, 1
  br label %8, !llvm.loop !8

418:                                              ; preds = %8
  br label %419

419:                                              ; preds = %532, %418
  %.13 = phi i32 [ 1, %418 ], [ %533, %532 ]
  %.not9 = icmp sgt i32 %.13, %1
  br i1 %.not9, label %534, label %420

420:                                              ; preds = %419
  %421 = load i32, i32* @numnodes, align 4
  %422 = add nsw i32 %.13, %421
  %423 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %424 = sext i32 %422 to i64
  %425 = getelementptr inbounds %struct.gnode*, %struct.gnode** %423, i64 %424
  br label %426

426:                                              ; preds = %530, %420
  %storemerge.in = phi %struct.gnode** [ %425, %420 ], [ %.in, %530 ]
  %storemerge = load %struct.gnode*, %struct.gnode** %storemerge.in, align 8
  store %struct.gnode* %storemerge, %struct.gnode** %7, align 8
  %.not10 = icmp eq %struct.gnode* %storemerge, null
  br i1 %.not10, label %531, label %427

427:                                              ; preds = %426
  %428 = load %struct.gnode*, %struct.gnode** %7, align 8
  %429 = getelementptr inbounds %struct.gnode, %struct.gnode* %428, i64 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @numnodes, align 4
  %432 = sub nsw i32 %430, %431
  %.not11 = icmp sgt i32 %430, %431
  br i1 %.not11, label %433, label %435

433:                                              ; preds = %427
  %434 = icmp slt i32 %432, %.13
  br i1 %434, label %435, label %436

435:                                              ; preds = %433, %427
  br label %524

436:                                              ; preds = %433
  %437 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %438 = zext i32 %.13 to i64
  %439 = getelementptr inbounds %struct.pnode, %struct.pnode* %437, i64 %438, i32 0
  %440 = load i32, i32* %439, align 8
  %.not12 = icmp eq i32 %440, 0
  br i1 %.not12, label %456, label %441

441:                                              ; preds = %436
  %442 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %443 = sext i32 %432 to i64
  %444 = getelementptr inbounds %struct.pnode, %struct.pnode* %442, i64 %443, i32 0
  %445 = load i32, i32* %444, align 8
  %.not21 = icmp eq i32 %445, 0
  br i1 %.not21, label %456, label %446

446:                                              ; preds = %441
  %447 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %448 = zext i32 %.13 to i64
  %449 = getelementptr inbounds %struct.pnode, %struct.pnode* %447, i64 %448, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = sext i32 %432 to i64
  %452 = getelementptr inbounds %struct.pnode, %struct.pnode* %447, i64 %451, i32 0
  %453 = load i32, i32* %452, align 8
  %.not22 = icmp eq i32 %450, %453
  br i1 %.not22, label %455, label %454

454:                                              ; preds = %446
  br label %524

455:                                              ; preds = %446
  br label %490

456:                                              ; preds = %441, %436
  %457 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %458 = zext i32 %.13 to i64
  %459 = getelementptr inbounds %struct.pnode, %struct.pnode* %457, i64 %458, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %469

462:                                              ; preds = %456
  %463 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %464 = sext i32 %432 to i64
  %465 = getelementptr inbounds %struct.pnode, %struct.pnode* %463, i64 %464, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %469

468:                                              ; preds = %462
  br label %524

469:                                              ; preds = %462, %456
  %470 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %471 = zext i32 %.13 to i64
  %472 = getelementptr inbounds %struct.pnode, %struct.pnode* %470, i64 %471, i32 0
  %473 = load i32, i32* %472, align 8
  %.not13 = icmp eq i32 %473, 0
  br i1 %.not13, label %481, label %474

474:                                              ; preds = %469
  %475 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %476 = zext i32 %.13 to i64
  %477 = getelementptr inbounds %struct.pnode, %struct.pnode* %475, i64 %476, i32 0
  %478 = load i32, i32* %477, align 8
  %.not20 = icmp eq i32 %478, %432
  br i1 %.not20, label %480, label %479

479:                                              ; preds = %474
  br label %524

480:                                              ; preds = %474
  br label %488

481:                                              ; preds = %469
  %482 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %483 = sext i32 %432 to i64
  %484 = getelementptr inbounds %struct.pnode, %struct.pnode* %482, i64 %483, i32 0
  %485 = load i32, i32* %484, align 8
  %.not14 = icmp eq i32 %485, %.13
  br i1 %.not14, label %487, label %486

486:                                              ; preds = %481
  br label %524

487:                                              ; preds = %481
  br label %488

488:                                              ; preds = %487, %480
  br label %489

489:                                              ; preds = %488
  br label %490

490:                                              ; preds = %489, %455
  %491 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %492 = sext i32 %422 to i64
  %493 = getelementptr inbounds %struct.gnode*, %struct.gnode** %491, i64 %492
  %494 = sext i32 %430 to i64
  %495 = getelementptr inbounds %struct.gnode*, %struct.gnode** %491, i64 %494
  %496 = load %struct.gnode*, %struct.gnode** %495, align 8
  br label %497

497:                                              ; preds = %506, %490
  %storemerge15.in = phi %struct.gnode** [ %493, %490 ], [ %508, %506 ]
  %storemerge15 = load %struct.gnode*, %struct.gnode** %storemerge15.in, align 8
  store %struct.gnode* %storemerge15, %struct.gnode** %7, align 8
  %.not16 = icmp eq %struct.gnode* %storemerge15, null
  br i1 %.not16, label %.loopexit6, label %498

498:                                              ; preds = %497
  %499 = load %struct.gnode*, %struct.gnode** %7, align 8
  %500 = getelementptr inbounds %struct.gnode, %struct.gnode* %499, i64 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = icmp eq i32 %501, %430
  br i1 %502, label %503, label %506

503:                                              ; preds = %498
  %504 = load %struct.gnode*, %struct.gnode** %7, align 8
  %505 = getelementptr inbounds %struct.gnode, %struct.gnode* %504, i64 0, i32 3
  store i32 1000000000, i32* %505, align 4
  br label %509

506:                                              ; preds = %498
  %507 = load %struct.gnode*, %struct.gnode** %7, align 8
  %508 = getelementptr inbounds %struct.gnode, %struct.gnode* %507, i64 0, i32 7
  br label %497, !llvm.loop !9

.loopexit6:                                       ; preds = %497
  br label %509

509:                                              ; preds = %.loopexit6, %503
  br label %510

510:                                              ; preds = %519, %509
  %storemerge17 = phi %struct.gnode* [ %496, %509 ], [ %522, %519 ]
  store %struct.gnode* %storemerge17, %struct.gnode** %7, align 8
  %.not18 = icmp eq %struct.gnode* %storemerge17, null
  br i1 %.not18, label %.loopexit, label %511

511:                                              ; preds = %510
  %512 = load %struct.gnode*, %struct.gnode** %7, align 8
  %513 = getelementptr inbounds %struct.gnode, %struct.gnode* %512, i64 0, i32 0
  %514 = load i32, i32* %513, align 8
  %515 = icmp eq i32 %514, %422
  br i1 %515, label %516, label %519

516:                                              ; preds = %511
  %517 = load %struct.gnode*, %struct.gnode** %7, align 8
  %518 = getelementptr inbounds %struct.gnode, %struct.gnode* %517, i64 0, i32 3
  store i32 1000000000, i32* %518, align 4
  br label %523

519:                                              ; preds = %511
  %520 = load %struct.gnode*, %struct.gnode** %7, align 8
  %521 = getelementptr inbounds %struct.gnode, %struct.gnode* %520, i64 0, i32 7
  %522 = load %struct.gnode*, %struct.gnode** %521, align 8
  br label %510, !llvm.loop !10

.loopexit:                                        ; preds = %510
  br label %523

523:                                              ; preds = %.loopexit, %516
  br label %524

524:                                              ; preds = %523, %486, %479, %468, %454, %435
  %525 = load %struct.gnode*, %struct.gnode** %7, align 8
  %.not19 = icmp eq %struct.gnode* %525, null
  br i1 %.not19, label %529, label %526

526:                                              ; preds = %524
  %527 = load %struct.gnode*, %struct.gnode** %7, align 8
  %528 = getelementptr inbounds %struct.gnode, %struct.gnode* %527, i64 0, i32 7
  br label %530

529:                                              ; preds = %524
  br label %530

530:                                              ; preds = %529, %526
  %.in = phi %struct.gnode** [ %528, %526 ], [ %7, %529 ]
  br label %426, !llvm.loop !11

531:                                              ; preds = %426
  br label %532

532:                                              ; preds = %531
  %533 = add nuw nsw i32 %.13, 1
  br label %419, !llvm.loop !12

534:                                              ; preds = %419
  ret void

UnifiedUnreachableBlock:                          ; preds = %33, %20
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @identify2(i32* nocapture noundef %0, i32* nocapture noundef %1, i32 noundef %2, i32* nocapture noundef writeonly %3, i32* nocapture noundef writeonly %4, %struct.gnode** nocapture noundef writeonly %5) #1 {
  %7 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %8 = load i32, i32* %0, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.gnode*, %struct.gnode** %7, i64 %9
  %11 = load %struct.gnode*, %struct.gnode** %10, align 8
  br label %12

12:                                               ; preds = %26, %6
  %.04 = phi i32 [ 1, %6 ], [ %27, %26 ]
  %13 = icmp ult i32 %.04, 5
  br i1 %13, label %14, label %28

14:                                               ; preds = %12
  %15 = load i16**, i16*** @gtrace, align 8
  %16 = zext i32 %.04 to i64
  %17 = getelementptr inbounds i16*, i16** %15, i64 %16
  %18 = load i16*, i16** %17, align 8
  store i16 1, i16* %18, align 2
  %19 = load i32, i32* %0, align 4
  %20 = trunc i32 %19 to i16
  %21 = load i16**, i16*** @gtrace, align 8
  %22 = zext i32 %.04 to i64
  %23 = getelementptr inbounds i16*, i16** %21, i64 %22
  %24 = load i16*, i16** %23, align 8
  %25 = getelementptr inbounds i16, i16* %24, i64 1
  store i16 %20, i16* %25, align 2
  br label %26

26:                                               ; preds = %14
  %27 = add nuw nsw i32 %.04, 1
  br label %12, !llvm.loop !13

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %51, %28
  %.010 = phi %struct.gnode* [ %11, %28 ], [ %53, %51 ]
  %.06 = phi i32 [ 0, %28 ], [ %.17, %51 ]
  %.not = icmp eq %struct.gnode* %.010, null
  br i1 %.not, label %54, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.gnode, %struct.gnode* %.010, i64 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 999999999
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %51

35:                                               ; preds = %30
  %36 = add nsw i32 %.06, 1
  %37 = getelementptr inbounds %struct.gnode, %struct.gnode* %.010, i64 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = trunc i32 %38 to i16
  %40 = load i16**, i16*** @gtrace, align 8
  %41 = sext i32 %36 to i64
  %42 = getelementptr inbounds i16*, i16** %40, i64 %41
  %43 = load i16*, i16** %42, align 8
  %44 = sext i32 %36 to i64
  %45 = getelementptr inbounds i16*, i16** %40, i64 %44
  %46 = load i16*, i16** %45, align 8
  %47 = load i16, i16* %46, align 2
  %48 = add i16 %47, 1
  store i16 %48, i16* %46, align 2
  %49 = sext i16 %48 to i64
  %50 = getelementptr inbounds i16, i16* %43, i64 %49
  store i16 %39, i16* %50, align 2
  br label %51

51:                                               ; preds = %35, %34
  %.17 = phi i32 [ %.06, %34 ], [ %36, %35 ]
  %52 = getelementptr inbounds %struct.gnode, %struct.gnode* %.010, i64 0, i32 7
  %53 = load %struct.gnode*, %struct.gnode** %52, align 8
  br label %29, !llvm.loop !14

54:                                               ; preds = %29
  br label %55

55:                                               ; preds = %123, %54
  %.111 = phi %struct.gnode* [ %.010, %54 ], [ %.212, %123 ]
  %.08 = phi i32 [ 1, %54 ], [ %124, %123 ]
  %.02 = phi i32 [ undef, %54 ], [ %.13, %123 ]
  %.not22 = icmp sgt i32 %.08, %.06
  br i1 %.not22, label %125, label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %107, %56
  %.212 = phi %struct.gnode* [ %.111, %56 ], [ %.313, %107 ]
  %.13 = phi i32 [ %.02, %56 ], [ %85, %107 ]
  %58 = load i16**, i16*** @gtrace, align 8
  %59 = zext i32 %.08 to i64
  %60 = getelementptr inbounds i16*, i16** %58, i64 %59
  %61 = load i16*, i16** %60, align 8
  %62 = zext i32 %.08 to i64
  %63 = getelementptr inbounds i16*, i16** %58, i64 %62
  %64 = load i16*, i16** %63, align 8
  %65 = load i16, i16* %64, align 2
  %66 = sext i16 %65 to i64
  %67 = getelementptr inbounds i16, i16* %61, i64 %66
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %70 = load i32, i32* @numnodes, align 4
  %71 = icmp slt i32 %70, %69
  br i1 %71, label %72, label %122

72:                                               ; preds = %57
  %73 = load i16**, i16*** @gtrace, align 8
  %74 = zext i32 %.08 to i64
  %75 = getelementptr inbounds i16*, i16** %73, i64 %74
  %76 = load i16*, i16** %75, align 8
  %77 = zext i32 %.08 to i64
  %78 = getelementptr inbounds i16*, i16** %73, i64 %77
  %79 = load i16*, i16** %78, align 8
  %80 = load i16, i16* %79, align 2
  %81 = sext i16 %80 to i64
  %82 = add nsw i64 %81, -1
  %83 = getelementptr inbounds i16, i16* %76, i64 %82
  %84 = load i16, i16* %83, align 2
  %85 = sext i16 %84 to i32
  %86 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %87 = load i16**, i16*** @gtrace, align 8
  %88 = zext i32 %.08 to i64
  %89 = getelementptr inbounds i16*, i16** %87, i64 %88
  %90 = load i16*, i16** %89, align 8
  %91 = zext i32 %.08 to i64
  %92 = getelementptr inbounds i16*, i16** %87, i64 %91
  %93 = load i16*, i16** %92, align 8
  %94 = load i16, i16* %93, align 2
  %95 = sext i16 %94 to i64
  %96 = getelementptr inbounds i16, i16* %90, i64 %95
  %97 = load i16, i16* %96, align 2
  %98 = sext i16 %97 to i64
  %99 = getelementptr inbounds %struct.gnode*, %struct.gnode** %86, i64 %98
  %100 = load %struct.gnode*, %struct.gnode** %99, align 8
  %101 = getelementptr inbounds %struct.gnode, %struct.gnode* %100, i64 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, %85
  br i1 %103, label %104, label %107

104:                                              ; preds = %72
  %105 = getelementptr inbounds %struct.gnode, %struct.gnode* %100, i64 0, i32 7
  %106 = load %struct.gnode*, %struct.gnode** %105, align 8
  br label %107

107:                                              ; preds = %104, %72
  %.313 = phi %struct.gnode* [ %106, %104 ], [ %100, %72 ]
  %108 = getelementptr inbounds %struct.gnode, %struct.gnode* %.313, i64 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = trunc i32 %109 to i16
  %111 = load i16**, i16*** @gtrace, align 8
  %112 = zext i32 %.08 to i64
  %113 = getelementptr inbounds i16*, i16** %111, i64 %112
  %114 = load i16*, i16** %113, align 8
  %115 = zext i32 %.08 to i64
  %116 = getelementptr inbounds i16*, i16** %111, i64 %115
  %117 = load i16*, i16** %116, align 8
  %118 = load i16, i16* %117, align 2
  %119 = add i16 %118, 1
  store i16 %119, i16* %117, align 2
  %120 = sext i16 %119 to i64
  %121 = getelementptr inbounds i16, i16* %114, i64 %120
  store i16 %110, i16* %121, align 2
  br label %57, !llvm.loop !15

122:                                              ; preds = %57
  br label %123

123:                                              ; preds = %122
  %124 = add nuw nsw i32 %.08, 1
  br label %55, !llvm.loop !16

125:                                              ; preds = %55
  br label %126

126:                                              ; preds = %144, %125
  %.19 = phi i32 [ 1, %125 ], [ %145, %144 ]
  %.not23 = icmp sgt i32 %.19, %.06
  br i1 %.not23, label %.loopexit14, label %127

127:                                              ; preds = %126
  %128 = load i16**, i16*** @gtrace, align 8
  %129 = zext i32 %.19 to i64
  %130 = getelementptr inbounds i16*, i16** %128, i64 %129
  %131 = load i16*, i16** %130, align 8
  %132 = zext i32 %.19 to i64
  %133 = getelementptr inbounds i16*, i16** %128, i64 %132
  %134 = load i16*, i16** %133, align 8
  %135 = load i16, i16* %134, align 2
  %136 = sext i16 %135 to i64
  %137 = getelementptr inbounds i16, i16* %131, i64 %136
  %138 = load i16, i16* %137, align 2
  %139 = sext i16 %138 to i32
  %140 = load i32, i32* %1, align 4
  %141 = icmp eq i32 %140, %139
  br i1 %141, label %142, label %143

142:                                              ; preds = %127
  br label %146

143:                                              ; preds = %127
  br label %144

144:                                              ; preds = %143
  %145 = add nuw nsw i32 %.19, 1
  br label %126, !llvm.loop !17

.loopexit14:                                      ; preds = %126
  br label %146

146:                                              ; preds = %.loopexit14, %142
  %147 = icmp sgt i32 %.19, %.06
  br i1 %147, label %148, label %149

148:                                              ; preds = %146
  br label %211

149:                                              ; preds = %146
  %150 = load i16**, i16*** @gtrace, align 8
  %151 = zext i32 %.19 to i64
  %152 = getelementptr inbounds i16*, i16** %150, i64 %151
  %153 = load i16*, i16** %152, align 8
  %154 = load i16, i16* %153, align 2
  %155 = sext i16 %154 to i32
  br label %156

156:                                              ; preds = %189, %149
  %.4 = phi %struct.gnode* [ %.111, %149 ], [ %.5, %189 ]
  %.15 = phi i32 [ 1, %149 ], [ %190, %189 ]
  %.2 = phi i32 [ %.02, %149 ], [ %.01, %189 ]
  %.01 = phi i32 [ 0, %149 ], [ %186, %189 ]
  %157 = icmp slt i32 %.15, %155
  br i1 %157, label %158, label %.loopexit

158:                                              ; preds = %156
  %159 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %160 = load i16**, i16*** @gtrace, align 8
  %161 = zext i32 %.19 to i64
  %162 = getelementptr inbounds i16*, i16** %160, i64 %161
  %163 = load i16*, i16** %162, align 8
  %164 = zext i32 %.15 to i64
  %165 = getelementptr inbounds i16, i16* %163, i64 %164
  %166 = load i16, i16* %165, align 2
  %167 = sext i16 %166 to i64
  %168 = getelementptr inbounds %struct.gnode*, %struct.gnode** %159, i64 %167
  br label %169

169:                                              ; preds = %181, %158
  %.5.in = phi %struct.gnode** [ %168, %158 ], [ %182, %181 ]
  %.5 = load %struct.gnode*, %struct.gnode** %.5.in, align 8
  %170 = getelementptr inbounds %struct.gnode, %struct.gnode* %.5, i64 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i16**, i16*** @gtrace, align 8
  %173 = zext i32 %.19 to i64
  %174 = getelementptr inbounds i16*, i16** %172, i64 %173
  %175 = load i16*, i16** %174, align 8
  %176 = add nuw nsw i32 %.15, 1
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i16, i16* %175, i64 %177
  %179 = load i16, i16* %178, align 2
  %180 = sext i16 %179 to i32
  %.not25 = icmp eq i32 %171, %180
  br i1 %.not25, label %183, label %181

181:                                              ; preds = %169
  %182 = getelementptr inbounds %struct.gnode, %struct.gnode* %.5, i64 0, i32 7
  br label %169, !llvm.loop !18

183:                                              ; preds = %169
  %184 = getelementptr inbounds %struct.gnode, %struct.gnode* %.5, i64 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %.01, %185
  %.not26 = icmp slt i32 %186, %2
  br i1 %.not26, label %188, label %187

187:                                              ; preds = %183
  br label %191

188:                                              ; preds = %183
  br label %189

189:                                              ; preds = %188
  %190 = add nuw nsw i32 %.15, 1
  br label %156, !llvm.loop !19

.loopexit:                                        ; preds = %156
  br label %191

191:                                              ; preds = %.loopexit, %187
  %.6 = phi %struct.gnode* [ %.5, %187 ], [ %.4, %.loopexit ]
  %.3 = phi i32 [ %.01, %187 ], [ %.2, %.loopexit ]
  %.1 = phi i32 [ %186, %187 ], [ %.01, %.loopexit ]
  %.not24 = icmp slt i32 %.15, %155
  br i1 %.not24, label %193, label %192

192:                                              ; preds = %191
  br label %211

193:                                              ; preds = %191
  %194 = load i16**, i16*** @gtrace, align 8
  %195 = zext i32 %.19 to i64
  %196 = getelementptr inbounds i16*, i16** %194, i64 %195
  %197 = load i16*, i16** %196, align 8
  %198 = zext i32 %.15 to i64
  %199 = getelementptr inbounds i16, i16* %197, i64 %198
  %200 = load i16, i16* %199, align 2
  %201 = sext i16 %200 to i32
  store i32 %201, i32* %0, align 4
  %202 = load i16**, i16*** @gtrace, align 8
  %203 = zext i32 %.19 to i64
  %204 = getelementptr inbounds i16*, i16** %202, i64 %203
  %205 = load i16*, i16** %204, align 8
  %206 = add nuw nsw i32 %.15, 1
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i16, i16* %205, i64 %207
  %209 = load i16, i16* %208, align 2
  %210 = sext i16 %209 to i32
  store i32 %210, i32* %1, align 4
  store i32 %.3, i32* %3, align 4
  store i32 %.1, i32* %4, align 4
  store %struct.gnode* %.6, %struct.gnode** %5, align 8
  br label %211

211:                                              ; preds = %193, %192, %148
  %.0 = phi i32 [ 0, %148 ], [ 1, %192 ], [ 2, %193 ]
  ret i32 %.0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
