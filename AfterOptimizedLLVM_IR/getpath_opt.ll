; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/getpath.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/getpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@getpath.pathlength = internal global i64 0, align 8
@getpath.file = internal global %struct._IO_FILE* null, align 8
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [27 x i8] c"getpath: looking for '%s'\0A\00", align 1
@pathfile = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"can't access %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\09\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getpath(i8* noundef %0, i8* noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* @debug, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* noundef %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i64, i64* @getpath.pathlength, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load i8*, i8** @pathfile, align 8
  %26 = call noalias %struct._IO_FILE* @fopen(i8* noundef %25, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %26, %struct._IO_FILE** @getpath.file, align 8
  %27 = icmp eq %struct._IO_FILE* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** @pathfile, align 8
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* noundef %29)
  store i64 -1, i64* @getpath.pathlength, align 8
  br label %36

31:                                               ; preds = %24
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %33 = call i32 @fseek(%struct._IO_FILE* noundef %32, i64 noundef 0, i32 noundef 2)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %35 = call i64 @ftell(%struct._IO_FILE* noundef %34)
  store i64 %35, i64* @getpath.pathlength, align 8
  br label %36

36:                                               ; preds = %31, %28
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i64, i64* @getpath.pathlength, align 8
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 72, i32* %4, align 4
  br label %211

