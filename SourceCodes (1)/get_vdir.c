; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/get_vdir.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/get_vdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdir = type { i32, i32, i64, %struct.acl*, %struct.pfile*, %struct.vlink*, %struct.vlink*, %struct.vlink*, %struct.vdir*, %struct.vdir* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }
%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }
%struct.ptext = type { i32, i8*, [1314 x i8], i64, %struct.ptext*, %struct.ptext*, i32 }
%struct.pfs_auth_info = type { [100 x i8], [250 x i8] }

@perrno = external dso_local global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"+ATTRIBUTES\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"+EXPAND\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"+LEXPAND\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%#$PRobably_nOn_existaNT$#%\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"''\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"VERSION %d\0AAUTHENTICATOR %s %s\0ADIRECTORY ASCII %s\0ALIST %s COMPONENTS %s%s%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"LINK-INFO\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"LINK %c %s %s %s %s %s %s %d %d\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"FORWARDED\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"FORWARDED %s %s %s %s %d %d\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"FILTER\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"NONE-FOUND\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"UNRESOLVED\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"UNRESOLVED %s\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"VERSION-NOT-SUPPORTED\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"DIRECTORY\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_vdir(i8* noundef %0, i8* noundef %1, i8* noundef %2, %struct.vdir* noundef %3, i64 noundef %4, %struct.vlink* noundef %5, i8* noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.vdir*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.vlink*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ptext*, align 8
  %17 = alloca %struct.ptext*, align 8
  %18 = alloca [1024 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca %struct.vlink*, align 8
  %21 = alloca %struct.vlink*, align 8
  %22 = alloca %struct.vlink*, align 8
  %23 = alloca %struct.vlink*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [40 x i8], align 16
  %31 = alloca i8*, align 8
  %32 = alloca %struct.pfs_auth_info*, align 8
  %33 = alloca %struct.ptext*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8, align 1
  %36 = alloca [4256 x i8], align 16
  %37 = alloca [4256 x i8], align 16
  %38 = alloca [4256 x i8], align 16
  %39 = alloca [4256 x i8], align 16
  %40 = alloca [4256 x i8], align 16
  %41 = alloca [4256 x i8], align 16
  %42 = alloca i32, align 4
  %43 = alloca [4256 x i8], align 16
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca %struct.pattrib*, align 8
  %47 = alloca %struct.pattrib*, align 8
  %48 = alloca %struct.vlink*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.vdir* %3, %struct.vdir** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.vlink* %5, %struct.vlink** %14, align 8
  store i8* %6, i8** %15, align 8
  %49 = load i8*, i8** %11, align 8
  store i8* %49, i8** %19, align 8
  store %struct.vlink* null, %struct.vlink** %20, align 8
  store %struct.vlink* null, %struct.vlink** %21, align 8
  store %struct.vlink* null, %struct.vlink** %22, align 8
  store i32 0, i32* %26, align 4
  store i32 20, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %7
  %53 = load i8*, i8** %11, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52, %7
  store i8* null, i8** %19, align 8
  br label %57

57:                                               ; preds = %56, %52
  %58 = load i8*, i8** %15, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.vlink*, %struct.vlink** %14, align 8
  %62 = icmp ne %struct.vlink* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 1, i32* %24, align 4
  br label %65

64:                                               ; preds = %60, %57
  store i32 0, i32* %24, align 4
  br label %65

65:                                               ; preds = %64, %63
  %66 = load i64, i64* %13, align 8
  %67 = and i64 %66, 32
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* %26, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %26, align 4
  %72 = load i64, i64* %13, align 8
  %73 = and i64 %72, -33
  store i64 %73, i64* %13, align 8
  br label %74

74:                                               ; preds = %69, %65
  %75 = load i64, i64* %13, align 8
  %76 = and i64 %75, 64
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 2, i32* %27, align 4
  br label %80

79:                                               ; preds = %74
  store i32 1, i32* %27, align 4
  br label %80

80:                                               ; preds = %79, %78
  %81 = load i64, i64* %13, align 8
  %82 = and i64 %81, -65
  store i64 %82, i64* %13, align 8
  %83 = load %struct.vlink*, %struct.vlink** %14, align 8
  %84 = icmp ne %struct.vlink* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i8* null, i8** %19, align 8
  br label %86

86:                                               ; preds = %85, %80
  store i32 0, i32* @perrno, align 4
  %87 = call %struct.pfs_auth_info* (i32, ...) bitcast (%struct.pfs_auth_info* (...)* @get_pauth to %struct.pfs_auth_info* (i32, ...)*)(i32 noundef 1)
  store %struct.pfs_auth_info* %87, %struct.pfs_auth_info** %32, align 8
  %88 = getelementptr inbounds [40 x i8], [40 x i8]* %30, i64 0, i64 0
  store i8 0, i8* %88, align 16
  %89 = load i32, i32* %26, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = getelementptr inbounds [40 x i8], [40 x i8]* %30, i64 0, i64 0
  %93 = call i8* @strcat(i8* noundef %92, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %94 = load i64, i64* %13, align 8
  %95 = and i64 %94, -33
  store i64 %95, i64* %13, align 8
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.vlink*, %struct.vlink** %14, align 8
  %98 = icmp ne %struct.vlink* %97, null
  br i1 %98, label %112, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* %13, align 8
  %101 = icmp eq i64 %100, 7
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = getelementptr inbounds [40 x i8], [40 x i8]* %30, i64 0, i64 0
  %104 = call i8* @strcat(i8* noundef %103, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i64, i64* %13, align 8
  %107 = icmp eq i64 %106, 3
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = getelementptr inbounds [40 x i8], [40 x i8]* %30, i64 0, i64 0
  %110 = call i8* @strcat(i8* noundef %109, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %96
  %113 = load i64, i64* %13, align 8
  %114 = icmp eq i64 %113, 8
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  br label %116

116:                                              ; preds = %115, %112
  %117 = getelementptr inbounds [40 x i8], [40 x i8]* %30, i64 0, i64 0
  %118 = load i8, i8* %117, align 16
  %119 = icmp ne i8 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = getelementptr inbounds [40 x i8], [40 x i8]* %30, i64 0, i64 0
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  store i8* %122, i8** %31, align 8
  br label %124

123:                                              ; preds = %116
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %31, align 8
  br label %124

124:                                              ; preds = %123, %120
  br label %125

125:                                              ; preds = %617, %412, %124
  %126 = call %struct.ptext* (...) @ptalloc()
  store %struct.ptext* %126, %struct.ptext** %16, align 8
  %127 = load %struct.ptext*, %struct.ptext** %16, align 8
  %128 = getelementptr inbounds %struct.ptext, %struct.ptext* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** %32, align 8
  %131 = getelementptr inbounds %struct.pfs_auth_info, %struct.pfs_auth_info* %130, i32 0, i32 0
  %132 = getelementptr inbounds [100 x i8], [100 x i8]* %131, i64 0, i64 0
  %133 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** %32, align 8
  %134 = getelementptr inbounds %struct.pfs_auth_info, %struct.pfs_auth_info* %133, i32 0, i32 1
  %135 = getelementptr inbounds [250 x i8], [250 x i8]* %134, i64 0, i64 0
  %136 = load i8*, i8** %10, align 8
  %137 = load i8*, i8** %31, align 8
  %138 = load i8*, i8** %19, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %125
  %141 = load i8*, i8** %19, align 8
  br label %143

142:                                              ; preds = %125
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi i8* [ %141, %140 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %142 ]
  %145 = load i32, i32* %24, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %149 = load i32, i32* %24, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = load i8*, i8** %15, align 8
  br label %154

153:                                              ; preds = %143
  br label %154

154:                                              ; preds = %153, %151
  %155 = phi i8* [ %152, %151 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %153 ]
  %156 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %129, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0), i32 noundef 1, i8* noundef %132, i8* noundef %135, i8* noundef %136, i8* noundef %137, i8* noundef %144, i8* noundef %148, i8* noundef %155) #3
  %157 = load %struct.ptext*, %struct.ptext** %16, align 8
  %158 = getelementptr inbounds %struct.ptext, %struct.ptext* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = call i64 @strlen(i8* noundef %159)
  %161 = trunc i64 %160 to i32
  %162 = load %struct.ptext*, %struct.ptext** %16, align 8
  %163 = getelementptr inbounds %struct.ptext, %struct.ptext* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.ptext*, %struct.ptext** %16, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = call %struct.ptext* (%struct.ptext*, i8*, i32, ...) bitcast (%struct.ptext* (...)* @dirsend to %struct.ptext* (%struct.ptext*, i8*, i32, ...)*)(%struct.ptext* noundef %164, i8* noundef %165, i32 noundef 0)
  store %struct.ptext* %166, %struct.ptext** %17, align 8
  %167 = load %struct.ptext*, %struct.ptext** %17, align 8
  %168 = icmp eq %struct.ptext* %167, null
  br i1 %168, label %169, label %178

169:                                              ; preds = %154
  %170 = load %struct.vlink*, %struct.vlink** %21, align 8
  %171 = icmp ne %struct.vlink* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load %struct.vlink*, %struct.vlink** %21, align 8
  %174 = getelementptr inbounds %struct.vlink, %struct.vlink* %173, i32 0, i32 3
  store i32 -1, i32* %174, align 4
  br label %177

175:                                              ; preds = %169
  %176 = load i32, i32* @perrno, align 4
  store i32 %176, i32* %8, align 4
  br label %707

177:                                              ; preds = %172
  br label %178

178:                                              ; preds = %177, %154
  store i32 0, i32* %25, align 4
  br label %179

179:                                              ; preds = %528, %178
  %180 = load %struct.ptext*, %struct.ptext** %17, align 8
  %181 = icmp ne %struct.ptext* %180, null
  br i1 %181, label %182, label %533

182:                                              ; preds = %179
  %183 = load %struct.ptext*, %struct.ptext** %17, align 8
  store %struct.ptext* %183, %struct.ptext** %33, align 8
  %184 = load %struct.ptext*, %struct.ptext** %17, align 8
  %185 = getelementptr inbounds %struct.ptext, %struct.ptext* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  store i8* %186, i8** %34, align 8
  br label %187

187:                                              ; preds = %525, %182
  %188 = load i8*, i8** %34, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %528

190:                                              ; preds = %187
  %191 = load i8*, i8** %34, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  switch i32 %193, label %511 [
    i32 76, label %194
    i32 70, label %387
    i32 77, label %420
    i32 80, label %420
    i32 78, label %421
    i32 85, label %458
    i32 86, label %503
  ]

194:                                              ; preds = %190
  %195 = load i8*, i8** %34, align 8
  %196 = call i32 @strncmp(i8* noundef %195, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 noundef 9)
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %241

198:                                              ; preds = %194
  %199 = load i8*, i8** %34, align 8
  %200 = call %struct.pattrib* (i8*, ...) bitcast (%struct.pattrib* (...)* @parse_attribute to %struct.pattrib* (i8*, ...)*)(i8* noundef %199)
  store %struct.pattrib* %200, %struct.pattrib** %46, align 8
  %201 = load %struct.pattrib*, %struct.pattrib** %46, align 8
  %202 = icmp ne %struct.pattrib* %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %198
  br label %524

204:                                              ; preds = %198
  %205 = load %struct.vlink*, %struct.vlink** %20, align 8
  %206 = icmp ne %struct.vlink* %205, null
  br i1 %206, label %209, label %207

207:                                              ; preds = %204
  store i32 252, i32* @perrno, align 4
  %208 = load %struct.pattrib*, %struct.pattrib** %46, align 8
  call void (%struct.pattrib*, ...) bitcast (void (...)* @atfree to void (%struct.pattrib*, ...)*)(%struct.pattrib* noundef %208)
  br label %524

209:                                              ; preds = %204
  %210 = load %struct.vlink*, %struct.vlink** %20, align 8
  %211 = getelementptr inbounds %struct.vlink, %struct.vlink* %210, i32 0, i32 17
  %212 = load %struct.pattrib*, %struct.pattrib** %211, align 8
  %213 = icmp ne %struct.pattrib* %212, null
  br i1 %213, label %214, label %234

214:                                              ; preds = %209
  %215 = load %struct.vlink*, %struct.vlink** %20, align 8
  %216 = getelementptr inbounds %struct.vlink, %struct.vlink* %215, i32 0, i32 17
  %217 = load %struct.pattrib*, %struct.pattrib** %216, align 8
  store %struct.pattrib* %217, %struct.pattrib** %47, align 8
  br label %218

218:                                              ; preds = %223, %214
  %219 = load %struct.pattrib*, %struct.pattrib** %47, align 8
  %220 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %219, i32 0, i32 5
  %221 = load %struct.pattrib*, %struct.pattrib** %220, align 8
  %222 = icmp ne %struct.pattrib* %221, null
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = load %struct.pattrib*, %struct.pattrib** %47, align 8
  %225 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %224, i32 0, i32 5
  %226 = load %struct.pattrib*, %struct.pattrib** %225, align 8
  store %struct.pattrib* %226, %struct.pattrib** %47, align 8
  br label %218, !llvm.loop !4

227:                                              ; preds = %218
  %228 = load %struct.pattrib*, %struct.pattrib** %47, align 8
  %229 = load %struct.pattrib*, %struct.pattrib** %46, align 8
  %230 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %229, i32 0, i32 4
  store %struct.pattrib* %228, %struct.pattrib** %230, align 8
  %231 = load %struct.pattrib*, %struct.pattrib** %46, align 8
  %232 = load %struct.pattrib*, %struct.pattrib** %47, align 8
  %233 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %232, i32 0, i32 5
  store %struct.pattrib* %231, %struct.pattrib** %233, align 8
  br label %240

234:                                              ; preds = %209
  %235 = load %struct.pattrib*, %struct.pattrib** %46, align 8
  %236 = load %struct.vlink*, %struct.vlink** %20, align 8
  %237 = getelementptr inbounds %struct.vlink, %struct.vlink* %236, i32 0, i32 17
  store %struct.pattrib* %235, %struct.pattrib** %237, align 8
  %238 = load %struct.pattrib*, %struct.pattrib** %46, align 8
  %239 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %238, i32 0, i32 4
  store %struct.pattrib* null, %struct.pattrib** %239, align 8
  br label %240

240:                                              ; preds = %234, %227
  br label %524

241:                                              ; preds = %194
  %242 = load i8*, i8** %34, align 8
  %243 = call i32 @strncmp(i8* noundef %242, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 noundef 4)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %241
  br label %510

246:                                              ; preds = %241
  %247 = load i64, i64* %13, align 8
  %248 = icmp eq i64 %247, 8
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  br label %524

250:                                              ; preds = %246
  %251 = load i32, i32* %29, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %29, align 4
  %253 = icmp ne i32 %251, 0
  br i1 %253, label %277, label %254

254:                                              ; preds = %250
  %255 = load %struct.vdir*, %struct.vdir** %12, align 8
  %256 = getelementptr inbounds %struct.vdir, %struct.vdir* %255, i32 0, i32 5
  %257 = load %struct.vlink*, %struct.vlink** %256, align 8
  %258 = icmp ne %struct.vlink* %257, null
  br i1 %258, label %259, label %263

259:                                              ; preds = %254
  %260 = load %struct.vdir*, %struct.vdir** %12, align 8
  %261 = getelementptr inbounds %struct.vdir, %struct.vdir* %260, i32 0, i32 5
  %262 = load %struct.vlink*, %struct.vlink** %261, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vllfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %262)
  br label %263

263:                                              ; preds = %259, %254
  %264 = load %struct.vdir*, %struct.vdir** %12, align 8
  %265 = getelementptr inbounds %struct.vdir, %struct.vdir* %264, i32 0, i32 5
  store %struct.vlink* null, %struct.vlink** %265, align 8
  %266 = load %struct.vdir*, %struct.vdir** %12, align 8
  %267 = getelementptr inbounds %struct.vdir, %struct.vdir* %266, i32 0, i32 7
  %268 = load %struct.vlink*, %struct.vlink** %267, align 8
  %269 = icmp ne %struct.vlink* %268, null
  br i1 %269, label %270, label %274

270:                                              ; preds = %263
  %271 = load %struct.vdir*, %struct.vdir** %12, align 8
  %272 = getelementptr inbounds %struct.vdir, %struct.vdir* %271, i32 0, i32 7
  %273 = load %struct.vlink*, %struct.vlink** %272, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vllfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %273)
  br label %274

