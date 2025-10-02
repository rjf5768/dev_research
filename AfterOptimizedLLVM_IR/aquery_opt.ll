; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/aquery.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/aquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }
%struct.vdir = type { i32, i32, i64, %struct.acl*, %struct.pfile*, %struct.vlink*, %struct.vlink*, %struct.vlink*, %struct.vdir*, %struct.vdir* }

@.str = private unnamed_addr constant [26 x i8] c"ARCHIE/MATCH(%d,%d,%c)/%s\00", align 1
@perrno = external dso_local global i32, align 4
@p_err_string = external dso_local global [0 x i8], align 1
@pwarn = external dso_local global i32, align 4
@p_warn_string = external dso_local global [0 x i8], align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"LAST-MODIFIED\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DIRECTORY\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ARCHIE/HOST\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"EXTERNAL(AFTP,DIRECTORY)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.vlink* @archie_query(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, i32 (...)* noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.vlink*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32 (...)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [1024 x i8], align 16
  %17 = alloca %struct.vlink*, align 8
  %18 = alloca %struct.vdir, align 8
  %19 = alloca %struct.vdir*, align 8
  %20 = alloca %struct.vlink*, align 8
  %21 = alloca %struct.vlink*, align 8
  %22 = alloca %struct.vlink*, align 8
  %23 = alloca %struct.vlink*, align 8
  %24 = alloca %struct.vlink*, align 8
  %25 = alloca %struct.vlink*, align 8
  %26 = alloca %struct.vlink*, align 8
  %27 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8 %4, i8* %13, align 1
  store i32 (...)* %5, i32 (...)** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.vdir* %18, %struct.vdir** %19, align 8
  %28 = load i32 (...)*, i32 (...)** %14, align 8
  %29 = icmp eq i32 (...)* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  store i32 (...)* bitcast (i32 (%struct.vlink*, %struct.vlink*)* @defcmplink to i32 (...)*), i32 (...)** %14, align 8
  br label %31

31:                                               ; preds = %30, %7
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i8, i8* %13, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %32, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %33, i32 noundef %34, i32 noundef %36, i8* noundef %37) #4
  store i32 0, i32* @perrno, align 4
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i64 0, i64 0), align 1
  store i32 0, i32* @pwarn, align 4
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i64 0, i64 0), align 1
  %39 = load %struct.vdir*, %struct.vdir** %19, align 8
  %40 = bitcast %struct.vdir* %39 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %40, i8 0, i64 72, i1 false)
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %43 = load %struct.vdir*, %struct.vdir** %19, align 8
  %44 = call i32 @get_vdir(i8* noundef %41, i8* noundef %42, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.vdir* noundef %43, i64 noundef 96, %struct.vlink* noundef null, i8* noundef null)
  store i32 %44, i32* %27, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* %27, align 4
  store i32 %47, i32* @perrno, align 4
  store %struct.vlink* null, %struct.vlink** %8, align 8
  br label %236

48:                                               ; preds = %31
  %49 = load %struct.vdir*, %struct.vdir** %19, align 8
  %50 = getelementptr inbounds %struct.vdir, %struct.vdir* %49, i32 0, i32 5
  %51 = load %struct.vlink*, %struct.vlink** %50, align 8
  store %struct.vlink* %51, %struct.vlink** %17, align 8
  %52 = load %struct.vdir*, %struct.vdir** %19, align 8
  %53 = getelementptr inbounds %struct.vdir, %struct.vdir* %52, i32 0, i32 5
  store %struct.vlink* null, %struct.vlink** %53, align 8
  %54 = load %struct.vlink*, %struct.vlink** %17, align 8
  store %struct.vlink* %54, %struct.vlink** %20, align 8
  br label %55

55:                                               ; preds = %100, %48
  %56 = load %struct.vlink*, %struct.vlink** %20, align 8
  %57 = icmp ne %struct.vlink* %56, null
  br i1 %57, label %58, label %102

