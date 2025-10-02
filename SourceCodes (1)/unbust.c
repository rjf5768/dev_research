; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/unbust.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/unbust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bustbox = type { i32, i32 }
%struct.Rangle = type { i32, i32, i32, i32 }

@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [41 x i8] c"Serious error: could not advance upward \00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"from first vertex\0A\00", align 1
@PtsArray = external dso_local global %struct.bustbox*, align 8
@rectang = external dso_local global %struct.Rangle*, align 8
@PtsOut = external dso_local global %struct.bustbox*, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Fatal error in unbust.c\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Two points in outline not rectilinear \00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"and this constitutes death\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"PtsOut:\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"x:%d  y:%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"PtsArray:\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Rectangles:\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"l:%d  r:%d  b:%d  t:%d\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @unbust() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @coincide()
  %4 = call i32 @firstP()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @u(i32 noundef %5)
  store i32 %6, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 0) #3
  unreachable

13:                                               ; preds = %0
  %14 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %14)
  %15 = load i32, i32* %3, align 4
  store i32 %15, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %16

16:                                               ; preds = %230, %13
  %17 = load i32, i32* %2, align 4
  switch i32 %17, label %230 [
    i32 1, label %18
    i32 2, label %71
    i32 3, label %124
    i32 4, label %177
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @l(i32 noundef %19)
  store i32 %20, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %18
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @u(i32 noundef %23)
  store i32 %24, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @r(i32 noundef %27)
  store i32 %28, i32* %3, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %31)
  call void @condense()
  br label %231

32:                                               ; preds = %26
  %33 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %33)
  %34 = load i32, i32* %1, align 4
  call void @elim(i32 noundef %34)
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %37 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %36, i64 0
  %38 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %35, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %3, align 4
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %41, %32
  store i32 3, i32* %2, align 4
  br label %44

44:                                               ; preds = %43
  br label %57

45:                                               ; preds = %22
  %46 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %46)
  %47 = load i32, i32* %1, align 4
  call void @elim(i32 noundef %47)
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %50 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %49, i64 0
  %51 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %48, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* %1, align 4
  br label %56

56:                                               ; preds = %54, %45
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %44
  br label %70

58:                                               ; preds = %18
  %59 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %59)
  %60 = load i32, i32* %1, align 4
  call void @elim(i32 noundef %60)
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %63 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %62, i64 0
  %64 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sle i32 %61, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %3, align 4
  store i32 %68, i32* %1, align 4
  br label %69

69:                                               ; preds = %67, %58
  store i32 2, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %57
  br label %230

71:                                               ; preds = %16
  %72 = load i32, i32* %1, align 4
  %73 = call i32 @b(i32 noundef %72)
  store i32 %73, i32* %3, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %111

75:                                               ; preds = %71
  %76 = load i32, i32* %1, align 4
  %77 = call i32 @l(i32 noundef %76)
  store i32 %77, i32* %3, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %75
  %80 = load i32, i32* %1, align 4
  %81 = call i32 @u(i32 noundef %80)
  store i32 %81, i32* %3, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %84)
  call void @condense()
  br label %231

85:                                               ; preds = %79
  %86 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %86)
  %87 = load i32, i32* %1, align 4
  call void @elim(i32 noundef %87)
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %90 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %89, i64 0
  %91 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sle i32 %88, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %3, align 4
  store i32 %95, i32* %1, align 4
  br label %96

96:                                               ; preds = %94, %85
  store i32 1, i32* %2, align 4
  br label %97

97:                                               ; preds = %96
  br label %110

98:                                               ; preds = %75
  %99 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %99)
  %100 = load i32, i32* %1, align 4
  call void @elim(i32 noundef %100)
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %103 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %102, i64 0
  %104 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp sle i32 %101, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %3, align 4
  store i32 %108, i32* %1, align 4
  br label %109

109:                                              ; preds = %107, %98
  store i32 2, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %97
  br label %123

111:                                              ; preds = %71
  %112 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %112)
  %113 = load i32, i32* %1, align 4
  call void @elim(i32 noundef %113)
  %114 = load i32, i32* %3, align 4
  %115 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %116 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %115, i64 0
  %117 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp sle i32 %114, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i32, i32* %3, align 4
  store i32 %121, i32* %1, align 4
  br label %122

122:                                              ; preds = %120, %111
  store i32 4, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %110
  br label %230

124:                                              ; preds = %16
  %125 = load i32, i32* %1, align 4
  %126 = call i32 @u(i32 noundef %125)
  store i32 %126, i32* %3, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %164

