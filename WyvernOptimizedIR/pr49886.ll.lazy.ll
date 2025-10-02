; ModuleID = './pr49886.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49886.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PMC = type { i32 }
%struct.Pcc_cell = type { %struct.PMC*, i64, i64 }

@cond = dso_local global i32 0, align 4
@gi = dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @never_ever(i32 noundef %0, %struct.PMC* nocapture noundef readnone %1) #0 {
  call void @abort() #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  store i32 1, i32* @cond, align 4
  br label %1

1:                                                ; preds = %5, %0
  %.0 = phi i32 [ 0, %0 ], [ %6, %5 ]
  %2 = icmp ult i32 %.0, 100
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = call %struct.Pcc_cell* @getnull()
  call void @foo(i32* noundef @gi, %struct.Pcc_cell* noundef %4)
  br label %5

5:                                                ; preds = %3
  %6 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

7:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo(i32* nocapture noundef nonnull readnone %0, %struct.Pcc_cell* noundef %1) #2 {
  call void @mark_cell(i32* noundef %0, %struct.Pcc_cell* noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal noalias %struct.Pcc_cell* @getnull() #3 {
  ret %struct.Pcc_cell* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar_1(i32* nocapture noundef nonnull readnone %0, %struct.Pcc_cell* noundef %1) #2 {
  %3 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = add nsw i64 %4, 1
  store i64 %5, i64* %3, align 8
  call void @mark_cell(i32* noundef %0, %struct.Pcc_cell* noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @mark_cell(i32* nocapture noundef nonnull readnone %0, %struct.Pcc_cell* noundef readonly %1) #2 {
  %3 = load i32, i32* @cond, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  br label %176

5:                                                ; preds = %2
  %.not1 = icmp eq %struct.Pcc_cell* %1, null
  br i1 %.not1, label %24, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 4
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %12 = load %struct.PMC*, %struct.PMC** %11, align 8
  %.not26 = icmp eq %struct.PMC* %12, null
  br i1 %.not26, label %24, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %15 = load %struct.PMC*, %struct.PMC** %14, align 8
  %16 = getelementptr inbounds %struct.PMC, %struct.PMC* %15, i64 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 262144
  %.not27 = icmp eq i32 %18, 0
  br i1 %.not27, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32, i32* @gi, align 4
  %21 = add nsw i32 %20, 1
  %22 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %23 = load %struct.PMC*, %struct.PMC** %22, align 8
  call void @never_ever(i32 noundef %21, %struct.PMC* noundef %23)
  br label %24

24:                                               ; preds = %19, %13, %10, %6, %5
  %.not2 = icmp eq %struct.Pcc_cell* %1, null
  br i1 %.not2, label %43, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 4
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %31 = load %struct.PMC*, %struct.PMC** %30, align 8
  %.not24 = icmp eq %struct.PMC* %31, null
  br i1 %.not24, label %43, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %34 = load %struct.PMC*, %struct.PMC** %33, align 8
  %35 = getelementptr inbounds %struct.PMC, %struct.PMC* %34, i64 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 131072
  %.not25 = icmp eq i32 %37, 0
  br i1 %.not25, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* @gi, align 4
  %40 = add nsw i32 %39, 2
  %41 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %42 = load %struct.PMC*, %struct.PMC** %41, align 8
  call void @never_ever(i32 noundef %40, %struct.PMC* noundef %42)
  br label %43

43:                                               ; preds = %38, %32, %29, %25, %24
  %.not3 = icmp eq %struct.Pcc_cell* %1, null
  br i1 %.not3, label %62, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 4
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %50 = load %struct.PMC*, %struct.PMC** %49, align 8
  %.not22 = icmp eq %struct.PMC* %50, null
  br i1 %.not22, label %62, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %53 = load %struct.PMC*, %struct.PMC** %52, align 8
  %54 = getelementptr inbounds %struct.PMC, %struct.PMC* %53, i64 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 65536
  %.not23 = icmp eq i32 %56, 0
  br i1 %.not23, label %57, label %62

57:                                               ; preds = %51
  %58 = load i32, i32* @gi, align 4
  %59 = add nsw i32 %58, 3
  %60 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %61 = load %struct.PMC*, %struct.PMC** %60, align 8
  call void @never_ever(i32 noundef %59, %struct.PMC* noundef %61)
  br label %62

62:                                               ; preds = %57, %51, %48, %44, %43
  %.not4 = icmp eq %struct.Pcc_cell* %1, null
  br i1 %.not4, label %81, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 4
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %69 = load %struct.PMC*, %struct.PMC** %68, align 8
  %.not20 = icmp eq %struct.PMC* %69, null
  br i1 %.not20, label %81, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %72 = load %struct.PMC*, %struct.PMC** %71, align 8
  %73 = getelementptr inbounds %struct.PMC, %struct.PMC* %72, i64 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 32768
  %.not21 = icmp eq i32 %75, 0
  br i1 %.not21, label %76, label %81

76:                                               ; preds = %70
  %77 = load i32, i32* @gi, align 4
  %78 = add nsw i32 %77, 4
  %79 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %80 = load %struct.PMC*, %struct.PMC** %79, align 8
  call void @never_ever(i32 noundef %78, %struct.PMC* noundef %80)
  br label %81

81:                                               ; preds = %76, %70, %67, %63, %62
  %.not5 = icmp eq %struct.Pcc_cell* %1, null
  br i1 %.not5, label %100, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 4
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %88 = load %struct.PMC*, %struct.PMC** %87, align 8
  %.not18 = icmp eq %struct.PMC* %88, null
  br i1 %.not18, label %100, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %91 = load %struct.PMC*, %struct.PMC** %90, align 8
  %92 = getelementptr inbounds %struct.PMC, %struct.PMC* %91, i64 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 16384
  %.not19 = icmp eq i32 %94, 0
  br i1 %.not19, label %95, label %100

95:                                               ; preds = %89
  %96 = load i32, i32* @gi, align 4
  %97 = add nsw i32 %96, 5
  %98 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %99 = load %struct.PMC*, %struct.PMC** %98, align 8
  call void @never_ever(i32 noundef %97, %struct.PMC* noundef %99)
  br label %100

100:                                              ; preds = %95, %89, %86, %82, %81
  %.not6 = icmp eq %struct.Pcc_cell* %1, null
  br i1 %.not6, label %119, label %101

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 4
  br i1 %104, label %105, label %119

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %107 = load %struct.PMC*, %struct.PMC** %106, align 8
  %.not16 = icmp eq %struct.PMC* %107, null
  br i1 %.not16, label %119, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %110 = load %struct.PMC*, %struct.PMC** %109, align 8
  %111 = getelementptr inbounds %struct.PMC, %struct.PMC* %110, i64 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 8192
  %.not17 = icmp eq i32 %113, 0
  br i1 %.not17, label %114, label %119

114:                                              ; preds = %108
  %115 = load i32, i32* @gi, align 4
  %116 = add nsw i32 %115, 6
  %117 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %118 = load %struct.PMC*, %struct.PMC** %117, align 8
  call void @never_ever(i32 noundef %116, %struct.PMC* noundef %118)
  br label %119

119:                                              ; preds = %114, %108, %105, %101, %100
  %.not7 = icmp eq %struct.Pcc_cell* %1, null
  br i1 %.not7, label %138, label %120

120:                                              ; preds = %119
  %121 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 4
  br i1 %123, label %124, label %138

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %126 = load %struct.PMC*, %struct.PMC** %125, align 8
  %.not14 = icmp eq %struct.PMC* %126, null
  br i1 %.not14, label %138, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %129 = load %struct.PMC*, %struct.PMC** %128, align 8
  %130 = getelementptr inbounds %struct.PMC, %struct.PMC* %129, i64 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 4096
  %.not15 = icmp eq i32 %132, 0
  br i1 %.not15, label %133, label %138

133:                                              ; preds = %127
  %134 = load i32, i32* @gi, align 4
  %135 = add nsw i32 %134, 7
  %136 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %137 = load %struct.PMC*, %struct.PMC** %136, align 8
  call void @never_ever(i32 noundef %135, %struct.PMC* noundef %137)
  br label %138

138:                                              ; preds = %133, %127, %124, %120, %119
  %.not8 = icmp eq %struct.Pcc_cell* %1, null
  br i1 %.not8, label %157, label %139

139:                                              ; preds = %138
  %140 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 4
  br i1 %142, label %143, label %157

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %145 = load %struct.PMC*, %struct.PMC** %144, align 8
  %.not12 = icmp eq %struct.PMC* %145, null
  br i1 %.not12, label %157, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %148 = load %struct.PMC*, %struct.PMC** %147, align 8
  %149 = getelementptr inbounds %struct.PMC, %struct.PMC* %148, i64 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 2048
  %.not13 = icmp eq i32 %151, 0
  br i1 %.not13, label %152, label %157

152:                                              ; preds = %146
  %153 = load i32, i32* @gi, align 4
  %154 = add nsw i32 %153, 8
  %155 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %156 = load %struct.PMC*, %struct.PMC** %155, align 8
  call void @never_ever(i32 noundef %154, %struct.PMC* noundef %156)
  br label %157

157:                                              ; preds = %152, %146, %143, %139, %138
  %.not9 = icmp eq %struct.Pcc_cell* %1, null
  br i1 %.not9, label %176, label %158

158:                                              ; preds = %157
  %159 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 4
  br i1 %161, label %162, label %176

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %164 = load %struct.PMC*, %struct.PMC** %163, align 8
  %.not10 = icmp eq %struct.PMC* %164, null
  br i1 %.not10, label %176, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %167 = load %struct.PMC*, %struct.PMC** %166, align 8
  %168 = getelementptr inbounds %struct.PMC, %struct.PMC* %167, i64 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 1024
  %.not11 = icmp eq i32 %170, 0
  br i1 %.not11, label %171, label %176

171:                                              ; preds = %165
  %172 = load i32, i32* @gi, align 4
  %173 = add nsw i32 %172, 9
  %174 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %175 = load %struct.PMC*, %struct.PMC** %174, align 8
  call void @never_ever(i32 noundef %173, %struct.PMC* noundef %175)
  br label %176

176:                                              ; preds = %171, %165, %162, %158, %157, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar_2(i32* nocapture noundef nonnull readnone %0, %struct.Pcc_cell* noundef %1) #2 {
  %3 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = add nsw i64 %4, 2
  store i64 %5, i64* %3, align 8
  call void @mark_cell(i32* noundef %0, %struct.Pcc_cell* noundef %1)
  ret void
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
