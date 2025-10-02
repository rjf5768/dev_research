; ModuleID = './920501-8.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920501-8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@buf = dso_local global [50 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [48 x i8] c"%d,%f,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"1,1.000000,2,3,4,5,6,7,8,9,10,11,12,13,14,15\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @va(i32 noundef %0, double noundef %1, i32 noundef %2, ...) #0 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_start(i8* nonnull %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %11 = load i8*, i8** %10, align 16
  %12 = sext i32 %7 to i64
  %13 = getelementptr i8, i8* %11, i64 %12
  %14 = add i32 %7, 8
  store i32 %14, i32* %6, align 16
  br label %19

15:                                               ; preds = %3
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr i8, i8* %17, i64 8
  store i8* %18, i8** %16, align 8
  br label %19

19:                                               ; preds = %15, %9
  %.in = phi i8* [ %13, %9 ], [ %17, %15 ]
  %20 = bitcast i8* %.in to i32*
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %23 = load i32, i32* %22, align 16
  %24 = icmp ult i32 %23, 41
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %27 = load i8*, i8** %26, align 16
  %28 = sext i32 %23 to i64
  %29 = getelementptr i8, i8* %27, i64 %28
  %30 = add i32 %23, 8
  store i32 %30, i32* %22, align 16
  br label %35

31:                                               ; preds = %19
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr i8, i8* %33, i64 8
  store i8* %34, i8** %32, align 8
  br label %35

35:                                               ; preds = %31, %25
  %.in1 = phi i8* [ %29, %25 ], [ %33, %31 ]
  %36 = bitcast i8* %.in1 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %39 = load i32, i32* %38, align 16
  %40 = icmp ult i32 %39, 41
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %43 = load i8*, i8** %42, align 16
  %44 = sext i32 %39 to i64
  %45 = getelementptr i8, i8* %43, i64 %44
  %46 = add i32 %39, 8
  store i32 %46, i32* %38, align 16
  br label %51

47:                                               ; preds = %35
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr i8, i8* %49, i64 8
  store i8* %50, i8** %48, align 8
  br label %51

51:                                               ; preds = %47, %41
  %.in2 = phi i8* [ %45, %41 ], [ %49, %47 ]
  %52 = bitcast i8* %.in2 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %55 = load i32, i32* %54, align 16
  %56 = icmp ult i32 %55, 41
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %59 = load i8*, i8** %58, align 16
  %60 = sext i32 %55 to i64
  %61 = getelementptr i8, i8* %59, i64 %60
  %62 = add i32 %55, 8
  store i32 %62, i32* %54, align 16
  br label %67

63:                                               ; preds = %51
  %64 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr i8, i8* %65, i64 8
  store i8* %66, i8** %64, align 8
  br label %67

67:                                               ; preds = %63, %57
  %.in3 = phi i8* [ %61, %57 ], [ %65, %63 ]
  %68 = bitcast i8* %.in3 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %71 = load i32, i32* %70, align 16
  %72 = icmp ult i32 %71, 41
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %75 = load i8*, i8** %74, align 16
  %76 = sext i32 %71 to i64
  %77 = getelementptr i8, i8* %75, i64 %76
  %78 = add i32 %71, 8
  store i32 %78, i32* %70, align 16
  br label %83

79:                                               ; preds = %67
  %80 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr i8, i8* %81, i64 8
  store i8* %82, i8** %80, align 8
  br label %83

83:                                               ; preds = %79, %73
  %.in4 = phi i8* [ %77, %73 ], [ %81, %79 ]
  %84 = bitcast i8* %.in4 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %87 = load i32, i32* %86, align 16
  %88 = icmp ult i32 %87, 41
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %91 = load i8*, i8** %90, align 16
  %92 = sext i32 %87 to i64
  %93 = getelementptr i8, i8* %91, i64 %92
  %94 = add i32 %87, 8
  store i32 %94, i32* %86, align 16
  br label %99

95:                                               ; preds = %83
  %96 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr i8, i8* %97, i64 8
  store i8* %98, i8** %96, align 8
  br label %99

99:                                               ; preds = %95, %89
  %.in5 = phi i8* [ %93, %89 ], [ %97, %95 ]
  %100 = bitcast i8* %.in5 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %103 = load i32, i32* %102, align 16
  %104 = icmp ult i32 %103, 41
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %107 = load i8*, i8** %106, align 16
  %108 = sext i32 %103 to i64
  %109 = getelementptr i8, i8* %107, i64 %108
  %110 = add i32 %103, 8
  store i32 %110, i32* %102, align 16
  br label %115

111:                                              ; preds = %99
  %112 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr i8, i8* %113, i64 8
  store i8* %114, i8** %112, align 8
  br label %115