128:                                              ; preds = %124
  %129 = load i32, i32* %1, align 4
  %130 = call i32 @r(i32 noundef %129)
  store i32 %130, i32* %3, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %128
  %133 = load i32, i32* %1, align 4
  %134 = call i32 @b(i32 noundef %133)
  store i32 %134, i32* %3, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %137)
  call void @condense()
  br label %231

138:                                              ; preds = %132
  %139 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %139)
  %140 = load i32, i32* %1, align 4
  call void @elim(i32 noundef %140)
  %141 = load i32, i32* %3, align 4
  %142 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %143 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %142, i64 0
  %144 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp sle i32 %141, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %138
  %148 = load i32, i32* %3, align 4
  store i32 %148, i32* %1, align 4
  br label %149

149:                                              ; preds = %147, %138
  store i32 4, i32* %2, align 4
  br label %150

150:                                              ; preds = %149
  br label %163

151:                                              ; preds = %128
  %152 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %152)
  %153 = load i32, i32* %1, align 4
  call void @elim(i32 noundef %153)
  %154 = load i32, i32* %3, align 4
  %155 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %156 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %155, i64 0
  %157 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp sle i32 %154, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %151
  %161 = load i32, i32* %3, align 4
  store i32 %161, i32* %1, align 4
  br label %162

162:                                              ; preds = %160, %151
  store i32 3, i32* %2, align 4
  br label %163

163:                                              ; preds = %162, %150
  br label %176

164:                                              ; preds = %124
  %165 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %165)
  %166 = load i32, i32* %1, align 4
  call void @elim(i32 noundef %166)
  %167 = load i32, i32* %3, align 4
  %168 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %169 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %168, i64 0
  %170 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp sle i32 %167, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %164
  %174 = load i32, i32* %3, align 4
  store i32 %174, i32* %1, align 4
  br label %175

175:                                              ; preds = %173, %164
  store i32 1, i32* %2, align 4
  br label %176

176:                                              ; preds = %175, %163
  br label %230

177:                                              ; preds = %16
  %178 = load i32, i32* %1, align 4
  %179 = call i32 @r(i32 noundef %178)
  store i32 %179, i32* %3, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %217

181:                                              ; preds = %177
  %182 = load i32, i32* %1, align 4
  %183 = call i32 @b(i32 noundef %182)
  store i32 %183, i32* %3, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %204

185:                                              ; preds = %181
  %186 = load i32, i32* %1, align 4
  %187 = call i32 @l(i32 noundef %186)
  store i32 %187, i32* %3, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %190)
  call void @condense()
  br label %231

191:                                              ; preds = %185
  %192 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %192)
  %193 = load i32, i32* %1, align 4
  call void @elim(i32 noundef %193)
  %194 = load i32, i32* %3, align 4
  %195 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %196 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %195, i64 0
  %197 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp sle i32 %194, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %191
  %201 = load i32, i32* %3, align 4
  store i32 %201, i32* %1, align 4
  br label %202

202:                                              ; preds = %200, %191
  store i32 2, i32* %2, align 4
  br label %203

203:                                              ; preds = %202
  br label %216

204:                                              ; preds = %181
  %205 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %205)
  %206 = load i32, i32* %1, align 4
  call void @elim(i32 noundef %206)
  %207 = load i32, i32* %3, align 4
  %208 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %209 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %208, i64 0
  %210 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp sle i32 %207, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %204
  %214 = load i32, i32* %3, align 4
  store i32 %214, i32* %1, align 4
  br label %215

215:                                              ; preds = %213, %204
  store i32 4, i32* %2, align 4
  br label %216

216:                                              ; preds = %215, %203
  br label %229

217:                                              ; preds = %177
  %218 = load i32, i32* %1, align 4
  call void @outputP(i32 noundef %218)
  %219 = load i32, i32* %1, align 4
  call void @elim(i32 noundef %219)
  %220 = load i32, i32* %3, align 4
  %221 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %222 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %221, i64 0
  %223 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp sle i32 %220, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %217
  %227 = load i32, i32* %3, align 4
  store i32 %227, i32* %1, align 4
  br label %228

228:                                              ; preds = %226, %217
  store i32 3, i32* %2, align 4
  br label %229

229:                                              ; preds = %228, %216
  br label %230

230:                                              ; preds = %16, %229, %176, %123, %70
  br label %16

231:                                              ; preds = %189, %136, %83, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @coincide() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  br label %5

5:                                                ; preds = %88, %0
  %6 = load i32, i32* %1, align 4
  %7 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %7, i64 0
  %9 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %6, %10
  br i1 %11, label %12, label %91

