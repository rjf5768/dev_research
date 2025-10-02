; ModuleID = './llubenchmark.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/llubenchmark/llubenchmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { %struct.element*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"-i <number of (I)terations>\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"[-l <initial (L)ength of list, in elements>] (default 1)\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"[-n <(N)umber of lists>] (default 1 list)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"[-s <(S)ize of element>] (default 32 bytes)\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"[-g <(G)rowth rate per list, in elements per iteration>] (default 0)\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"[-d] ((D)irty each element during traversal, default off)\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"[-t] (insert at (T)ail of list, default off)\0A\00", align 1
@free_list = dso_local global %struct.element* null, align 8
@next_free = dso_local global i32 127, align 4
@element_size = dso_local global i32 32, align 4
@num_allocated = dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [64 x i8] c"This benchmark modified to not use hard coded pool allocation!\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"parse error in %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"unrecognized option: %c\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"output = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"num allocated %d\0A\00", align 1
@str = private unnamed_addr constant [28 x i8] c"-i <number of (I)terations>\00", align 1
@str.1 = private unnamed_addr constant [57 x i8] c"[-l <initial (L)ength of list, in elements>] (default 1)\00", align 1
@str.2 = private unnamed_addr constant [42 x i8] c"[-n <(N)umber of lists>] (default 1 list)\00", align 1
@str.3 = private unnamed_addr constant [44 x i8] c"[-s <(S)ize of element>] (default 32 bytes)\00", align 1
@str.4 = private unnamed_addr constant [69 x i8] c"[-g <(G)rowth rate per list, in elements per iteration>] (default 0)\00", align 1
@str.5 = private unnamed_addr constant [58 x i8] c"[-d] ((D)irty each element during traversal, default off)\00", align 1
@str.6 = private unnamed_addr constant [45 x i8] c"[-t] (insert at (T)ail of list, default off)\00", align 1
@str.7 = private unnamed_addr constant [63 x i8] c"This benchmark modified to not use hard coded pool allocation!\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @usage(i8* noundef %0) #0 {
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %0) #5
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str, i64 0, i64 0))
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([57 x i8], [57 x i8]* @str.1, i64 0, i64 0))
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.2, i64 0, i64 0))
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str.3, i64 0, i64 0))
  %puts4 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([69 x i8], [69 x i8]* @str.4, i64 0, i64 0))
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([58 x i8], [58 x i8]* @str.5, i64 0, i64 0))
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.element* @allocate() #0 {
  %1 = load i32, i32* @num_allocated, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @num_allocated, align 4
  %3 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #5
  %4 = bitcast i8* %3 to %struct.element*
  ret %struct.element* %4
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @str.7, i64 0, i64 0))
  br label %3

3:                                                ; preds = %67, %2
  %.024 = phi i32 [ 1, %2 ], [ %.125, %67 ]
  %.012 = phi float [ 0x3FD54FDF40000000, %2 ], [ %.113, %67 ]
  %.010 = phi i32 [ 1, %2 ], [ %.111, %67 ]
  %.06 = phi i32 [ 196, %2 ], [ %.17, %67 ]
  %.03 = phi i32 [ 1000, %2 ], [ %.1, %67 ]
  %4 = icmp slt i32 %.024, %0
  br i1 %4, label %5, label %68

5:                                                ; preds = %3
  %6 = sext i32 %.024 to i64
  %7 = getelementptr inbounds i8*, i8** %1, i64 %6
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %.not41 = icmp eq i8 %9, 45
  br i1 %.not41, label %10, label %16

10:                                               ; preds = %5
  %11 = sext i32 %.024 to i64
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  %15 = load i8, i8* %14, align 1
  %.not42 = icmp eq i8 %15, 0
  br i1 %.not42, label %22, label %16

16:                                               ; preds = %10, %5
  %17 = sext i32 %.024 to i64
  %18 = getelementptr inbounds i8*, i8** %1, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* noundef %19) #5
  %21 = load i8*, i8** %1, align 8
  call void @usage(i8* noundef %21)
  br label %167

22:                                               ; preds = %10
  %23 = sext i32 %.024 to i64
  %24 = getelementptr inbounds i8*, i8** %1, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = add nsw i32 %.024, 1
  %29 = sext i8 %27 to i32
  switch i32 %29, label %63 [
    i32 100, label %30
    i32 103, label %31
    i32 105, label %38
    i32 108, label %44
    i32 110, label %50
    i32 115, label %56
    i32 116, label %62
  ]

30:                                               ; preds = %22
  br label %67

31:                                               ; preds = %22
  %32 = add nsw i32 %.024, 2
  %33 = sext i32 %28 to i64
  %34 = getelementptr inbounds i8*, i8** %1, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call double @atof(i8* noundef %35) #6
  %37 = fptrunc double %36 to float
  br label %67