274:                                              ; preds = %270, %263
  %275 = load %struct.vdir*, %struct.vdir** %12, align 8
  %276 = getelementptr inbounds %struct.vdir, %struct.vdir* %275, i32 0, i32 7
  store %struct.vlink* null, %struct.vlink** %276, align 8
  br label %277

277:                                              ; preds = %274, %250
  %278 = call %struct.vlink* (...) @vlalloc()
  store %struct.vlink* %278, %struct.vlink** %20, align 8
  %279 = load i8*, i8** %34, align 8
  %280 = getelementptr inbounds [4256 x i8], [4256 x i8]* %37, i64 0, i64 0
  %281 = getelementptr inbounds [4256 x i8], [4256 x i8]* %36, i64 0, i64 0
  %282 = getelementptr inbounds [4256 x i8], [4256 x i8]* %38, i64 0, i64 0
  %283 = getelementptr inbounds [4256 x i8], [4256 x i8]* %39, i64 0, i64 0
  %284 = getelementptr inbounds [4256 x i8], [4256 x i8]* %40, i64 0, i64 0
  %285 = getelementptr inbounds [4256 x i8], [4256 x i8]* %41, i64 0, i64 0
  %286 = load %struct.vlink*, %struct.vlink** %20, align 8
  %287 = getelementptr inbounds %struct.vlink, %struct.vlink* %286, i32 0, i32 11
  %288 = load %struct.vlink*, %struct.vlink** %20, align 8
  %289 = getelementptr inbounds %struct.vlink, %struct.vlink* %288, i32 0, i32 12
  %290 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %279, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* noundef %35, i8* noundef %280, i8* noundef %281, i8* noundef %282, i8* noundef %283, i8* noundef %284, i8* noundef %285, i64* noundef %287, i64* noundef %289) #3
  store i32 %290, i32* %45, align 4
  %291 = load i32, i32* %45, align 4
  %292 = icmp ne i32 %291, 9
  br i1 %292, label %293, label %295

