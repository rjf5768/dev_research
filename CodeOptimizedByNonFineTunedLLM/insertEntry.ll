; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/insertEntry.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/insertEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

@insertEntry.name = internal global [12 x i8] c"insertEntry\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/insertEntry.c\00", align 1
@__PRETTY_FUNCTION__.insertEntry = private unnamed_addr constant [68 x i8] c"Int insertEntry(IndexNode *, IndexEntry *, Int, Int, IndexEntry **)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"level >= LEAF\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"fan >= MINIMUM_FAN_SIZE\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"node->entries != NULL\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"can't choose entry on node\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"can't split LEAF node\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"can't split non-LEAF node\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @insertEntry(%struct.IndexNode* noundef %0, %struct.IndexEntry* noundef %1, i64 noundef %2, i64 noundef %3, %struct.IndexEntry** noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.IndexNode*, align 8
  %8 = alloca %struct.IndexEntry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.IndexEntry**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.IndexEntry*, align 8
  %14 = alloca %struct.IndexEntry*, align 8
  %15 = alloca %struct.IndexEntry*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.IndexEntry*, align 8
  %18 = alloca %struct.IndexEntry*, align 8
  %19 = alloca i64, align 8
  store %struct.IndexNode* %0, %struct.IndexNode** %7, align 8
  store %struct.IndexEntry* %1, %struct.IndexEntry** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.IndexEntry** %4, %struct.IndexEntry*** %11, align 8
  %20 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %21 = icmp ne %struct.IndexNode* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %24

23:                                               ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.insertEntry, i64 0, i64 0)) #3
  unreachable

24:                                               ; preds = %22
  %25 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %26 = icmp ne %struct.IndexEntry* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %29

28:                                               ; preds = %24
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.insertEntry, i64 0, i64 0)) #3
  unreachable

29:                                               ; preds = %27
  %30 = load i64, i64* %9, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %34

33:                                               ; preds = %29
  call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.insertEntry, i64 0, i64 0)) #3
  unreachable

34:                                               ; preds = %32
  %35 = load i64, i64* %10, align 8
  %36 = icmp sge i64 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %39

38:                                               ; preds = %34
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.insertEntry, i64 0, i64 0)) #3
  unreachable

39:                                               ; preds = %37
  %40 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %41 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %140

45:                                               ; preds = %39
  %46 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %47 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %46, i32 0, i32 1
  %48 = load %struct.IndexEntry*, %struct.IndexEntry** %47, align 8
  %49 = icmp ne %struct.IndexEntry* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %52

51:                                               ; preds = %45
  call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.insertEntry, i64 0, i64 0)) #3
  unreachable