41:                                               ; preds = %37
  store i64 0, i64* %11, align 8
  %42 = load i64, i64* @getpath.pathlength, align 8
  store i64 %42, i64* %10, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i8* @strcpy(i8* noundef %43, i8* noundef %44) #4
  %46 = load i8*, i8** %6, align 8
  %47 = call i8* @strcat(i8* noundef %46, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %48

48:                                               ; preds = %152, %41
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add nsw i64 %49, %50
  %52 = add nsw i64 %51, 1
  %53 = sdiv i64 %52, 2
  store i64 %53, i64* %9, align 8
  store i64 %53, i64* %8, align 8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @fseek(%struct._IO_FILE* noundef %54, i64 noundef %55, i32 noundef 0)
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %69, %59
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %62 = call i32 @getc(%struct._IO_FILE* noundef %61)
  store i32 %62, i32* %13, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 10
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi i1 [ false, %60 ], [ %66, %64 ]
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  br label %60, !llvm.loop !4

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70, %48
  %72 = load i32, i32* %13, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 68, i32* %4, align 4
  br label %211

75:                                               ; preds = %71
  store i32 0, i32* %14, align 4
  %76 = load i8*, i8** %6, align 8
  store i8* %76, i8** %12, align 8
  br label %77

77:                                               ; preds = %133, %75
  %78 = load i32, i32* %14, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %136

80:                                               ; preds = %77
  %81 = load i8*, i8** %12, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %153

86:                                               ; preds = %80
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %88 = call i32 @getc(%struct._IO_FILE* noundef %87)
  store i32 %88, i32* %13, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 68, i32* %4, align 4
  br label %211

91:                                               ; preds = %86
  %92 = call i16** @__ctype_b_loc() #5
  %93 = load i16*, i16** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i16, i16* %93, i64 %95
  %97 = load i16, i16* %96, align 2
  %98 = zext i16 %97 to i32
  %99 = and i32 %98, 256
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  %102 = load i32, i32* %13, align 4
  %103 = sub nsw i32 %102, 65
  %104 = add nsw i32 %103, 97
  br label %107

105:                                              ; preds = %91
  %106 = load i32, i32* %13, align 4
  br label %107

107:                                              ; preds = %105, %101
  %108 = phi i32 [ %104, %101 ], [ %106, %105 ]
  %109 = call i16** @__ctype_b_loc() #5
  %110 = load i16*, i16** %109, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i16, i16* %110, i64 %114
  %116 = load i16, i16* %115, align 2
  %117 = zext i16 %116 to i32
  %118 = and i32 %117, 256
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %107
  %121 = load i8*, i8** %12, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = sub nsw i32 %123, 65
  %125 = add nsw i32 %124, 97
  br label %130

126:                                              ; preds = %107
  %127 = load i8*, i8** %12, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  br label %130

130:                                              ; preds = %126, %120
  %131 = phi i32 [ %125, %120 ], [ %129, %126 ]
  %132 = sub nsw i32 %108, %131
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %130
  %134 = load i8*, i8** %12, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %12, align 8
  br label %77, !llvm.loop !6

136:                                              ; preds = %77
  %137 = load i64, i64* %11, align 8
  %138 = load i64, i64* %9, align 8
  %139 = icmp sge i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i32 68, i32* %4, align 4
  br label %211

141:                                              ; preds = %136
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, -1
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, i32* %14, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i64, i64* %9, align 8
  store i64 %148, i64* %11, align 8
  br label %152

149:                                              ; preds = %144, %141
  %150 = load i64, i64* %9, align 8
  %151 = sub nsw i64 %150, 1
  store i64 %151, i64* %10, align 8
  br label %152

152:                                              ; preds = %149, %147
  br label %48

153:                                              ; preds = %85
  br label %154

154:                                              ; preds = %166, %153
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %156 = call i32 @getc(%struct._IO_FILE* noundef %155)
  store i32 %156, i32* %13, align 4
  %157 = icmp ne i32 %156, -1
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 9
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 10
  br label %164

164:                                              ; preds = %161, %158, %154
  %165 = phi i1 [ false, %158 ], [ false, %154 ], [ %163, %161 ]
  br i1 %165, label %166, label %171

166:                                              ; preds = %164
  %167 = load i32, i32* %13, align 4
  %168 = trunc i32 %167 to i8
  %169 = load i8*, i8** %6, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %6, align 8
  store i8 %168, i8* %169, align 1
  br label %154, !llvm.loop !7

171:                                              ; preds = %164
  %172 = load i8*, i8** %6, align 8
  store i8 0, i8* %172, align 1
  %173 = load i32, i32* %13, align 4
  %174 = icmp eq i32 %173, 9
  br i1 %174, label %175, label %210

175:                                              ; preds = %171
  store i32 -1, i32* %15, align 4
  br label %176

176:                                              ; preds = %196, %175
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %178 = call i32 @getc(%struct._IO_FILE* noundef %177)
  store i32 %178, i32* %13, align 4
  %179 = icmp ne i32 %178, -1
  br i1 %179, label %180, label %190

180:                                              ; preds = %176
  %181 = call i16** @__ctype_b_loc() #5
  %182 = load i16*, i16** %181, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i16, i16* %182, i64 %184
  %186 = load i16, i16* %185, align 2
  %187 = zext i16 %186 to i32
  %188 = and i32 %187, 2048
  %189 = icmp ne i32 %188, 0
  br label %190

190:                                              ; preds = %180, %176
  %191 = phi i1 [ false, %176 ], [ %189, %180 ]
  br i1 %191, label %192, label %203

192:                                              ; preds = %190
  %193 = load i32, i32* %15, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  store i32 0, i32* %15, align 4
  br label %196

196:                                              ; preds = %195, %192
  %197 = load i32, i32* %15, align 4
  %198 = mul nsw i32 %197, 10
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %13, align 4
  %200 = sub nsw i32 %199, 48
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %15, align 4
  br label %176, !llvm.loop !8

203:                                              ; preds = %190
  %204 = load i32, i32* %15, align 4
  %205 = icmp sge i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32, i32* %15, align 4
  %208 = load i32*, i32** %7, align 8
  store i32 %207, i32* %208, align 4
  br label %209

209:                                              ; preds = %206, %203
  br label %210

210:                                              ; preds = %209, %171
  store i32 0, i32* %4, align 4
  br label %211

211:                                              ; preds = %210, %140, %90, %74, %40
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #2

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }

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
