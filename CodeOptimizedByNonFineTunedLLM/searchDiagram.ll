; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/searchDiagram.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/searchDiagram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SearchDiagramStruct = type { %struct.NodeStruct*, %struct.EdgeReferencesStruct* }
%struct.EdgeReferencesStruct = type { %struct.NodeStruct*, %struct.EdgeReferencesStruct* }
%struct.NodeStruct = type { i32, i32, i8*, i32, i32, %struct.NodeStruct*, %struct.NodeListStruct*, %struct.EdgeListStruct*, i32, i32 }
%struct.NodeListStruct = type { %struct.NodeStruct*, %struct.NodeListStruct* }
%struct.EdgeListStruct = type { i32, %struct.NodeStruct*, %struct.EdgeListStruct* }
%struct.NodePtrVecStruct = type { i32, i32, %struct.NodeStruct** }
%struct.BitfieldStruct = type { i32, i8* }

@.str = private unnamed_addr constant [52 x i8] c"Bummer. outerIdx: %d, innerIdx: %d, node count: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.SearchDiagramStruct* @SearchDiagram_findNode(%struct.SearchDiagramStruct* noundef %0, %struct.NodeStruct* noundef %1) #0 {
  %3 = alloca %struct.SearchDiagramStruct*, align 8
  %4 = alloca %struct.SearchDiagramStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  %6 = alloca i32, align 4
  store %struct.SearchDiagramStruct* %0, %struct.SearchDiagramStruct** %4, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %5, align 8
  %7 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %4, align 8
  %8 = icmp ne %struct.SearchDiagramStruct* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.SearchDiagramStruct* null, %struct.SearchDiagramStruct** %3, align 8
  br label %38

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %34, %10
  %12 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %14
  %16 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %15, i32 0, i32 0
  %17 = load %struct.NodeStruct*, %struct.NodeStruct** %16, align 8
  %18 = icmp ne %struct.NodeStruct* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %11
  %20 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %20, i64 %22
  %24 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %23, i32 0, i32 0
  %25 = load %struct.NodeStruct*, %struct.NodeStruct** %24, align 8
  %26 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %27 = icmp eq %struct.NodeStruct* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %29, i64 %31
  store %struct.SearchDiagramStruct* %32, %struct.SearchDiagramStruct** %3, align 8
  br label %38

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %11, !llvm.loop !4

37:                                               ; preds = %11
  store %struct.SearchDiagramStruct* null, %struct.SearchDiagramStruct** %3, align 8
  br label %38