115:                                              ; preds = %111, %105
  %.in6 = phi i8* [ %109, %105 ], [ %113, %111 ]
  %116 = bitcast i8* %.in6 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %119 = load i32, i32* %118, align 16
  %120 = icmp ult i32 %119, 41
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %123 = load i8*, i8** %122, align 16
  %124 = sext i32 %119 to i64
  %125 = getelementptr i8, i8* %123, i64 %124
  %126 = add i32 %119, 8
  store i32 %126, i32* %118, align 16
  br label %131

127:                                              ; preds = %115
  %128 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr i8, i8* %129, i64 8
  store i8* %130, i8** %128, align 8
  br label %131

131:                                              ; preds = %127, %121
  %.in7 = phi i8* [ %125, %121 ], [ %129, %127 ]
  %132 = bitcast i8* %.in7 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %135 = load i32, i32* %134, align 16
  %136 = icmp ult i32 %135, 41
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %139 = load i8*, i8** %138, align 16
  %140 = sext i32 %135 to i64
  %141 = getelementptr i8, i8* %139, i64 %140
  %142 = add i32 %135, 8
  store i32 %142, i32* %134, align 16
  br label %147

143:                                              ; preds = %131
  %144 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr i8, i8* %145, i64 8
  store i8* %146, i8** %144, align 8
  br label %147

147:                                              ; preds = %143, %137
  %.in8 = phi i8* [ %141, %137 ], [ %145, %143 ]
  %148 = bitcast i8* %.in8 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %151 = load i32, i32* %150, align 16
  %152 = icmp ult i32 %151, 41
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %155 = load i8*, i8** %154, align 16
  %156 = sext i32 %151 to i64
  %157 = getelementptr i8, i8* %155, i64 %156
  %158 = add i32 %151, 8
  store i32 %158, i32* %150, align 16
  br label %163

159:                                              ; preds = %147
  %160 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr i8, i8* %161, i64 8
  store i8* %162, i8** %160, align 8
  br label %163

163:                                              ; preds = %159, %153
  %.in9 = phi i8* [ %157, %153 ], [ %161, %159 ]
  %164 = bitcast i8* %.in9 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %167 = load i32, i32* %166, align 16
  %168 = icmp ult i32 %167, 41
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %171 = load i8*, i8** %170, align 16
  %172 = sext i32 %167 to i64
  %173 = getelementptr i8, i8* %171, i64 %172
  %174 = add i32 %167, 8
  store i32 %174, i32* %166, align 16
  br label %179

175:                                              ; preds = %163
  %176 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr i8, i8* %177, i64 8
  store i8* %178, i8** %176, align 8
  br label %179

179:                                              ; preds = %175, %169
  %.in10 = phi i8* [ %173, %169 ], [ %177, %175 ]
  %180 = bitcast i8* %.in10 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %183 = load i32, i32* %182, align 16
  %184 = icmp ult i32 %183, 41
  br i1 %184, label %185, label %191

185:                                              ; preds = %179
  %186 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %187 = load i8*, i8** %186, align 16
  %188 = sext i32 %183 to i64
  %189 = getelementptr i8, i8* %187, i64 %188
  %190 = add i32 %183, 8
  store i32 %190, i32* %182, align 16
  br label %195

191:                                              ; preds = %179
  %192 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr i8, i8* %193, i64 8
  store i8* %194, i8** %192, align 8
  br label %195

195:                                              ; preds = %191, %185
  %.in11 = phi i8* [ %189, %185 ], [ %193, %191 ]
  %196 = bitcast i8* %.in11 to i32*
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %199 = load i32, i32* %198, align 16
  %200 = icmp ult i32 %199, 41
  br i1 %200, label %201, label %207

201:                                              ; preds = %195
  %202 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %203 = load i8*, i8** %202, align 16
  %204 = sext i32 %199 to i64
  %205 = getelementptr i8, i8* %203, i64 %204
  %206 = add i32 %199, 8
  store i32 %206, i32* %198, align 16
  br label %211

207:                                              ; preds = %195
  %208 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = getelementptr i8, i8* %209, i64 8
  store i8* %210, i8** %208, align 8
  br label %211

211:                                              ; preds = %207, %201
  %.in12 = phi i8* [ %205, %201 ], [ %209, %207 ]
  %212 = bitcast i8* %.in12 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @buf, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 noundef %0, double noundef %1, i32 noundef %2, i32 noundef %21, i32 noundef %37, i32 noundef %53, i32 noundef %69, i32 noundef %85, i32 noundef %101, i32 noundef %117, i32 noundef %133, i32 noundef %149, i32 noundef %165, i32 noundef %181, i32 noundef %197, i32 noundef %213) #7
  %215 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_end(i8* %215)
  ret i32 undef
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = call i32 (i32, double, i32, ...) @va(i32 noundef 1, double noundef 1.000000e+00, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(45) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull dereferenceable(45) getelementptr inbounds ([50 x i8], [50 x i8]* @buf, i64 0, i64 0), i64 45)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #8
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %3, %2
  unreachable
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: noreturn
declare dso_local void @abort() #5

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
