; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/keyUnion.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/keyUnion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexNode = type { i64, %struct.IndexEntry* }

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/keyUnion.c\00", align 1
@__PRETTY_FUNCTION__.keyUnion = private unnamed_addr constant [50 x i8] c"void keyUnion(IndexKey *, IndexKey *, IndexKey *)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@__PRETTY_FUNCTION__.keysUnion = private unnamed_addr constant [41 x i8] c"void keysUnion(IndexEntry *, IndexKey *)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @keyUnion(%struct.IndexKey* noundef %0, %struct.IndexKey* noundef %1, %struct.IndexKey* noundef %2) #0 {
  %4 = alloca %struct.IndexKey*, align 8
  %5 = alloca %struct.IndexKey*, align 8
  %6 = alloca %struct.IndexKey*, align 8
  store %struct.IndexKey* %0, %struct.IndexKey** %4, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %5, align 8
  store %struct.IndexKey* %2, %struct.IndexKey** %6, align 8
  %7 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %8 = icmp ne %struct.IndexKey* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %11

10:                                               ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.keyUnion, i64 0, i64 0)) #3
  unreachable

11:                                               ; preds = %9
  %12 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %13 = icmp ne %struct.IndexKey* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %16

15:                                               ; preds = %11
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.keyUnion, i64 0, i64 0)) #3
  unreachable

16:                                               ; preds = %14
  %17 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %18 = icmp ne %struct.IndexKey* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %21

20:                                               ; preds = %16
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.keyUnion, i64 0, i64 0)) #3
  unreachable

21:                                               ; preds = %19
  %22 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %23 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %23, i32 0, i32 0
  %25 = load float, float* %24, align 4
  %26 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %27 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %27, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = fcmp olt float %25, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %33 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %33, i32 0, i32 0
  %35 = load float, float* %34, align 4
  br label %41

36:                                               ; preds = %21
  %37 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %38 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %38, i32 0, i32 0
  %40 = load float, float* %39, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi float [ %35, %31 ], [ %40, %36 ]
  %43 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %44 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %44, i32 0, i32 0
  store float %42, float* %45, align 4
  %46 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %47 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %47, i32 0, i32 1
  %49 = load float, float* %48, align 4
  %50 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %51 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %51, i32 0, i32 1
  %53 = load float, float* %52, align 4
  %54 = fcmp olt float %49, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %41
  %56 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %57 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %57, i32 0, i32 1
  %59 = load float, float* %58, align 4
  br label %65

60:                                               ; preds = %41
  %61 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %62 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %62, i32 0, i32 1
  %64 = load float, float* %63, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi float [ %59, %55 ], [ %64, %60 ]
  %67 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %68 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %68, i32 0, i32 1
  store float %66, float* %69, align 4
  %70 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %71 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %71, i32 0, i32 2
  %73 = load float, float* %72, align 4
  %74 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %75 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %75, i32 0, i32 2
  %77 = load float, float* %76, align 4
  %78 = fcmp olt float %73, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %65
  %80 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %81 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %81, i32 0, i32 2
  %83 = load float, float* %82, align 4
  br label %89

84:                                               ; preds = %65
  %85 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %86 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %86, i32 0, i32 2
  %88 = load float, float* %87, align 4
  br label %89

89:                                               ; preds = %84, %79
  %90 = phi float [ %83, %79 ], [ %88, %84 ]
  %91 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %92 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %92, i32 0, i32 2
  store float %90, float* %93, align 4
  %94 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %95 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %95, i32 0, i32 3
  %97 = load float, float* %96, align 4
  %98 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %99 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %99, i32 0, i32 3
  %101 = load float, float* %100, align 4
  %102 = fcmp olt float %97, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %89
  %104 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %105 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %105, i32 0, i32 3
  %107 = load float, float* %106, align 4
  br label %113

108:                                              ; preds = %89
  %109 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %110 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %110, i32 0, i32 3
  %112 = load float, float* %111, align 4
  br label %113

113:                                              ; preds = %108, %103
  %114 = phi float [ %107, %103 ], [ %112, %108 ]
  %115 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %116 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %116, i32 0, i32 3
  store float %114, float* %117, align 4
  %118 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %119 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %119, i32 0, i32 0
  %121 = load float, float* %120, align 4
  %122 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %123 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %123, i32 0, i32 0
  %125 = load float, float* %124, align 4
  %126 = fcmp ogt float %121, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %113
  %128 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %129 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %129, i32 0, i32 0
  %131 = load float, float* %130, align 4
  br label %137