38:                                               ; preds = %37, %28, %9
  %39 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %3, align 8
  ret %struct.SearchDiagramStruct* %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.SearchDiagramStruct* @SearchDiagram_build(%struct.NodeListStruct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.SearchDiagramStruct*, align 8
  %4 = alloca %struct.NodeListStruct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.SearchDiagramStruct*, align 8
  %7 = alloca %struct.NodeListStruct*, align 8
  %8 = alloca %struct.NodeStruct*, align 8
  %9 = alloca %struct.NodeListStruct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.EdgeListStruct*, align 8
  %14 = alloca %struct.SearchDiagramStruct*, align 8
  store %struct.NodeListStruct* %0, %struct.NodeListStruct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.SearchDiagramStruct* null, %struct.SearchDiagramStruct** %6, align 8
  store %struct.NodeListStruct* null, %struct.NodeListStruct** %7, align 8
  store %struct.NodeStruct* null, %struct.NodeStruct** %8, align 8
  store %struct.NodeListStruct* null, %struct.NodeListStruct** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %11, align 4
  %17 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  %18 = icmp ne %struct.NodeListStruct* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %2
  store %struct.SearchDiagramStruct* null, %struct.SearchDiagramStruct** %3, align 8
  br label %321

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 16
  %28 = call noalias i8* @malloc(i64 noundef %27) #4
  %29 = bitcast i8* %28 to %struct.SearchDiagramStruct*
  store %struct.SearchDiagramStruct* %29, %struct.SearchDiagramStruct** %6, align 8
  %30 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %31 = icmp ne %struct.SearchDiagramStruct* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store %struct.SearchDiagramStruct* null, %struct.SearchDiagramStruct** %3, align 8
  br label %321

33:                                               ; preds = %23
  %34 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %34, i64 %36
  %38 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %37, i32 0, i32 0
  store %struct.NodeStruct* null, %struct.NodeStruct** %38, align 8
  %39 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %39, i64 %41
  %43 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %42, i32 0, i32 1
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %43, align 8
  %44 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  store %struct.NodeListStruct* %44, %struct.NodeListStruct** %7, align 8
  br label %45

45:                                               ; preds = %181, %33
  %46 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %47 = icmp ne %struct.NodeListStruct* %46, null
  br i1 %47, label %48, label %185

48:                                               ; preds = %45
  %49 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %50 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %49, i32 0, i32 0
  %51 = load %struct.NodeStruct*, %struct.NodeStruct** %50, align 8
  store %struct.NodeStruct* %51, %struct.NodeStruct** %8, align 8
  %52 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %53 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %53, i64 %55
  %57 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %56, i32 0, i32 0
  store %struct.NodeStruct* %52, %struct.NodeStruct** %57, align 8
  %58 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %59 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %62 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %48
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 16
  %72 = call noalias i8* @malloc(i64 noundef %71) #4
  %73 = bitcast i8* %72 to %struct.EdgeReferencesStruct*
  %74 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %74, i64 %76
  %78 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %77, i32 0, i32 1
  store %struct.EdgeReferencesStruct* %73, %struct.EdgeReferencesStruct** %78, align 8
  %79 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %79, i64 %81
  %83 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %82, i32 0, i32 1
  %84 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %84, i64 %86
  %88 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %87, i32 0, i32 0
  store %struct.NodeStruct* null, %struct.NodeStruct** %88, align 8
  %89 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %89, i64 %91
  %93 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %92, i32 0, i32 1
  %94 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %94, i64 %96
  %98 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %97, i32 0, i32 1
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %98, align 8
  br label %105

99:                                               ; preds = %48
  %100 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %100, i64 %102
  %104 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %103, i32 0, i32 1
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %104, align 8
  br label %105

105:                                              ; preds = %99, %67
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  %108 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %109 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %108, i32 0, i32 6
  %110 = load %struct.NodeListStruct*, %struct.NodeListStruct** %109, align 8
  store %struct.NodeListStruct* %110, %struct.NodeListStruct** %9, align 8
  br label %111

111:                                              ; preds = %176, %105
  %112 = load %struct.NodeListStruct*, %struct.NodeListStruct** %9, align 8
  %113 = icmp ne %struct.NodeListStruct* %112, null
  br i1 %113, label %114, label %180

114:                                              ; preds = %111
  %115 = load %struct.NodeListStruct*, %struct.NodeListStruct** %9, align 8
  %116 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %115, i32 0, i32 0
  %117 = load %struct.NodeStruct*, %struct.NodeStruct** %116, align 8
  store %struct.NodeStruct* %117, %struct.NodeStruct** %8, align 8
  %118 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %119 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %119, i64 %121
  %123 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %122, i32 0, i32 0
  store %struct.NodeStruct* %118, %struct.NodeStruct** %123, align 8
  %124 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %125 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %128 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %126, %129
  store i32 %130, i32* %12, align 4
  %131 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %132 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 8
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %167

135:                                              ; preds = %114
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 16
  %140 = call noalias i8* @malloc(i64 noundef %139) #4
  %141 = bitcast i8* %140 to %struct.EdgeReferencesStruct*
  %142 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %142, i64 %144
  %146 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %145, i32 0, i32 1
  store %struct.EdgeReferencesStruct* %141, %struct.EdgeReferencesStruct** %146, align 8
  %147 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %147, i64 %149
  %151 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %150, i32 0, i32 1
  %152 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %152, i64 %154
  %156 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %155, i32 0, i32 0
  store %struct.NodeStruct* null, %struct.NodeStruct** %156, align 8
  %157 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %157, i64 %159
  %161 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %160, i32 0, i32 1
  %162 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %162, i64 %164
  %166 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %165, i32 0, i32 1
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %166, align 8
  br label %173

167:                                              ; preds = %114
  %168 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %168, i64 %170
  %172 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %171, i32 0, i32 1
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %172, align 8
  br label %173

173:                                              ; preds = %167, %135
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %173
  %177 = load %struct.NodeListStruct*, %struct.NodeListStruct** %9, align 8
  %178 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %177, i32 0, i32 1
  %179 = load %struct.NodeListStruct*, %struct.NodeListStruct** %178, align 8
  store %struct.NodeListStruct* %179, %struct.NodeListStruct** %9, align 8
  br label %111, !llvm.loop !6

180:                                              ; preds = %111
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %183 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %182, i32 0, i32 1
  %184 = load %struct.NodeListStruct*, %struct.NodeListStruct** %183, align 8
  store %struct.NodeListStruct* %184, %struct.NodeListStruct** %7, align 8
  br label %45, !llvm.loop !7

185:                                              ; preds = %45
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  %189 = icmp ne i32 %186, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %5, align 4
  %194 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 noundef %191, i32 noundef %192, i32 noundef %193)
  br label %195

