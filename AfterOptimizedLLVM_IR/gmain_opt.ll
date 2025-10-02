; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/gmain.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/gmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.dlink1 = type { i32, %struct.dlink1*, %struct.dlink1* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.rect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dlink2 = type { i32, %struct.dlink2*, %struct.dlink2* }
%struct.nodbox = type { %struct.flare*, %struct.flare*, i32 }
%struct.flare = type { i32, i32*, %struct.flare* }

@.str = private unnamed_addr constant [9 x i8] c"%s.debug\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpdebug = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s.geo\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Error: file: %s not present\0A\00", align 1
@Vptrs = external dso_local global %struct.dlink1**, align 8
@Hptrs = external dso_local global %struct.dlink1**, align 8
@Vroot = external dso_local global %struct.tnode*, align 8
@Hroot = external dso_local global %struct.tnode*, align 8
@rectArray = external dso_local global %struct.rect*, align 8
@HRlist = external dso_local global %struct.dlink2*, align 8
@VRlist = external dso_local global %struct.dlink2*, align 8
@LEptrs = external dso_local global %struct.dlink2**, align 8
@BEptrs = external dso_local global %struct.dlink2**, align 8
@LEroot = external dso_local global %struct.tnode*, align 8
@BEroot = external dso_local global %struct.tnode*, align 8
@Hlist = external dso_local global %struct.dlink1*, align 8
@Vlist = external dso_local global %struct.dlink1*, align 8
@VDptrs = external dso_local global %struct.dlink1**, align 8
@HRptrs = external dso_local global %struct.dlink1**, align 8
@VDroot = external dso_local global %struct.tnode*, align 8
@HRroot = external dso_local global %struct.tnode*, align 8
@hFixedList = external dso_local global %struct.dlink1*, align 8
@vFixedList = external dso_local global %struct.dlink1*, align 8
@numberCells = external dso_local global i32, align 4
@xNodules = external dso_local global %struct.nodbox*, align 8
@yNodules = external dso_local global %struct.nodbox*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @gmain() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct.tnode*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.flare*, align 8
  %8 = alloca %struct.flare*, align 8
  %9 = alloca %struct.dlink2*, align 8
  %10 = alloca %struct.dlink2*, align 8
  %11 = alloca %struct.dlink1*, align 8
  %12 = alloca %struct.dlink1*, align 8
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %14 = load i8*, i8** @cktName, align 8
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %13, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef %14) #4
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %17 = call noalias %struct._IO_FILE* @fopen(i8* noundef %16, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %17, %struct._IO_FILE** @fpdebug, align 8
  %18 = icmp eq %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %20)
  call void @exit(i32 noundef 0) #5
  unreachable

22:                                               ; preds = %0
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %24 = load i8*, i8** @cktName, align 8
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %23, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %24) #4
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %27 = call noalias %struct._IO_FILE* @fopen(i8* noundef %26, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %27, %struct._IO_FILE** %1, align 8
  %28 = icmp eq %struct._IO_FILE* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* noundef %31)
  call void @exit(i32 noundef 0) #5
  unreachable

33:                                               ; preds = %22
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @readgeo(%struct._IO_FILE* noundef %34)
  call void @makelink()
  call void @hprobes()
  call void @vprobes()
  %35 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %36 = bitcast %struct.dlink1** %35 to i8*
  call void @free(i8* noundef %36) #4
  %37 = load %struct.dlink1**, %struct.dlink1*** @Hptrs, align 8
  %38 = bitcast %struct.dlink1** %37 to i8*
  call void @free(i8* noundef %38) #4
  %39 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %40 = icmp ne %struct.tnode* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %46, %41
  call void @tpop(%struct.tnode** noundef @Vroot, %struct.tnode** noundef %2, i32* noundef %4, i32* noundef %5)
  %43 = load %struct.tnode*, %struct.tnode** %2, align 8
  %44 = icmp eq %struct.tnode* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %47

46:                                               ; preds = %42
  br label %42

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47, %33
  %49 = load %struct.tnode*, %struct.tnode** @Hroot, align 8
  %50 = icmp ne %struct.tnode* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %56, %51
  call void @tpop(%struct.tnode** noundef @Hroot, %struct.tnode** noundef %2, i32* noundef %4, i32* noundef %5)
  %53 = load %struct.tnode*, %struct.tnode** %2, align 8
  %54 = icmp eq %struct.tnode* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %57