12:                                               ; preds = %5
  %13 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %13, i64 %15
  %17 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %2, align 4
  %19 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %19, i64 %21
  %23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %84, %12
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %30 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %29, i64 0
  %31 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %28, %32
  br i1 %33, label %34, label %87

34:                                               ; preds = %27
  %35 = load i32, i32* %2, align 4
  %36 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %36, i64 %38
  %40 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %35, %41
  br i1 %42, label %43, label %83

43:                                               ; preds = %34
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %45, i64 %47
  %49 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %44, %50
  br i1 %51, label %52, label %83

52:                                               ; preds = %43
  %53 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %54 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %55 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %54, i64 0
  %56 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %53, i64 %58
  %60 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %62, i64 %64
  %66 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %65, i32 0, i32 0
  store i32 %61, i32* %66, align 4
  %67 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %68 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %69 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %68, i64 0
  %70 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %67, i64 %73
  %75 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %4, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %77, i64 %80
  %82 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %81, i32 0, i32 1
  store i32 %76, i32* %82, align 4
  br label %83

83:                                               ; preds = %52, %43, %34
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %27, !llvm.loop !4

87:                                               ; preds = %27
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %1, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %1, align 4
  br label %5, !llvm.loop !6

91:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @firstP() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 100000000, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %5

5:                                                ; preds = %29, %0
  %6 = load i32, i32* %1, align 4
  %7 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %8 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %7, i64 0
  %9 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %6, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %5
  %13 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %13, i64 %15
  %17 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %12
  %22 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i64 %24
  %26 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %21, %12
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %5, !llvm.loop !7

32:                                               ; preds = %5
  store i32 100000000, i32* %3, align 4
  store i32 1, i32* %1, align 4
  br label %33

33:                                               ; preds = %68, %32
  %34 = load i32, i32* %1, align 4
  %35 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %36 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %35, i64 0
  %37 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %34, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %33
  %41 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %41, i64 %43
  %45 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %2, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %40
  %50 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %50, i64 %52
  %54 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %59, i64 %61
  %63 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %1, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %58, %49
  br label %67

67:                                               ; preds = %66, %40
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %33, !llvm.loop !8

71:                                               ; preds = %33
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 100000000, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %8, i64 %10
  %12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %14, i64 %16
  %18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %74, %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i64 0
  %24 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %21, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %74

32:                                               ; preds = %27
  %33 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %33, i64 %35
  %37 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %74

42:                                               ; preds = %32
  %43 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %43, i64 %45
  %47 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %42
  %52 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %52, i64 %54
  %56 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %51
  %63 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %63, i64 %65
  %67 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %3, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %62, %51
  br label %73

73:                                               ; preds = %72, %42
  br label %74

74:                                               ; preds = %73, %41, %31
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %20, !llvm.loop !9

77:                                               ; preds = %20
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @recCheck(i32 noundef %81, i32 noundef %82)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %80
  br label %87

