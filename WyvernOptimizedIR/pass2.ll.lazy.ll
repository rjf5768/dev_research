; ModuleID = './pass2.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/loader/pass2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [33 x i8] c"ERROR: Illegal text record = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"ERROR: Program does not fit in memory. Aborting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"_GLOBAL \00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"ERROR: Undefined global %s. Program not loaded.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"ERROR: Illegal define record = %s\0A\00", align 1
@START_ADDRESS = dso_local global i32 0, align 4
@MAIN_ROUTINE = dso_local global [9 x i8] zeroinitializer, align 1
@str = private unnamed_addr constant [49 x i8] c"ERROR: Program does not fit in memory. Aborting.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PASS2(i8* noundef %0, %struct.SYMBOL_TABLE_ENTRY** noundef %1, i32* nocapture noundef %2, i32* nocapture noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca [9 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [9 x i8], align 1
  %13 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 8
  store i8 0, i8* %13, align 1
  br label %14

14:                                               ; preds = %196, %5
  %.03 = phi i32 [ 0, %5 ], [ %.2, %196 ]
  %15 = call i32 @feof(%struct._IO_FILE* noundef %4) #5
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %16, label %19

16:                                               ; preds = %14
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 1048577
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i1 [ false, %14 ], [ %18, %16 ]
  br i1 %20, label %21, label %199

21:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** noundef nonnull %7, %struct._IO_FILE* noundef %4) #5
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %190 [
    i32 84, label %25
    i32 72, label %55
    i32 77, label %78
    i32 82, label %133
    i32 69, label %189
    i32 68, label %189
    i32 0, label %189
  ]

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %26) #6
  %28 = icmp ult i64 %27, 9
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  br label %49

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %32, i32 noundef 6, i32 noundef 16, i32* noundef nonnull %8, i32* noundef nonnull %10) #5
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 7
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %34, i32 noundef 2, i32 noundef 16, i32* noundef nonnull %9, i32* noundef nonnull %10) #5
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %35) #6
  %37 = load i32, i32* %9, align 4
  %38 = shl nsw i32 %37, 1
  %39 = add nsw i32 %38, 9
  %40 = sext i32 %39 to i64
  %.not11 = icmp eq i64 %36, %40
  br i1 %.not11, label %42, label %41

41:                                               ; preds = %30
  store i32 1, i32* %10, align 4
  br label %48

42:                                               ; preds = %30
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 9
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, %.03
  call void (i8*, i32, i32, i8*, i32*, ...) bitcast (void (...)* @STORE_AT to void (i8*, i32, i32, i8*, i32*, ...)*)(i8* noundef nonnull %44, i32 noundef %45, i32 noundef %47, i8* noundef %0, i32* noundef nonnull %10) #5
  br label %48

48:                                               ; preds = %42, %41
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i32, i32* %10, align 4
  %.not12 = icmp eq i32 %50, 0
  br i1 %.not12, label %54, label %51

51:                                               ; preds = %49
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* noundef %52) #5
  br label %54

54:                                               ; preds = %51, %49
  br label %191

55:                                               ; preds = %21
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %56) #6
  %.not10 = icmp eq i64 %57, 21
  br i1 %.not10, label %59, label %58

58:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  br label %77

59:                                               ; preds = %55
  %60 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = call i8* @strncpy(i8* noundef nonnull %60, i8* noundef nonnull %62, i64 noundef 8) #5
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 9
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %65, i32 noundef 6, i32 noundef 16, i32* noundef nonnull %11, i32* noundef nonnull %10) #5
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 15
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %70, i32 noundef 6, i32 noundef 16, i32* noundef nonnull %11, i32* noundef nonnull %10) #5
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %2, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %2, align 4
  %74 = icmp sgt i32 %73, 1048576
  br i1 %74, label %75, label %76

75:                                               ; preds = %59
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %75, %59
  br label %77

77:                                               ; preds = %76, %58
  %.1 = phi i32 [ %.03, %58 ], [ %68, %76 ]
  br label %191

78:                                               ; preds = %21
  %79 = load i8*, i8** %7, align 8
  %80 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %79) #6
  %81 = icmp ult i64 %80, 9
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 1, i32* %10, align 4
  br label %127

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  %85 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %84) #6
  %86 = icmp eq i64 %85, 9
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %89, i32 noundef 6, i32 noundef 16, i32* noundef nonnull %8, i32* noundef nonnull %10) #5
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 7
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %91, i32 noundef 2, i32 noundef 16, i32* noundef nonnull %9, i32* noundef nonnull %10) #5
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, %.03
  %94 = load i32, i32* %9, align 4
  call void (i32, i32, i32, i8*, i32*, ...) bitcast (void (...)* @ADD_INT_TO_LOC to void (i32, i32, i32, i8*, i32*, ...)*)(i32 noundef %.03, i32 noundef %93, i32 noundef %94, i8* noundef %0, i32* noundef nonnull %10) #5
  br label %126

95:                                               ; preds = %83
  %96 = load i8*, i8** %7, align 8
  %97 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %96) #6
  %.not8 = icmp eq i64 %97, 18
  br i1 %.not8, label %99, label %98

98:                                               ; preds = %95
  store i32 1, i32* %10, align 4
  br label %125

99:                                               ; preds = %95
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %101, i32 noundef 6, i32 noundef 16, i32* noundef nonnull %8, i32* noundef nonnull %10) #5
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 7
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %103, i32 noundef 2, i32 noundef 16, i32* noundef nonnull %9, i32* noundef nonnull %10) #5
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 9
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  switch i32 %107, label %110 [
    i32 45, label %108
    i32 43, label %109
  ]

108:                                              ; preds = %99
  br label %111

109:                                              ; preds = %99
  br label %111