58:                                               ; preds = %55
  %59 = load %struct.vlink*, %struct.vlink** %20, align 8
  %60 = getelementptr inbounds %struct.vlink, %struct.vlink* %59, i32 0, i32 20
  %61 = load %struct.vlink*, %struct.vlink** %60, align 8
  store %struct.vlink* %61, %struct.vlink** %24, align 8
  %62 = load %struct.vlink*, %struct.vlink** %20, align 8
  %63 = getelementptr inbounds %struct.vlink, %struct.vlink* %62, i32 0, i32 6
  %64 = load %struct.vlink*, %struct.vlink** %63, align 8
  %65 = icmp ne %struct.vlink* %64, null
  br i1 %65, label %66, label %99

66:                                               ; preds = %58
  %67 = load %struct.vlink*, %struct.vlink** %20, align 8
  %68 = getelementptr inbounds %struct.vlink, %struct.vlink* %67, i32 0, i32 6
  %69 = load %struct.vlink*, %struct.vlink** %68, align 8
  %70 = load %struct.vlink*, %struct.vlink** %20, align 8
  %71 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i32 0, i32 20
  store %struct.vlink* %69, %struct.vlink** %71, align 8
  %72 = load %struct.vlink*, %struct.vlink** %20, align 8
  %73 = load %struct.vlink*, %struct.vlink** %20, align 8
  %74 = getelementptr inbounds %struct.vlink, %struct.vlink* %73, i32 0, i32 20
  %75 = load %struct.vlink*, %struct.vlink** %74, align 8
  %76 = getelementptr inbounds %struct.vlink, %struct.vlink* %75, i32 0, i32 19
  store %struct.vlink* %72, %struct.vlink** %76, align 8
  %77 = load %struct.vlink*, %struct.vlink** %20, align 8
  %78 = getelementptr inbounds %struct.vlink, %struct.vlink* %77, i32 0, i32 6
  %79 = load %struct.vlink*, %struct.vlink** %78, align 8
  store %struct.vlink* %79, %struct.vlink** %22, align 8
  br label %80

80:                                               ; preds = %86, %66
  %81 = load %struct.vlink*, %struct.vlink** %22, align 8
  %82 = getelementptr inbounds %struct.vlink, %struct.vlink* %81, i32 0, i32 20
  %83 = load %struct.vlink*, %struct.vlink** %82, align 8
  %84 = icmp ne %struct.vlink* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.vlink*, %struct.vlink** %22, align 8
  %88 = getelementptr inbounds %struct.vlink, %struct.vlink* %87, i32 0, i32 20
  %89 = load %struct.vlink*, %struct.vlink** %88, align 8
  store %struct.vlink* %89, %struct.vlink** %22, align 8
  br label %80, !llvm.loop !4

90:                                               ; preds = %80
  %91 = load %struct.vlink*, %struct.vlink** %24, align 8
  %92 = load %struct.vlink*, %struct.vlink** %22, align 8
  %93 = getelementptr inbounds %struct.vlink, %struct.vlink* %92, i32 0, i32 20
  store %struct.vlink* %91, %struct.vlink** %93, align 8
  %94 = load %struct.vlink*, %struct.vlink** %22, align 8
  %95 = load %struct.vlink*, %struct.vlink** %24, align 8
  %96 = getelementptr inbounds %struct.vlink, %struct.vlink* %95, i32 0, i32 19
  store %struct.vlink* %94, %struct.vlink** %96, align 8
  %97 = load %struct.vlink*, %struct.vlink** %20, align 8
  %98 = getelementptr inbounds %struct.vlink, %struct.vlink* %97, i32 0, i32 6
  store %struct.vlink* null, %struct.vlink** %98, align 8
  br label %99

99:                                               ; preds = %90, %58
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.vlink*, %struct.vlink** %24, align 8
  store %struct.vlink* %101, %struct.vlink** %20, align 8
  br label %55, !llvm.loop !6