195:                                              ; preds = %190, %185
  store i32 0, i32* %10, align 4
  %196 = load i32, i32* %5, align 4
  %197 = sub nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  %198 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  store %struct.NodeListStruct* %198, %struct.NodeListStruct** %7, align 8
  br label %199

199:                                              ; preds = %315, %195
  %200 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %201 = icmp ne %struct.NodeListStruct* %200, null
  br i1 %201, label %202, label %319

202:                                              ; preds = %199
  %203 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %204 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %203, i32 0, i32 0
  %205 = load %struct.NodeStruct*, %struct.NodeStruct** %204, align 8
  store %struct.NodeStruct* %205, %struct.NodeStruct** %8, align 8
  %206 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %207 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %206, i32 0, i32 7
  %208 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %207, align 8
  store %struct.EdgeListStruct* %208, %struct.EdgeListStruct** %13, align 8
  store i32 0, i32* %12, align 4
  br label %209

209:                                              ; preds = %244, %202
  %210 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  %211 = icmp ne %struct.EdgeListStruct* %210, null
  br i1 %211, label %212, label %250

212:                                              ; preds = %209
  %213 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %214 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  %215 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %214, i32 0, i32 1
  %216 = load %struct.NodeStruct*, %struct.NodeStruct** %215, align 8
  %217 = call %struct.SearchDiagramStruct* @SearchDiagram_findNode(%struct.SearchDiagramStruct* noundef %213, %struct.NodeStruct* noundef %216)
  store %struct.SearchDiagramStruct* %217, %struct.SearchDiagramStruct** %14, align 8
  %218 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  %219 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %218, i32 0, i32 1
  %220 = load %struct.NodeStruct*, %struct.NodeStruct** %219, align 8
  %221 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %221, i64 %223
  %225 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %224, i32 0, i32 1
  %226 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %226, i64 %228
  %230 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %229, i32 0, i32 0
  store %struct.NodeStruct* %220, %struct.NodeStruct** %230, align 8
  %231 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %14, align 8
  %232 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %231, i32 0, i32 1
  %233 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %232, align 8
  %234 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %234, i64 %236
  %238 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %237, i32 0, i32 1
  %239 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %238, align 8
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %239, i64 %241
  %243 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %242, i32 0, i32 1
  store %struct.EdgeReferencesStruct* %233, %struct.EdgeReferencesStruct** %243, align 8
  br label %244

244:                                              ; preds = %212
  %245 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  %246 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %245, i32 0, i32 2
  %247 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %246, align 8
  store %struct.EdgeListStruct* %247, %struct.EdgeListStruct** %13, align 8
  %248 = load i32, i32* %12, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %12, align 4
  br label %209, !llvm.loop !8