52:                                               ; preds = %50
  %53 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %54 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %55 = call %struct.IndexEntry* @chooseEntry(%struct.IndexNode* noundef %53, %struct.IndexEntry* noundef %54)
  store %struct.IndexEntry* %55, %struct.IndexEntry** %13, align 8
  %56 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %57 = icmp eq %struct.IndexEntry* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  call void @errorMessage(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @insertEntry.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 1, i64* %6, align 8
  br label %190

59:                                               ; preds = %52
  %60 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %61 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %60, i32 0, i32 0
  %62 = bitcast %union.anon* %61 to %struct.IndexNode**
  %63 = load %struct.IndexNode*, %struct.IndexNode** %62, align 8
  %64 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  %68 = call i64 @insertEntry(%struct.IndexNode* noundef %63, %struct.IndexEntry* noundef %64, i64 noundef %65, i64 noundef %66, %struct.IndexEntry** noundef %67)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %127

71:                                               ; preds = %59
  %72 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %73 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %72, i32 0, i32 0
  %74 = bitcast %union.anon* %73 to %struct.IndexNode**
  %75 = load %struct.IndexNode*, %struct.IndexNode** %74, align 8
  %76 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %75, i32 0, i32 1
  %77 = load %struct.IndexEntry*, %struct.IndexEntry** %76, align 8
  %78 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %79 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %78, i32 0, i32 1
  call void @keysUnion(%struct.IndexEntry* noundef %77, %struct.IndexKey* noundef %79)
  %80 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  %81 = load %struct.IndexEntry*, %struct.IndexEntry** %80, align 8
  %82 = icmp ne %struct.IndexEntry* %81, null
  br i1 %82, label %83, label %126

83:                                               ; preds = %71
  store %struct.IndexEntry* null, %struct.IndexEntry** %14, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %15, align 8
  store i64 0, i64* %16, align 8
  %84 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %85 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %84, i32 0, i32 1
  %86 = load %struct.IndexEntry*, %struct.IndexEntry** %85, align 8
  store %struct.IndexEntry* %86, %struct.IndexEntry** %15, align 8
  %87 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  store %struct.IndexEntry* %87, %struct.IndexEntry** %14, align 8
  br label %88

88:                                               ; preds = %91, %83
  %89 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  %90 = icmp ne %struct.IndexEntry* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i64, i64* %16, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %16, align 8
  %94 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  store %struct.IndexEntry* %94, %struct.IndexEntry** %14, align 8
  %95 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  %96 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %95, i32 0, i32 2
  %97 = load %struct.IndexEntry*, %struct.IndexEntry** %96, align 8
  store %struct.IndexEntry* %97, %struct.IndexEntry** %15, align 8
  br label %88, !llvm.loop !4

98:                                               ; preds = %88
  %99 = load i64, i64* %16, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  %104 = load %struct.IndexEntry*, %struct.IndexEntry** %103, align 8
  %105 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %106 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %105, i32 0, i32 2
  store %struct.IndexEntry* %104, %struct.IndexEntry** %106, align 8
  %107 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %107, align 8
  br label %125

108:                                              ; preds = %98
  %109 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %110 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  %111 = load %struct.IndexEntry*, %struct.IndexEntry** %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i64 @splitNode(%struct.IndexNode* noundef %109, %struct.IndexEntry* noundef %111, i64 noundef %112, %struct.IndexEntry** noundef %15)
  store i64 %113, i64* %12, align 8
  %114 = load i64, i64* %12, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  %118 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  store %struct.IndexEntry* %117, %struct.IndexEntry** %118, align 8
  br label %124

119:                                              ; preds = %108
  %120 = load i64, i64* %12, align 8
  %121 = icmp eq i64 %120, 1
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i64 2, i64* %6, align 8
  br label %190

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123, %116
  br label %125

125:                                              ; preds = %124, %102
  br label %126

126:                                              ; preds = %125, %71
  br label %139

127:                                              ; preds = %59
  %128 = load i64, i64* %12, align 8
  %129 = icmp eq i64 %128, 1
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  %131 = load i64, i64* %12, align 8
  %132 = icmp eq i64 %131, 2
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i64, i64* %12, align 8
  %135 = icmp eq i64 %134, 3
  br i1 %135, label %136, label %138

136:                                              ; preds = %133, %130, %127
  %137 = load i64, i64* %12, align 8
  store i64 %137, i64* %6, align 8
  br label %190

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %138, %126
  br label %189

140:                                              ; preds = %39
  store %struct.IndexEntry* null, %struct.IndexEntry** %17, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %18, align 8
  store i64 0, i64* %19, align 8
  %141 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %142 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %141, i32 0, i32 1
  %143 = load %struct.IndexEntry*, %struct.IndexEntry** %142, align 8
  store %struct.IndexEntry* %143, %struct.IndexEntry** %18, align 8
  %144 = load %struct.IndexEntry*, %struct.IndexEntry** %18, align 8
  store %struct.IndexEntry* %144, %struct.IndexEntry** %17, align 8
  br label %145

145:                                              ; preds = %148, %140
  %146 = load %struct.IndexEntry*, %struct.IndexEntry** %18, align 8
  %147 = icmp ne %struct.IndexEntry* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load i64, i64* %19, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %19, align 8
  %151 = load %struct.IndexEntry*, %struct.IndexEntry** %18, align 8
  store %struct.IndexEntry* %151, %struct.IndexEntry** %17, align 8
  %152 = load %struct.IndexEntry*, %struct.IndexEntry** %18, align 8
  %153 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %152, i32 0, i32 2
  %154 = load %struct.IndexEntry*, %struct.IndexEntry** %153, align 8
  store %struct.IndexEntry* %154, %struct.IndexEntry** %18, align 8
  br label %145, !llvm.loop !6

155:                                              ; preds = %145
  %156 = load i64, i64* %19, align 8
  %157 = load i64, i64* %10, align 8
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %155
  %160 = load %struct.IndexEntry*, %struct.IndexEntry** %17, align 8
  %161 = icmp eq %struct.IndexEntry* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %164 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %165 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %164, i32 0, i32 1
  store %struct.IndexEntry* %163, %struct.IndexEntry** %165, align 8
  br label %170

166:                                              ; preds = %159
  %167 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %168 = load %struct.IndexEntry*, %struct.IndexEntry** %17, align 8
  %169 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %168, i32 0, i32 2
  store %struct.IndexEntry* %167, %struct.IndexEntry** %169, align 8
  br label %170

170:                                              ; preds = %166, %162
  %171 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %171, align 8
  br label %188

172:                                              ; preds = %155
  %173 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %174 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %175 = load i64, i64* %10, align 8
  %176 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  %177 = call i64 @splitNode(%struct.IndexNode* noundef %173, %struct.IndexEntry* noundef %174, i64 noundef %175, %struct.IndexEntry** noundef %176)
  store i64 %177, i64* %12, align 8
  %178 = load i64, i64* %12, align 8
  %179 = icmp eq i64 %178, 1
  br i1 %179, label %180, label %187

180:                                              ; preds = %172
  %181 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %182 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  call void @errorMessage(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @insertEntry.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 3, i64* %6, align 8
  br label %190

186:                                              ; preds = %180
  call void @errorMessage(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @insertEntry.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 2, i64* %6, align 8
  br label %190

187:                                              ; preds = %172
  br label %188

188:                                              ; preds = %187, %170
  br label %189

189:                                              ; preds = %188, %139
  store i64 0, i64* %6, align 8
  br label %190

190:                                              ; preds = %189, %186, %185, %136, %122, %58
  %191 = load i64, i64* %6, align 8
  ret i64 %191
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local %struct.IndexEntry* @chooseEntry(%struct.IndexNode* noundef, %struct.IndexEntry* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

declare dso_local void @keysUnion(%struct.IndexEntry* noundef, %struct.IndexKey* noundef) #2

declare dso_local i64 @splitNode(%struct.IndexNode* noundef, %struct.IndexEntry* noundef, i64 noundef, %struct.IndexEntry** noundef) #2

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