132:                                              ; preds = %113
  %133 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %134 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %134, i32 0, i32 0
  %136 = load float, float* %135, align 4
  br label %137

137:                                              ; preds = %132, %127
  %138 = phi float [ %131, %127 ], [ %136, %132 ]
  %139 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %140 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %140, i32 0, i32 0
  store float %138, float* %141, align 4
  %142 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %143 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %143, i32 0, i32 1
  %145 = load float, float* %144, align 4
  %146 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %147 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %147, i32 0, i32 1
  %149 = load float, float* %148, align 4
  %150 = fcmp ogt float %145, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %137
  %152 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %153 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %153, i32 0, i32 1
  %155 = load float, float* %154, align 4
  br label %161

156:                                              ; preds = %137
  %157 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %158 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %158, i32 0, i32 1
  %160 = load float, float* %159, align 4
  br label %161

161:                                              ; preds = %156, %151
  %162 = phi float [ %155, %151 ], [ %160, %156 ]
  %163 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %164 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %164, i32 0, i32 1
  store float %162, float* %165, align 4
  %166 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %167 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %167, i32 0, i32 2
  %169 = load float, float* %168, align 4
  %170 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %171 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %171, i32 0, i32 2
  %173 = load float, float* %172, align 4
  %174 = fcmp ogt float %169, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %161
  %176 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %177 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %177, i32 0, i32 2
  %179 = load float, float* %178, align 4
  br label %185

180:                                              ; preds = %161
  %181 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %182 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %182, i32 0, i32 2
  %184 = load float, float* %183, align 4
  br label %185

185:                                              ; preds = %180, %175
  %186 = phi float [ %179, %175 ], [ %184, %180 ]
  %187 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %188 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %188, i32 0, i32 2
  store float %186, float* %189, align 4
  %190 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %191 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %191, i32 0, i32 3
  %193 = load float, float* %192, align 4
  %194 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %195 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %195, i32 0, i32 3
  %197 = load float, float* %196, align 4
  %198 = fcmp ogt float %193, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %185
  %200 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %201 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %201, i32 0, i32 3
  %203 = load float, float* %202, align 4
  br label %209

204:                                              ; preds = %185
  %205 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %206 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %206, i32 0, i32 3
  %208 = load float, float* %207, align 4
  br label %209

209:                                              ; preds = %204, %199
  %210 = phi float [ %203, %199 ], [ %208, %204 ]
  %211 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %212 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %212, i32 0, i32 3
  store float %210, float* %213, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @keysUnion(%struct.IndexEntry* noundef %0, %struct.IndexKey* noundef %1) #0 {
  %3 = alloca %struct.IndexEntry*, align 8
  %4 = alloca %struct.IndexKey*, align 8
  store %struct.IndexEntry* %0, %struct.IndexEntry** %3, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %4, align 8
  %5 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %6 = icmp ne %struct.IndexEntry* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.keysUnion, i64 0, i64 0)) #3
  unreachable

9:                                                ; preds = %7
  %10 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %11 = icmp ne %struct.IndexKey* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %14

13:                                               ; preds = %9
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.keysUnion, i64 0, i64 0)) #3
  unreachable

14:                                               ; preds = %12
  %15 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %16 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %17 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %16, i32 0, i32 1
  %18 = bitcast %struct.IndexKey* %15 to i8*
  %19 = bitcast %struct.IndexKey* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 8 %19, i64 32, i1 false)
  %20 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %21 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %20, i32 0, i32 2
  %22 = load %struct.IndexEntry*, %struct.IndexEntry** %21, align 8
  store %struct.IndexEntry* %22, %struct.IndexEntry** %3, align 8
  br label %23

23:                                               ; preds = %31, %14
  %24 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %25 = icmp ne %struct.IndexEntry* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %28 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %27, i32 0, i32 1
  %29 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %30 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  call void @keyUnion(%struct.IndexKey* noundef %28, %struct.IndexKey* noundef %29, %struct.IndexKey* noundef %30)
  br label %31

31:                                               ; preds = %26
  %32 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %33 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %32, i32 0, i32 2
  %34 = load %struct.IndexEntry*, %struct.IndexEntry** %33, align 8
  store %struct.IndexEntry* %34, %struct.IndexEntry** %3, align 8
  br label %23, !llvm.loop !4

35:                                               ; preds = %23
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
