; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/genmove.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/genmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@umove = external dso_local global i32, align 4
@rd = external dso_local global i32, align 4
@lib = external dso_local global i32, align 4
@mymove = external dso_local global i32, align 4
@p = external dso_local global [19 x [19 x i8]], align 16
@pass = external dso_local global i32, align 4
@.str = private unnamed_addr constant [9 x i8] c"I pass.\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"my move: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%1d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%2d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @genmove(i32* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %3, align 8
  store i32 -1, i32* %12, align 4
  %13 = load i32*, i32** %4, align 8
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %10, align 4
  %14 = load i32, i32* @umove, align 4
  call void @eval(i32 noundef %14)
  %15 = call i32 @findwinner(i32* noundef %5, i32* noundef %6, i32* noundef %7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** %3, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %17
  br label %28

28:                                               ; preds = %27, %2
  %29 = call i32 @findsaver(i32* noundef %5, i32* noundef %6, i32* noundef %7)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %3, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %31
  br label %42

42:                                               ; preds = %41, %28
  %43 = call i32 @findpatn(i32* noundef %5, i32* noundef %6, i32* noundef %7)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32*, i32** %3, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %4, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %45
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %167

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %164, %59
  call void @random_nasko(i32* noundef @rd)
  %61 = load i32, i32* @rd, align 4
  %62 = srem i32 %61, 19
  %63 = load i32*, i32** %3, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %79, label %67

67:                                               ; preds = %60
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 16
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 5
  br i1 %74, label %75, label %95

75:                                               ; preds = %71
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 13
  br i1 %78, label %79, label %95

79:                                               ; preds = %75, %67, %60
  call void @random_nasko(i32* noundef @rd)
  %80 = load i32, i32* @rd, align 4
  %81 = srem i32 %80, 19
  %82 = load i32*, i32** %3, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 16
  br i1 %89, label %90, label %94

90:                                               ; preds = %86, %79
  call void @random_nasko(i32* noundef @rd)
  %91 = load i32, i32* @rd, align 4
  %92 = srem i32 %91, 19
  %93 = load i32*, i32** %3, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %86
  br label %95

95:                                               ; preds = %94, %75, %71
  call void @random_nasko(i32* noundef @rd)
  %96 = load i32, i32* @rd, align 4
  %97 = srem i32 %96, 19
  %98 = load i32*, i32** %4, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %100, 2
  br i1 %101, label %114, label %102

102:                                              ; preds = %95
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %104, 16
  br i1 %105, label %114, label %106

106:                                              ; preds = %102
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %108, 5
  br i1 %109, label %110, label %130

110:                                              ; preds = %106
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %112, 13
  br i1 %113, label %114, label %130

114:                                              ; preds = %110, %102, %95
  call void @random_nasko(i32* noundef @rd)
  %115 = load i32, i32* @rd, align 4
  %116 = srem i32 %115, 19
  %117 = load i32*, i32** %4, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %119, 2
  br i1 %120, label %125, label %121

121:                                              ; preds = %114
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %123, 16
  br i1 %124, label %125, label %129

125:                                              ; preds = %121, %114
  call void @random_nasko(i32* noundef @rd)
  %126 = load i32, i32* @rd, align 4
  %127 = srem i32 %126, 19
  %128 = load i32*, i32** %4, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %125, %121
  br label %130

130:                                              ; preds = %129, %110, %106
  store i32 0, i32* @lib, align 4
  %131 = load i32*, i32** %3, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @mymove, align 4
  call void @countlib(i32 noundef %132, i32 noundef %134, i32 noundef %135)
  br label %136

136:                                              ; preds = %130
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  %139 = icmp slt i32 %138, 400
  br i1 %139, label %140, label %164

140:                                              ; preds = %136
  %141 = load i32*, i32** %3, align 8
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %143
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [19 x i8], [19 x i8]* %144, i64 0, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %162, label %152

152:                                              ; preds = %140
  %153 = load i32, i32* @lib, align 4
  %154 = icmp slt i32 %153, 2
  br i1 %154, label %162, label %155

155:                                              ; preds = %152
  %156 = load i32*, i32** %3, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @fioe(i32 noundef %157, i32 noundef %159)
  %161 = icmp ne i32 %160, 0
  br label %162

162:                                              ; preds = %155, %152, %140
  %163 = phi i1 [ true, %152 ], [ true, %140 ], [ %161, %155 ]
  br label %164

164:                                              ; preds = %162, %136
  %165 = phi i1 [ false, %136 ], [ %163, %162 ]
  br i1 %165, label %60, label %166, !llvm.loop !4

166:                                              ; preds = %164
  br label %167

167:                                              ; preds = %166, %56
  %168 = load i32, i32* %11, align 4
  %169 = icmp sge i32 %168, 400
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load i32, i32* @pass, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* @pass, align 4
  %173 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %174 = load i32*, i32** %3, align 8
  store i32 -1, i32* %174, align 4
  br label %206

175:                                              ; preds = %167
  store i32 0, i32* @pass, align 4
  %176 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %177 = load i32*, i32** %4, align 8
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %178, 8
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load i32*, i32** %4, align 8
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 65
  %184 = trunc i32 %183 to i8
  store i8 %184, i8* %8, align 1
  br label %190

185:                                              ; preds = %175
  %186 = load i32*, i32** %4, align 8
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 66
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %8, align 1
  br label %190

190:                                              ; preds = %185, %180
  %191 = load i8, i8* %8, align 1
  %192 = sext i8 %191 to i32
  %193 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 noundef %192)
  %194 = load i32*, i32** %3, align 8
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 19, %195
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp slt i32 %197, 10
  br i1 %198, label %199, label %202

199:                                              ; preds = %190
  %200 = load i32, i32* %9, align 4
  %201 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %200)
  br label %205

202:                                              ; preds = %190
  %203 = load i32, i32* %9, align 4
  %204 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %203)
  br label %205

205:                                              ; preds = %202, %199
  br label %206

206:                                              ; preds = %205, %170
  ret void
}

declare dso_local void @eval(i32 noundef) #1

declare dso_local i32 @findwinner(i32* noundef, i32* noundef, i32* noundef) #1

declare dso_local i32 @findsaver(i32* noundef, i32* noundef, i32* noundef) #1

declare dso_local i32 @findpatn(i32* noundef, i32* noundef, i32* noundef) #1

declare dso_local void @random_nasko(i32* noundef) #1

declare dso_local void @countlib(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @fioe(i32 noundef, i32 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
