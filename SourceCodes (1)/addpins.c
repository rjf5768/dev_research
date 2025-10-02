; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/addpins.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/addpins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numcells = external dso_local global i32, align 4
@netarray = external dso_local global %struct.dimbox**, align 8
@numnets = external dso_local global i32, align 4
@Hdefault = external dso_local global double, align 8
@Vdefault = external dso_local global double, align 8
@pinnames = external dso_local global i8**, align 8
@maxterm = external dso_local global i32, align 4
@.str = private unnamed_addr constant [8 x i8] c"PHANTOM\00", align 1
@termarray = external dso_local global %struct.termnets**, align 8
@cellarray = external dso_local global %struct.cellbox**, align 8
@blockl = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @addpins() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cellbox*, align 8
  %6 = alloca %struct.tilebox*, align 8
  %7 = alloca %struct.termbox*, align 8
  %8 = alloca %struct.termbox*, align 8
  %9 = alloca %struct.dimbox*, align 8
  %10 = alloca %struct.netbox*, align 8
  %11 = load i32, i32* @numcells, align 4
  store i32 %11, i32* %2, align 4
  %12 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %13 = bitcast %struct.dimbox** %12 to i8*
  %14 = load i32, i32* @numnets, align 4
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = call i8* @realloc(i8* noundef %13, i64 noundef %19) #2
  %21 = bitcast i8* %20 to %struct.dimbox**
  store %struct.dimbox** %21, %struct.dimbox*** @netarray, align 8
  %22 = load i32, i32* @numnets, align 4
  %23 = add nsw i32 1, %22
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %67, %0
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @numnets, align 4
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %26, %27
  %29 = icmp sle i32 %25, %28
  br i1 %29, label %30, label %70

30:                                               ; preds = %24
  %31 = call noalias i8* @malloc(i64 noundef 72) #2
  %32 = bitcast i8* %31 to %struct.dimbox*
  %33 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %33, i64 %35
  store %struct.dimbox* %32, %struct.dimbox** %36, align 8
  store %struct.dimbox* %32, %struct.dimbox** %9, align 8
  %37 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %38 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %37, i32 0, i32 0
  store %struct.netbox* null, %struct.netbox** %38, align 8
  %39 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %40 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %39, i32 0, i32 13
  store i8* null, i8** %40, align 8
  %41 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %42 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %41, i32 0, i32 1
  store i32 0, i32* %42, align 8
  %43 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %44 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %43, i32 0, i32 7
  store i32 0, i32* %44, align 8
  %45 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %46 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %45, i32 0, i32 2
  store i32 0, i32* %46, align 4
  %47 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %48 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %47, i32 0, i32 3
  store i32 0, i32* %48, align 8
  %49 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %50 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %49, i32 0, i32 4
  store i32 0, i32* %50, align 4
  %51 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %52 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %51, i32 0, i32 5
  store i32 0, i32* %52, align 8
  %53 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %54 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %53, i32 0, i32 6
  store i32 0, i32* %54, align 4
  %55 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %56 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %55, i32 0, i32 8
  store i32 0, i32* %56, align 4
  %57 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %58 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %57, i32 0, i32 9
  store i32 0, i32* %58, align 8
  %59 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %60 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %59, i32 0, i32 10
  store i32 0, i32* %60, align 4
  %61 = load double, double* @Hdefault, align 8
  %62 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %63 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %62, i32 0, i32 11
  store double %61, double* %63, align 8
  %64 = load double, double* @Vdefault, align 8
  %65 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %66 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %65, i32 0, i32 12
  store double %64, double* %66, align 8
  br label %67

67:                                               ; preds = %30
  %68 = load i32, i32* %1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %1, align 4
  br label %24, !llvm.loop !4