56:                                               ; preds = %52
  br label %52

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57, %48
  call void @fulllink()
  call void @findnodes()
  call void @changraph()
  call void @xgraph()
  call void @ygraph()
  call void @reduceg()
  call void @printgph()
  call void @gentwf()
  %59 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %60 = bitcast %struct.rect* %59 to i8*
  call void @free(i8* noundef %60) #4
  %61 = load %struct.dlink2*, %struct.dlink2** @HRlist, align 8
  store %struct.dlink2* %61, %struct.dlink2** %9, align 8
  br label %62

62:                                               ; preds = %65, %58
  %63 = load %struct.dlink2*, %struct.dlink2** %9, align 8
  %64 = icmp ne %struct.dlink2* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.dlink2*, %struct.dlink2** %9, align 8
  %67 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %66, i32 0, i32 2
  %68 = load %struct.dlink2*, %struct.dlink2** %67, align 8
  store %struct.dlink2* %68, %struct.dlink2** %10, align 8
  %69 = load %struct.dlink2*, %struct.dlink2** %9, align 8
  %70 = bitcast %struct.dlink2* %69 to i8*
  call void @free(i8* noundef %70) #4
  %71 = load %struct.dlink2*, %struct.dlink2** %10, align 8
  store %struct.dlink2* %71, %struct.dlink2** %9, align 8
  br label %62, !llvm.loop !4

72:                                               ; preds = %62
  %73 = load %struct.dlink2*, %struct.dlink2** @VRlist, align 8
  store %struct.dlink2* %73, %struct.dlink2** %9, align 8
  br label %74

74:                                               ; preds = %77, %72
  %75 = load %struct.dlink2*, %struct.dlink2** %9, align 8
  %76 = icmp ne %struct.dlink2* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.dlink2*, %struct.dlink2** %9, align 8
  %79 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %78, i32 0, i32 2
  %80 = load %struct.dlink2*, %struct.dlink2** %79, align 8
  store %struct.dlink2* %80, %struct.dlink2** %10, align 8
  %81 = load %struct.dlink2*, %struct.dlink2** %9, align 8
  %82 = bitcast %struct.dlink2* %81 to i8*
  call void @free(i8* noundef %82) #4
  %83 = load %struct.dlink2*, %struct.dlink2** %10, align 8
  store %struct.dlink2* %83, %struct.dlink2** %9, align 8
  br label %74, !llvm.loop !6

84:                                               ; preds = %74
  %85 = load %struct.dlink2**, %struct.dlink2*** @LEptrs, align 8
  %86 = bitcast %struct.dlink2** %85 to i8*
  call void @free(i8* noundef %86) #4
  %87 = load %struct.dlink2**, %struct.dlink2*** @BEptrs, align 8
  %88 = bitcast %struct.dlink2** %87 to i8*
  call void @free(i8* noundef %88) #4
  %89 = load %struct.tnode*, %struct.tnode** @LEroot, align 8
  %90 = icmp ne %struct.tnode* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %96, %91
  call void @tpop(%struct.tnode** noundef @LEroot, %struct.tnode** noundef %2, i32* noundef %4, i32* noundef %5)
  %93 = load %struct.tnode*, %struct.tnode** %2, align 8
  %94 = icmp eq %struct.tnode* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %97

96:                                               ; preds = %92
  br label %92

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %97, %84
  %99 = load %struct.tnode*, %struct.tnode** @BEroot, align 8
  %100 = icmp ne %struct.tnode* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %106, %101
  call void @tpop(%struct.tnode** noundef @BEroot, %struct.tnode** noundef %2, i32* noundef %4, i32* noundef %5)
  %103 = load %struct.tnode*, %struct.tnode** %2, align 8
  %104 = icmp eq %struct.tnode* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %107

106:                                              ; preds = %102
  br label %102

107:                                              ; preds = %105
  br label %108

108:                                              ; preds = %107, %98
  %109 = load %struct.dlink1*, %struct.dlink1** @Hlist, align 8
  store %struct.dlink1* %109, %struct.dlink1** %11, align 8
  br label %110