250:                                              ; preds = %209
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %10, align 4
  %253 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %254 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %253, i32 0, i32 6
  %255 = load %struct.NodeListStruct*, %struct.NodeListStruct** %254, align 8
  store %struct.NodeListStruct* %255, %struct.NodeListStruct** %9, align 8
  br label %256

256:                                              ; preds = %310, %250
  %257 = load %struct.NodeListStruct*, %struct.NodeListStruct** %9, align 8
  %258 = icmp ne %struct.NodeListStruct* %257, null
  br i1 %258, label %259, label %314

259:                                              ; preds = %256
  %260 = load %struct.NodeListStruct*, %struct.NodeListStruct** %9, align 8
  %261 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %260, i32 0, i32 0
  %262 = load %struct.NodeStruct*, %struct.NodeStruct** %261, align 8
  store %struct.NodeStruct* %262, %struct.NodeStruct** %8, align 8
  %263 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %264 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %263, i32 0, i32 7
  %265 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %264, align 8
  store %struct.EdgeListStruct* %265, %struct.EdgeListStruct** %13, align 8
  store i32 0, i32* %12, align 4
  br label %266

266:                                              ; preds = %301, %259
  %267 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  %268 = icmp ne %struct.EdgeListStruct* %267, null
  br i1 %268, label %269, label %307

269:                                              ; preds = %266
  %270 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %271 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  %272 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %271, i32 0, i32 1
  %273 = load %struct.NodeStruct*, %struct.NodeStruct** %272, align 8
  %274 = call %struct.SearchDiagramStruct* @SearchDiagram_findNode(%struct.SearchDiagramStruct* noundef %270, %struct.NodeStruct* noundef %273)
  store %struct.SearchDiagramStruct* %274, %struct.SearchDiagramStruct** %14, align 8
  %275 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  %276 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %275, i32 0, i32 1
  %277 = load %struct.NodeStruct*, %struct.NodeStruct** %276, align 8
  %278 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %279 = load i32, i32* %11, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %278, i64 %280
  %282 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %281, i32 0, i32 1
  %283 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %282, align 8
  %284 = load i32, i32* %12, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %283, i64 %285
  %287 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %286, i32 0, i32 0
  store %struct.NodeStruct* %277, %struct.NodeStruct** %287, align 8
  %288 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %14, align 8
  %289 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %288, i32 0, i32 1
  %290 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %289, align 8
  %291 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  %292 = load i32, i32* %11, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %291, i64 %293
  %295 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %294, i32 0, i32 1
  %296 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %295, align 8
  %297 = load i32, i32* %12, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %296, i64 %298
  %300 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %299, i32 0, i32 1
  store %struct.EdgeReferencesStruct* %290, %struct.EdgeReferencesStruct** %300, align 8
  br label %301

301:                                              ; preds = %269
  %302 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  %303 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %302, i32 0, i32 2
  %304 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %303, align 8
  store %struct.EdgeListStruct* %304, %struct.EdgeListStruct** %13, align 8
  %305 = load i32, i32* %12, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %12, align 4
  br label %266, !llvm.loop !9

307:                                              ; preds = %266
  %308 = load i32, i32* %11, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %11, align 4
  br label %310

310:                                              ; preds = %307
  %311 = load %struct.NodeListStruct*, %struct.NodeListStruct** %9, align 8
  %312 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %311, i32 0, i32 1
  %313 = load %struct.NodeListStruct*, %struct.NodeListStruct** %312, align 8
  store %struct.NodeListStruct* %313, %struct.NodeListStruct** %9, align 8
  br label %256, !llvm.loop !10

314:                                              ; preds = %256
  br label %315

315:                                              ; preds = %314
  %316 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %317 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %316, i32 0, i32 1
  %318 = load %struct.NodeListStruct*, %struct.NodeListStruct** %317, align 8
  store %struct.NodeListStruct* %318, %struct.NodeListStruct** %7, align 8
  br label %199, !llvm.loop !11

