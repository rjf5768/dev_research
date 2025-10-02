; ModuleID = './count.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ml = external dso_local global [19 x [19 x i8]], align 16
@p = external dso_local global [19 x [19 x i8]], align 16
@lib = external dso_local global i32, align 4

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @count(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = sext i32 %0 to i64
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %4, i64 %5
  store i8 0, i8* %6, align 1
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %45, label %7

7:                                                ; preds = %3
  %8 = add nsw i32 %0, -1
  %9 = sext i32 %8 to i64
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %9, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %7
  %15 = add nsw i32 %0, -1
  %16 = sext i32 %15 to i64
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %.not11 = icmp eq i8 %19, 0
  br i1 %.not11, label %27, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @lib, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @lib, align 4
  %23 = add nsw i32 %0, -1
  %24 = sext i32 %23 to i64
  %25 = sext i32 %1 to i64
  %26 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %24, i64 %25
  store i8 0, i8* %26, align 1
  br label %44

27:                                               ; preds = %14, %7
  %28 = add nsw i32 %0, -1
  %29 = sext i32 %28 to i64
  %30 = sext i32 %1 to i64
  %31 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = add nsw i32 %0, -1
  %37 = sext i32 %36 to i64
  %38 = sext i32 %1 to i64
  %39 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %.not10 = icmp eq i8 %40, 0
  br i1 %.not10, label %43, label %41

41:                                               ; preds = %35
  %42 = add nsw i32 %0, -1
  call void @count(i32 noundef %42, i32 noundef %1, i32 noundef %2)
  br label %43

43:                                               ; preds = %41, %35, %27
  br label %44

44:                                               ; preds = %43, %20
  br label %45

45:                                               ; preds = %44, %3
  %.not1 = icmp eq i32 %0, 18
  br i1 %.not1, label %84, label %46

46:                                               ; preds = %45
  %47 = add nsw i32 %0, 1
  %48 = sext i32 %47 to i64
  %49 = sext i32 %1 to i64
  %50 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = add nsw i32 %0, 1
  %55 = sext i32 %54 to i64
  %56 = sext i32 %1 to i64
  %57 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %.not9 = icmp eq i8 %58, 0
  br i1 %.not9, label %66, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @lib, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @lib, align 4
  %62 = add nsw i32 %0, 1
  %63 = sext i32 %62 to i64
  %64 = sext i32 %1 to i64
  %65 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %63, i64 %64
  store i8 0, i8* %65, align 1
  br label %83

66:                                               ; preds = %53, %46
  %67 = add nsw i32 %0, 1
  %68 = sext i32 %67 to i64
  %69 = sext i32 %1 to i64
  %70 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, %2
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = add nsw i32 %0, 1
  %76 = sext i32 %75 to i64
  %77 = sext i32 %1 to i64
  %78 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %.not8 = icmp eq i8 %79, 0
  br i1 %.not8, label %82, label %80

80:                                               ; preds = %74
  %81 = add nsw i32 %0, 1
  call void @count(i32 noundef %81, i32 noundef %1, i32 noundef %2)
  br label %82

82:                                               ; preds = %80, %74, %66
  br label %83

83:                                               ; preds = %82, %59
  br label %84

84:                                               ; preds = %83, %45
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %123, label %85

85:                                               ; preds = %84
  %86 = sext i32 %0 to i64
  %87 = add nsw i32 %1, -1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %85
  %93 = sext i32 %0 to i64
  %94 = add nsw i32 %1, -1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %.not7 = icmp eq i8 %97, 0
  br i1 %.not7, label %105, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* @lib, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* @lib, align 4
  %101 = sext i32 %0 to i64
  %102 = add nsw i32 %1, -1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %101, i64 %103
  store i8 0, i8* %104, align 1
  br label %122

105:                                              ; preds = %92, %85
  %106 = sext i32 %0 to i64
  %107 = add nsw i32 %1, -1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, %2
  br i1 %112, label %113, label %121

113:                                              ; preds = %105
  %114 = sext i32 %0 to i64
  %115 = add nsw i32 %1, -1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %.not6 = icmp eq i8 %118, 0
  br i1 %.not6, label %121, label %119

119:                                              ; preds = %113
  %120 = add nsw i32 %1, -1
  call void @count(i32 noundef %0, i32 noundef %120, i32 noundef %2)
  br label %121

121:                                              ; preds = %119, %113, %105
  br label %122

122:                                              ; preds = %121, %98
  br label %123

123:                                              ; preds = %122, %84
  %.not3 = icmp eq i32 %1, 18
  br i1 %.not3, label %162, label %124

124:                                              ; preds = %123
  %125 = sext i32 %0 to i64
  %126 = add nsw i32 %1, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %124
  %132 = sext i32 %0 to i64
  %133 = add nsw i32 %1, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %.not5 = icmp eq i8 %136, 0
  br i1 %.not5, label %144, label %137

137:                                              ; preds = %131
  %138 = load i32, i32* @lib, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* @lib, align 4
  %140 = sext i32 %0 to i64
  %141 = add nsw i32 %1, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %140, i64 %142
  store i8 0, i8* %143, align 1
  br label %161

144:                                              ; preds = %131, %124
  %145 = sext i32 %0 to i64
  %146 = add nsw i32 %1, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp eq i32 %150, %2
  br i1 %151, label %152, label %160

152:                                              ; preds = %144
  %153 = sext i32 %0 to i64
  %154 = add nsw i32 %1, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %153, i64 %155
  %157 = load i8, i8* %156, align 1
  %.not4 = icmp eq i8 %157, 0
  br i1 %.not4, label %160, label %158

158:                                              ; preds = %152
  %159 = add nsw i32 %1, 1
  call void @count(i32 noundef %0, i32 noundef %159, i32 noundef %2)
  br label %160

160:                                              ; preds = %158, %152, %144
  br label %161

161:                                              ; preds = %160, %137
  br label %162

162:                                              ; preds = %161, %123
  ret void
}

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
