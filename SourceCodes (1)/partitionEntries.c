; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/partitionEntries.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/partitionEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

@partitionEntries.name = internal global [17 x i8] c"partitionEntries\00", align 16
@.str = private unnamed_addr constant [13 x i8] c"I && I->next\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/partitionEntries.c\00", align 1
@__PRETTY_FUNCTION__.partitionEntries = private unnamed_addr constant [71 x i8] c"void partitionEntries(IndexEntry *, Int, IndexEntry **, IndexEntry **)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"fan >= MINIMUM_FAN_SIZE\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"too many entries to partition\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @partitionEntries(%struct.IndexEntry* noundef %0, i64 noundef %1, %struct.IndexEntry** noundef %2, %struct.IndexEntry** noundef %3) #0 {
  %5 = alloca %struct.IndexEntry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.IndexEntry**, align 8
  %8 = alloca %struct.IndexEntry**, align 8
  %9 = alloca %struct.IndexEntry*, align 8
  %10 = alloca %struct.IndexEntry*, align 8
  %11 = alloca %struct.IndexEntry*, align 8
  %12 = alloca %struct.IndexEntry*, align 8
  %13 = alloca %struct.IndexEntry*, align 8
  %14 = alloca %struct.IndexEntry*, align 8
  %15 = alloca %struct.IndexKey, align 8
  %16 = alloca float, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.IndexKey, align 8
  %20 = alloca float, align 4
  store %struct.IndexEntry* %0, %struct.IndexEntry** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.IndexEntry** %2, %struct.IndexEntry*** %7, align 8
  store %struct.IndexEntry** %3, %struct.IndexEntry*** %8, align 8
  %21 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %22 = icmp ne %struct.IndexEntry* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %25 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %24, i32 0, i32 2
  %26 = load %struct.IndexEntry*, %struct.IndexEntry** %25, align 8
  %27 = icmp ne %struct.IndexEntry* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %30

29:                                               ; preds = %23, %4
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.partitionEntries, i64 0, i64 0)) #4
  unreachable

30:                                               ; preds = %28
  %31 = load i64, i64* %6, align 8
  %32 = icmp sge i64 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %35

34:                                               ; preds = %30
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.partitionEntries, i64 0, i64 0)) #4
  unreachable

35:                                               ; preds = %33
  %36 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %37 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  store %struct.IndexEntry* %36, %struct.IndexEntry** %37, align 8
  %38 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %39 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %38, i32 0, i32 2
  %40 = load %struct.IndexEntry*, %struct.IndexEntry** %39, align 8
  %41 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  store %struct.IndexEntry* %40, %struct.IndexEntry** %41, align 8
  %42 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  %43 = load %struct.IndexEntry*, %struct.IndexEntry** %42, align 8
  %44 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %43, i32 0, i32 1
  %45 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  %46 = load %struct.IndexEntry*, %struct.IndexEntry** %45, align 8
  %47 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %46, i32 0, i32 1
  call void @keyUnion(%struct.IndexKey* noundef %44, %struct.IndexKey* noundef %47, %struct.IndexKey* noundef %15)
  %48 = call float @volume(%struct.IndexKey* noundef byval(%struct.IndexKey) align 8 %15)
  store float %48, float* %16, align 4
  %49 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  store %struct.IndexEntry* %49, %struct.IndexEntry** %9, align 8
  br label %50

50:                                               ; preds = %83, %35
  %51 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %52 = icmp ne %struct.IndexEntry* %51, null
  br i1 %52, label %53, label %87

53:                                               ; preds = %50
  %54 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %55 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %54, i32 0, i32 2
  %56 = load %struct.IndexEntry*, %struct.IndexEntry** %55, align 8
  store %struct.IndexEntry* %56, %struct.IndexEntry** %10, align 8
  br label %57

57:                                               ; preds = %78, %53
  %58 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %59 = icmp ne %struct.IndexEntry* %58, null
  br i1 %59, label %60, label %82

60:                                               ; preds = %57
  %61 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %62 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %61, i32 0, i32 1
  %63 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %64 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %63, i32 0, i32 1
  call void @keyUnion(%struct.IndexKey* noundef %62, %struct.IndexKey* noundef %64, %struct.IndexKey* noundef %19)
  %65 = call float @volume(%struct.IndexKey* noundef byval(%struct.IndexKey) align 8 %19)
  store float %65, float* %20, align 4
  %66 = load float, float* %20, align 4
  %67 = load float, float* %16, align 4
  %68 = fcmp ogt float %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %60
  %70 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %71 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  store %struct.IndexEntry* %70, %struct.IndexEntry** %71, align 8
  %72 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %73 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  store %struct.IndexEntry* %72, %struct.IndexEntry** %73, align 8
  %74 = bitcast %struct.IndexKey* %15 to i8*
  %75 = bitcast %struct.IndexKey* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 32, i1 false)
  %76 = load float, float* %20, align 4
  store float %76, float* %16, align 4
  br label %77

