; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/query.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/query.c"
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

@query.name = internal global [6 x i8] c"query\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/query.c\00", align 1
@__PRETTY_FUNCTION__.query = private unnamed_addr constant [85 x i8] c"Int query(IndexNode *, IndexKey *, DataAttribute *, Boolean, void (*)(DataObject *))\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"searchKey\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"!( checkValidity != TRUE && checkValidity != FALSE )\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"invalid index key search values\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"invalid non-key search values\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @query(%struct.IndexNode* noundef %0, %struct.IndexKey* noundef %1, %struct.DataAttribute* noundef %2, i8 noundef signext %3, void (%struct.DataObject*)* noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.IndexNode*, align 8
  %8 = alloca %struct.IndexKey*, align 8
  %9 = alloca %struct.DataAttribute*, align 8
  %10 = alloca i8, align 1
  %11 = alloca void (%struct.DataObject*)*, align 8
  %12 = alloca %struct.IndexEntry*, align 8
  %13 = alloca %struct.IndexEntry*, align 8
  %14 = alloca %struct.DataAttribute*, align 8
  %15 = alloca %struct.DataObject*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  store %struct.IndexNode* %0, %struct.IndexNode** %7, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %8, align 8
  store %struct.DataAttribute* %2, %struct.DataAttribute** %9, align 8
  store i8 %3, i8* %10, align 1
  store void (%struct.DataObject*)* %4, void (%struct.DataObject*)** %11, align 8
  %18 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %19 = icmp ne %struct.IndexNode* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %22

21:                                               ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.query, i64 0, i64 0)) #3
  unreachable

22:                                               ; preds = %20
  %23 = load %struct.IndexKey*, %struct.IndexKey** %8, align 8
  %24 = icmp ne %struct.IndexKey* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %27

26:                                               ; preds = %22
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.query, i64 0, i64 0)) #3
  unreachable

27:                                               ; preds = %25
  %28 = load i8, i8* %10, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i8, i8* %10, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %27
  br label %37

36:                                               ; preds = %31
  call void @__assert_fail(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.query, i64 0, i64 0)) #3
  unreachable