70:                                               ; preds = %24
  %71 = load i8**, i8*** @pinnames, align 8
  %72 = bitcast i8** %71 to i8*
  %73 = load i32, i32* @maxterm, align 4
  %74 = load i32, i32* %2, align 4
  %75 = mul nsw i32 2, %74
  %76 = add nsw i32 %73, %75
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 8
  %80 = call i8* @realloc(i8* noundef %72, i64 noundef %79) #2
  %81 = bitcast i8* %80 to i8**
  store i8** %81, i8*** @pinnames, align 8
  %82 = load i32, i32* @maxterm, align 4
  %83 = add nsw i32 1, %82
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %103, %70
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @maxterm, align 4
  %87 = load i32, i32* %2, align 4
  %88 = mul nsw i32 2, %87
  %89 = add nsw i32 %86, %88
  %90 = icmp sle i32 %85, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %84
  %92 = call noalias i8* @malloc(i64 noundef 9) #2
  %93 = load i8**, i8*** @pinnames, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  store i8* %92, i8** %96, align 8
  %97 = load i8**, i8*** @pinnames, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %101, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #2
  br label %103

103:                                              ; preds = %91
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %84, !llvm.loop !6

106:                                              ; preds = %84
  %107 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %108 = bitcast %struct.termnets** %107 to i8*
  %109 = load i32, i32* @maxterm, align 4
  %110 = load i32, i32* %2, align 4
  %111 = mul nsw i32 2, %110
  %112 = add nsw i32 %109, %111
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 8
  %116 = call i8* @realloc(i8* noundef %108, i64 noundef %115) #2
  %117 = bitcast i8* %116 to %struct.termnets**
  store %struct.termnets** %117, %struct.termnets*** @termarray, align 8
  %118 = load i32, i32* @maxterm, align 4
  %119 = add nsw i32 1, %118
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %134, %106
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @maxterm, align 4
  %123 = load i32, i32* %2, align 4
  %124 = mul nsw i32 2, %123
  %125 = add nsw i32 %122, %124
  %126 = icmp sle i32 %121, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %120
  %128 = call noalias i8* @malloc(i64 noundef 16) #2
  %129 = bitcast i8* %128 to %struct.termnets*
  %130 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.termnets*, %struct.termnets** %130, i64 %132
  store %struct.termnets* %129, %struct.termnets** %133, align 8
  br label %134

134:                                              ; preds = %127
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %120, !llvm.loop !7

137:                                              ; preds = %120
  store i32 1, i32* %3, align 4
  br label %138

138:                                              ; preds = %282, %137
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @numcells, align 4
  %141 = icmp sle i32 %139, %140
  br i1 %141, label %142, label %285