293:                                              ; preds = %277
  store i32 252, i32* @perrno, align 4
  %294 = load %struct.vlink*, %struct.vlink** %20, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %294)
  br label %524

295:                                              ; preds = %277
  %296 = load i8, i8* %35, align 1
  %297 = load %struct.vlink*, %struct.vlink** %20, align 8
  %298 = getelementptr inbounds %struct.vlink, %struct.vlink* %297, i32 0, i32 2
  store i8 %296, i8* %298, align 8
  %299 = getelementptr inbounds [4256 x i8], [4256 x i8]* %37, i64 0, i64 0
  %300 = load %struct.vlink*, %struct.vlink** %20, align 8
  %301 = getelementptr inbounds %struct.vlink, %struct.vlink* %300, i32 0, i32 4
  %302 = load i8*, i8** %301, align 8
  %303 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef %299, i8* noundef %302)
  %304 = load %struct.vlink*, %struct.vlink** %20, align 8
  %305 = getelementptr inbounds %struct.vlink, %struct.vlink* %304, i32 0, i32 4
  store i8* %303, i8** %305, align 8
  %306 = getelementptr inbounds [4256 x i8], [4256 x i8]* %36, i64 0, i64 0
  %307 = call i8* (i8*, ...) bitcast (i8* (...)* @unquote to i8* (i8*, ...)*)(i8* noundef %306)
  %308 = load %struct.vlink*, %struct.vlink** %20, align 8
  %309 = getelementptr inbounds %struct.vlink, %struct.vlink* %308, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef %307, i8* noundef %310)
  %312 = load %struct.vlink*, %struct.vlink** %20, align 8
  %313 = getelementptr inbounds %struct.vlink, %struct.vlink* %312, i32 0, i32 1
  store i8* %311, i8** %313, align 8
  %314 = getelementptr inbounds [4256 x i8], [4256 x i8]* %38, i64 0, i64 0
  %315 = load %struct.vlink*, %struct.vlink** %20, align 8
  %316 = getelementptr inbounds %struct.vlink, %struct.vlink* %315, i32 0, i32 7
  %317 = load i8*, i8** %316, align 8
  %318 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef %314, i8* noundef %317)
  %319 = load %struct.vlink*, %struct.vlink** %20, align 8
  %320 = getelementptr inbounds %struct.vlink, %struct.vlink* %319, i32 0, i32 7
  store i8* %318, i8** %320, align 8
  %321 = getelementptr inbounds [4256 x i8], [4256 x i8]* %39, i64 0, i64 0
  %322 = load %struct.vlink*, %struct.vlink** %20, align 8
  %323 = getelementptr inbounds %struct.vlink, %struct.vlink* %322, i32 0, i32 8
  %324 = load i8*, i8** %323, align 8
  %325 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef %321, i8* noundef %324)
  %326 = load %struct.vlink*, %struct.vlink** %20, align 8
  %327 = getelementptr inbounds %struct.vlink, %struct.vlink* %326, i32 0, i32 8
  store i8* %325, i8** %327, align 8
  %328 = getelementptr inbounds [4256 x i8], [4256 x i8]* %40, i64 0, i64 0
  %329 = load %struct.vlink*, %struct.vlink** %20, align 8
  %330 = getelementptr inbounds %struct.vlink, %struct.vlink* %329, i32 0, i32 9
  %331 = load i8*, i8** %330, align 8
  %332 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef %328, i8* noundef %331)
  %333 = load %struct.vlink*, %struct.vlink** %20, align 8
  %334 = getelementptr inbounds %struct.vlink, %struct.vlink* %333, i32 0, i32 9
  store i8* %332, i8** %334, align 8
  %335 = getelementptr inbounds [4256 x i8], [4256 x i8]* %41, i64 0, i64 0
  %336 = load %struct.vlink*, %struct.vlink** %20, align 8
  %337 = getelementptr inbounds %struct.vlink, %struct.vlink* %336, i32 0, i32 10
  %338 = load i8*, i8** %337, align 8
  %339 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef %335, i8* noundef %338)
  %340 = load %struct.vlink*, %struct.vlink** %20, align 8
  %341 = getelementptr inbounds %struct.vlink, %struct.vlink* %340, i32 0, i32 10
  store i8* %339, i8** %341, align 8
  %342 = load i32, i32* %24, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %359, label %344

