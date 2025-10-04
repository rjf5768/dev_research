; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/preprocess.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/preprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@.str = private unnamed_addr constant [14 x i8] c"SO >= -0x4000\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/preprocess.c\00", align 1
@__PRETTY_FUNCTION__.Gsm_Preprocess = private unnamed_addr constant [56 x i8] c"void Gsm_Preprocess(struct gsm_state *, word *, word *)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"SO <= 0x3FFC\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"s1 != MIN_WORD\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Gsm_Preprocess(%struct.gsm_state* noundef %0, i16* noundef %1, i16* noundef %2) #0 {
  %4 = alloca %struct.gsm_state*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.gsm_state* %0, %struct.gsm_state** %4, align 8
  store i16* %1, i16** %5, align 8
  store i16* %2, i16** %6, align 8
  %19 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %20 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 8
  store i16 %21, i16* %7, align 2
  %22 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %23 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %26 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %9, align 2
  store i32 160, i32* %18, align 4
  br label %29

29:                                               ; preds = %179, %3
  %30 = load i32, i32* %18, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %18, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %184

33:                                               ; preds = %29
  %34 = load i16*, i16** %5, align 8
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i32
  %37 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %36, i32 noundef 3)
  %38 = shl i32 %37, 2
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %15, align 2
  %40 = load i16*, i16** %5, align 8
  %41 = getelementptr inbounds i16, i16* %40, i32 1
  store i16* %41, i16** %5, align 8
  %42 = load i16, i16* %15, align 2
  %43 = sext i16 %42 to i32
  %44 = icmp sge i32 %43, -16384
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %47

46:                                               ; preds = %33
  call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.Gsm_Preprocess, i64 0, i64 0)) #3
  unreachable

47:                                               ; preds = %45
  %48 = load i16, i16* %15, align 2
  %49 = sext i16 %48 to i32
  %50 = icmp sle i32 %49, 16380
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %53

52:                                               ; preds = %47
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.Gsm_Preprocess, i64 0, i64 0)) #3
  unreachable

53:                                               ; preds = %51
  %54 = load i16, i16* %15, align 2
  %55 = sext i16 %54 to i32
  %56 = load i16, i16* %7, align 2
  %57 = sext i16 %56 to i32
  %58 = sub nsw i32 %55, %57
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %10, align 2
  %60 = load i16, i16* %15, align 2
  store i16 %60, i16* %7, align 2
  %61 = load i16, i16* %10, align 2
  %62 = sext i16 %61 to i32
  %63 = icmp ne i32 %62, -32768
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %66

65:                                               ; preds = %53
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.Gsm_Preprocess, i64 0, i64 0)) #3
  unreachable

66:                                               ; preds = %64
  %67 = load i16, i16* %10, align 2
  %68 = sext i16 %67 to i64
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = shl i64 %69, 15
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %71, i32 noundef 15)
  %73 = trunc i32 %72 to i16
  store i16 %73, i16* %13, align 2
  %74 = load i64, i64* %8, align 8
  %75 = load i16, i16* %13, align 2
  %76 = sext i16 %75 to i64
  %77 = shl i64 %76, 15
  %78 = sub nsw i64 %74, %77
  %79 = trunc i64 %78 to i16
  store i16 %79, i16* %14, align 2
  %80 = load i16, i16* %14, align 2
  %81 = sext i16 %80 to i64
  %82 = mul nsw i64 %81, 32735
  %83 = add nsw i64 %82, 16384
  %84 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %83, i32 noundef 15)
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %11, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %11, align 8
  %88 = load i16, i16* %13, align 2
  %89 = sext i16 %88 to i64
  %90 = mul nsw i64 %89, 32735
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* %12, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %66
  %94 = load i64, i64* %11, align 8
  %95 = icmp sge i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %11, align 8
  %99 = add nsw i64 %97, %98
  br label %116

100:                                              ; preds = %93
  %101 = load i64, i64* %12, align 8
  %102 = add nsw i64 %101, 1
  %103 = sub nsw i64 0, %102
  %104 = load i64, i64* %11, align 8
  %105 = add nsw i64 %104, 1
  %106 = sub nsw i64 0, %105
  %107 = add i64 %103, %106
  store i64 %107, i64* %17, align 8
  %108 = icmp uge i64 %107, 2147483647
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %114