142:                                              ; preds = %138
  %143 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %143, i64 %145
  %147 = load %struct.cellbox*, %struct.cellbox** %146, align 8
  store %struct.cellbox* %147, %struct.cellbox** %5, align 8
  %148 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %149 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %148, i32 0, i32 21
  %150 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %151 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %149, i64 0, i64 %153
  %155 = load %struct.tilebox*, %struct.tilebox** %154, align 8
  store %struct.tilebox* %155, %struct.tilebox** %6, align 8
  %156 = load %struct.tilebox*, %struct.tilebox** %6, align 8
  %157 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %156, i32 0, i32 17
  %158 = load %struct.termbox*, %struct.termbox** %157, align 8
  store %struct.termbox* %158, %struct.termbox** %7, align 8
  %159 = call noalias i8* @malloc(i64 noundef 32) #2
  %160 = bitcast i8* %159 to %struct.termbox*
  %161 = load %struct.tilebox*, %struct.tilebox** %6, align 8
  %162 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %161, i32 0, i32 17
  store %struct.termbox* %160, %struct.termbox** %162, align 8
  store %struct.termbox* %160, %struct.termbox** %8, align 8
  %163 = load %struct.termbox*, %struct.termbox** %7, align 8
  %164 = load %struct.termbox*, %struct.termbox** %8, align 8
  %165 = getelementptr inbounds %struct.termbox, %struct.termbox* %164, i32 0, i32 0
  store %struct.termbox* %163, %struct.termbox** %165, align 8
  %166 = load %struct.termbox*, %struct.termbox** %8, align 8
  %167 = getelementptr inbounds %struct.termbox, %struct.termbox* %166, i32 0, i32 1
  store i32 0, i32* %167, align 8
  %168 = load %struct.termbox*, %struct.termbox** %8, align 8
  %169 = getelementptr inbounds %struct.termbox, %struct.termbox* %168, i32 0, i32 2
  store i32 0, i32* %169, align 4
  %170 = load i32, i32* @maxterm, align 4
  %171 = load i32, i32* %3, align 4
  %172 = mul nsw i32 2, %171
  %173 = add nsw i32 %170, %172
  %174 = sub nsw i32 %173, 1
  %175 = load %struct.termbox*, %struct.termbox** %8, align 8
  %176 = getelementptr inbounds %struct.termbox, %struct.termbox* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 8
  %177 = call noalias i8* @malloc(i64 noundef 48) #2
  %178 = bitcast i8* %177 to %struct.netbox*
  %179 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %180 = load i32, i32* @numnets, align 4
  %181 = load i32, i32* %3, align 4
  %182 = add nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %179, i64 %183
  %185 = load %struct.dimbox*, %struct.dimbox** %184, align 8
  %186 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %185, i32 0, i32 0
  store %struct.netbox* %178, %struct.netbox** %186, align 8
  store %struct.netbox* %178, %struct.netbox** %10, align 8
  %187 = load i32, i32* @maxterm, align 4
  %188 = load i32, i32* %3, align 4
  %189 = mul nsw i32 2, %188
  %190 = add nsw i32 %187, %189
  %191 = sub nsw i32 %190, 1
  %192 = load %struct.netbox*, %struct.netbox** %10, align 8
  %193 = getelementptr inbounds %struct.netbox, %struct.netbox* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* %3, align 4
  %195 = load %struct.netbox*, %struct.netbox** %10, align 8
  %196 = getelementptr inbounds %struct.netbox, %struct.netbox* %195, i32 0, i32 7
  store i32 %194, i32* %196, align 8
  %197 = load %struct.netbox*, %struct.netbox** %10, align 8
  %198 = getelementptr inbounds %struct.netbox, %struct.netbox* %197, i32 0, i32 6
  store i32 0, i32* %198, align 4
  %199 = load %struct.netbox*, %struct.netbox** %10, align 8
  %200 = getelementptr inbounds %struct.netbox, %struct.netbox* %199, i32 0, i32 9
  store i32 0, i32* %200, align 8
  %201 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %202 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.netbox*, %struct.netbox** %10, align 8
  %205 = getelementptr inbounds %struct.netbox, %struct.netbox* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 8
  %206 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %207 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.netbox*, %struct.netbox** %10, align 8
  %210 = getelementptr inbounds %struct.netbox, %struct.netbox* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 4
  %211 = load i32, i32* @numnets, align 4
  %212 = load i32, i32* %3, align 4
  %213 = add nsw i32 %211, %212
  %214 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %215 = load %struct.netbox*, %struct.netbox** %10, align 8
  %216 = getelementptr inbounds %struct.netbox, %struct.netbox* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.termnets*, %struct.termnets** %214, i64 %218
  %220 = load %struct.termnets*, %struct.termnets** %219, align 8
  %221 = getelementptr inbounds %struct.termnets, %struct.termnets* %220, i32 0, i32 0
  store i32 %213, i32* %221, align 8
  %222 = load %struct.netbox*, %struct.netbox** %10, align 8
  %223 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %224 = load %struct.netbox*, %struct.netbox** %10, align 8
  %225 = getelementptr inbounds %struct.netbox, %struct.netbox* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.termnets*, %struct.termnets** %223, i64 %227
  %229 = load %struct.termnets*, %struct.termnets** %228, align 8
  %230 = getelementptr inbounds %struct.termnets, %struct.termnets* %229, i32 0, i32 1
  store %struct.netbox* %222, %struct.netbox** %230, align 8
  %231 = call noalias i8* @malloc(i64 noundef 48) #2
  %232 = bitcast i8* %231 to %struct.netbox*
  %233 = load %struct.netbox*, %struct.netbox** %10, align 8
  %234 = getelementptr inbounds %struct.netbox, %struct.netbox* %233, i32 0, i32 0
  store %struct.netbox* %232, %struct.netbox** %234, align 8
  store %struct.netbox* %232, %struct.netbox** %10, align 8
  %235 = load i32, i32* @maxterm, align 4
  %236 = load i32, i32* %3, align 4
  %237 = mul nsw i32 2, %236
  %238 = add nsw i32 %235, %237
  %239 = load %struct.netbox*, %struct.netbox** %10, align 8
  %240 = getelementptr inbounds %struct.netbox, %struct.netbox* %239, i32 0, i32 5
  store i32 %238, i32* %240, align 8
  %241 = load i32, i32* %3, align 4
  %242 = load %struct.netbox*, %struct.netbox** %10, align 8
  %243 = getelementptr inbounds %struct.netbox, %struct.netbox* %242, i32 0, i32 7
  store i32 %241, i32* %243, align 8
  %244 = load %struct.netbox*, %struct.netbox** %10, align 8
  %245 = getelementptr inbounds %struct.netbox, %struct.netbox* %244, i32 0, i32 6
  store i32 0, i32* %245, align 4
  %246 = load %struct.netbox*, %struct.netbox** %10, align 8
  %247 = getelementptr inbounds %struct.netbox, %struct.netbox* %246, i32 0, i32 9
  store i32 0, i32* %247, align 8
  %248 = load i32, i32* @blockl, align 4
  %249 = load i32, i32* @blockr, align 4
  %250 = add nsw i32 %248, %249
  %251 = sdiv i32 %250, 2
  %252 = load %struct.netbox*, %struct.netbox** %10, align 8
  %253 = getelementptr inbounds %struct.netbox, %struct.netbox* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 8
  %254 = load i32, i32* @blockb, align 4
  %255 = load i32, i32* @blockt, align 4
  %256 = add nsw i32 %254, %255
  %257 = sdiv i32 %256, 2
  %258 = load %struct.netbox*, %struct.netbox** %10, align 8
  %259 = getelementptr inbounds %struct.netbox, %struct.netbox* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 4
  %260 = load %struct.netbox*, %struct.netbox** %10, align 8
  %261 = getelementptr inbounds %struct.netbox, %struct.netbox* %260, i32 0, i32 0
  store %struct.netbox* null, %struct.netbox** %261, align 8
  %262 = load i32, i32* @numnets, align 4
  %263 = load i32, i32* %3, align 4
  %264 = add nsw i32 %262, %263
  %265 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %266 = load %struct.netbox*, %struct.netbox** %10, align 8
  %267 = getelementptr inbounds %struct.netbox, %struct.netbox* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.termnets*, %struct.termnets** %265, i64 %269
  %271 = load %struct.termnets*, %struct.termnets** %270, align 8
  %272 = getelementptr inbounds %struct.termnets, %struct.termnets* %271, i32 0, i32 0
  store i32 %264, i32* %272, align 8
  %273 = load %struct.netbox*, %struct.netbox** %10, align 8
  %274 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %275 = load %struct.netbox*, %struct.netbox** %10, align 8
  %276 = getelementptr inbounds %struct.netbox, %struct.netbox* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 8
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.termnets*, %struct.termnets** %274, i64 %278
  %280 = load %struct.termnets*, %struct.termnets** %279, align 8
  %281 = getelementptr inbounds %struct.termnets, %struct.termnets* %280, i32 0, i32 1
  store %struct.netbox* %273, %struct.netbox** %281, align 8
  br label %282