319:                                              ; preds = %199
  %320 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %6, align 8
  store %struct.SearchDiagramStruct* %320, %struct.SearchDiagramStruct** %3, align 8
  br label %321

321:                                              ; preds = %319, %32, %22
  %322 = load %struct.SearchDiagramStruct*, %struct.SearchDiagramStruct** %3, align 8
  ret %struct.SearchDiagramStruct* %322
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @SearchDiagram_findSignatureAlongEdges(%struct.NodeStruct* noundef %0, %struct.EdgeReferencesStruct* noundef %1, i8** noundef %2, %struct.NodePtrVecStruct* noundef %3, %struct.BitfieldStruct* noundef %4) #0 {
  %6 = alloca i1, align 1
  %7 = alloca %struct.NodeStruct*, align 8
  %8 = alloca %struct.EdgeReferencesStruct*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.NodePtrVecStruct*, align 8
  %11 = alloca %struct.BitfieldStruct*, align 8
  %12 = alloca i8, align 1
  %13 = alloca %struct.NodePtrVecStruct*, align 8
  %14 = alloca %struct.BitfieldStruct*, align 8
  %15 = alloca i32, align 4
  store %struct.NodeStruct* %0, %struct.NodeStruct** %7, align 8
  store %struct.EdgeReferencesStruct* %1, %struct.EdgeReferencesStruct** %8, align 8
  store i8** %2, i8*** %9, align 8
  store %struct.NodePtrVecStruct* %3, %struct.NodePtrVecStruct** %10, align 8
  store %struct.BitfieldStruct* %4, %struct.BitfieldStruct** %11, align 8
  store i8 0, i8* %12, align 1
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %13, align 8
  store %struct.BitfieldStruct* null, %struct.BitfieldStruct** %14, align 8
  %16 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %17 = icmp ne %struct.NodeStruct* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %5
  %19 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %20 = icmp ne %struct.EdgeReferencesStruct* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i8**, i8*** %9, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %26 = icmp ne %struct.NodePtrVecStruct* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %11, align 8
  %29 = icmp ne %struct.BitfieldStruct* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %24, %21, %18, %5
  store i1 false, i1* %6, align 1
  br label %161

31:                                               ; preds = %27
  %32 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %11, align 8
  %33 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %34 = call zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* noundef %32, %struct.NodeStruct* noundef %33)
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i1 false, i1* %6, align 1
  br label %161

36:                                               ; preds = %31
  %37 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %38 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %39 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef %37, %struct.NodeStruct* noundef %38)
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %121, %36
  %41 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %41, i64 %43
  %45 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %44, i32 0, i32 0
  %46 = load %struct.NodeStruct*, %struct.NodeStruct** %45, align 8
  %47 = icmp ne %struct.NodeStruct* %46, null
  br i1 %47, label %48, label %124

48:                                               ; preds = %40
  %49 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %49, i64 %51
  %53 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %52, i32 0, i32 0
  %54 = load %struct.NodeStruct*, %struct.NodeStruct** %53, align 8
  %55 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %120

58:                                               ; preds = %48
  %59 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %59, i64 %61
  %63 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %62, i32 0, i32 0
  %64 = load %struct.NodeStruct*, %struct.NodeStruct** %63, align 8
  %65 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %9, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strcmp(i8* noundef %66, i8* noundef %69) #5
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %119

72:                                               ; preds = %58
  %73 = load i8**, i8*** %9, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %79 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %79, i64 %81
  %83 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %82, i32 0, i32 0
  %84 = load %struct.NodeStruct*, %struct.NodeStruct** %83, align 8
  %85 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef %78, %struct.NodeStruct* noundef %84)
  store i1 true, i1* %6, align 1
  br label %161

