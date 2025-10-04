; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/deleteEntry.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/deleteEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.DataAttribute = type { i64, %struct.DataObjectAttribute, %struct.DataAttribute* }
%struct.DataObjectAttribute = type { %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.DataObject = type { i32, %struct.DataObjectAttribute* }

@.str = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/deleteEntry.c\00", align 1
@__PRETTY_FUNCTION__.deleteEntry = private unnamed_addr constant [70 x i8] c"void deleteEntry(IndexNode *, IndexKey *, DataAttribute *, Boolean *)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"searchKey\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"adjustmentFlag\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @deleteEntry(%struct.IndexNode* noundef %0, %struct.IndexKey* noundef %1, %struct.DataAttribute* noundef %2, i8* noundef %3) #0 {
  %5 = alloca %struct.IndexNode*, align 8
  %6 = alloca %struct.IndexKey*, align 8
  %7 = alloca %struct.DataAttribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.IndexEntry*, align 8
  %10 = alloca %struct.IndexEntry*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.IndexEntry*, align 8
  %13 = alloca %struct.IndexEntry*, align 8
  %14 = alloca %struct.IndexEntry*, align 8
  %15 = alloca %struct.DataAttribute*, align 8
  %16 = alloca %struct.DataObject*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  %19 = alloca %struct.IndexEntry*, align 8
  store %struct.IndexNode* %0, %struct.IndexNode** %5, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %6, align 8
  store %struct.DataAttribute* %2, %struct.DataAttribute** %7, align 8
  store i8* %3, i8** %8, align 8
  %20 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %21 = icmp ne %struct.IndexNode* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %24

23:                                               ; preds = %4
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.deleteEntry, i64 0, i64 0)) #3
  unreachable

24:                                               ; preds = %22
  %25 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %26 = icmp ne %struct.IndexKey* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %29

28:                                               ; preds = %24
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.deleteEntry, i64 0, i64 0)) #3
  unreachable

29:                                               ; preds = %27
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %34

33:                                               ; preds = %29
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.deleteEntry, i64 0, i64 0)) #3
  unreachable

34:                                               ; preds = %32
  %35 = load i8*, i8** %8, align 8
  store i8 0, i8* %35, align 1
  %36 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %37 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %121

40:                                               ; preds = %34
  store %struct.IndexEntry* null, %struct.IndexEntry** %10, align 8
  %41 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %42 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %41, i32 0, i32 1
  %43 = load %struct.IndexEntry*, %struct.IndexEntry** %42, align 8
  store %struct.IndexEntry* %43, %struct.IndexEntry** %9, align 8
  br label %44

44:                                               ; preds = %119, %40
  %45 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %46 = icmp ne %struct.IndexEntry* %45, null
  br i1 %46, label %47, label %120

47:                                               ; preds = %44
  %48 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %49 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %48, i32 0, i32 1
  %50 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %51 = call signext i8 @consistentKey(%struct.IndexKey* noundef %49, %struct.IndexKey* noundef %50)
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %114

54:                                               ; preds = %47
  %55 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %56 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %55, i32 0, i32 0
  %57 = bitcast %union.anon* %56 to %struct.IndexNode**
  %58 = load %struct.IndexNode*, %struct.IndexNode** %57, align 8
  %59 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %60 = load %struct.DataAttribute*, %struct.DataAttribute** %7, align 8
  call void @deleteEntry(%struct.IndexNode* noundef %58, %struct.IndexKey* noundef %59, %struct.DataAttribute* noundef %60, i8* noundef %11)
  %61 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %62 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %61, i32 0, i32 0
  %63 = bitcast %union.anon* %62 to %struct.IndexNode**
  %64 = load %struct.IndexNode*, %struct.IndexNode** %63, align 8
  %65 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %64, i32 0, i32 1
  %66 = load %struct.IndexEntry*, %struct.IndexEntry** %65, align 8
  %67 = icmp eq %struct.IndexEntry* %66, null
  br i1 %67, label %68, label %89

68:                                               ; preds = %54
  %69 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %70 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %69, i32 0, i32 2
  %71 = load %struct.IndexEntry*, %struct.IndexEntry** %70, align 8
  store %struct.IndexEntry* %71, %struct.IndexEntry** %12, align 8
  %72 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %73 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %74 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* noundef %72, i64 noundef %75)
  %76 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  store %struct.IndexEntry* %76, %struct.IndexEntry** %9, align 8
  %77 = load i8*, i8** %8, align 8
  store i8 1, i8* %77, align 1
  %78 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %79 = icmp ne %struct.IndexEntry* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %68
  %81 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %82 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %83 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %82, i32 0, i32 2
  store %struct.IndexEntry* %81, %struct.IndexEntry** %83, align 8
  br label %88