102:                                              ; preds = %55
  %103 = load i32, i32* %15, align 4
  %104 = and i32 %103, 2
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %102
  %107 = load %struct.vlink*, %struct.vlink** %17, align 8
  store %struct.vlink* %107, %struct.vlink** %20, align 8
  br label %108

108:                                              ; preds = %113, %106
  %109 = load %struct.vlink*, %struct.vlink** %20, align 8
  %110 = icmp ne %struct.vlink* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load %struct.vlink*, %struct.vlink** %20, align 8
  call void @translateArchieResponse(%struct.vlink* noundef %112)
  br label %113

113:                                              ; preds = %111
  %114 = load %struct.vlink*, %struct.vlink** %20, align 8
  %115 = getelementptr inbounds %struct.vlink, %struct.vlink* %114, i32 0, i32 20
  %116 = load %struct.vlink*, %struct.vlink** %115, align 8
  store %struct.vlink* %116, %struct.vlink** %20, align 8
  br label %108, !llvm.loop !7

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117, %102
  %119 = load i32, i32* %15, align 4
  %120 = and i32 %119, 1
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  store i32 0, i32* @perrno, align 4
  %123 = load %struct.vlink*, %struct.vlink** %17, align 8
  store %struct.vlink* %123, %struct.vlink** %8, align 8
  br label %236

124:                                              ; preds = %118
  %125 = load %struct.vlink*, %struct.vlink** %17, align 8
  store %struct.vlink* %125, %struct.vlink** %20, align 8
  br label %126

126:                                              ; preds = %232, %124
  %127 = load %struct.vlink*, %struct.vlink** %20, align 8
  %128 = icmp ne %struct.vlink* %127, null
  br i1 %128, label %129, label %234

129:                                              ; preds = %126
  %130 = load %struct.vlink*, %struct.vlink** %20, align 8
  %131 = getelementptr inbounds %struct.vlink, %struct.vlink* %130, i32 0, i32 20
  %132 = load %struct.vlink*, %struct.vlink** %131, align 8
  store %struct.vlink* %132, %struct.vlink** %24, align 8
  %133 = load %struct.vlink*, %struct.vlink** %20, align 8
  store %struct.vlink* %133, %struct.vlink** %23, align 8
  %134 = load %struct.vlink*, %struct.vlink** %20, align 8
  %135 = getelementptr inbounds %struct.vlink, %struct.vlink* %134, i32 0, i32 20
  %136 = load %struct.vlink*, %struct.vlink** %135, align 8
  store %struct.vlink* %136, %struct.vlink** %21, align 8
  br label %137

137:                                              ; preds = %150, %129
  %138 = load %struct.vlink*, %struct.vlink** %21, align 8
  %139 = icmp ne %struct.vlink* %138, null
  br i1 %139, label %140, label %154

140:                                              ; preds = %137
  %141 = load i32 (...)*, i32 (...)** %14, align 8
  %142 = load %struct.vlink*, %struct.vlink** %21, align 8
  %143 = load %struct.vlink*, %struct.vlink** %23, align 8
  %144 = bitcast i32 (...)* %141 to i32 (%struct.vlink*, %struct.vlink*, ...)*
  %145 = call i32 (%struct.vlink*, %struct.vlink*, ...) %144(%struct.vlink* noundef %142, %struct.vlink* noundef %143)
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = load %struct.vlink*, %struct.vlink** %21, align 8
  store %struct.vlink* %148, %struct.vlink** %23, align 8
  br label %149

149:                                              ; preds = %147, %140
  br label %150

150:                                              ; preds = %149
  %151 = load %struct.vlink*, %struct.vlink** %21, align 8
  %152 = getelementptr inbounds %struct.vlink, %struct.vlink* %151, i32 0, i32 20
  %153 = load %struct.vlink*, %struct.vlink** %152, align 8
  store %struct.vlink* %153, %struct.vlink** %21, align 8
  br label %137, !llvm.loop !8