37:                                               ; preds = %35
  %38 = load i8, i8* %10, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load %struct.IndexKey*, %struct.IndexKey** %8, align 8
  %43 = call signext i8 @validIndexKey(%struct.IndexKey* noundef %42)
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  call void @errorMessage(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @query.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 1, i64* %6, align 8
  br label %183

47:                                               ; preds = %41
  %48 = load %struct.DataAttribute*, %struct.DataAttribute** %9, align 8
  %49 = call signext i8 @validAttributes(%struct.DataAttribute* noundef %48)
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  call void @errorMessage(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @query.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 2, i64* %6, align 8
  br label %183

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54, %37
  %56 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %57 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %55
  %61 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %62 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %61, i32 0, i32 1
  %63 = load %struct.IndexEntry*, %struct.IndexEntry** %62, align 8
  store %struct.IndexEntry* %63, %struct.IndexEntry** %12, align 8
  br label %64

64:                                               ; preds = %84, %60
  %65 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %66 = icmp ne %struct.IndexEntry* %65, null
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %69 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %68, i32 0, i32 1
  %70 = load %struct.IndexKey*, %struct.IndexKey** %8, align 8
  %71 = call signext i8 @consistentKey(%struct.IndexKey* noundef %69, %struct.IndexKey* noundef %70)
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %76 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %75, i32 0, i32 0
  %77 = bitcast %union.anon* %76 to %struct.IndexNode**
  %78 = load %struct.IndexNode*, %struct.IndexNode** %77, align 8
  %79 = load %struct.IndexKey*, %struct.IndexKey** %8, align 8
  %80 = load %struct.DataAttribute*, %struct.DataAttribute** %9, align 8
  %81 = load void (%struct.DataObject*)*, void (%struct.DataObject*)** %11, align 8
  %82 = call i64 @query(%struct.IndexNode* noundef %78, %struct.IndexKey* noundef %79, %struct.DataAttribute* noundef %80, i8 noundef signext 0, void (%struct.DataObject*)* noundef %81)
  br label %83

83:                                               ; preds = %74, %67
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %86 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %85, i32 0, i32 2
  %87 = load %struct.IndexEntry*, %struct.IndexEntry** %86, align 8
  store %struct.IndexEntry* %87, %struct.IndexEntry** %12, align 8
  br label %64, !llvm.loop !4

88:                                               ; preds = %64
  br label %182

89:                                               ; preds = %55
  %90 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %91 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %90, i32 0, i32 1
  %92 = load %struct.IndexEntry*, %struct.IndexEntry** %91, align 8
  store %struct.IndexEntry* %92, %struct.IndexEntry** %13, align 8
  br label %93

93:                                               ; preds = %177, %89
  %94 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %95 = icmp ne %struct.IndexEntry* %94, null
  br i1 %95, label %96, label %181

96:                                               ; preds = %93
  %97 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %98 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %97, i32 0, i32 1
  %99 = load %struct.IndexKey*, %struct.IndexKey** %8, align 8
  %100 = call signext i8 @consistentKey(%struct.IndexKey* noundef %98, %struct.IndexKey* noundef %99)
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %176

103:                                              ; preds = %96
  %104 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %105 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %104, i32 0, i32 0
  %106 = bitcast %union.anon* %105 to %struct.DataObject**
  %107 = load %struct.DataObject*, %struct.DataObject** %106, align 8
  store %struct.DataObject* %107, %struct.DataObject** %15, align 8
  store i64 0, i64* %16, align 8
  %108 = load %struct.DataObject*, %struct.DataObject** %15, align 8
  %109 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  store i64 18, i64* %16, align 8
  br label %127

113:                                              ; preds = %103
  %114 = load %struct.DataObject*, %struct.DataObject** %15, align 8
  %115 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i64 25, i64* %16, align 8
  br label %126

119:                                              ; preds = %113
  %120 = load %struct.DataObject*, %struct.DataObject** %15, align 8
  %121 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i64 51, i64* %16, align 8
  br label %125

125:                                              ; preds = %124, %119
  br label %126

126:                                              ; preds = %125, %118
  br label %127

127:                                              ; preds = %126, %112
  store i8 1, i8* %17, align 1
  %128 = load %struct.DataAttribute*, %struct.DataAttribute** %9, align 8
  store %struct.DataAttribute* %128, %struct.DataAttribute** %14, align 8
  br label %129

129:                                              ; preds = %161, %127
  %130 = load %struct.DataAttribute*, %struct.DataAttribute** %14, align 8
  %131 = icmp ne %struct.DataAttribute* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i8, i8* %17, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 1
  br label %136

136:                                              ; preds = %132, %129
  %137 = phi i1 [ false, %129 ], [ %135, %132 ]
  br i1 %137, label %138, label %165

138:                                              ; preds = %136
  %139 = load %struct.DataAttribute*, %struct.DataAttribute** %14, align 8
  %140 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %16, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %138
  %145 = load %struct.DataObject*, %struct.DataObject** %15, align 8
  %146 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %145, i32 0, i32 1
  %147 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %146, align 8
  %148 = load %struct.DataAttribute*, %struct.DataAttribute** %14, align 8
  %149 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %147, i64 %150
  %152 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %151, i32 0, i32 0
  %153 = bitcast %union.anon.0* %152 to i8**
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.DataAttribute*, %struct.DataAttribute** %14, align 8
  %156 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %156, i32 0, i32 0
  %158 = bitcast %union.anon.0* %157 to i8**
  %159 = load i8*, i8** %158, align 8
  %160 = call signext i8 @consistentNonKey(i8* noundef %154, i8* noundef %159)
  store i8 %160, i8* %17, align 1
  br label %161

161:                                              ; preds = %144, %138
  %162 = load %struct.DataAttribute*, %struct.DataAttribute** %14, align 8
  %163 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %162, i32 0, i32 2
  %164 = load %struct.DataAttribute*, %struct.DataAttribute** %163, align 8
  store %struct.DataAttribute* %164, %struct.DataAttribute** %14, align 8
  br label %129, !llvm.loop !6

165:                                              ; preds = %136
  %166 = load i8, i8* %17, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load void (%struct.DataObject*)*, void (%struct.DataObject*)** %11, align 8
  %171 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %172 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %171, i32 0, i32 0
  %173 = bitcast %union.anon* %172 to %struct.DataObject**
  %174 = load %struct.DataObject*, %struct.DataObject** %173, align 8
  call void %170(%struct.DataObject* noundef %174)
  br label %175

175:                                              ; preds = %169, %165
  br label %176

176:                                              ; preds = %175, %96
  br label %177

177:                                              ; preds = %176
  %178 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %179 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %178, i32 0, i32 2
  %180 = load %struct.IndexEntry*, %struct.IndexEntry** %179, align 8
  store %struct.IndexEntry* %180, %struct.IndexEntry** %13, align 8
  br label %93, !llvm.loop !7

181:                                              ; preds = %93
  br label %182

182:                                              ; preds = %181, %88
  store i64 0, i64* %6, align 8
  br label %183

183:                                              ; preds = %182, %52, %46
  %184 = load i64, i64* %6, align 8
  ret i64 %184
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local signext i8 @validIndexKey(%struct.IndexKey* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

declare dso_local signext i8 @validAttributes(%struct.DataAttribute* noundef) #2

declare dso_local signext i8 @consistentKey(%struct.IndexKey* noundef, %struct.IndexKey* noundef) #2

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