282:                                              ; preds = %142
  %283 = load i32, i32* %3, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %3, align 4
  br label %138, !llvm.loop !8

285:                                              ; preds = %138
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @subpins() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cellbox*, align 8
  %6 = alloca %struct.tilebox*, align 8
  %7 = alloca %struct.termbox*, align 8
  %8 = alloca %struct.termbox*, align 8
  %9 = alloca %struct.dimbox*, align 8
  %10 = load i32, i32* @numcells, align 4
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @numnets, align 4
  %12 = add nsw i32 1, %11
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %59, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @numnets, align 4
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %15, %16
  %18 = icmp sle i32 %14, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %13
  %20 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %20, i64 %22
  %24 = load %struct.dimbox*, %struct.dimbox** %23, align 8
  store %struct.dimbox* %24, %struct.dimbox** %9, align 8
  %25 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %26 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %25, i32 0, i32 0
  %27 = load %struct.netbox*, %struct.netbox** %26, align 8
  %28 = getelementptr inbounds %struct.netbox, %struct.netbox* %27, i32 0, i32 0
  %29 = load %struct.netbox*, %struct.netbox** %28, align 8
  %30 = bitcast %struct.netbox* %29 to i8*
  call void @free(i8* noundef %30) #2
  %31 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %32 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %31, i32 0, i32 0
  %33 = load %struct.netbox*, %struct.netbox** %32, align 8
  %34 = bitcast %struct.netbox* %33 to i8*
  call void @free(i8* noundef %34) #2
  %35 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %36 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %35, i32 0, i32 0
  store %struct.netbox* null, %struct.netbox** %36, align 8
  %37 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %38 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %37, i32 0, i32 13
  store i8* null, i8** %38, align 8
  %39 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %40 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %39, i32 0, i32 1
  store i32 0, i32* %40, align 8
  %41 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %42 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %41, i32 0, i32 7
  store i32 0, i32* %42, align 8
  %43 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %44 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %43, i32 0, i32 2
  store i32 0, i32* %44, align 4
  %45 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %46 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %45, i32 0, i32 3
  store i32 0, i32* %46, align 8
  %47 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %48 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %47, i32 0, i32 4
  store i32 0, i32* %48, align 4
  %49 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %50 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %49, i32 0, i32 5
  store i32 0, i32* %50, align 8
  %51 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %52 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %51, i32 0, i32 6
  store i32 0, i32* %52, align 4
  %53 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %54 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %53, i32 0, i32 8
  store i32 0, i32* %54, align 4
  %55 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %56 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %55, i32 0, i32 9
  store i32 0, i32* %56, align 8
  %57 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %58 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %57, i32 0, i32 10
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %19
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  br label %13, !llvm.loop !9