344:                                              ; preds = %295
  %345 = load %struct.vlink*, %struct.vlink** %20, align 8
  %346 = getelementptr inbounds %struct.vlink, %struct.vlink* %345, i32 0, i32 2
  %347 = load i8, i8* %346, align 8
  %348 = sext i8 %347 to i32
  %349 = icmp eq i32 %348, 76
  br i1 %349, label %350, label %359

350:                                              ; preds = %344
  %351 = load %struct.vlink*, %struct.vlink** %20, align 8
  %352 = getelementptr inbounds %struct.vlink, %struct.vlink* %351, i32 0, i32 1
  %353 = load i8*, i8** %352, align 8
  %354 = load i8*, i8** %19, align 8
  %355 = call i32 @wcmatch(i8* noundef %353, i8* noundef %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %359, label %357

357:                                              ; preds = %350
  %358 = load %struct.vlink*, %struct.vlink** %20, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %358)
  br label %524

359:                                              ; preds = %350, %344, %295
  %360 = load %struct.vlink*, %struct.vlink** %20, align 8
  %361 = getelementptr inbounds %struct.vlink, %struct.vlink* %360, i32 0, i32 2
  %362 = load i8, i8* %361, align 8
  %363 = sext i8 %362 to i32
  %364 = icmp eq i32 %363, 76
  br i1 %364, label %365, label %370

365:                                              ; preds = %359
  %366 = load %struct.vlink*, %struct.vlink** %20, align 8
  %367 = load %struct.vdir*, %struct.vdir** %12, align 8
  %368 = load i32, i32* %27, align 4
  %369 = call i32 @vl_insert(%struct.vlink* noundef %366, %struct.vdir* noundef %367, i32 noundef %368)
  br label %386

370:                                              ; preds = %359
  %371 = load %struct.vlink*, %struct.vlink** %20, align 8
  %372 = load %struct.vdir*, %struct.vdir** %12, align 8
  %373 = load %struct.vlink*, %struct.vlink** %22, align 8
  %374 = call i32 @ul_insert(%struct.vlink* noundef %371, %struct.vdir* noundef %372, %struct.vlink* noundef %373)
  store i32 %374, i32* %45, align 4
  %375 = load %struct.vlink*, %struct.vlink** %22, align 8
  %376 = icmp ne %struct.vlink* %375, null
  br i1 %376, label %377, label %385