110:                                              ; preds = %113, %108
  %111 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %112 = icmp ne %struct.dlink1* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %115 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %114, i32 0, i32 2
  %116 = load %struct.dlink1*, %struct.dlink1** %115, align 8
  store %struct.dlink1* %116, %struct.dlink1** %12, align 8
  %117 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %118 = bitcast %struct.dlink1* %117 to i8*
  call void @free(i8* noundef %118) #4
  %119 = load %struct.dlink1*, %struct.dlink1** %12, align 8
  store %struct.dlink1* %119, %struct.dlink1** %11, align 8
  br label %110, !llvm.loop !7

120:                                              ; preds = %110
  %121 = load %struct.dlink1*, %struct.dlink1** @Vlist, align 8
  store %struct.dlink1* %121, %struct.dlink1** %11, align 8
  br label %122

122:                                              ; preds = %125, %120
  %123 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %124 = icmp ne %struct.dlink1* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %127 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %126, i32 0, i32 2
  %128 = load %struct.dlink1*, %struct.dlink1** %127, align 8
  store %struct.dlink1* %128, %struct.dlink1** %12, align 8
  %129 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %130 = bitcast %struct.dlink1* %129 to i8*
  call void @free(i8* noundef %130) #4
  %131 = load %struct.dlink1*, %struct.dlink1** %12, align 8
  store %struct.dlink1* %131, %struct.dlink1** %11, align 8
  br label %122, !llvm.loop !8

132:                                              ; preds = %122
  %133 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %134 = bitcast %struct.dlink1** %133 to i8*
  call void @free(i8* noundef %134) #4
  %135 = load %struct.dlink1**, %struct.dlink1*** @Hptrs, align 8
  %136 = bitcast %struct.dlink1** %135 to i8*
  call void @free(i8* noundef %136) #4
  %137 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %138 = icmp ne %struct.tnode* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %144, %139
  call void @tpop(%struct.tnode** noundef @Vroot, %struct.tnode** noundef %2, i32* noundef %4, i32* noundef %5)
  %141 = load %struct.tnode*, %struct.tnode** %2, align 8
  %142 = icmp eq %struct.tnode* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %145

144:                                              ; preds = %140
  br label %140

145:                                              ; preds = %143
  br label %146

146:                                              ; preds = %145, %132
  %147 = load %struct.tnode*, %struct.tnode** @Hroot, align 8
  %148 = icmp ne %struct.tnode* %147, null
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  br label %150

150:                                              ; preds = %154, %149
  call void @tpop(%struct.tnode** noundef @Hroot, %struct.tnode** noundef %2, i32* noundef %4, i32* noundef %5)
  %151 = load %struct.tnode*, %struct.tnode** %2, align 8
  %152 = icmp eq %struct.tnode* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %155

154:                                              ; preds = %150
  br label %150

155:                                              ; preds = %153
  br label %156

156:                                              ; preds = %155, %146
  %157 = load %struct.dlink1**, %struct.dlink1*** @VDptrs, align 8
  %158 = bitcast %struct.dlink1** %157 to i8*
  call void @free(i8* noundef %158) #4
  %159 = load %struct.dlink1**, %struct.dlink1*** @HRptrs, align 8
  %160 = bitcast %struct.dlink1** %159 to i8*
  call void @free(i8* noundef %160) #4
  %161 = load %struct.tnode*, %struct.tnode** @VDroot, align 8
  %162 = icmp ne %struct.tnode* %161, null
  br i1 %162, label %163, label %170

163:                                              ; preds = %156
  br label %164

164:                                              ; preds = %168, %163
  call void @tpop(%struct.tnode** noundef @VDroot, %struct.tnode** noundef %2, i32* noundef %4, i32* noundef %5)
  %165 = load %struct.tnode*, %struct.tnode** %2, align 8
  %166 = icmp eq %struct.tnode* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %169

168:                                              ; preds = %164
  br label %164

169:                                              ; preds = %167
  br label %170

170:                                              ; preds = %169, %156
  %171 = load %struct.tnode*, %struct.tnode** @HRroot, align 8
  %172 = icmp ne %struct.tnode* %171, null
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  br label %174

174:                                              ; preds = %178, %173
  call void @tpop(%struct.tnode** noundef @HRroot, %struct.tnode** noundef %2, i32* noundef %4, i32* noundef %5)
  %175 = load %struct.tnode*, %struct.tnode** %2, align 8
  %176 = icmp eq %struct.tnode* %175, null
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  br label %179

178:                                              ; preds = %174
  br label %174

179:                                              ; preds = %177
  br label %180