154:                                              ; preds = %137
  %155 = load %struct.vlink*, %struct.vlink** %20, align 8
  %156 = load %struct.vlink*, %struct.vlink** %23, align 8
  %157 = icmp ne %struct.vlink* %155, %156
  br i1 %157, label %158, label %231

158:                                              ; preds = %154
  %159 = load %struct.vlink*, %struct.vlink** %20, align 8
  %160 = getelementptr inbounds %struct.vlink, %struct.vlink* %159, i32 0, i32 20
  %161 = load %struct.vlink*, %struct.vlink** %160, align 8
  store %struct.vlink* %161, %struct.vlink** %25, align 8
  %162 = load %struct.vlink*, %struct.vlink** %20, align 8
  %163 = getelementptr inbounds %struct.vlink, %struct.vlink* %162, i32 0, i32 19
  %164 = load %struct.vlink*, %struct.vlink** %163, align 8
  store %struct.vlink* %164, %struct.vlink** %26, align 8
  %165 = load %struct.vlink*, %struct.vlink** %23, align 8
  %166 = getelementptr inbounds %struct.vlink, %struct.vlink* %165, i32 0, i32 20
  %167 = load %struct.vlink*, %struct.vlink** %166, align 8
  %168 = icmp ne %struct.vlink* %167, null
  br i1 %168, label %169, label %175

169:                                              ; preds = %158
  %170 = load %struct.vlink*, %struct.vlink** %20, align 8
  %171 = load %struct.vlink*, %struct.vlink** %23, align 8
  %172 = getelementptr inbounds %struct.vlink, %struct.vlink* %171, i32 0, i32 20
  %173 = load %struct.vlink*, %struct.vlink** %172, align 8
  %174 = getelementptr inbounds %struct.vlink, %struct.vlink* %173, i32 0, i32 19
  store %struct.vlink* %170, %struct.vlink** %174, align 8
  br label %175

175:                                              ; preds = %169, %158
  %176 = load %struct.vlink*, %struct.vlink** %23, align 8
  %177 = getelementptr inbounds %struct.vlink, %struct.vlink* %176, i32 0, i32 20
  %178 = load %struct.vlink*, %struct.vlink** %177, align 8
  %179 = load %struct.vlink*, %struct.vlink** %20, align 8
  %180 = getelementptr inbounds %struct.vlink, %struct.vlink* %179, i32 0, i32 20
  store %struct.vlink* %178, %struct.vlink** %180, align 8
  %181 = load %struct.vlink*, %struct.vlink** %24, align 8
  %182 = load %struct.vlink*, %struct.vlink** %23, align 8
  %183 = icmp eq %struct.vlink* %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %175
  %185 = load %struct.vlink*, %struct.vlink** %23, align 8
  %186 = load %struct.vlink*, %struct.vlink** %20, align 8
  %187 = getelementptr inbounds %struct.vlink, %struct.vlink* %186, i32 0, i32 19
  store %struct.vlink* %185, %struct.vlink** %187, align 8
  br label %199

188:                                              ; preds = %175
  %189 = load %struct.vlink*, %struct.vlink** %20, align 8
  %190 = load %struct.vlink*, %struct.vlink** %23, align 8
  %191 = getelementptr inbounds %struct.vlink, %struct.vlink* %190, i32 0, i32 19
  %192 = load %struct.vlink*, %struct.vlink** %191, align 8
  %193 = getelementptr inbounds %struct.vlink, %struct.vlink* %192, i32 0, i32 20
  store %struct.vlink* %189, %struct.vlink** %193, align 8
  %194 = load %struct.vlink*, %struct.vlink** %23, align 8
  %195 = getelementptr inbounds %struct.vlink, %struct.vlink* %194, i32 0, i32 19
  %196 = load %struct.vlink*, %struct.vlink** %195, align 8
  %197 = load %struct.vlink*, %struct.vlink** %20, align 8
  %198 = getelementptr inbounds %struct.vlink, %struct.vlink* %197, i32 0, i32 19
  store %struct.vlink* %196, %struct.vlink** %198, align 8
  br label %199