87:                                               ; preds = %86, %77
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @outputP(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %3, i64 %5
  %7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %10 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %10, i64 0
  %12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %9, i64 %15
  %17 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %16, i32 0, i32 0
  store i32 %8, i32* %17, align 4
  %18 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %18, i64 %20
  %22 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %25 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %26 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %25, i64 0
  %27 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %24, i64 %29
  %31 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %30, i32 0, i32 1
  store i32 %23, i32* %31, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @l(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 100000000, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %8, i64 %10
  %12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %14, i64 %16
  %18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %74, %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i64 0
  %24 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %21, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %74

32:                                               ; preds = %27
  %33 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %33, i64 %35
  %37 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %74

42:                                               ; preds = %32
  %43 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %43, i64 %45
  %47 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %42
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %53, i64 %55
  %57 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %52, %58
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %51
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %64, i64 %66
  %68 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %63, %69
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %3, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %62, %51
  br label %73

73:                                               ; preds = %72, %42
  br label %74

74:                                               ; preds = %73, %41, %31
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %20, !llvm.loop !10

77:                                               ; preds = %20
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @recCheck(i32 noundef %81, i32 noundef %82)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %80
  br label %87

87:                                               ; preds = %86, %77
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @r(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 100000000, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %8, i64 %10
  %12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %14, i64 %16
  %18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %74, %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i64 0
  %24 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %21, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %74

32:                                               ; preds = %27
  %33 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %33, i64 %35
  %37 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %74

42:                                               ; preds = %32
  %43 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %43, i64 %45
  %47 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %42
  %52 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %52, i64 %54
  %56 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %51
  %63 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %63, i64 %65
  %67 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %3, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %62, %51
  br label %73

73:                                               ; preds = %72, %42
  br label %74

74:                                               ; preds = %73, %41, %31
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %20, !llvm.loop !11

77:                                               ; preds = %20
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @recCheck(i32 noundef %81, i32 noundef %82)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %80
  br label %87

87:                                               ; preds = %86, %77
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @condense() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i64 0
  %13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  call void @dumpError()
  call void @exit(i32 noundef 0) #3
  unreachable

18:                                               ; preds = %0
  store i32 1, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 3, i32* %10, align 4
  br label %19

19:                                               ; preds = %183, %18
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %22 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %21, i64 0
  %23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %20, %24
  br i1 %25, label %26, label %186

26:                                               ; preds = %19
  %27 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %27, i64 %29
  %31 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %1, align 4
  %33 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %33, i64 %35
  %37 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %2, align 4
  %39 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %39, i64 %41
  %43 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  %45 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %45, i64 %47
  %49 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  %51 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %51, i64 %53
  %55 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %5, align 4
  %57 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %57, i64 %59
  %61 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %119

66:                                               ; preds = %26
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %1, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %115

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %104, %70
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %75 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %74, i64 0
  %76 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sle i32 %73, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %72
  %80 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %80, i64 %82
  %84 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %86, i64 %89
  %91 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %90, i32 0, i32 0
  store i32 %85, i32* %91, align 4
  %92 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %92, i64 %94
  %96 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %98, i64 %101
  %103 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %102, i32 0, i32 1
  store i32 %97, i32* %103, align 4
  br label %104

104:                                              ; preds = %79
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %72, !llvm.loop !12

107:                                              ; preds = %72
  %108 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %109 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %108, i64 0
  %110 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %10, align 4
  store i32 %114, i32* %9, align 4
  br label %118

115:                                              ; preds = %66
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %115, %107
  br label %182

119:                                              ; preds = %26
  %120 = load i32, i32* %2, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %176

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %2, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %172

127:                                              ; preds = %123
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %161, %127
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %132 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %131, i64 0
  %133 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp sle i32 %130, %134
  br i1 %135, label %136, label %164

136:                                              ; preds = %129
  %137 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %137, i64 %139
  %141 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %143, i64 %146
  %148 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %147, i32 0, i32 0
  store i32 %142, i32* %148, align 4
  %149 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %149, i64 %151
  %153 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %155, i64 %158
  %160 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %159, i32 0, i32 1
  store i32 %154, i32* %160, align 4
  br label %161

161:                                              ; preds = %136
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %129, !llvm.loop !13

164:                                              ; preds = %129
  %165 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %166 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %165, i64 0
  %167 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %10, align 4
  store i32 %171, i32* %9, align 4
  br label %175

172:                                              ; preds = %123
  %173 = load i32, i32* %9, align 4
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %172, %164
  br label %181

176:                                              ; preds = %119
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %177, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %179, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 noundef 0) #3
  unreachable

181:                                              ; preds = %175
  br label %182

182:                                              ; preds = %181, %118
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %10, align 4
  br label %19, !llvm.loop !14

186:                                              ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @elim(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %4 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %5 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %4, i64 0
  %6 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %3, i64 %8
  %10 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i64 %14
  %16 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %15, i32 0, i32 0
  store i32 %11, i32* %16, align 4
  %17 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %18 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %18, i64 0
  %20 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %17, i64 %23
  %25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %27, i64 %29
  %31 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %30, i32 0, i32 1
  store i32 %26, i32* %31, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @b(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 100000000, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %8, i64 %10
  %12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %14, i64 %16
  %18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %74, %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i64 0
  %24 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %21, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %74

32:                                               ; preds = %27
  %33 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %33, i64 %35
  %37 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %74

42:                                               ; preds = %32
  %43 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %43, i64 %45
  %47 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %53, i64 %55
  %57 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %52, %58
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %51
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %64, i64 %66
  %68 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %63, %69
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %3, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %62, %51
  br label %73

73:                                               ; preds = %72, %42
  br label %74

74:                                               ; preds = %73, %41, %31
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %20, !llvm.loop !15

77:                                               ; preds = %20
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @recCheck(i32 noundef %81, i32 noundef %82)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %80
  br label %87

87:                                               ; preds = %86, %77
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @addPts(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %11 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i64 0
  %13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %10, i64 %16
  %18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %17, i32 0, i32 0
  store i32 %9, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %21 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %22 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %21, i64 0
  %23 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %20, i64 %25
  %27 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %26, i32 0, i32 1
  store i32 %19, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %30 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %31 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %30, i64 0
  %32 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %29, i64 %35
  %37 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %36, i32 0, i32 0
  store i32 %28, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %40 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %41 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %40, i64 0
  %42 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %39, i64 %44
  %46 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %45, i32 0, i32 1
  store i32 %38, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %49 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %50 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %49, i64 0
  %51 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %48, i64 %54
  %56 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %55, i32 0, i32 0
  store i32 %47, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %59 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %60 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %59, i64 0
  %61 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %58, i64 %63
  %65 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %64, i32 0, i32 1
  store i32 %57, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %68 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %69 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %68, i64 0
  %70 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %67, i64 %73
  %75 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %74, i32 0, i32 0
  store i32 %66, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %78 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %79 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %78, i64 0
  %80 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %77, i64 %82
  %84 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %83, i32 0, i32 1
  store i32 %76, i32* %84, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %87 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %88 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %87, i64 0
  %89 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %86, i64 %92
  %94 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %93, i32 0, i32 0
  store i32 %85, i32* %94, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %97 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %98 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %97, i64 0
  %99 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %96, i64 %101
  %103 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %102, i32 0, i32 1
  store i32 %95, i32* %103, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %106 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %107 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %106, i64 0
  %108 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %105, i64 %110
  %112 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %111, i32 0, i32 2
  store i32 %104, i32* %112, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %115 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %116 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %115, i64 0
  %117 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %114, i64 %119
  %121 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %120, i32 0, i32 3
  store i32 %113, i32* %121, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initPts(i32 noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %32, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp sle i32 %9, 100
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i64 %14
  %16 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %17, i64 %19
  %21 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %22, i64 %24
  %26 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %27, i64 %29
  %31 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %11
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %8, !llvm.loop !16

35:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %60, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp sle i32 %37, 25
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %40, i64 %42
  %44 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %45, i64 %47
  %49 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %50, i64 %52
  %54 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %53, i32 0, i32 2
  store i32 0, i32* %54, align 4
  %55 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %55, i64 %57
  %59 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %58, i32 0, i32 3
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %39
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %36, !llvm.loop !17

63:                                               ; preds = %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @recCheck(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %15, i64 %17
  %19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %21, i64 %23
  %25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %27, i64 %29
  %31 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %33, i64 %35
  %37 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %105, %2
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %42 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %41, i64 0
  %43 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %40, %44
  br i1 %45, label %46, label %108

46:                                               ; preds = %39
  %47 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %47, i64 %49
  %51 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %53, i64 %55
  %57 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  %59 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %59, i64 %61
  %63 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  %65 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %65, i64 %67
  %69 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %104

74:                                               ; preds = %46
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 1, i32* %3, align 4
  br label %109

103:                                              ; preds = %98, %94, %90, %86
  br label %104

104:                                              ; preds = %103, %82, %78, %74, %46
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %39, !llvm.loop !18

108:                                              ; preds = %39
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %102
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpError() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %9

9:                                                ; preds = %32, %0
  %10 = load i32, i32* %1, align 4
  %11 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i64 0
  %13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sle i32 %10, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %9
  %17 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %17, i64 %19
  %21 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %2, align 4
  %23 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %23, i64 %25
  %27 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 noundef %29, i32 noundef %30)
  br label %32

32:                                               ; preds = %16
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %9, !llvm.loop !19

35:                                               ; preds = %9
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %37

37:                                               ; preds = %60, %35
  %38 = load i32, i32* %1, align 4
  %39 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %40 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %39, i64 0
  %41 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sle i32 %38, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %37
  %45 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %45, i64 %47
  %49 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %2, align 4
  %51 = load %struct.bustbox*, %struct.bustbox** @PtsArray, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %51, i64 %53
  %55 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 noundef %57, i32 noundef %58)
  br label %60

60:                                               ; preds = %44
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %1, align 4
  br label %37, !llvm.loop !20

63:                                               ; preds = %37
  %64 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %65

65:                                               ; preds = %102, %63
  %66 = load i32, i32* %1, align 4
  %67 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %68 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %67, i64 0
  %69 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sle i32 %66, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %65
  %73 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %73, i64 %75
  %77 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %4, align 4
  %79 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %79, i64 %81
  %83 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %5, align 4
  %85 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %85, i64 %87
  %89 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %6, align 4
  %91 = load %struct.Rangle*, %struct.Rangle** @rectang, align 8
  %92 = load i32, i32* %1, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %91, i64 %93
  %95 = getelementptr inbounds %struct.Rangle, %struct.Rangle* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 noundef %97, i32 noundef %98, i32 noundef %99, i32 noundef %100)
  br label %102

102:                                              ; preds = %72
  %103 = load i32, i32* %1, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %1, align 4
  br label %65, !llvm.loop !21

105:                                              ; preds = %65
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %107 = call i32 @fflush(%struct._IO_FILE* noundef %106)
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