77:                                               ; preds = %69, %60
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %80 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %79, i32 0, i32 2
  %81 = load %struct.IndexEntry*, %struct.IndexEntry** %80, align 8
  store %struct.IndexEntry* %81, %struct.IndexEntry** %10, align 8
  br label %57, !llvm.loop !4

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %85 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %84, i32 0, i32 2
  %86 = load %struct.IndexEntry*, %struct.IndexEntry** %85, align 8
  store %struct.IndexEntry* %86, %struct.IndexEntry** %9, align 8
  br label %50, !llvm.loop !6

87:                                               ; preds = %50
  %88 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  store %struct.IndexEntry* %88, %struct.IndexEntry** %11, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %12, align 8
  br label %89

89:                                               ; preds = %125, %87
  %90 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %91 = icmp ne %struct.IndexEntry* %90, null
  br i1 %91, label %92, label %126

92:                                               ; preds = %89
  %93 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %94 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  %95 = load %struct.IndexEntry*, %struct.IndexEntry** %94, align 8
  %96 = icmp eq %struct.IndexEntry* %93, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %99 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  %100 = load %struct.IndexEntry*, %struct.IndexEntry** %99, align 8
  %101 = icmp eq %struct.IndexEntry* %98, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %97, %92
  %103 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %104 = icmp eq %struct.IndexEntry* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %107 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %106, i32 0, i32 2
  %108 = load %struct.IndexEntry*, %struct.IndexEntry** %107, align 8
  store %struct.IndexEntry* %108, %struct.IndexEntry** %5, align 8
  %109 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  store %struct.IndexEntry* %109, %struct.IndexEntry** %11, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %12, align 8
  br label %119

110:                                              ; preds = %102
  %111 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %112 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %111, i32 0, i32 2
  %113 = load %struct.IndexEntry*, %struct.IndexEntry** %112, align 8
  %114 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %115 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %114, i32 0, i32 2
  store %struct.IndexEntry* %113, %struct.IndexEntry** %115, align 8
  %116 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %117 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %116, i32 0, i32 2
  %118 = load %struct.IndexEntry*, %struct.IndexEntry** %117, align 8
  store %struct.IndexEntry* %118, %struct.IndexEntry** %11, align 8
  br label %119

119:                                              ; preds = %110, %105
  br label %125

120:                                              ; preds = %97
  %121 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  store %struct.IndexEntry* %121, %struct.IndexEntry** %12, align 8
  %122 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %123 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %122, i32 0, i32 2
  %124 = load %struct.IndexEntry*, %struct.IndexEntry** %123, align 8
  store %struct.IndexEntry* %124, %struct.IndexEntry** %11, align 8
  br label %125

125:                                              ; preds = %120, %119
  br label %89, !llvm.loop !7

126:                                              ; preds = %89
  %127 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  %128 = load %struct.IndexEntry*, %struct.IndexEntry** %127, align 8
  %129 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %128, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %129, align 8
  %130 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  %131 = load %struct.IndexEntry*, %struct.IndexEntry** %130, align 8
  %132 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %131, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %132, align 8
  store i64 1, i64* %17, align 8
  store i64 1, i64* %18, align 8
  %133 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  %134 = load %struct.IndexEntry*, %struct.IndexEntry** %133, align 8
  store %struct.IndexEntry* %134, %struct.IndexEntry** %13, align 8
  %135 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  %136 = load %struct.IndexEntry*, %struct.IndexEntry** %135, align 8
  store %struct.IndexEntry* %136, %struct.IndexEntry** %14, align 8
  br label %137

137:                                              ; preds = %237, %126
  %138 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %139 = icmp ne %struct.IndexEntry* %138, null
  br i1 %139, label %140, label %238

140:                                              ; preds = %137
  %141 = load i64, i64* %17, align 8
  %142 = load i64, i64* %6, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %187

144:                                              ; preds = %140
  %145 = load i64, i64* %18, align 8
  %146 = load i64, i64* %6, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %148, label %187

148:                                              ; preds = %144
  %149 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  %150 = load %struct.IndexEntry*, %struct.IndexEntry** %149, align 8
  %151 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %152 = call float @penalty(%struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8 %150, %struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8 %151)
  %153 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  %154 = load %struct.IndexEntry*, %struct.IndexEntry** %153, align 8
  %155 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %156 = call float @penalty(%struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8 %154, %struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8 %155)
  %157 = fcmp olt float %152, %156
  br i1 %157, label %158, label %172

