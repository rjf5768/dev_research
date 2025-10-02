; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getDeleteCommand.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getDeleteCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.DataAttribute = type { i64, %struct.DataObjectAttribute, %struct.DataAttribute* }
%struct.DataObjectAttribute = type { %union.anon }
%union.anon = type { i8* }

@getDeleteCommand.name = internal global [17 x i8] c"getDeleteCommand\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getDeleteCommand.c\00", align 1
@__PRETTY_FUNCTION__.getDeleteCommand = private unnamed_addr constant [59 x i8] c"Int getDeleteCommand(FILE *, IndexKey *, DataAttribute **)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"searchKey\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"code out-of-range\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"improper format - early EOI\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"low-level I/O error\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"allocation of non-key attribute\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getDeleteCommand(%struct._IO_FILE* noundef %0, %struct.IndexKey* noundef %1, %struct.DataAttribute** noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.IndexKey*, align 8
  %7 = alloca %struct.DataAttribute**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.DataAttribute*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %6, align 8
  store %struct.DataAttribute** %2, %struct.DataAttribute*** %7, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %14 = icmp ne %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %17

16:                                               ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.getDeleteCommand, i64 0, i64 0)) #4
  unreachable

17:                                               ; preds = %15
  %18 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %19 = icmp ne %struct.IndexKey* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %22

21:                                               ; preds = %17
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.getDeleteCommand, i64 0, i64 0)) #4
  unreachable

22:                                               ; preds = %20
  %23 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %24 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %24, i32 0, i32 0
  store float 0xC7EFFFFFE0000000, float* %25, align 4
  %26 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %27 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %27, i32 0, i32 1
  store float 0xC7EFFFFFE0000000, float* %28, align 4
  %29 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %30 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %30, i32 0, i32 2
  store float 0xC7EFFFFFE0000000, float* %31, align 4
  %32 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %33 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %33, i32 0, i32 3
  store float 0xC7EFFFFFE0000000, float* %34, align 4
  %35 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %36 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %36, i32 0, i32 0
  store float 0x47EFFFFFE0000000, float* %37, align 4
  %38 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %39 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %39, i32 0, i32 1
  store float 0x47EFFFFFE0000000, float* %40, align 4
  %41 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %42 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %42, i32 0, i32 2
  store float 0x47EFFFFFE0000000, float* %43, align 4
  %44 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %45 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %45, i32 0, i32 3
  store float 0x47EFFFFFE0000000, float* %46, align 4
  %47 = load %struct.DataAttribute**, %struct.DataAttribute*** %7, align 8
  store %struct.DataAttribute* null, %struct.DataAttribute** %47, align 8
  store i64 0, i64* %9, align 8
  br label %48

48:                                               ; preds = %208, %22
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 1
  br i1 %50, label %51, label %209

51:                                               ; preds = %48
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %53 = call i64 @getInt(%struct._IO_FILE* noundef %52, i64* noundef %8)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %193