38:                                               ; preds = %22
  %39 = add nsw i32 %.024, 2
  %40 = sext i32 %28 to i64
  %41 = getelementptr inbounds i8*, i8** %1, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @atoi(i8* noundef %42) #6
  br label %67

44:                                               ; preds = %22
  %45 = add nsw i32 %.024, 2
  %46 = sext i32 %28 to i64
  %47 = getelementptr inbounds i8*, i8** %1, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @atoi(i8* noundef %48) #6
  br label %67

50:                                               ; preds = %22
  %51 = add nsw i32 %.024, 2
  %52 = sext i32 %28 to i64
  %53 = getelementptr inbounds i8*, i8** %1, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @atoi(i8* noundef %54) #6
  br label %67

56:                                               ; preds = %22
  %57 = add nsw i32 %.024, 2
  %58 = sext i32 %28 to i64
  %59 = getelementptr inbounds i8*, i8** %1, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @atoi(i8* noundef %60) #6
  store i32 %61, i32* @element_size, align 4
  br label %67

62:                                               ; preds = %22
  br label %67

63:                                               ; preds = %22
  %64 = sext i8 %27 to i32
  %65 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 noundef %64) #5
  %66 = load i8*, i8** %1, align 8
  call void @usage(i8* noundef %66)
  br label %167

67:                                               ; preds = %62, %56, %50, %44, %38, %31, %30
  %.125 = phi i32 [ %28, %62 ], [ %57, %56 ], [ %51, %50 ], [ %45, %44 ], [ %39, %38 ], [ %32, %31 ], [ %28, %30 ]
  %.113 = phi float [ %.012, %62 ], [ %.012, %56 ], [ %.012, %50 ], [ %.012, %44 ], [ %.012, %38 ], [ %37, %31 ], [ %.012, %30 ]
  %.111 = phi i32 [ %.010, %62 ], [ %.010, %56 ], [ %.010, %50 ], [ %49, %44 ], [ %.010, %38 ], [ %.010, %31 ], [ %.010, %30 ]
  %.17 = phi i32 [ %.06, %62 ], [ %.06, %56 ], [ %55, %50 ], [ %.06, %44 ], [ %.06, %38 ], [ %.06, %31 ], [ %.06, %30 ]
  %.1 = phi i32 [ %.03, %62 ], [ %.03, %56 ], [ %.03, %50 ], [ %.03, %44 ], [ %43, %38 ], [ %.03, %31 ], [ %.03, %30 ]
  br label %3, !llvm.loop !4

68:                                               ; preds = %3
  %69 = sext i32 %.06 to i64
  %70 = shl nsw i64 %69, 3
  %71 = call noalias i8* @malloc(i64 noundef %70) #5
  %72 = bitcast i8* %71 to %struct.element**
  br label %73

73:                                               ; preds = %78, %68
  %.014 = phi i32 [ 0, %68 ], [ %79, %78 ]
  %74 = icmp slt i32 %.014, %.06
  br i1 %74, label %75, label %80

75:                                               ; preds = %73
  %76 = zext i32 %.014 to i64
  %77 = getelementptr inbounds %struct.element*, %struct.element** %72, i64 %76
  store %struct.element* null, %struct.element** %77, align 8
  br label %78

78:                                               ; preds = %75
  %79 = add nuw nsw i32 %.014, 1
  br label %73, !llvm.loop !6

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %98, %80
  %.115 = phi i32 [ 0, %80 ], [ %99, %98 ]
  %82 = icmp slt i32 %.115, %.010
  br i1 %82, label %83, label %100

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %95, %83
  %.016 = phi i32 [ 0, %83 ], [ %96, %95 ]
  %85 = icmp slt i32 %.016, %.06
  br i1 %85, label %86, label %97

86:                                               ; preds = %84
  %87 = call %struct.element* @allocate()
  %88 = zext i32 %.016 to i64
  %89 = getelementptr inbounds %struct.element*, %struct.element** %72, i64 %88
  %90 = load %struct.element*, %struct.element** %89, align 8
  %91 = getelementptr inbounds %struct.element, %struct.element* %87, i64 0, i32 0
  store %struct.element* %90, %struct.element** %91, align 8
  %92 = getelementptr inbounds %struct.element, %struct.element* %87, i64 0, i32 1
  store i32 0, i32* %92, align 8
  %93 = zext i32 %.016 to i64
  %94 = getelementptr inbounds %struct.element*, %struct.element** %72, i64 %93
  store %struct.element* %87, %struct.element** %94, align 8
  br label %95