199:                                              ; preds = %188, %184
  %200 = load %struct.vlink*, %struct.vlink** %24, align 8
  %201 = load %struct.vlink*, %struct.vlink** %23, align 8
  %202 = icmp eq %struct.vlink* %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = load %struct.vlink*, %struct.vlink** %20, align 8
  %205 = load %struct.vlink*, %struct.vlink** %23, align 8
  %206 = getelementptr inbounds %struct.vlink, %struct.vlink* %205, i32 0, i32 20
  store %struct.vlink* %204, %struct.vlink** %206, align 8
  br label %214

207:                                              ; preds = %199
  %208 = load %struct.vlink*, %struct.vlink** %23, align 8
  %209 = load %struct.vlink*, %struct.vlink** %25, align 8
  %210 = getelementptr inbounds %struct.vlink, %struct.vlink* %209, i32 0, i32 19
  store %struct.vlink* %208, %struct.vlink** %210, align 8
  %211 = load %struct.vlink*, %struct.vlink** %25, align 8
  %212 = load %struct.vlink*, %struct.vlink** %23, align 8
  %213 = getelementptr inbounds %struct.vlink, %struct.vlink* %212, i32 0, i32 20
  store %struct.vlink* %211, %struct.vlink** %213, align 8
  br label %214

214:                                              ; preds = %207, %203
  %215 = load %struct.vlink*, %struct.vlink** %26, align 8
  %216 = icmp ne %struct.vlink* %215, null
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load %struct.vlink*, %struct.vlink** %23, align 8
  %219 = load %struct.vlink*, %struct.vlink** %26, align 8
  %220 = getelementptr inbounds %struct.vlink, %struct.vlink* %219, i32 0, i32 20
  store %struct.vlink* %218, %struct.vlink** %220, align 8
  br label %221

221:                                              ; preds = %217, %214
  %222 = load %struct.vlink*, %struct.vlink** %26, align 8
  %223 = load %struct.vlink*, %struct.vlink** %23, align 8
  %224 = getelementptr inbounds %struct.vlink, %struct.vlink* %223, i32 0, i32 19
  store %struct.vlink* %222, %struct.vlink** %224, align 8
  %225 = load %struct.vlink*, %struct.vlink** %17, align 8
  %226 = load %struct.vlink*, %struct.vlink** %20, align 8
  %227 = icmp eq %struct.vlink* %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %221
  %229 = load %struct.vlink*, %struct.vlink** %23, align 8
  store %struct.vlink* %229, %struct.vlink** %17, align 8
  br label %230

230:                                              ; preds = %228, %221
  br label %231

231:                                              ; preds = %230, %154
  br label %232

232:                                              ; preds = %231
  %233 = load %struct.vlink*, %struct.vlink** %24, align 8
  store %struct.vlink* %233, %struct.vlink** %20, align 8
  br label %126, !llvm.loop !9

234:                                              ; preds = %126
  store i32 0, i32* @perrno, align 4
  %235 = load %struct.vlink*, %struct.vlink** %17, align 8
  store %struct.vlink* %235, %struct.vlink** %8, align 8
  br label %236

