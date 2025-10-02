; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/endgame.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/endgame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"\0ATo count score, we need the following steps:\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"First, I need you to remove all dead pieces on the board.\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Second, I need you to fill in neutral territories with \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pieces.\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Last, I will fill in all pieces and anounce the winner.\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"\0AFirst, you should enter the dead pieces (blank and white) to\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c" be removed.  Enter\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c" 'stop' when you have finished.\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Dead piece? \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@p = external dso_local global [19 x [19 x i8]], align 16
@mymove = external dso_local global i32, align 4
@mk = external dso_local global i32, align 4
@umove = external dso_local global i32, align 4
@uk = external dso_local global i32, align 4
@.str.11 = private unnamed_addr constant [66 x i8] c"Next, you need to fill in pieces (black and white) in all neutral\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c" territories.\0A\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"Enter your and my pieces alternately and enter 'stop' when finish\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Your piece? \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"My piece? \00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Your total number of pieces %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"My total number of pieces %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @endgame() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %15

15:                                               ; preds = %68, %0
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %18 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* noundef %17)
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %20 = call i32 @strcmp(i8* noundef %19, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #3
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %15
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %24 = call i32 @getij(i8* noundef %23, i32* noundef %2, i32* noundef %3)
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %26
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [19 x i8], [19 x i8]* %27, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32, i32* @mymove, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %22
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %37
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [19 x i8], [19 x i8]* %38, i64 0, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i32, i32* @mk, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @mk, align 4
  br label %65

44:                                               ; preds = %22
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %46
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [19 x i8], [19 x i8]* %47, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i32, i32* @umove, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %57
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [19 x i8], [19 x i8]* %58, i64 0, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i32, i32* @uk, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @uk, align 4
  br label %64

64:                                               ; preds = %55, %44
  br label %65

65:                                               ; preds = %64, %35
  call void @showboard()
  br label %67

66:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %65
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %15, label %71, !llvm.loop !4

71:                                               ; preds = %68
  %72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0))
  %73 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %74 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %75

75:                                               ; preds = %108, %71
  %76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %77 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %78 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* noundef %77)
  %79 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %80 = call i32 @strcmp(i8* noundef %79, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #3
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %75
  %83 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %84 = call i32 @getij(i8* noundef %83, i32* noundef %2, i32* noundef %3)
  %85 = load i32, i32* @umove, align 4
  %86 = trunc i32 %85 to i8
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %88
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [19 x i8], [19 x i8]* %89, i64 0, i64 %91
  store i8 %86, i8* %92, align 1
  %93 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %94 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %95 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* noundef %94)
  %96 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %97 = call i32 @getij(i8* noundef %96, i32* noundef %2, i32* noundef %3)
  %98 = load i32, i32* @mymove, align 4
  %99 = trunc i32 %98 to i8
  %100 = load i32, i32* %2, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %101
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [19 x i8], [19 x i8]* %102, i64 0, i64 %104
  store i8 %99, i8* %105, align 1
  call void @showboard()
  br label %107

106:                                              ; preds = %75
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %106, %82
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %75, label %111, !llvm.loop !6

111:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %145, %111
  %113 = load i32, i32* %2, align 4
  %114 = icmp slt i32 %113, 19
  br i1 %114, label %115, label %148

115:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %141, %115
  %117 = load i32, i32* %3, align 4
  %118 = icmp slt i32 %117, 19
  br i1 %118, label %119, label %144

119:                                              ; preds = %116
  %120 = load i32, i32* %2, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %121
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [19 x i8], [19 x i8]* %122, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %119
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @findcolor(i32 noundef %130, i32 noundef %131)
  %133 = trunc i32 %132 to i8
  %134 = load i32, i32* %2, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %135
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [19 x i8], [19 x i8]* %136, i64 0, i64 %138
  store i8 %133, i8* %139, align 1
  br label %140

140:                                              ; preds = %129, %119
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %3, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %3, align 4
  br label %116, !llvm.loop !7

144:                                              ; preds = %116
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %2, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %2, align 4
  br label %112, !llvm.loop !8

148:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %190, %148
  %150 = load i32, i32* %2, align 4
  %151 = icmp slt i32 %150, 19
  br i1 %151, label %152, label %193

152:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %186, %152
  %154 = load i32, i32* %3, align 4
  %155 = icmp slt i32 %154, 19
  br i1 %155, label %156, label %189

156:                                              ; preds = %153
  %157 = load i32, i32* %2, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %158
  %160 = load i32, i32* %3, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [19 x i8], [19 x i8]* %159, i64 0, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = load i32, i32* @mymove, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %156
  %168 = load i32, i32* %4, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %4, align 4
  br label %185

170:                                              ; preds = %156
  %171 = load i32, i32* %2, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %172
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [19 x i8], [19 x i8]* %173, i64 0, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = load i32, i32* @umove, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %170
  %182 = load i32, i32* %5, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %181, %170
  br label %185

185:                                              ; preds = %184, %167
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %3, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %3, align 4
  br label %153, !llvm.loop !9

189:                                              ; preds = %153
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %2, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %2, align 4
  br label %149, !llvm.loop !10

193:                                              ; preds = %149
  call void @showboard()
  %194 = load i32, i32* %5, align 4
  %195 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 noundef %194)
  %196 = load i32, i32* %4, align 4
  %197 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 noundef %196)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @__isoc99_scanf(i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local i32 @getij(i8* noundef, i32* noundef, i32* noundef) #1

declare dso_local void @showboard() #1

declare dso_local i32 @findcolor(i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

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