62:                                               ; preds = %13
  %63 = load i32, i32* @maxterm, align 4
  %64 = add nsw i32 1, %63
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %77, %62
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @maxterm, align 4
  %68 = load i32, i32* %2, align 4
  %69 = mul nsw i32 2, %68
  %70 = add nsw i32 %67, %69
  %71 = icmp sle i32 %66, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.termnets*, %struct.termnets** %73, i64 %75
  store %struct.termnets* null, %struct.termnets** %76, align 8
  br label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %65, !llvm.loop !10

80:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %81

81:                                               ; preds = %110, %80
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @numcells, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %81
  %86 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %86, i64 %88
  %90 = load %struct.cellbox*, %struct.cellbox** %89, align 8
  store %struct.cellbox* %90, %struct.cellbox** %5, align 8
  %91 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %92 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %91, i32 0, i32 21
  %93 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %94 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %92, i64 0, i64 %96
  %98 = load %struct.tilebox*, %struct.tilebox** %97, align 8
  store %struct.tilebox* %98, %struct.tilebox** %6, align 8
  %99 = load %struct.tilebox*, %struct.tilebox** %6, align 8
  %100 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %99, i32 0, i32 17
  %101 = load %struct.termbox*, %struct.termbox** %100, align 8
  store %struct.termbox* %101, %struct.termbox** %7, align 8
  %102 = load %struct.termbox*, %struct.termbox** %7, align 8
  %103 = getelementptr inbounds %struct.termbox, %struct.termbox* %102, i32 0, i32 0
  %104 = load %struct.termbox*, %struct.termbox** %103, align 8
  store %struct.termbox* %104, %struct.termbox** %8, align 8
  %105 = load %struct.termbox*, %struct.termbox** %8, align 8
  %106 = load %struct.tilebox*, %struct.tilebox** %6, align 8
  %107 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %106, i32 0, i32 17
  store %struct.termbox* %105, %struct.termbox** %107, align 8
  %108 = load %struct.termbox*, %struct.termbox** %7, align 8
  %109 = bitcast %struct.termbox* %108 to i8*
  call void @free(i8* noundef %109) #2
  br label %110

110:                                              ; preds = %85
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %3, align 4
  br label %81, !llvm.loop !11

113:                                              ; preds = %81
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
