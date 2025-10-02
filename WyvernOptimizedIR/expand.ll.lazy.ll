; ModuleID = './expand.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.variable_set_list = type { %struct.variable_set_list*, %struct.variable_set* }
%struct.variable_set = type { %struct.variable**, i32 }
%struct.variable = type { %struct.variable*, i8*, i8*, i8 }
%struct.file = type { %struct.file*, i8*, %struct.dep*, %struct.commands*, i8*, %struct.dep*, i64, %struct.file*, %struct.file*, %struct.variable_set_list*, %struct.file*, i16, i16 }
%struct.commands = type { i8*, i32, i8*, i32, i8**, i8*, i8 }
%struct.dep = type opaque

@variable_expand.start = internal global [3 x i8] c"$\00\00", align 1
@variable_expand.end = internal global [2 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@current_variable_set_list = external dso_local global %struct.variable_set_list*, align 8
@reading_filename = external dso_local global i8*, align 8
@reading_lineno_ptr = external dso_local global i32*, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Recursive variable `%s' references itself (eventually)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @variable_expand(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [5 x i8], align 1
  %5 = call i8* (...) @initialize_variable_output() #5
  br label %6

6:                                                ; preds = %241, %1
  %.07 = phi i8* [ %5, %1 ], [ %.512, %241 ]
  %.02 = phi i8* [ %0, %1 ], [ %242, %241 ]
  %7 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %.02, i32 noundef 36) #6
  %.not = icmp eq i8* %7, null
  br i1 %.not, label %12, label %8

8:                                                ; preds = %6
  %9 = ptrtoint i8* %7 to i64
  %10 = ptrtoint i8* %.02 to i64
  %11 = sub i64 %9, %10
  br label %15

12:                                               ; preds = %6
  %13 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.02) #6
  %14 = add i64 %13, 1
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i64 [ %11, %8 ], [ %14, %12 ]
  %17 = call i8* (i8*, i8*, i64, ...) bitcast (i8* (...)* @variable_buffer_output to i8* (i8*, i8*, i64, ...)*)(i8* noundef %.07, i8* noundef %.02, i64 noundef %16) #5
  %18 = icmp eq i8* %7, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %243

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, i8* %7, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %216 [
    i32 36, label %24
    i32 40, label %26
    i32 123, label %26
    i32 0, label %215
  ]

24:                                               ; preds = %20
  %25 = call i8* (i8*, i8*, i32, ...) bitcast (i8* (...)* @variable_buffer_output to i8* (i8*, i8*, i32, ...)*)(i8* noundef %17, i8* noundef nonnull %21, i32 noundef 1) #5
  br label %236

26:                                               ; preds = %20, %20
  %27 = load i8, i8* %21, align 1
  %28 = icmp eq i8 %27, 40
  %29 = select i1 %28, i8 41, i8 125
  %30 = getelementptr inbounds i8, i8* %7, i64 2
  store i8* %17, i8** %2, align 8
  store i8* %21, i8** %3, align 8
  %31 = call i32 (i8**, i8**, ...) bitcast (i32 (...)* @handle_function to i32 (i8**, i8**, ...)*)(i8** noundef nonnull %2, i8** noundef nonnull %3) #5
  %.not38 = icmp eq i32 %31, 0
  br i1 %.not38, label %35, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %2, align 8
  %34 = load i8*, i8** %3, align 8
  br label %236

35:                                               ; preds = %26
  %36 = zext i8 %29 to i32
  %37 = call i8* @strchr(i8* noundef nonnull %30, i32 noundef %36) #6
  %.not39 = icmp eq i8* %37, null
  br i1 %.not39, label %40, label %38

38:                                               ; preds = %35
  %39 = call i8* (i8*, i8*, i32, ...) bitcast (i8* (...)* @lindex to i8* (i8*, i8*, i32, ...)*)(i8* noundef nonnull %30, i8* noundef nonnull %37, i32 noundef 36) #5
  br label %40

40:                                               ; preds = %38, %35
  %.014 = phi i8* [ %39, %38 ], [ %37, %35 ]
  %.not40 = icmp eq i8* %.014, null
  br i1 %.not40, label %71, label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %60, %41
  %.015 = phi i32 [ 0, %41 ], [ %.217, %60 ]
  %.13 = phi i8* [ %30, %41 ], [ %61, %60 ]
  %43 = load i8, i8* %.13, align 1
  %.not53 = icmp eq i8 %43, 0
  br i1 %.not53, label %.loopexit21, label %44

44:                                               ; preds = %42
  %45 = load i8, i8* %.13, align 1
  %46 = icmp eq i8 %45, %27
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = add nsw i32 %.015, 1
  br label %59

49:                                               ; preds = %44
  %50 = load i8, i8* %.13, align 1
  %51 = sext i8 %50 to i32
  %52 = zext i8 %29 to i32
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = add nsw i32 %.015, -1
  %56 = icmp slt i32 %.015, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %62

58:                                               ; preds = %54, %49
  %.116 = phi i32 [ %55, %54 ], [ %.015, %49 ]
  br label %59

59:                                               ; preds = %58, %47
  %.217 = phi i32 [ %48, %47 ], [ %.116, %58 ]
  br label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds i8, i8* %.13, i64 1
  br label %42, !llvm.loop !4

.loopexit21:                                      ; preds = %42
  br label %62

62:                                               ; preds = %.loopexit21, %57
  %.318 = phi i32 [ %55, %57 ], [ %.015, %.loopexit21 ]
  %63 = icmp slt i32 %.318, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %62
  %65 = call i8* @expand_argument(i8* noundef nonnull %30, i8* noundef nonnull %.13)
  store i8 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @variable_expand.start, i64 0, i64 1), align 1
  store i8 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @variable_expand.end, i64 0, i64 0), align 1
  %66 = call i8* (i8*, i8*, i8*, ...) bitcast (i8* (...)* @concat to i8* (i8*, i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @variable_expand.start, i64 0, i64 0), i8* noundef %65, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @variable_expand.end, i64 0, i64 0)) #5
  call void @free(i8* noundef %65) #5
  %67 = call i8* @allocated_variable_expand(i8* noundef %66)
  %68 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %67) #6
  %69 = call i8* (i8*, i8*, i64, ...) bitcast (i8* (...)* @variable_buffer_output to i8* (i8*, i8*, i64, ...)*)(i8* noundef %17, i8* noundef %67, i64 noundef %68) #5
  call void @free(i8* noundef %67) #5
  br label %236

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %40
  %72 = call i8* @strchr(i8* noundef nonnull %30, i32 noundef 58) #6
  %.not41 = icmp eq i8* %72, null
  br i1 %.not41, label %180, label %73

73:                                               ; preds = %71
  %74 = zext i8 %29 to i32
  %75 = call i8* (i8*, i8*, i32, ...) bitcast (i8* (...)* @lindex to i8* (i8*, i8*, i32, ...)*)(i8* noundef nonnull %30, i8* noundef nonnull %72, i32 noundef %74) #5
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %180

77:                                               ; preds = %73
  %78 = ptrtoint i8* %72 to i64
  %79 = ptrtoint i8* %30 to i64
  %80 = sub i64 %78, %79
  %81 = call %struct.variable* (i8*, i64, ...) bitcast (%struct.variable* (...)* @lookup_variable to %struct.variable* (i8*, i64, ...)*)(i8* noundef nonnull %30, i64 noundef %80) #5
  %82 = getelementptr inbounds i8, i8* %72, i64 1
  br label %83

83:                                               ; preds = %106, %77
  %.24 = phi i8* [ %82, %77 ], [ %107, %106 ]
  %.01 = phi i32 [ 0, %77 ], [ %.2, %106 ]
  %84 = load i8, i8* %.24, align 1
  %.not46 = icmp eq i8 %84, 0
  br i1 %.not46, label %.loopexit20, label %85

85:                                               ; preds = %83
  %86 = load i8, i8* %.24, align 1
  %87 = icmp eq i8 %86, %27
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = add nsw i32 %.01, 1
  br label %105

90:                                               ; preds = %85
  %91 = load i8, i8* %.24, align 1
  %92 = sext i8 %91 to i32
  %93 = zext i8 %29 to i32
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = add nsw i32 %.01, -1
  br label %104

97:                                               ; preds = %90
  %98 = load i8, i8* %.24, align 1
  %99 = icmp eq i8 %98, 61
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = icmp slt i32 %.01, 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %100
  br label %108

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %95
  %.1 = phi i32 [ %96, %95 ], [ %.01, %103 ]
  br label %105

105:                                              ; preds = %104, %88
  %.2 = phi i32 [ %89, %88 ], [ %.1, %104 ]
  br label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds i8, i8* %.24, i64 1
  br label %83, !llvm.loop !6

.loopexit20:                                      ; preds = %83
  br label %108

108:                                              ; preds = %.loopexit20, %102
  %109 = icmp sgt i32 %.01, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %108
  %111 = call i8* (...) @initialize_variable_output() #5
  br label %246

112:                                              ; preds = %108
  %113 = ptrtoint i8* %.24 to i64
  %114 = ptrtoint i8* %82 to i64
  %115 = sub i64 %113, %114
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds i8, i8* %.24, i64 1
  br label %118

118:                                              ; preds = %136, %112
  %.35 = phi i8* [ %117, %112 ], [ %137, %136 ]
  %.3 = phi i32 [ 0, %112 ], [ %.5, %136 ]
  %119 = load i8, i8* %.35, align 1
  %.not47 = icmp eq i8 %119, 0
  br i1 %.not47, label %.loopexit, label %120

120:                                              ; preds = %118
  %121 = load i8, i8* %.35, align 1
  %122 = icmp eq i8 %121, %27
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = add nsw i32 %.3, 1
  br label %135

125:                                              ; preds = %120
  %126 = load i8, i8* %.35, align 1
  %127 = sext i8 %126 to i32
  %128 = zext i8 %29 to i32
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = add nsw i32 %.3, -1
  %132 = icmp slt i32 %.3, 1
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %138

134:                                              ; preds = %130, %125
  %.4 = phi i32 [ %131, %130 ], [ %.3, %125 ]
  br label %135

135:                                              ; preds = %134, %123
  %.5 = phi i32 [ %124, %123 ], [ %.4, %134 ]
  br label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds i8, i8* %.35, i64 1
  br label %118, !llvm.loop !7

.loopexit:                                        ; preds = %118
  br label %138

138:                                              ; preds = %.loopexit, %133
  %.6 = phi i32 [ %131, %133 ], [ %.3, %.loopexit ]
  %139 = icmp sgt i32 %.6, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %138
  %141 = call i8* (...) @initialize_variable_output() #5
  br label %246

142:                                              ; preds = %138
  %143 = ptrtoint i8* %.35 to i64
  %144 = ptrtoint i8* %117 to i64
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  %.not48 = icmp eq %struct.variable* %81, null
  br i1 %.not48, label %179, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.variable, %struct.variable* %81, i64 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = load i8, i8* %149, align 1
  %.not49 = icmp eq i8 %150, 0
  br i1 %.not49, label %179, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.variable, %struct.variable* %81, i64 0, i32 3
  %153 = load i8, i8* %152, align 8
  %154 = and i8 %153, 8
  %.not50 = icmp eq i8 %154, 0
  br i1 %.not50, label %157, label %155

155:                                              ; preds = %151
  %156 = call i8* @recursively_expand(%struct.variable* noundef nonnull %81)
  br label %160

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.variable, %struct.variable* %81, i64 0, i32 2
  %159 = load i8*, i8** %158, align 8
  br label %160

160:                                              ; preds = %157, %155
  %161 = phi i8* [ %156, %155 ], [ %159, %157 ]
  %162 = and i64 %115, 4294967295
  %163 = getelementptr inbounds i8, i8* %82, i64 %162
  %164 = call i8* (i8*, i8*, i32, ...) bitcast (i8* (...)* @lindex to i8* (i8*, i8*, i32, ...)*)(i8* noundef nonnull %82, i8* noundef nonnull %163, i32 noundef 37) #5
  %.not51 = icmp eq i8* %164, null
  br i1 %.not51, label %171, label %165

165:                                              ; preds = %160
  %166 = call i8* (i8*, i32, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i32, ...)*)(i8* noundef nonnull %82, i32 noundef %116) #5
  %167 = call i8* (i8*, i32, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i32, ...)*)(i8* noundef nonnull %117, i32 noundef %146) #5
  %168 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %166, i32 noundef 37) #6
  %169 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %167, i32 noundef 37) #6
  %170 = call i8* (i8*, i8*, i8*, i8*, i8*, i8*, ...) bitcast (i8* (...)* @patsubst_expand to i8* (i8*, i8*, i8*, i8*, i8*, i8*, ...)*)(i8* noundef %17, i8* noundef %161, i8* noundef %166, i8* noundef %167, i8* noundef %168, i8* noundef %169) #5
  call void @free(i8* noundef %166) #5
  call void @free(i8* noundef %167) #5
  br label %173

171:                                              ; preds = %160
  %172 = call i8* (i8*, i8*, i8*, i8*, i32, i32, i32, i32, ...) bitcast (i8* (...)* @subst_expand to i8* (i8*, i8*, i8*, i8*, i32, i32, i32, i32, ...)*)(i8* noundef %17, i8* noundef %161, i8* noundef nonnull %82, i8* noundef nonnull %117, i32 noundef %116, i32 noundef %146, i32 noundef 0, i32 noundef 1) #5
  br label %173

173:                                              ; preds = %171, %165
  %.18 = phi i8* [ %170, %165 ], [ %172, %171 ]
  %174 = getelementptr inbounds %struct.variable, %struct.variable* %81, i64 0, i32 3
  %175 = load i8, i8* %174, align 8
  %176 = and i8 %175, 8
  %.not52 = icmp eq i8 %176, 0
  br i1 %.not52, label %178, label %177

177:                                              ; preds = %173
  call void @free(i8* noundef %161) #5
  br label %178

178:                                              ; preds = %177, %173
  br label %179

179:                                              ; preds = %178, %147, %142
  %.29 = phi i8* [ %.18, %178 ], [ %17, %147 ], [ %17, %142 ]
  br label %214

180:                                              ; preds = %73, %71
  %181 = zext i8 %29 to i32
  %182 = call i8* @strchr(i8* noundef nonnull %30, i32 noundef %181) #6
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = call i8* (...) @initialize_variable_output() #5
  br label %246

186:                                              ; preds = %180
  %187 = ptrtoint i8* %182 to i64
  %188 = ptrtoint i8* %30 to i64
  %189 = sub i64 %187, %188
  %190 = call %struct.variable* (i8*, i64, ...) bitcast (%struct.variable* (...)* @lookup_variable to %struct.variable* (i8*, i64, ...)*)(i8* noundef nonnull %30, i64 noundef %189) #5
  %.not42 = icmp eq %struct.variable* %190, null
  br i1 %.not42, label %213, label %191

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.variable, %struct.variable* %190, i64 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = load i8, i8* %193, align 1
  %.not43 = icmp eq i8 %194, 0
  br i1 %.not43, label %213, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.variable, %struct.variable* %190, i64 0, i32 3
  %197 = load i8, i8* %196, align 8
  %198 = and i8 %197, 8
  %.not44 = icmp eq i8 %198, 0
  br i1 %.not44, label %201, label %199

199:                                              ; preds = %195
  %200 = call i8* @recursively_expand(%struct.variable* noundef nonnull %190)
  br label %204

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.variable, %struct.variable* %190, i64 0, i32 2
  %203 = load i8*, i8** %202, align 8
  br label %204

204:                                              ; preds = %201, %199
  %205 = phi i8* [ %200, %199 ], [ %203, %201 ]
  %206 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %205) #6
  %207 = call i8* (i8*, i8*, i64, ...) bitcast (i8* (...)* @variable_buffer_output to i8* (i8*, i8*, i64, ...)*)(i8* noundef %17, i8* noundef %205, i64 noundef %206) #5
  %208 = getelementptr inbounds %struct.variable, %struct.variable* %190, i64 0, i32 3
  %209 = load i8, i8* %208, align 8
  %210 = and i8 %209, 8
  %.not45 = icmp eq i8 %210, 0
  br i1 %.not45, label %212, label %211

211:                                              ; preds = %204
  call void @free(i8* noundef %205) #5
  br label %212

212:                                              ; preds = %211, %204
  br label %213

213:                                              ; preds = %212, %191, %186
  %.310 = phi i8* [ %207, %212 ], [ %17, %191 ], [ %17, %186 ]
  br label %214

214:                                              ; preds = %213, %179
  %.019 = phi i8* [ %.35, %179 ], [ %182, %213 ]
  %.411 = phi i8* [ %.29, %179 ], [ %.310, %213 ]
  br label %236

215:                                              ; preds = %20
  br label %236

216:                                              ; preds = %20
  %217 = call i16** @__ctype_b_loc() #7
  %218 = load i16*, i16** %217, align 8
  %219 = load i8, i8* %7, align 1
  %220 = sext i8 %219 to i64
  %221 = getelementptr inbounds i16, i16* %218, i64 %220
  %222 = load i16, i16* %221, align 2
  %223 = and i16 %222, 1
  %.not54 = icmp eq i16 %223, 0
  br i1 %.not54, label %225, label %224

224:                                              ; preds = %216
  br label %236

225:                                              ; preds = %216
  %226 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  store i8 36, i8* %226, align 1
  %227 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 1
  store i8 40, i8* %227, align 1
  %228 = load i8, i8* %21, align 1
  %229 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 2
  store i8 %228, i8* %229, align 1
  %230 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 3
  store i8 41, i8* %230, align 1
  %231 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 4
  store i8 0, i8* %231, align 1
  %232 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %233 = call i8* @allocated_variable_expand(i8* noundef nonnull %232)
  %234 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %233) #6
  %235 = call i8* (i8*, i8*, i64, ...) bitcast (i8* (...)* @variable_buffer_output to i8* (i8*, i8*, i64, ...)*)(i8* noundef %17, i8* noundef %233, i64 noundef %234) #5
  call void @free(i8* noundef %233) #5
  br label %236

236:                                              ; preds = %225, %224, %215, %214, %64, %32, %24
  %.512 = phi i8* [ %17, %224 ], [ %235, %225 ], [ %17, %215 ], [ %33, %32 ], [ %69, %64 ], [ %.411, %214 ], [ %25, %24 ]
  %.46 = phi i8* [ %21, %224 ], [ %21, %225 ], [ %21, %215 ], [ %34, %32 ], [ %.13, %64 ], [ %.019, %214 ], [ %21, %24 ]
  %237 = load i8, i8* %.46, align 1
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  br label %243

240:                                              ; preds = %236
  br label %241

241:                                              ; preds = %240
  %242 = getelementptr inbounds i8, i8* %.46, i64 1
  br label %6

243:                                              ; preds = %239, %19
  %.613 = phi i8* [ %17, %19 ], [ %.512, %239 ]
  %244 = call i8* (i8*, i8*, i32, ...) bitcast (i8* (...)* @variable_buffer_output to i8* (i8*, i8*, i32, ...)*)(i8* noundef %.613, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef 1) #5
  %245 = call i8* (...) @initialize_variable_output() #5
  br label %246

246:                                              ; preds = %243, %184, %140, %110
  %.0 = phi i8* [ %245, %243 ], [ %111, %110 ], [ %141, %140 ], [ %185, %184 ]
  ret i8* %.0
}

declare dso_local i8* @initialize_variable_output(...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

declare dso_local i8* @variable_buffer_output(...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @handle_function(...) #1

declare dso_local i8* @lindex(...) #1

declare dso_local i8* @concat(...) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

declare dso_local %struct.variable* @lookup_variable(...) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @recursively_expand(%struct.variable* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.variable, %struct.variable* %0, i64 0, i32 3
  %3 = load i8, i8* %2, align 8
  %4 = and i8 %3, 16
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %18, label %5

5:                                                ; preds = %1
  %6 = load i8*, i8** @reading_filename, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.variable, %struct.variable* %0, i64 0, i32 1
  %10 = load i8*, i8** %9, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @fatal to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* noundef %10) #5
  br label %17

11:                                               ; preds = %5
  %12 = load i8*, i8** @reading_filename, align 8
  %13 = load i32*, i32** @reading_lineno_ptr, align 8
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.variable, %struct.variable* %0, i64 0, i32 1
  %16 = load i8*, i8** %15, align 8
  call void (i8*, i32, i8*, i8*, ...) bitcast (void (...)* @makefile_fatal to void (i8*, i32, i8*, i8*, ...)*)(i8* noundef %12, i32 noundef %14, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* noundef %16) #5
  br label %17

17:                                               ; preds = %11, %8
  br label %18

18:                                               ; preds = %17, %1
  %19 = getelementptr inbounds %struct.variable, %struct.variable* %0, i64 0, i32 3
  %20 = load i8, i8* %19, align 8
  %21 = or i8 %20, 16
  store i8 %21, i8* %19, align 8
  %22 = getelementptr inbounds %struct.variable, %struct.variable* %0, i64 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @allocated_variable_expand(i8* noundef %23)
  %25 = getelementptr inbounds %struct.variable, %struct.variable* %0, i64 0, i32 3
  %26 = load i8, i8* %25, align 8
  %27 = and i8 %26, -17
  store i8 %27, i8* %25, align 8
  ret i8* %24
}

declare dso_local i8* @savestring(...) #1

declare dso_local i8* @patsubst_expand(...) #1

declare dso_local i8* @subst_expand(...) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @expand_argument(i8* noundef %0, i8* noundef %1) #0 {
  %3 = ptrtoint i8* %1 to i64
  %4 = ptrtoint i8* %0 to i64
  %5 = sub i64 %3, %4
  %6 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %0, i64 noundef %5) #5
  %7 = call i8* @allocated_variable_expand(i8* noundef %6)
  call void @free(i8* noundef %6) #5
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @variable_expand_for_file(i8* noundef %0, %struct.file* noundef readonly %1) #0 {
  %3 = icmp eq %struct.file* %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = call i8* @variable_expand(i8* noundef %0)
  br label %16

6:                                                ; preds = %2
  %7 = load %struct.variable_set_list*, %struct.variable_set_list** @current_variable_set_list, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 9
  %9 = load %struct.variable_set_list*, %struct.variable_set_list** %8, align 8
  store %struct.variable_set_list* %9, %struct.variable_set_list** @current_variable_set_list, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 3
  %11 = load %struct.commands*, %struct.commands** %10, align 8
  %12 = getelementptr inbounds %struct.commands, %struct.commands* %11, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** @reading_filename, align 8
  %14 = getelementptr inbounds %struct.commands, %struct.commands* %11, i64 0, i32 1
  store i32* %14, i32** @reading_lineno_ptr, align 8
  %15 = call i8* @variable_expand(i8* noundef %0)
  store %struct.variable_set_list* %7, %struct.variable_set_list** @current_variable_set_list, align 8
  store i8* null, i8** @reading_filename, align 8
  store i32* null, i32** @reading_lineno_ptr, align 8
  br label %16

16:                                               ; preds = %6, %4
  %.0 = phi i8* [ %5, %4 ], [ %15, %6 ]
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @allocated_variable_expand(i8* noundef %0) #0 {
  %2 = call i8* @allocated_variable_expand_for_file(i8* noundef %0, %struct.file* noundef null)
  ret i8* %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @allocated_variable_expand_for_file(i8* noundef %0, %struct.file* noundef %1) #0 {
  %3 = call i8* (...) @save_variable_output() #5
  %4 = call i8* @variable_expand_for_file(i8* noundef %0, %struct.file* noundef %1)
  %5 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %4) #6
  %6 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %4, i64 noundef %5) #5
  call void (i8*, ...) bitcast (void (...)* @restore_variable_output to void (i8*, ...)*)(i8* noundef %3) #5
  ret i8* %6
}

declare dso_local i8* @save_variable_output(...) #1

declare dso_local void @restore_variable_output(...) #1

declare dso_local void @fatal(...) #1

declare dso_local void @makefile_fatal(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind readnone willreturn }

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