158:                                              ; preds = %148
  %159 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %160 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %161 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %160, i32 0, i32 2
  store %struct.IndexEntry* %159, %struct.IndexEntry** %161, align 8
  %162 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %163 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %162, i32 0, i32 2
  %164 = load %struct.IndexEntry*, %struct.IndexEntry** %163, align 8
  store %struct.IndexEntry* %164, %struct.IndexEntry** %5, align 8
  %165 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %166 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %165, i32 0, i32 2
  %167 = load %struct.IndexEntry*, %struct.IndexEntry** %166, align 8
  store %struct.IndexEntry* %167, %struct.IndexEntry** %13, align 8
  %168 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %169 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %168, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %169, align 8
  %170 = load i64, i64* %17, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %17, align 8
  br label %186

172:                                              ; preds = %148
  %173 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %174 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %175 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %174, i32 0, i32 2
  store %struct.IndexEntry* %173, %struct.IndexEntry** %175, align 8
  %176 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %177 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %176, i32 0, i32 2
  %178 = load %struct.IndexEntry*, %struct.IndexEntry** %177, align 8
  store %struct.IndexEntry* %178, %struct.IndexEntry** %5, align 8
  %179 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %180 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %179, i32 0, i32 2
  %181 = load %struct.IndexEntry*, %struct.IndexEntry** %180, align 8
  store %struct.IndexEntry* %181, %struct.IndexEntry** %14, align 8
  %182 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %183 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %182, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %183, align 8
  %184 = load i64, i64* %18, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %18, align 8
  br label %186

186:                                              ; preds = %172, %158
  br label %237

187:                                              ; preds = %144, %140
  %188 = load i64, i64* %17, align 8
  %189 = load i64, i64* %6, align 8
  %190 = icmp sge i64 %188, %189
  br i1 %190, label %191, label %209

191:                                              ; preds = %187
  %192 = load i64, i64* %18, align 8
  %193 = load i64, i64* %6, align 8
  %194 = icmp slt i64 %192, %193
  br i1 %194, label %195, label %209

195:                                              ; preds = %191
  %196 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %197 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %198 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %197, i32 0, i32 2
  store %struct.IndexEntry* %196, %struct.IndexEntry** %198, align 8
  %199 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %200 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %199, i32 0, i32 2
  %201 = load %struct.IndexEntry*, %struct.IndexEntry** %200, align 8
  store %struct.IndexEntry* %201, %struct.IndexEntry** %5, align 8
  %202 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %203 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %202, i32 0, i32 2
  %204 = load %struct.IndexEntry*, %struct.IndexEntry** %203, align 8
  store %struct.IndexEntry* %204, %struct.IndexEntry** %14, align 8
  %205 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %206 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %205, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %206, align 8
  %207 = load i64, i64* %18, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %18, align 8
  br label %236

209:                                              ; preds = %191, %187
  %210 = load i64, i64* %18, align 8
  %211 = load i64, i64* %6, align 8
  %212 = icmp sge i64 %210, %211
  br i1 %212, label %213, label %231

213:                                              ; preds = %209
  %214 = load i64, i64* %17, align 8
  %215 = load i64, i64* %6, align 8
  %216 = icmp slt i64 %214, %215
  br i1 %216, label %217, label %231

217:                                              ; preds = %213
  %218 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %219 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %220 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %219, i32 0, i32 2
  store %struct.IndexEntry* %218, %struct.IndexEntry** %220, align 8
  %221 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %222 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %221, i32 0, i32 2
  %223 = load %struct.IndexEntry*, %struct.IndexEntry** %222, align 8
  store %struct.IndexEntry* %223, %struct.IndexEntry** %5, align 8
  %224 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %225 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %224, i32 0, i32 2
  %226 = load %struct.IndexEntry*, %struct.IndexEntry** %225, align 8
  store %struct.IndexEntry* %226, %struct.IndexEntry** %13, align 8
  %227 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %228 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %227, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %228, align 8
  %229 = load i64, i64* %17, align 8
  %230 = add nsw i64 %229, 1
  store i64 %230, i64* %17, align 8
  br label %235

231:                                              ; preds = %213, %209
  %232 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %233 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %232, i32 0, i32 2
  %234 = load %struct.IndexEntry*, %struct.IndexEntry** %233, align 8
  store %struct.IndexEntry* %234, %struct.IndexEntry** %5, align 8
  call void @errorMessage(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @partitionEntries.name, i64 0, i64 0), i8 noundef signext 1)
  br label %235

235:                                              ; preds = %231, %217
  br label %236

236:                                              ; preds = %235, %195
  br label %237

237:                                              ; preds = %236, %186
  br label %137, !llvm.loop !8

238:                                              ; preds = %137
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @keyUnion(%struct.IndexKey* noundef, %struct.IndexKey* noundef, %struct.IndexKey* noundef) #2

declare dso_local float @volume(%struct.IndexKey* noundef byval(%struct.IndexKey) align 8) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local float @penalty(%struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8, %struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn nounwind }

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