86:                                               ; preds = %72
  %87 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef 50)
  store %struct.NodePtrVecStruct* %87, %struct.NodePtrVecStruct** %13, align 8
  %88 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %11, align 8
  %89 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.BitfieldStruct* @Bitfield_new(i32 noundef %90)
  store %struct.BitfieldStruct* %91, %struct.BitfieldStruct** %14, align 8
  %92 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %92, i64 %94
  %96 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %95, i32 0, i32 0
  %97 = load %struct.NodeStruct*, %struct.NodeStruct** %96, align 8
  %98 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %98, i64 %100
  %102 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %101, i32 0, i32 1
  %103 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %102, align 8
  %104 = load i8**, i8*** %9, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  %106 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %13, align 8
  %107 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %14, align 8
  %108 = call zeroext i1 @SearchDiagram_findSignatureAlongEdges(%struct.NodeStruct* noundef %97, %struct.EdgeReferencesStruct* noundef %103, i8** noundef %105, %struct.NodePtrVecStruct* noundef %106, %struct.BitfieldStruct* noundef %107)
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %12, align 1
  %110 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %14, align 8
  call void @Bitfield_delete(%struct.BitfieldStruct* noundef %110)
  %111 = load i8, i8* %12, align 1
  %112 = trunc i8 %111 to i1
  br i1 %112, label %113, label %117

113:                                              ; preds = %86
  %114 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %115 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %13, align 8
  call void @NodePtrVec_appendVectors(%struct.NodePtrVecStruct* noundef %114, %struct.NodePtrVecStruct* noundef %115, i1 noundef zeroext true)
  %116 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %13, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef %116)
  store i1 true, i1* %6, align 1
  br label %161

117:                                              ; preds = %86
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118, %58
  br label %120

120:                                              ; preds = %119, %48
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %15, align 4
  br label %40, !llvm.loop !12

124:                                              ; preds = %40
  store i32 0, i32* %15, align 4
  br label %125

125:                                              ; preds = %155, %124
  %126 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %126, i64 %128
  %130 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %129, i32 0, i32 0
  %131 = load %struct.NodeStruct*, %struct.NodeStruct** %130, align 8
  %132 = icmp ne %struct.NodeStruct* %131, null
  br i1 %132, label %133, label %158

133:                                              ; preds = %125
  %134 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %134, i64 %136
  %138 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %137, i32 0, i32 0
  %139 = load %struct.NodeStruct*, %struct.NodeStruct** %138, align 8
  %140 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %140, i64 %142
  %144 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %143, i32 0, i32 1
  %145 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %144, align 8
  %146 = load i8**, i8*** %9, align 8
  %147 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %148 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %11, align 8
  %149 = call zeroext i1 @SearchDiagram_findSignatureAlongEdges(%struct.NodeStruct* noundef %139, %struct.EdgeReferencesStruct* noundef %145, i8** noundef %146, %struct.NodePtrVecStruct* noundef %147, %struct.BitfieldStruct* noundef %148)
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %12, align 1
  %151 = load i8, i8* %12, align 1
  %152 = trunc i8 %151 to i1
  br i1 %152, label %153, label %154

153:                                              ; preds = %133
  store i1 true, i1* %6, align 1
  br label %161

154:                                              ; preds = %133
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %125, !llvm.loop !13

158:                                              ; preds = %125
  %159 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %160 = call %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* noundef %159)
  store i1 false, i1* %6, align 1
  br label %161

161:                                              ; preds = %158, %153, %113, %77, %35, %30
  %162 = load i1, i1* %6, align 1
  ret i1 %162
}

declare dso_local zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* noundef, %struct.NodeStruct* noundef) #2

declare dso_local zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef, %struct.NodeStruct* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef) #2

declare dso_local %struct.BitfieldStruct* @Bitfield_new(i32 noundef) #2

declare dso_local void @Bitfield_delete(%struct.BitfieldStruct* noundef) #2

declare dso_local void @NodePtrVec_appendVectors(%struct.NodePtrVecStruct* noundef, %struct.NodePtrVecStruct* noundef, i1 noundef zeroext) #2

declare dso_local void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef) #2

declare dso_local %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