377:                                              ; preds = %370
  %378 = load i32, i32* %45, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %377
  %381 = load i32, i32* %45, align 4
  %382 = icmp eq i32 %381, 26
  br i1 %382, label %383, label %385

383:                                              ; preds = %380, %377
  %384 = load %struct.vlink*, %struct.vlink** %20, align 8
  store %struct.vlink* %384, %struct.vlink** %22, align 8
  br label %385

385:                                              ; preds = %383, %380, %370
  br label %386

386:                                              ; preds = %385, %365
  br label %524

387:                                              ; preds = %190
  %388 = load i8*, i8** %34, align 8
  %389 = call i32 @strncmp(i8* noundef %388, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i64 noundef 9)
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %414

391:                                              ; preds = %387
  %392 = load i32, i32* %28, align 4
  %393 = add nsw i32 %392, -1
  store i32 %393, i32* %28, align 4
  %394 = icmp sle i32 %392, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %391
  %396 = load %struct.ptext*, %struct.ptext** %17, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* noundef %396)
  store i32 235, i32* @perrno, align 4
  %397 = load i32, i32* @perrno, align 4
  store i32 %397, i32* %8, align 4
  br label %707

398:                                              ; preds = %391
  %399 = load i8*, i8** %34, align 8
  %400 = getelementptr inbounds [4256 x i8], [4256 x i8]* %38, i64 0, i64 0
  %401 = getelementptr inbounds [4256 x i8], [4256 x i8]* %39, i64 0, i64 0
  %402 = getelementptr inbounds [4256 x i8], [4256 x i8]* %40, i64 0, i64 0
  %403 = getelementptr inbounds [4256 x i8], [4256 x i8]* %41, i64 0, i64 0
  %404 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %399, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* noundef %400, i8* noundef %401, i8* noundef %402, i8* noundef %403, i32* noundef %42, i32* noundef %44) #3
  store i32 %404, i32* %45, align 4
  %405 = getelementptr inbounds [4256 x i8], [4256 x i8]* %39, i64 0, i64 0
  %406 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* noundef %405)
  store i8* %406, i8** %9, align 8
  %407 = getelementptr inbounds [4256 x i8], [4256 x i8]* %41, i64 0, i64 0
  %408 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* noundef %407)
  store i8* %408, i8** %10, align 8
  %409 = load i32, i32* %45, align 4
  %410 = icmp slt i32 %409, 4
  br i1 %410, label %411, label %412

411:                                              ; preds = %398
  store i32 252, i32* @perrno, align 4
  br label %524

412:                                              ; preds = %398
  %413 = load %struct.ptext*, %struct.ptext** %17, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* noundef %413)
  br label %125

414:                                              ; preds = %387
  %415 = load i8*, i8** %34, align 8
  %416 = call i32 @strncmp(i8* noundef %415, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i64 noundef 6)
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %414
  br label %510

419:                                              ; preds = %414
  br label %524

420:                                              ; preds = %190, %190
  br label %524

421:                                              ; preds = %190
  %422 = load i8*, i8** %34, align 8
  %423 = call i32 @strncmp(i8* noundef %422, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 noundef 10)
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %457

425:                                              ; preds = %421
  %426 = load i64, i64* %13, align 8
  %427 = icmp eq i64 %426, 8
  br i1 %427, label %428, label %429

428:                                              ; preds = %425
  br label %524

429:                                              ; preds = %425
  %430 = load i32, i32* %29, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %29, align 4
  %432 = icmp ne i32 %430, 0
  br i1 %432, label %456, label %433

433:                                              ; preds = %429
  %434 = load %struct.vdir*, %struct.vdir** %12, align 8
  %435 = getelementptr inbounds %struct.vdir, %struct.vdir* %434, i32 0, i32 5
  %436 = load %struct.vlink*, %struct.vlink** %435, align 8
  %437 = icmp ne %struct.vlink* %436, null
  br i1 %437, label %438, label %442

438:                                              ; preds = %433
  %439 = load %struct.vdir*, %struct.vdir** %12, align 8
  %440 = getelementptr inbounds %struct.vdir, %struct.vdir* %439, i32 0, i32 5
  %441 = load %struct.vlink*, %struct.vlink** %440, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vllfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %441)
  br label %442

442:                                              ; preds = %438, %433
  %443 = load %struct.vdir*, %struct.vdir** %12, align 8
  %444 = getelementptr inbounds %struct.vdir, %struct.vdir* %443, i32 0, i32 7
  %445 = load %struct.vlink*, %struct.vlink** %444, align 8
  %446 = icmp ne %struct.vlink* %445, null
  br i1 %446, label %447, label %451

447:                                              ; preds = %442
  %448 = load %struct.vdir*, %struct.vdir** %12, align 8
  %449 = getelementptr inbounds %struct.vdir, %struct.vdir* %448, i32 0, i32 7
  %450 = load %struct.vlink*, %struct.vlink** %449, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vllfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %450)
  br label %451

451:                                              ; preds = %447, %442
  %452 = load %struct.vdir*, %struct.vdir** %12, align 8
  %453 = getelementptr inbounds %struct.vdir, %struct.vdir* %452, i32 0, i32 5
  store %struct.vlink* null, %struct.vlink** %453, align 8
  %454 = load %struct.vdir*, %struct.vdir** %12, align 8
  %455 = getelementptr inbounds %struct.vdir, %struct.vdir* %454, i32 0, i32 7
  store %struct.vlink* null, %struct.vlink** %455, align 8
  br label %456

456:                                              ; preds = %451, %429
  br label %524

457:                                              ; preds = %421
  br label %510

458:                                              ; preds = %190
  %459 = load i8*, i8** %34, align 8
  %460 = call i32 @strncmp(i8* noundef %459, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i64 noundef 10)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %458
  br label %510

463:                                              ; preds = %458
  %464 = load i8*, i8** %34, align 8
  %465 = getelementptr inbounds [4256 x i8], [4256 x i8]* %43, i64 0, i64 0
  %466 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %464, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* noundef %465) #3
  store i32 %466, i32* %45, align 4
  %467 = load i32, i32* %45, align 4
  %468 = icmp slt i32 %467, 1
  br i1 %468, label %469, label %470