84:                                               ; preds = %68
  %85 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %86 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %87 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %86, i32 0, i32 1
  store %struct.IndexEntry* %85, %struct.IndexEntry** %87, align 8
  br label %88

88:                                               ; preds = %84, %80
  br label %113

89:                                               ; preds = %54
  %90 = load i8, i8* %11, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %95 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %94, i32 0, i32 0
  %96 = bitcast %union.anon* %95 to %struct.IndexNode**
  %97 = load %struct.IndexNode*, %struct.IndexNode** %96, align 8
  %98 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %97, i32 0, i32 1
  %99 = load %struct.IndexEntry*, %struct.IndexEntry** %98, align 8
  %100 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %101 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %100, i32 0, i32 1
  call void @keysUnion(%struct.IndexEntry* noundef %99, %struct.IndexKey* noundef %101)
  %102 = load i8*, i8** %8, align 8
  store i8 1, i8* %102, align 1
  %103 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  store %struct.IndexEntry* %103, %struct.IndexEntry** %10, align 8
  %104 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %105 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %104, i32 0, i32 2
  %106 = load %struct.IndexEntry*, %struct.IndexEntry** %105, align 8
  store %struct.IndexEntry* %106, %struct.IndexEntry** %9, align 8
  br label %112

107:                                              ; preds = %89
  %108 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  store %struct.IndexEntry* %108, %struct.IndexEntry** %10, align 8
  %109 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %110 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %109, i32 0, i32 2
  %111 = load %struct.IndexEntry*, %struct.IndexEntry** %110, align 8
  store %struct.IndexEntry* %111, %struct.IndexEntry** %9, align 8
  br label %112

112:                                              ; preds = %107, %93
  br label %113

113:                                              ; preds = %112, %88
  br label %119

114:                                              ; preds = %47
  %115 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  store %struct.IndexEntry* %115, %struct.IndexEntry** %10, align 8
  %116 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %117 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %116, i32 0, i32 2
  %118 = load %struct.IndexEntry*, %struct.IndexEntry** %117, align 8
  store %struct.IndexEntry* %118, %struct.IndexEntry** %9, align 8
  br label %119

119:                                              ; preds = %114, %113
  br label %44, !llvm.loop !4

120:                                              ; preds = %44
  br label %232

121:                                              ; preds = %34
  store %struct.IndexEntry* null, %struct.IndexEntry** %14, align 8
  %122 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %123 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %122, i32 0, i32 1
  %124 = load %struct.IndexEntry*, %struct.IndexEntry** %123, align 8
  store %struct.IndexEntry* %124, %struct.IndexEntry** %13, align 8
  br label %125

125:                                              ; preds = %230, %121
  %126 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %127 = icmp ne %struct.IndexEntry* %126, null
  br i1 %127, label %128, label %231

128:                                              ; preds = %125
  %129 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %130 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %129, i32 0, i32 1
  %131 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %132 = call signext i8 @consistentKey(%struct.IndexKey* noundef %130, %struct.IndexKey* noundef %131)
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %225

135:                                              ; preds = %128
  %136 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %137 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %136, i32 0, i32 0
  %138 = bitcast %union.anon* %137 to %struct.DataObject**
  %139 = load %struct.DataObject*, %struct.DataObject** %138, align 8
  store %struct.DataObject* %139, %struct.DataObject** %16, align 8
  store i64 0, i64* %17, align 8
  %140 = load %struct.DataObject*, %struct.DataObject** %16, align 8
  %141 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  store i64 18, i64* %17, align 8
  br label %159

145:                                              ; preds = %135
  %146 = load %struct.DataObject*, %struct.DataObject** %16, align 8
  %147 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  store i64 25, i64* %17, align 8
  br label %158

151:                                              ; preds = %145
  %152 = load %struct.DataObject*, %struct.DataObject** %16, align 8
  %153 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 3
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i64 51, i64* %17, align 8
  br label %157

157:                                              ; preds = %156, %151
  br label %158

158:                                              ; preds = %157, %150
  br label %159

159:                                              ; preds = %158, %144
  store i8 1, i8* %18, align 1
  %160 = load %struct.DataAttribute*, %struct.DataAttribute** %7, align 8
  store %struct.DataAttribute* %160, %struct.DataAttribute** %15, align 8
  br label %161