56:                                               ; preds = %51
  %57 = load i64, i64* %8, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %8, align 8
  %61 = icmp sgt i64 %60, 50
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %56
  call void @errorMessage(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 3, i64* %4, align 8
  br label %210

63:                                               ; preds = %59
  %64 = load i64, i64* %8, align 8
  %65 = icmp slt i64 %64, 8
  br i1 %65, label %66, label %154

66:                                               ; preds = %63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %68 = call i64 @getKeyAttribute(%struct._IO_FILE* noundef %67, float* noundef %10)
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %143

71:                                               ; preds = %66
  %72 = load i64, i64* %8, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load float, float* %10, align 4
  %76 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %77 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %77, i32 0, i32 0
  store float %75, float* %78, align 4
  br label %142

79:                                               ; preds = %71
  %80 = load i64, i64* %8, align 8
  %81 = icmp eq i64 %80, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load float, float* %10, align 4
  %84 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %85 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %85, i32 0, i32 1
  store float %83, float* %86, align 4
  br label %141

87:                                               ; preds = %79
  %88 = load i64, i64* %8, align 8
  %89 = icmp eq i64 %88, 2
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load float, float* %10, align 4
  %92 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %93 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %93, i32 0, i32 2
  store float %91, float* %94, align 4
  br label %140

95:                                               ; preds = %87
  %96 = load i64, i64* %8, align 8
  %97 = icmp eq i64 %96, 3
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load float, float* %10, align 4
  %100 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %101 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %101, i32 0, i32 3
  store float %99, float* %102, align 4
  br label %139

103:                                              ; preds = %95
  %104 = load i64, i64* %8, align 8
  %105 = icmp eq i64 %104, 4
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load float, float* %10, align 4
  %108 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %109 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %109, i32 0, i32 0
  store float %107, float* %110, align 4
  br label %138

111:                                              ; preds = %103
  %112 = load i64, i64* %8, align 8
  %113 = icmp eq i64 %112, 5
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load float, float* %10, align 4
  %116 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %117 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %117, i32 0, i32 1
  store float %115, float* %118, align 4
  br label %137

119:                                              ; preds = %111
  %120 = load i64, i64* %8, align 8
  %121 = icmp eq i64 %120, 6
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load float, float* %10, align 4
  %124 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %125 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %125, i32 0, i32 2
  store float %123, float* %126, align 4
  br label %136

127:                                              ; preds = %119
  %128 = load i64, i64* %8, align 8
  %129 = icmp eq i64 %128, 7
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load float, float* %10, align 4
  %132 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %133 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %133, i32 0, i32 3
  store float %131, float* %134, align 4
  br label %135

135:                                              ; preds = %130, %127
  br label %136

136:                                              ; preds = %135, %122
  br label %137

137:                                              ; preds = %136, %114
  br label %138

138:                                              ; preds = %137, %106
  br label %139

139:                                              ; preds = %138, %98
  br label %140

140:                                              ; preds = %139, %90
  br label %141

141:                                              ; preds = %140, %82
  br label %142

142:                                              ; preds = %141, %74
  br label %153

143:                                              ; preds = %66
  %144 = load i64, i64* %9, align 8
  %145 = icmp eq i64 %144, 1
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  call void @errorMessage(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 2, i64* %4, align 8
  br label %210

147:                                              ; preds = %143
  %148 = load i64, i64* %9, align 8
  %149 = icmp eq i64 %148, 2
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  call void @errorMessage(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 1, i64* %4, align 8
  br label %210

151:                                              ; preds = %147
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152, %142
  br label %191

154:                                              ; preds = %63
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %156 = call i64 @getNonKeyAttribute(%struct._IO_FILE* noundef %155, i8** noundef %11)
  store i64 %156, i64* %9, align 8
  %157 = load i64, i64* %9, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %180

159:                                              ; preds = %154
  %160 = call noalias i8* @malloc(i64 noundef 24) #5
  %161 = bitcast i8* %160 to %struct.DataAttribute*
  store %struct.DataAttribute* %161, %struct.DataAttribute** %12, align 8
  %162 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %163 = icmp eq %struct.DataAttribute* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 4, i64* %4, align 8
  br label %210

165:                                              ; preds = %159
  %166 = load i64, i64* %8, align 8
  %167 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %168 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = load i8*, i8** %11, align 8
  %170 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %171 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %171, i32 0, i32 0
  %173 = bitcast %union.anon* %172 to i8**
  store i8* %169, i8** %173, align 8
  %174 = load %struct.DataAttribute**, %struct.DataAttribute*** %7, align 8
  %175 = load %struct.DataAttribute*, %struct.DataAttribute** %174, align 8
  %176 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %177 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %176, i32 0, i32 2
  store %struct.DataAttribute* %175, %struct.DataAttribute** %177, align 8
  %178 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %179 = load %struct.DataAttribute**, %struct.DataAttribute*** %7, align 8
  store %struct.DataAttribute* %178, %struct.DataAttribute** %179, align 8
  br label %190

180:                                              ; preds = %154
  %181 = load i64, i64* %9, align 8
  %182 = icmp eq i64 %181, 2
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  call void @errorMessage(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 2, i64* %4, align 8
  br label %210

184:                                              ; preds = %180
  %185 = load i64, i64* %9, align 8
  %186 = icmp eq i64 %185, 1
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  call void @errorMessage(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 4, i64* %4, align 8
  br label %210

188:                                              ; preds = %184
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189, %165
  br label %191

191:                                              ; preds = %190, %153
  br label %192

192:                                              ; preds = %191
  br label %208

193:                                              ; preds = %51
  %194 = load i64, i64* %9, align 8
  %195 = icmp eq i64 %194, 1
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  br label %207

197:                                              ; preds = %193
  %198 = load i64, i64* %9, align 8
  %199 = icmp eq i64 %198, 2
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  store i64 3, i64* %4, align 8
  br label %210

201:                                              ; preds = %197
  %202 = load i64, i64* %9, align 8
  %203 = icmp eq i64 %202, 3
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store i64 3, i64* %4, align 8
  br label %210

205:                                              ; preds = %201
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206, %196
  br label %208

208:                                              ; preds = %207, %192
  br label %48, !llvm.loop !4

209:                                              ; preds = %48
  store i64 0, i64* %4, align 8
  br label %210

210:                                              ; preds = %209, %204, %200, %187, %183, %164, %150, %146, %62
  %211 = load i64, i64* %4, align 8
  ret i64 %211
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @getInt(%struct._IO_FILE* noundef, i64* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

declare dso_local i64 @getKeyAttribute(%struct._IO_FILE* noundef, float* noundef) #2

declare dso_local i64 @getNonKeyAttribute(%struct._IO_FILE* noundef, i8** noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