110:                                              ; preds = %100
  %111 = load i64, i64* %17, align 8
  %112 = sub nsw i64 0, %111
  %113 = sub nsw i64 %112, 2
  br label %114

114:                                              ; preds = %110, %109
  %115 = phi i64 [ -2147483648, %109 ], [ %113, %110 ]
  br label %116

116:                                              ; preds = %114, %96
  %117 = phi i64 [ %99, %96 ], [ %115, %114 ]
  br label %137

118:                                              ; preds = %66
  %119 = load i64, i64* %11, align 8
  %120 = icmp sle i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* %11, align 8
  %124 = add nsw i64 %122, %123
  br label %135

125:                                              ; preds = %118
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* %11, align 8
  %128 = add i64 %126, %127
  store i64 %128, i64* %17, align 8
  %129 = icmp uge i64 %128, 2147483647
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %133

131:                                              ; preds = %125
  %132 = load i64, i64* %17, align 8
  br label %133

133:                                              ; preds = %131, %130
  %134 = phi i64 [ 2147483647, %130 ], [ %132, %131 ]
  br label %135

135:                                              ; preds = %133, %121
  %136 = phi i64 [ %124, %121 ], [ %134, %133 ]
  br label %137

137:                                              ; preds = %135, %116
  %138 = phi i64 [ %117, %116 ], [ %136, %135 ]
  store i64 %138, i64* %8, align 8
  %139 = load i64, i64* %8, align 8
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i64, i64* %8, align 8
  %143 = add nsw i64 %142, 16384
  br label %153

144:                                              ; preds = %137
  %145 = load i64, i64* %8, align 8
  %146 = add i64 %145, 16384
  store i64 %146, i64* %17, align 8
  %147 = icmp uge i64 %146, 2147483647
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %151

149:                                              ; preds = %144
  %150 = load i64, i64* %17, align 8
  br label %151

151:                                              ; preds = %149, %148
  %152 = phi i64 [ 2147483647, %148 ], [ %150, %149 ]
  br label %153

153:                                              ; preds = %151, %141
  %154 = phi i64 [ %143, %141 ], [ %152, %151 ]
  store i64 %154, i64* %12, align 8
  %155 = load i16, i16* %9, align 2
  %156 = sext i16 %155 to i64
  %157 = mul nsw i64 %156, -28180
  %158 = add nsw i64 %157, 16384
  %159 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %158, i32 noundef 15)
  %160 = trunc i32 %159 to i16
  store i16 %160, i16* %13, align 2
  %161 = load i64, i64* %12, align 8
  %162 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %161, i32 noundef 15)
  %163 = trunc i32 %162 to i16
  store i16 %163, i16* %9, align 2
  %164 = load i16, i16* %9, align 2
  %165 = sext i16 %164 to i64
  %166 = load i16, i16* %13, align 2
  %167 = sext i16 %166 to i64
  %168 = add nsw i64 %165, %167
  store i64 %168, i64* %16, align 8
  %169 = sub nsw i64 %168, -32768
  %170 = icmp ugt i64 %169, 65535
  br i1 %170, label %171, label %177

171:                                              ; preds = %153
  %172 = load i64, i64* %16, align 8
  %173 = icmp sgt i64 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 32767, i32 -32768
  %176 = sext i32 %175 to i64
  br label %179

177:                                              ; preds = %153
  %178 = load i64, i64* %16, align 8
  br label %179

179:                                              ; preds = %177, %171
  %180 = phi i64 [ %176, %171 ], [ %178, %177 ]
  %181 = trunc i64 %180 to i16
  %182 = load i16*, i16** %6, align 8
  %183 = getelementptr inbounds i16, i16* %182, i32 1
  store i16* %183, i16** %6, align 8
  store i16 %181, i16* %182, align 2
  br label %29, !llvm.loop !4

184:                                              ; preds = %29
  %185 = load i16, i16* %7, align 2
  %186 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %187 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %186, i32 0, i32 1
  store i16 %185, i16* %187, align 8
  %188 = load i64, i64* %8, align 8
  %189 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %190 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  %191 = load i16, i16* %9, align 2
  %192 = sext i16 %191 to i32
  %193 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %194 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %193, i32 0, i32 3
  store i32 %192, i32* %194, align 8
  ret void
}

declare dso_local i32 @SASR(...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

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