161:                                              ; preds = %193, %159
  %162 = load %struct.DataAttribute*, %struct.DataAttribute** %15, align 8
  %163 = icmp ne %struct.DataAttribute* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i8, i8* %18, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 1
  br label %168

168:                                              ; preds = %164, %161
  %169 = phi i1 [ false, %161 ], [ %167, %164 ]
  br i1 %169, label %170, label %197

170:                                              ; preds = %168
  %171 = load %struct.DataAttribute*, %struct.DataAttribute** %15, align 8
  %172 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %17, align 8
  %175 = icmp slt i64 %173, %174
  br i1 %175, label %176, label %193

176:                                              ; preds = %170
  %177 = load %struct.DataObject*, %struct.DataObject** %16, align 8
  %178 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %177, i32 0, i32 1
  %179 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %178, align 8
  %180 = load %struct.DataAttribute*, %struct.DataAttribute** %15, align 8
  %181 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %179, i64 %182
  %184 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %183, i32 0, i32 0
  %185 = bitcast %union.anon.0* %184 to i8**
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.DataAttribute*, %struct.DataAttribute** %15, align 8
  %188 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %188, i32 0, i32 0
  %190 = bitcast %union.anon.0* %189 to i8**
  %191 = load i8*, i8** %190, align 8
  %192 = call signext i8 @consistentNonKey(i8* noundef %186, i8* noundef %191)
  store i8 %192, i8* %18, align 1
  br label %193

193:                                              ; preds = %176, %170
  %194 = load %struct.DataAttribute*, %struct.DataAttribute** %15, align 8
  %195 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %194, i32 0, i32 2
  %196 = load %struct.DataAttribute*, %struct.DataAttribute** %195, align 8
  store %struct.DataAttribute* %196, %struct.DataAttribute** %15, align 8
  br label %161, !llvm.loop !6

197:                                              ; preds = %168
  %198 = load i8, i8* %18, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  store %struct.IndexEntry* %202, %struct.IndexEntry** %14, align 8
  %203 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %204 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %203, i32 0, i32 2
  %205 = load %struct.IndexEntry*, %struct.IndexEntry** %204, align 8
  store %struct.IndexEntry* %205, %struct.IndexEntry** %13, align 8
  br label %224

206:                                              ; preds = %197
  %207 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %208 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %207, i32 0, i32 2
  %209 = load %struct.IndexEntry*, %struct.IndexEntry** %208, align 8
  store %struct.IndexEntry* %209, %struct.IndexEntry** %19, align 8
  %210 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* noundef %210, i64 noundef 0)
  %211 = load %struct.IndexEntry*, %struct.IndexEntry** %19, align 8
  store %struct.IndexEntry* %211, %struct.IndexEntry** %13, align 8
  %212 = load i8*, i8** %8, align 8
  store i8 1, i8* %212, align 1
  %213 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %214 = icmp ne %struct.IndexEntry* %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %206
  %216 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %217 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %218 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %217, i32 0, i32 2
  store %struct.IndexEntry* %216, %struct.IndexEntry** %218, align 8
  br label %223

219:                                              ; preds = %206
  %220 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %221 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %222 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %221, i32 0, i32 1
  store %struct.IndexEntry* %220, %struct.IndexEntry** %222, align 8
  br label %223

223:                                              ; preds = %219, %215
  br label %224

224:                                              ; preds = %223, %201
  br label %230

225:                                              ; preds = %128
  %226 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  store %struct.IndexEntry* %226, %struct.IndexEntry** %14, align 8
  %227 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %228 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %227, i32 0, i32 2
  %229 = load %struct.IndexEntry*, %struct.IndexEntry** %228, align 8
  store %struct.IndexEntry* %229, %struct.IndexEntry** %13, align 8
  br label %230

230:                                              ; preds = %225, %224
  br label %125, !llvm.loop !7

231:                                              ; preds = %125
  br label %232

232:                                              ; preds = %231, %120
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local signext i8 @consistentKey(%struct.IndexKey* noundef, %struct.IndexKey* noundef) #2

declare dso_local void @deleteIndexEntry(%struct.IndexEntry* noundef, i64 noundef) #2

declare dso_local void @keysUnion(%struct.IndexEntry* noundef, %struct.IndexKey* noundef) #2

declare dso_local signext i8 @consistentNonKey(i8* noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