110:                                              ; preds = %99
  store i32 1, i32* %10, align 4
  br label %111

111:                                              ; preds = %110, %109, %108
  %.02 = phi i32 [ 0, %110 ], [ 1, %109 ], [ -1, %108 ]
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 10
  %114 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %113, %struct.SYMBOL_TABLE_ENTRY** noundef %1) #5
  %115 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 1, i32* %10, align 4
  br label %124

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %114, i64 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %119, %.02
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, %.03
  %123 = load i32, i32* %9, align 4
  call void (i32, i32, i32, i8*, i32*, ...) bitcast (void (...)* @ADD_INT_TO_LOC to void (i32, i32, i32, i8*, i32*, ...)*)(i32 noundef %120, i32 noundef %122, i32 noundef %123, i8* noundef %0, i32* noundef nonnull %10) #5
  br label %124

124:                                              ; preds = %117, %116
  br label %125

125:                                              ; preds = %124, %98
  br label %126

126:                                              ; preds = %125, %87
  br label %127

127:                                              ; preds = %126, %82
  %128 = load i32, i32* %10, align 4
  %.not9 = icmp eq i32 %128, 0
  br i1 %.not9, label %132, label %129

129:                                              ; preds = %127
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* noundef %130) #5
  br label %132

132:                                              ; preds = %129, %127
  br label %191

133:                                              ; preds = %21
  %134 = load i8*, i8** %7, align 8
  %135 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %134) #6
  %136 = icmp ugt i64 %135, 73
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 1, i32* %10, align 4
  br label %183

138:                                              ; preds = %133
  %139 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 8
  store i8 0, i8* %139, align 1
  br label %140

140:                                              ; preds = %175, %138
  %.01 = phi i32 [ 1, %138 ], [ %176, %175 ]
  %141 = add nuw nsw i32 %.01, 8
  %142 = zext i32 %141 to i64
  %143 = load i8*, i8** %7, align 8
  %144 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %143) #6
  %.not5 = icmp ult i64 %144, %142
  br i1 %.not5, label %177, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %147 = load i8*, i8** %7, align 8
  %148 = zext i32 %.01 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  %150 = call i8* @strncpy(i8* noundef nonnull %146, i8* noundef nonnull %149, i64 noundef 8) #5
  %151 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %152 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %151, %struct.SYMBOL_TABLE_ENTRY** noundef %1) #5
  %153 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %152, null
  br i1 %153, label %154, label %175

154:                                              ; preds = %145
  %155 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %156 = call i32 @INSERT_IN_SYM_TAB(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %155, i32 noundef 0, i32 noundef 5, %struct.SYMBOL_TABLE_ENTRY** noundef %1) #5
  br label %157

157:                                              ; preds = %167, %154
  %.0 = phi i32 [ 7, %154 ], [ %168, %167 ]
  %158 = icmp slt i32 %.0, 1
  br i1 %158, label %164, label %159

159:                                              ; preds = %157
  %160 = sext i32 %.0 to i64
  %161 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = icmp eq i8 %162, 32
  br label %164

164:                                              ; preds = %159, %157
  %165 = phi i1 [ true, %157 ], [ %163, %159 ]
  br i1 %165, label %166, label %169

166:                                              ; preds = %164
  br label %167

167:                                              ; preds = %166
  %168 = add nsw i32 %.0, -1
  br label %157, !llvm.loop !4

169:                                              ; preds = %164
  %170 = add nsw i32 %.0, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 %171
  store i8 0, i8* %172, align 1
  %173 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %174 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %173) #5
  store i32 1, i32* %3, align 4
  br label %175

175:                                              ; preds = %169, %145
  %176 = add nuw nsw i32 %.01, 8
  br label %140, !llvm.loop !6

177:                                              ; preds = %140
  %178 = zext i32 %.01 to i64
  %179 = load i8*, i8** %7, align 8
  %180 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %179) #6
  %.not6 = icmp eq i64 %180, %178
  br i1 %.not6, label %182, label %181

181:                                              ; preds = %177
  store i32 1, i32* %10, align 4
  br label %182

182:                                              ; preds = %181, %177
  br label %183

183:                                              ; preds = %182, %137
  %184 = load i32, i32* %10, align 4
  %.not7 = icmp eq i32 %184, 0
  br i1 %.not7, label %188, label %185

185:                                              ; preds = %183
  %186 = load i8*, i8** %7, align 8
  %187 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* noundef %186) #5
  br label %188

188:                                              ; preds = %185, %183
  br label %191

189:                                              ; preds = %21, %21, %21
  br label %190

190:                                              ; preds = %189, %21
  br label %191

191:                                              ; preds = %190, %188, %132, %77, %54
  %.2 = phi i32 [ %.03, %190 ], [ %.03, %188 ], [ %.03, %132 ], [ %.1, %77 ], [ %.03, %54 ]
  %192 = load i32, i32* %3, align 4
  %.not4 = icmp eq i32 %192, 0
  br i1 %.not4, label %193, label %196

193:                                              ; preds = %191
  %194 = load i32, i32* %10, align 4
  %195 = icmp ne i32 %194, 0
  br label %196

196:                                              ; preds = %193, %191
  %197 = phi i1 [ true, %191 ], [ %195, %193 ]
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %3, align 4
  br label %14, !llvm.loop !7

199:                                              ; preds = %19
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #1

declare dso_local void @GET_LINE(...) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local void @STR_TO_NUM(...) #2

declare dso_local void @STORE_AT(...) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @ADD_INT_TO_LOC(...) #2

declare dso_local %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #2

declare dso_local i32 @INSERT_IN_SYM_TAB(i8* noundef, i8* noundef, i32 noundef, i32 noundef, %struct.SYMBOL_TABLE_ENTRY** noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

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