469:                                              ; preds = %463
  store i32 252, i32* @perrno, align 4
  br label %524

470:                                              ; preds = %463
  %471 = getelementptr inbounds [4256 x i8], [4256 x i8]* %43, i64 0, i64 0
  %472 = call i64 @strlen(i8* noundef %471)
  %473 = load i8*, i8** %15, align 8
  %474 = call i64 @strlen(i8* noundef %473)
  %475 = icmp ult i64 %472, %474
  br i1 %475, label %476, label %502

476:                                              ; preds = %470
  %477 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %478 = load i8*, i8** %15, align 8
  %479 = call i8* @strcpy(i8* noundef %477, i8* noundef %478)
  %480 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %481 = load i8*, i8** %15, align 8
  %482 = call i64 @strlen(i8* noundef %481)
  %483 = getelementptr inbounds i8, i8* %480, i64 %482
  %484 = getelementptr inbounds [4256 x i8], [4256 x i8]* %43, i64 0, i64 0
  %485 = call i64 @strlen(i8* noundef %484)
  %486 = sub i64 0, %485
  %487 = getelementptr inbounds i8, i8* %483, i64 %486
  %488 = getelementptr inbounds i8, i8* %487, i64 -1
  store i8 0, i8* %488, align 1
  %489 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %490 = call i8* @strrchr(i8* noundef %489, i32 noundef 47)
  store i8* %490, i8** %19, align 8
  %491 = load i8*, i8** %19, align 8
  %492 = icmp ne i8* %491, null
  br i1 %492, label %493, label %496

493:                                              ; preds = %476
  %494 = load i8*, i8** %19, align 8
  %495 = getelementptr inbounds i8, i8* %494, i32 1
  store i8* %495, i8** %19, align 8
  br label %498

496:                                              ; preds = %476
  %497 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  store i8* %497, i8** %19, align 8
  br label %498

498:                                              ; preds = %496, %493
  %499 = load i8*, i8** %15, align 8
  %500 = getelementptr inbounds [4256 x i8], [4256 x i8]* %43, i64 0, i64 0
  %501 = call i8* @strcpy(i8* noundef %499, i8* noundef %500)
  br label %502

502:                                              ; preds = %498, %470
  store i32 1, i32* %25, align 4
  br label %524

503:                                              ; preds = %190
  %504 = load i8*, i8** %34, align 8
  %505 = call i32 @strncmp(i8* noundef %504, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i64 noundef 21)
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %509

507:                                              ; preds = %503
  store i32 245, i32* @perrno, align 4
  %508 = load i32, i32* @perrno, align 4
  store i32 %508, i32* %8, align 4
  br label %707

509:                                              ; preds = %503
  br label %510

510:                                              ; preds = %509, %462, %457, %418, %245
  br label %511

511:                                              ; preds = %190, %510
  %512 = load i8*, i8** %34, align 8
  %513 = load i8, i8* %512, align 1
  %514 = sext i8 %513 to i32
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %523

516:                                              ; preds = %511
  %517 = load i8*, i8** %34, align 8
  %518 = call i32 @scan_error(i8* noundef %517)
  store i32 %518, i32* %45, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %523

520:                                              ; preds = %516
  %521 = load %struct.ptext*, %struct.ptext** %17, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptlfree to void (%struct.ptext*, ...)*)(%struct.ptext* noundef %521)
  %522 = load i32, i32* %45, align 4
  store i32 %522, i32* %8, align 4
  br label %707

523:                                              ; preds = %516, %511
  br label %524

524:                                              ; preds = %523, %502, %469, %456, %428, %420, %419, %411, %386, %357, %293, %249, %240, %207, %203
  br label %525

525:                                              ; preds = %524
  %526 = load i8*, i8** %34, align 8
  %527 = call i8* (i8*, ...) bitcast (i8* (...)* @nxtline to i8* (i8*, ...)*)(i8* noundef %526)
  store i8* %527, i8** %34, align 8
  br label %187, !llvm.loop !6

528:                                              ; preds = %187
  %529 = load %struct.ptext*, %struct.ptext** %17, align 8
  %530 = getelementptr inbounds %struct.ptext, %struct.ptext* %529, i32 0, i32 5
  %531 = load %struct.ptext*, %struct.ptext** %530, align 8
  store %struct.ptext* %531, %struct.ptext** %17, align 8
  %532 = load %struct.ptext*, %struct.ptext** %33, align 8
  call void (%struct.ptext*, ...) bitcast (void (...)* @ptfree to void (%struct.ptext*, ...)*)(%struct.ptext* noundef %532)
  br label %179, !llvm.loop !7

533:                                              ; preds = %179
  %534 = load i32, i32* %24, align 4
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %554

536:                                              ; preds = %533
  %537 = load i32, i32* %25, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %554, label %539

539:                                              ; preds = %536
  %540 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %541 = load i8*, i8** %15, align 8
  %542 = call i8* @strcpy(i8* noundef %540, i8* noundef %541)
  %543 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %544 = call i8* @strrchr(i8* noundef %543, i32 noundef 47)
  store i8* %544, i8** %19, align 8
  %545 = load i8*, i8** %19, align 8
  %546 = icmp ne i8* %545, null
  br i1 %546, label %547, label %550

547:                                              ; preds = %539
  %548 = load i8*, i8** %19, align 8
  %549 = getelementptr inbounds i8, i8* %548, i32 1
  store i8* %549, i8** %19, align 8
  br label %552

550:                                              ; preds = %539
  %551 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  store i8* %551, i8** %19, align 8
  br label %552

552:                                              ; preds = %550, %547
  store i32 0, i32* %24, align 4
  %553 = load i8*, i8** %15, align 8
  store i8 0, i8* %553, align 1
  br label %554

554:                                              ; preds = %552, %536, %533
  %555 = load i64, i64* %13, align 8
  %556 = icmp eq i64 %555, 8
  br i1 %556, label %557, label %558

557:                                              ; preds = %554
  store i32 0, i32* %8, align 4
  br label %707

558:                                              ; preds = %554
  %559 = load i64, i64* %13, align 8
  %560 = and i64 %559, 16
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %571