180:                                              ; preds = %179, %170
  %181 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  store %struct.dlink1* %181, %struct.dlink1** %11, align 8
  br label %182

182:                                              ; preds = %185, %180
  %183 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %184 = icmp ne %struct.dlink1* %183, null
  br i1 %184, label %185, label %192

185:                                              ; preds = %182
  %186 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %187 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %186, i32 0, i32 2
  %188 = load %struct.dlink1*, %struct.dlink1** %187, align 8
  store %struct.dlink1* %188, %struct.dlink1** %12, align 8
  %189 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %190 = bitcast %struct.dlink1* %189 to i8*
  call void @free(i8* noundef %190) #4
  %191 = load %struct.dlink1*, %struct.dlink1** %12, align 8
  store %struct.dlink1* %191, %struct.dlink1** %11, align 8
  br label %182, !llvm.loop !9

192:                                              ; preds = %182
  %193 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  store %struct.dlink1* %193, %struct.dlink1** %11, align 8
  br label %194

194:                                              ; preds = %197, %192
  %195 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %196 = icmp ne %struct.dlink1* %195, null
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %199 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %198, i32 0, i32 2
  %200 = load %struct.dlink1*, %struct.dlink1** %199, align 8
  store %struct.dlink1* %200, %struct.dlink1** %12, align 8
  %201 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %202 = bitcast %struct.dlink1* %201 to i8*
  call void @free(i8* noundef %202) #4
  %203 = load %struct.dlink1*, %struct.dlink1** %12, align 8
  store %struct.dlink1* %203, %struct.dlink1** %11, align 8
  br label %194, !llvm.loop !10

204:                                              ; preds = %194
  store i32 0, i32* %6, align 4
  br label %205

205:                                              ; preds = %295, %204
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @numberCells, align 4
  %208 = add nsw i32 %207, 1
  %209 = icmp sle i32 %206, %208
  br i1 %209, label %210, label %298

210:                                              ; preds = %205
  %211 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %211, i64 %213
  %215 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %214, i32 0, i32 1
  %216 = load %struct.flare*, %struct.flare** %215, align 8
  store %struct.flare* %216, %struct.flare** %7, align 8
  br label %217

217:                                              ; preds = %220, %210
  %218 = load %struct.flare*, %struct.flare** %7, align 8
  %219 = icmp ne %struct.flare* %218, null
  br i1 %219, label %220, label %231

220:                                              ; preds = %217
  %221 = load %struct.flare*, %struct.flare** %7, align 8
  %222 = getelementptr inbounds %struct.flare, %struct.flare* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = bitcast i32* %223 to i8*
  call void @free(i8* noundef %224) #4
  %225 = load %struct.flare*, %struct.flare** %7, align 8
  %226 = getelementptr inbounds %struct.flare, %struct.flare* %225, i32 0, i32 2
  %227 = load %struct.flare*, %struct.flare** %226, align 8
  store %struct.flare* %227, %struct.flare** %8, align 8
  %228 = load %struct.flare*, %struct.flare** %7, align 8
  %229 = bitcast %struct.flare* %228 to i8*
  call void @free(i8* noundef %229) #4
  %230 = load %struct.flare*, %struct.flare** %8, align 8
  store %struct.flare* %230, %struct.flare** %7, align 8
  br label %217, !llvm.loop !11

231:                                              ; preds = %217
  %232 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %232, i64 %234
  %236 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %235, i32 0, i32 0
  %237 = load %struct.flare*, %struct.flare** %236, align 8
  store %struct.flare* %237, %struct.flare** %7, align 8
  br label %238

238:                                              ; preds = %241, %231
  %239 = load %struct.flare*, %struct.flare** %7, align 8
  %240 = icmp ne %struct.flare* %239, null
  br i1 %240, label %241, label %252

241:                                              ; preds = %238
  %242 = load %struct.flare*, %struct.flare** %7, align 8
  %243 = getelementptr inbounds %struct.flare, %struct.flare* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = bitcast i32* %244 to i8*
  call void @free(i8* noundef %245) #4
  %246 = load %struct.flare*, %struct.flare** %7, align 8
  %247 = getelementptr inbounds %struct.flare, %struct.flare* %246, i32 0, i32 2
  %248 = load %struct.flare*, %struct.flare** %247, align 8
  store %struct.flare* %248, %struct.flare** %8, align 8
  %249 = load %struct.flare*, %struct.flare** %7, align 8
  %250 = bitcast %struct.flare* %249 to i8*
  call void @free(i8* noundef %250) #4
  %251 = load %struct.flare*, %struct.flare** %8, align 8
  store %struct.flare* %251, %struct.flare** %7, align 8
  br label %238, !llvm.loop !12