236:                                              ; preds = %234, %122, %46
  %237 = load %struct.vlink*, %struct.vlink** %8, align 8
  ret %struct.vlink* %237
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @get_vdir(i8* noundef, i8* noundef, i8* noundef, %struct.vdir* noundef, i64 noundef, %struct.vlink* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @defcmplink(%struct.vlink* noundef %0, %struct.vlink* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlink*, align 8
  %5 = alloca %struct.vlink*, align 8
  %6 = alloca i32, align 4
  store %struct.vlink* %0, %struct.vlink** %4, align 8
  store %struct.vlink* %1, %struct.vlink** %5, align 8
  %7 = load %struct.vlink*, %struct.vlink** %4, align 8
  %8 = getelementptr inbounds %struct.vlink, %struct.vlink* %7, i32 0, i32 8
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.vlink*, %struct.vlink** %5, align 8
  %11 = getelementptr inbounds %struct.vlink, %struct.vlink* %10, i32 0, i32 8
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @strcmp(i8* noundef %9, i8* noundef %12)
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.vlink*, %struct.vlink** %4, align 8
  %19 = getelementptr inbounds %struct.vlink, %struct.vlink* %18, i32 0, i32 10
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.vlink*, %struct.vlink** %5, align 8
  %22 = getelementptr inbounds %struct.vlink, %struct.vlink* %21, i32 0, i32 10
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strcmp(i8* noundef %20, i8* noundef %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %17, %15
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @invdatecmplink(%struct.vlink* noundef %0, %struct.vlink* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlink*, align 8
  %5 = alloca %struct.vlink*, align 8
  %6 = alloca %struct.pattrib*, align 8
  %7 = alloca %struct.pattrib*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.vlink* %0, %struct.vlink** %4, align 8
  store %struct.vlink* %1, %struct.vlink** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %8, align 8
  %11 = load %struct.vlink*, %struct.vlink** %4, align 8
  %12 = getelementptr inbounds %struct.vlink, %struct.vlink* %11, i32 0, i32 17
  %13 = load %struct.pattrib*, %struct.pattrib** %12, align 8
  store %struct.pattrib* %13, %struct.pattrib** %6, align 8
  br label %14

14:                                               ; preds = %29, %2
  %15 = load %struct.pattrib*, %struct.pattrib** %6, align 8
  %16 = icmp ne %struct.pattrib* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.pattrib*, %struct.pattrib** %6, align 8
  %19 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcmp(i8* noundef %20, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.pattrib*, %struct.pattrib** %6, align 8
  %25 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %24, i32 0, i32 3
  %26 = bitcast %union.avalue* %25 to i8**
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  br label %28

28:                                               ; preds = %23, %17
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.pattrib*, %struct.pattrib** %6, align 8
  %31 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %30, i32 0, i32 5
  %32 = load %struct.pattrib*, %struct.pattrib** %31, align 8
  store %struct.pattrib* %32, %struct.pattrib** %6, align 8
  br label %14, !llvm.loop !10

33:                                               ; preds = %14
  %34 = load %struct.vlink*, %struct.vlink** %5, align 8
  %35 = getelementptr inbounds %struct.vlink, %struct.vlink* %34, i32 0, i32 17
  %36 = load %struct.pattrib*, %struct.pattrib** %35, align 8
  store %struct.pattrib* %36, %struct.pattrib** %7, align 8
  br label %37

37:                                               ; preds = %52, %33
  %38 = load %struct.pattrib*, %struct.pattrib** %7, align 8
  %39 = icmp ne %struct.pattrib* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load %struct.pattrib*, %struct.pattrib** %7, align 8
  %42 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* noundef %43, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.pattrib*, %struct.pattrib** %7, align 8
  %48 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %47, i32 0, i32 3
  %49 = bitcast %union.avalue* %48 to i8**
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %9, align 8
  br label %51

51:                                               ; preds = %46, %40
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.pattrib*, %struct.pattrib** %7, align 8
  %54 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %53, i32 0, i32 5
  %55 = load %struct.pattrib*, %struct.pattrib** %54, align 8
  store %struct.pattrib* %55, %struct.pattrib** %7, align 8
  br label %37, !llvm.loop !11

56:                                               ; preds = %37
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load %struct.vlink*, %struct.vlink** %4, align 8
  %64 = load %struct.vlink*, %struct.vlink** %5, align 8
  %65 = call i32 @defcmplink(%struct.vlink* noundef %63, %struct.vlink* noundef %64)
  store i32 %65, i32* %3, align 4
  br label %85

66:                                               ; preds = %59, %56
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %85

70:                                               ; preds = %66
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %85

74:                                               ; preds = %70
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @strcmp(i8* noundef %75, i8* noundef %76)
  store i32 %77, i32* %10, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.vlink*, %struct.vlink** %4, align 8
  %81 = load %struct.vlink*, %struct.vlink** %5, align 8
  %82 = call i32 @defcmplink(%struct.vlink* noundef %80, %struct.vlink* noundef %81)
  store i32 %82, i32* %3, align 4
  br label %85

83:                                               ; preds = %74
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %79, %73, %69, %62
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

; Function Attrs: noinline nounwind uwtable
define internal void @translateArchieResponse(%struct.vlink* noundef %0) #0 {
  %2 = alloca %struct.vlink*, align 8
  %3 = alloca i8*, align 8
  store %struct.vlink* %0, %struct.vlink** %2, align 8
  %4 = load %struct.vlink*, %struct.vlink** %2, align 8
  %5 = getelementptr inbounds %struct.vlink, %struct.vlink* %4, i32 0, i32 4
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @strcmp(i8* noundef %6, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %1
  %10 = load %struct.vlink*, %struct.vlink** %2, align 8
  %11 = getelementptr inbounds %struct.vlink, %struct.vlink* %10, i32 0, i32 10
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @strncmp(i8* noundef %12, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 noundef 11)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %9
  %16 = load %struct.vlink*, %struct.vlink** %2, align 8
  %17 = getelementptr inbounds %struct.vlink, %struct.vlink* %16, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* noundef %18)
  %20 = load %struct.vlink*, %struct.vlink** %2, align 8
  %21 = getelementptr inbounds %struct.vlink, %struct.vlink* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load %struct.vlink*, %struct.vlink** %2, align 8
  %23 = getelementptr inbounds %struct.vlink, %struct.vlink* %22, i32 0, i32 10
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 12
  %26 = load %struct.vlink*, %struct.vlink** %2, align 8
  %27 = getelementptr inbounds %struct.vlink, %struct.vlink* %26, i32 0, i32 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef %25, i8* noundef %28)
  %30 = load %struct.vlink*, %struct.vlink** %2, align 8
  %31 = getelementptr inbounds %struct.vlink, %struct.vlink* %30, i32 0, i32 8
  store i8* %29, i8** %31, align 8
  %32 = load %struct.vlink*, %struct.vlink** %2, align 8
  %33 = getelementptr inbounds %struct.vlink, %struct.vlink* %32, i32 0, i32 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @strchr(i8* noundef %34, i32 noundef 47)
  store i8* %35, i8** %3, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %15
  %39 = load i8*, i8** %3, align 8
  %40 = load %struct.vlink*, %struct.vlink** %2, align 8
  %41 = getelementptr inbounds %struct.vlink, %struct.vlink* %40, i32 0, i32 10
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef %39, i8* noundef %42)
  %44 = load %struct.vlink*, %struct.vlink** %2, align 8
  %45 = getelementptr inbounds %struct.vlink, %struct.vlink* %44, i32 0, i32 10
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %3, align 8
  store i8 0, i8* %46, align 1
  br label %55

48:                                               ; preds = %15
  %49 = load %struct.vlink*, %struct.vlink** %2, align 8
  %50 = getelementptr inbounds %struct.vlink, %struct.vlink* %49, i32 0, i32 10
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* noundef %51)
  %53 = load %struct.vlink*, %struct.vlink** %2, align 8
  %54 = getelementptr inbounds %struct.vlink, %struct.vlink* %53, i32 0, i32 10
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %48, %38
  br label %56

56:                                               ; preds = %55, %9
  br label %57

57:                                               ; preds = %56, %1
  ret void
}

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i8* @stcopyr(...) #3

declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