562:                                              ; preds = %558
  %563 = load %struct.vdir*, %struct.vdir** %12, align 8
  %564 = getelementptr inbounds %struct.vdir, %struct.vdir* %563, i32 0, i32 5
  %565 = load %struct.vlink*, %struct.vlink** %564, align 8
  %566 = icmp ne %struct.vlink* %565, null
  br i1 %566, label %567, label %571

567:                                              ; preds = %562
  %568 = load %struct.vlink*, %struct.vlink** %14, align 8
  %569 = icmp ne %struct.vlink* %568, null
  br i1 %569, label %571, label %570

570:                                              ; preds = %567
  store i32 0, i32* %8, align 4
  br label %707

571:                                              ; preds = %567, %562, %558
  br label %572

572:                                              ; preds = %571
  %573 = load i64, i64* %13, align 8
  %574 = icmp ne i64 %573, 0
  br i1 %574, label %575, label %633

575:                                              ; preds = %572
  %576 = load i64, i64* %13, align 8
  %577 = icmp ne i64 %576, 8
  br i1 %577, label %578, label %633

578:                                              ; preds = %575
  %579 = load %struct.vdir*, %struct.vdir** %12, align 8
  %580 = getelementptr inbounds %struct.vdir, %struct.vdir* %579, i32 0, i32 7
  %581 = load %struct.vlink*, %struct.vlink** %580, align 8
  store %struct.vlink* %581, %struct.vlink** %23, align 8
  br label %582

582:                                              ; preds = %598, %578
  %583 = load %struct.vlink*, %struct.vlink** %23, align 8
  %584 = icmp ne %struct.vlink* %583, null
  br i1 %584, label %585, label %596

585:                                              ; preds = %582
  %586 = load %struct.vlink*, %struct.vlink** %23, align 8
  %587 = getelementptr inbounds %struct.vlink, %struct.vlink* %586, i32 0, i32 3
  %588 = load i32, i32* %587, align 4
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %596

590:                                              ; preds = %585
  %591 = load %struct.vlink*, %struct.vlink** %23, align 8
  %592 = getelementptr inbounds %struct.vlink, %struct.vlink* %591, i32 0, i32 2
  %593 = load i8, i8* %592, align 8
  %594 = sext i8 %593 to i32
  %595 = icmp eq i32 %594, 85
  br label %596

596:                                              ; preds = %590, %585, %582
  %597 = phi i1 [ false, %585 ], [ false, %582 ], [ %595, %590 ]
  br i1 %597, label %598, label %602

598:                                              ; preds = %596
  %599 = load %struct.vlink*, %struct.vlink** %23, align 8
  %600 = getelementptr inbounds %struct.vlink, %struct.vlink* %599, i32 0, i32 20
  %601 = load %struct.vlink*, %struct.vlink** %600, align 8
  store %struct.vlink* %601, %struct.vlink** %23, align 8
  br label %582, !llvm.loop !8

602:                                              ; preds = %596
  %603 = load %struct.vlink*, %struct.vlink** %23, align 8
  %604 = icmp ne %struct.vlink* %603, null
  br i1 %604, label %605, label %632