252:                                              ; preds = %238
  %253 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %254 = load i32, i32* %6, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %253, i64 %255
  %257 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %256, i32 0, i32 1
  %258 = load %struct.flare*, %struct.flare** %257, align 8
  store %struct.flare* %258, %struct.flare** %7, align 8
  br label %259

259:                                              ; preds = %262, %252
  %260 = load %struct.flare*, %struct.flare** %7, align 8
  %261 = icmp ne %struct.flare* %260, null
  br i1 %261, label %262, label %273

262:                                              ; preds = %259
  %263 = load %struct.flare*, %struct.flare** %7, align 8
  %264 = getelementptr inbounds %struct.flare, %struct.flare* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = bitcast i32* %265 to i8*
  call void @free(i8* noundef %266) #4
  %267 = load %struct.flare*, %struct.flare** %7, align 8
  %268 = getelementptr inbounds %struct.flare, %struct.flare* %267, i32 0, i32 2
  %269 = load %struct.flare*, %struct.flare** %268, align 8
  store %struct.flare* %269, %struct.flare** %8, align 8
  %270 = load %struct.flare*, %struct.flare** %7, align 8
  %271 = bitcast %struct.flare* %270 to i8*
  call void @free(i8* noundef %271) #4
  %272 = load %struct.flare*, %struct.flare** %8, align 8
  store %struct.flare* %272, %struct.flare** %7, align 8
  br label %259, !llvm.loop !13

273:                                              ; preds = %259
  %274 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %274, i64 %276
  %278 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %277, i32 0, i32 0
  %279 = load %struct.flare*, %struct.flare** %278, align 8
  store %struct.flare* %279, %struct.flare** %7, align 8
  br label %280

280:                                              ; preds = %283, %273
  %281 = load %struct.flare*, %struct.flare** %7, align 8
  %282 = icmp ne %struct.flare* %281, null
  br i1 %282, label %283, label %294

283:                                              ; preds = %280
  %284 = load %struct.flare*, %struct.flare** %7, align 8
  %285 = getelementptr inbounds %struct.flare, %struct.flare* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = bitcast i32* %286 to i8*
  call void @free(i8* noundef %287) #4
  %288 = load %struct.flare*, %struct.flare** %7, align 8
  %289 = getelementptr inbounds %struct.flare, %struct.flare* %288, i32 0, i32 2
  %290 = load %struct.flare*, %struct.flare** %289, align 8
  store %struct.flare* %290, %struct.flare** %8, align 8
  %291 = load %struct.flare*, %struct.flare** %7, align 8
  %292 = bitcast %struct.flare* %291 to i8*
  call void @free(i8* noundef %292) #4
  %293 = load %struct.flare*, %struct.flare** %8, align 8
  store %struct.flare* %293, %struct.flare** %7, align 8
  br label %280, !llvm.loop !14

294:                                              ; preds = %280
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %6, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %6, align 4
  br label %205, !llvm.loop !15

298:                                              ; preds = %205
  %299 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %300 = bitcast %struct.nodbox* %299 to i8*
  call void @free(i8* noundef %300) #4
  %301 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %302 = bitcast %struct.nodbox* %301 to i8*
  call void @free(i8* noundef %302) #4
  %303 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %304 = call i32 @fclose(%struct._IO_FILE* noundef %303)
  %305 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %306 = call i32 @fclose(%struct._IO_FILE* noundef %305)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local void @readgeo(%struct._IO_FILE* noundef) #2

declare dso_local void @makelink() #2

declare dso_local void @hprobes() #2

declare dso_local void @vprobes() #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

declare dso_local void @tpop(%struct.tnode** noundef, %struct.tnode** noundef, i32* noundef, i32* noundef) #2

declare dso_local void @fulllink() #2

declare dso_local void @findnodes() #2

declare dso_local void @changraph() #2

declare dso_local void @xgraph() #2

declare dso_local void @ygraph() #2

declare dso_local void @reduceg() #2

declare dso_local void @printgph() #2

declare dso_local void @gentwf() #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