95:                                               ; preds = %86
  %96 = add nuw nsw i32 %.016, 1
  br label %84, !llvm.loop !7

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97
  %99 = add nuw nsw i32 %.115, 1
  br label %81, !llvm.loop !8

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %161, %100
  %.023 = phi float [ 0.000000e+00, %100 ], [ %132, %161 ]
  %.020 = phi i32 [ 0, %100 ], [ %.121, %161 ]
  %.2 = phi i32 [ 0, %100 ], [ %162, %161 ]
  %102 = icmp slt i32 %.2, %.03
  br i1 %102, label %103, label %163

103:                                              ; preds = %101
  %104 = urem i32 %.2, 1000
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 noundef %.2) #5
  br label %108

108:                                              ; preds = %106, %103
  br label %109

109:                                              ; preds = %126, %108
  %.121 = phi i32 [ %.020, %108 ], [ %.222, %126 ]
  %.117 = phi i32 [ 0, %108 ], [ %127, %126 ]
  %110 = icmp slt i32 %.117, %.06
  br i1 %110, label %111, label %128

111:                                              ; preds = %109
  %112 = zext i32 %.117 to i64
  %113 = getelementptr inbounds %struct.element*, %struct.element** %72, i64 %112
  br label %114

114:                                              ; preds = %123, %111
  %.222 = phi i32 [ %.121, %111 ], [ %118, %123 ]
  %.02.in = phi %struct.element** [ %113, %111 ], [ %124, %123 ]
  %.02 = load %struct.element*, %struct.element** %.02.in, align 8
  %.not40 = icmp eq %struct.element* %.02, null
  br i1 %.not40, label %125, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.element, %struct.element* %.02, i64 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %.222, %117
  br i1 true, label %119, label %123

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.element, %struct.element* %.02, i64 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %119, %115
  %124 = getelementptr inbounds %struct.element, %struct.element* %.02, i64 0, i32 0
  br label %114, !llvm.loop !9

125:                                              ; preds = %114
  br label %126

126:                                              ; preds = %125
  %127 = add nuw nsw i32 %.117, 1
  br label %109, !llvm.loop !10

128:                                              ; preds = %109
  %129 = fadd float %.023, %.012
  %130 = fptosi float %129 to i32
  %131 = sitofp i32 %130 to float
  %132 = fsub float %129, %131
  br label %133

133:                                              ; preds = %158, %128
  %.218 = phi i32 [ %130, %128 ], [ %159, %158 ]
  %134 = icmp sgt i32 %.218, 0
  br i1 %134, label %135, label %160

135:                                              ; preds = %133
  br label %136

136:                                              ; preds = %155, %135
  %.019 = phi i32 [ 0, %135 ], [ %156, %155 ]
  %137 = icmp slt i32 %.019, %.06
  br i1 %137, label %138, label %157

138:                                              ; preds = %136
  %139 = call %struct.element* @allocate()
  %140 = add nsw i32 %.019, %.218
  %141 = getelementptr inbounds %struct.element, %struct.element* %139, i64 0, i32 1
  store i32 %140, i32* %141, align 8
  br i1 true, label %142, label %153

142:                                              ; preds = %138
  %143 = zext i32 %.019 to i64
  %144 = getelementptr inbounds %struct.element*, %struct.element** %72, i64 %143
  br label %145

145:                                              ; preds = %148, %142
  %.01.in = phi %struct.element** [ %144, %142 ], [ %149, %148 ]
  %.01 = load %struct.element*, %struct.element** %.01.in, align 8
  %146 = getelementptr inbounds %struct.element, %struct.element* %.01, i64 0, i32 0
  %147 = load %struct.element*, %struct.element** %146, align 8
  %.not = icmp eq %struct.element* %147, null
  br i1 %.not, label %150, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.element, %struct.element* %.01, i64 0, i32 0
  br label %145, !llvm.loop !11

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.element, %struct.element* %.01, i64 0, i32 0
  store %struct.element* %139, %struct.element** %151, align 8
  %152 = getelementptr inbounds %struct.element, %struct.element* %139, i64 0, i32 0
  store %struct.element* null, %struct.element** %152, align 8
  br label %154

153:                                              ; preds = %138
  br label %154

154:                                              ; preds = %153, %150
  br label %155

155:                                              ; preds = %154
  %156 = add nuw nsw i32 %.019, 1
  br label %136, !llvm.loop !12

157:                                              ; preds = %136
  br label %158

158:                                              ; preds = %157
  %159 = add nsw i32 %.218, -1
  br label %133, !llvm.loop !13

160:                                              ; preds = %133
  br label %161

161:                                              ; preds = %160
  %162 = add nuw nsw i32 %.2, 1
  br label %101, !llvm.loop !14

163:                                              ; preds = %101
  %164 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 noundef %.020) #5
  %165 = load i32, i32* @num_allocated, align 4
  %166 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 noundef %165) #5
  br label %167

167:                                              ; preds = %163, %63, %16
  %.0 = phi i32 [ -1, %16 ], [ -1, %63 ], [ 0, %163 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local double @atof(i8* noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