605:                                              ; preds = %602
  %606 = load %struct.vlink*, %struct.vlink** %23, align 8
  %607 = getelementptr inbounds %struct.vlink, %struct.vlink* %606, i32 0, i32 4
  %608 = load i8*, i8** %607, align 8
  %609 = call i32 @strcmp(i8* noundef %608, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %617, label %611

611:                                              ; preds = %605
  %612 = load %struct.vlink*, %struct.vlink** %23, align 8
  %613 = getelementptr inbounds %struct.vlink, %struct.vlink* %612, i32 0, i32 4
  %614 = load i8*, i8** %613, align 8
  %615 = call i32 @strcmp(i8* noundef %614, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %628

617:                                              ; preds = %611, %605
  %618 = load %struct.vlink*, %struct.vlink** %23, align 8
  %619 = getelementptr inbounds %struct.vlink, %struct.vlink* %618, i32 0, i32 3
  store i32 1, i32* %619, align 4
  %620 = load %struct.vlink*, %struct.vlink** %23, align 8
  store %struct.vlink* %620, %struct.vlink** %21, align 8
  %621 = load %struct.vlink*, %struct.vlink** %23, align 8
  store %struct.vlink* %621, %struct.vlink** %22, align 8
  %622 = load %struct.vlink*, %struct.vlink** %23, align 8
  %623 = getelementptr inbounds %struct.vlink, %struct.vlink* %622, i32 0, i32 8
  %624 = load i8*, i8** %623, align 8
  store i8* %624, i8** %9, align 8
  %625 = load %struct.vlink*, %struct.vlink** %23, align 8
  %626 = getelementptr inbounds %struct.vlink, %struct.vlink* %625, i32 0, i32 10
  %627 = load i8*, i8** %626, align 8
  store i8* %627, i8** %10, align 8
  br label %125

628:                                              ; preds = %611
  %629 = load %struct.vlink*, %struct.vlink** %23, align 8
  %630 = getelementptr inbounds %struct.vlink, %struct.vlink* %629, i32 0, i32 3
  store i32 -1, i32* %630, align 4
  br label %631

631:                                              ; preds = %628
  br label %632

632:                                              ; preds = %631, %602
  br label %633

633:                                              ; preds = %632, %575, %572
  %634 = load i8*, i8** %11, align 8
  %635 = icmp ne i8* %634, null
  br i1 %635, label %636, label %706

636:                                              ; preds = %633
  %637 = load i8*, i8** %11, align 8
  %638 = load i8, i8* %637, align 1
  %639 = sext i8 %638 to i32
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %641, label %706

641:                                              ; preds = %636
  %642 = load %struct.vdir*, %struct.vdir** %12, align 8
  %643 = getelementptr inbounds %struct.vdir, %struct.vdir* %642, i32 0, i32 5
  %644 = load %struct.vlink*, %struct.vlink** %643, align 8
  store %struct.vlink* %644, %struct.vlink** %23, align 8
  br label %645

645:                                              ; preds = %704, %641
  %646 = load %struct.vlink*, %struct.vlink** %23, align 8
  %647 = icmp ne %struct.vlink* %646, null
  br i1 %647, label %648, label %705

648:                                              ; preds = %645
  %649 = load %struct.vlink*, %struct.vlink** %23, align 8
  %650 = getelementptr inbounds %struct.vlink, %struct.vlink* %649, i32 0, i32 2
  %651 = load i8, i8* %650, align 8
  %652 = sext i8 %651 to i32
  %653 = icmp eq i32 %652, 76
  br i1 %653, label %654, label %700

654:                                              ; preds = %648
  %655 = load %struct.vlink*, %struct.vlink** %23, align 8
  %656 = getelementptr inbounds %struct.vlink, %struct.vlink* %655, i32 0, i32 1
  %657 = load i8*, i8** %656, align 8
  %658 = load i8*, i8** %11, align 8
  %659 = call i32 @wcmatch(i8* noundef %657, i8* noundef %658)
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %700, label %661

661:                                              ; preds = %654
  %662 = load %struct.vlink*, %struct.vlink** %23, align 8
  %663 = load %struct.vdir*, %struct.vdir** %12, align 8
  %664 = getelementptr inbounds %struct.vdir, %struct.vdir* %663, i32 0, i32 5
  %665 = load %struct.vlink*, %struct.vlink** %664, align 8
  %666 = icmp eq %struct.vlink* %662, %665
  br i1 %666, label %667, label %673

667:                                              ; preds = %661
  %668 = load %struct.vlink*, %struct.vlink** %23, align 8
  %669 = getelementptr inbounds %struct.vlink, %struct.vlink* %668, i32 0, i32 20
  %670 = load %struct.vlink*, %struct.vlink** %669, align 8
  %671 = load %struct.vdir*, %struct.vdir** %12, align 8
  %672 = getelementptr inbounds %struct.vdir, %struct.vdir* %671, i32 0, i32 5
  store %struct.vlink* %670, %struct.vlink** %672, align 8
  br label %681

673:                                              ; preds = %661
  %674 = load %struct.vlink*, %struct.vlink** %23, align 8
  %675 = getelementptr inbounds %struct.vlink, %struct.vlink* %674, i32 0, i32 20
  %676 = load %struct.vlink*, %struct.vlink** %675, align 8
  %677 = load %struct.vlink*, %struct.vlink** %23, align 8
  %678 = getelementptr inbounds %struct.vlink, %struct.vlink* %677, i32 0, i32 19
  %679 = load %struct.vlink*, %struct.vlink** %678, align 8
  %680 = getelementptr inbounds %struct.vlink, %struct.vlink* %679, i32 0, i32 20
  store %struct.vlink* %676, %struct.vlink** %680, align 8
  br label %681

681:                                              ; preds = %673, %667
  %682 = load %struct.vlink*, %struct.vlink** %23, align 8
  %683 = getelementptr inbounds %struct.vlink, %struct.vlink* %682, i32 0, i32 20
  %684 = load %struct.vlink*, %struct.vlink** %683, align 8
  %685 = icmp ne %struct.vlink* %684, null
  br i1 %685, label %686, label %694

686:                                              ; preds = %681
  %687 = load %struct.vlink*, %struct.vlink** %23, align 8
  %688 = getelementptr inbounds %struct.vlink, %struct.vlink* %687, i32 0, i32 19
  %689 = load %struct.vlink*, %struct.vlink** %688, align 8
  %690 = load %struct.vlink*, %struct.vlink** %23, align 8
  %691 = getelementptr inbounds %struct.vlink, %struct.vlink* %690, i32 0, i32 20
  %692 = load %struct.vlink*, %struct.vlink** %691, align 8
  %693 = getelementptr inbounds %struct.vlink, %struct.vlink* %692, i32 0, i32 19
  store %struct.vlink* %689, %struct.vlink** %693, align 8
  br label %694

694:                                              ; preds = %686, %681
  %695 = load %struct.vlink*, %struct.vlink** %23, align 8
  store %struct.vlink* %695, %struct.vlink** %48, align 8
  %696 = load %struct.vlink*, %struct.vlink** %23, align 8
  %697 = getelementptr inbounds %struct.vlink, %struct.vlink* %696, i32 0, i32 20
  %698 = load %struct.vlink*, %struct.vlink** %697, align 8
  store %struct.vlink* %698, %struct.vlink** %23, align 8
  %699 = load %struct.vlink*, %struct.vlink** %48, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %699)
  br label %704

700:                                              ; preds = %654, %648
  %701 = load %struct.vlink*, %struct.vlink** %23, align 8
  %702 = getelementptr inbounds %struct.vlink, %struct.vlink* %701, i32 0, i32 20
  %703 = load %struct.vlink*, %struct.vlink** %702, align 8
  store %struct.vlink* %703, %struct.vlink** %23, align 8
  br label %704

704:                                              ; preds = %700, %694
  br label %645, !llvm.loop !9

705:                                              ; preds = %645
  br label %706

706:                                              ; preds = %705, %636, %633
  store i32 0, i32* %8, align 4
  br label %707

707:                                              ; preds = %706, %570, %557, %520, %507, %395, %175
  %708 = load i32, i32* %8, align 4
  ret i32 %708
}

declare dso_local %struct.pfs_auth_info* @get_pauth(...) #1

declare dso_local i8* @strcat(i8* noundef, i8* noundef) #1

declare dso_local %struct.ptext* @ptalloc(...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local %struct.ptext* @dirsend(...) #1

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local %struct.pattrib* @parse_attribute(...) #1

declare dso_local void @atfree(...) #1

declare dso_local void @vllfree(...) #1

declare dso_local %struct.vlink* @vlalloc(...) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #2

declare dso_local void @vlfree(...) #1

declare dso_local i8* @stcopyr(...) #1

declare dso_local i8* @unquote(...) #1

declare dso_local i32 @wcmatch(i8* noundef, i8* noundef) #1

declare dso_local i32 @vl_insert(%struct.vlink* noundef, %struct.vdir* noundef, i32 noundef) #1

declare dso_local i32 @ul_insert(%struct.vlink* noundef, %struct.vdir* noundef, %struct.vlink* noundef) #1

declare dso_local void @ptlfree(...) #1

declare dso_local i8* @stcopy(...) #1

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #1

declare dso_local i32 @scan_error(i8* noundef) #1

declare dso_local i8* @nxtline(...) #1

declare dso_local void @ptfree(...) #1

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
