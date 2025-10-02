; ModuleID = './espresso.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/espresso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.cost_struct = type { i32, i32, i32, i32, i32, i32 }

@recompute_onset = external dso_local global i32, align 4
@trace = external dso_local global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"SIMPLIFY   \00", align 1
@unwrap_onset = external dso_local global i32, align 4
@cube = external dso_local global %struct.cube_struct, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"SETUP      \00", align 1
@single_expand = external dso_local global i32, align 4
@remove_essential = external dso_local global i32, align 4
@use_super_gasp = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"ADJUST     \00", align 1
@skip_make_sparse = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @espresso(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2) #0 {
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca %struct.set_family*, align 8
  %6 = alloca %struct.cost_struct, align 4
  %7 = alloca %struct.cost_struct, align 4
  store %struct.set_family* %0, %struct.set_family** %4, align 8
  br label %8

8:                                                ; preds = %183, %3
  %9 = load %struct.set_family*, %struct.set_family** %4, align 8
  %10 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %9) #2
  %11 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %1) #2
  store %struct.set_family* %11, %struct.set_family** %5, align 8
  %12 = load i32, i32* @recompute_onset, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %24, label %13

13:                                               ; preds = %8
  %14 = call i64 (...) @util_cpu_time() #2
  %15 = load %struct.set_family*, %struct.set_family** %4, align 8
  %16 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* noundef %15) #2
  %17 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @simplify to %struct.set_family* (i32**, ...)*)(i32** noundef %16) #2
  %18 = load i32, i32* @trace, align 4
  %.not11 = icmp eq i32 %18, 0
  br i1 %.not11, label %22, label %19

19:                                               ; preds = %13
  %20 = call i64 (...) @util_cpu_time() #2
  %21 = sub nsw i64 %20, %14
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* noundef %17, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 noundef %21) #2
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %23) #2
  store %struct.set_family* %17, %struct.set_family** %4, align 8
  br label %24

24:                                               ; preds = %22, %8
  %25 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (%struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @cover_cost to void (%struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* noundef %25, %struct.cost_struct* noundef nonnull %6) #2
  %26 = load i32, i32* @unwrap_onset, align 4
  %.not2 = icmp eq i32 %26, 0
  br i1 %.not2, label %64, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 5), align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %30 = add nsw i32 %29, -1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %64

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %6, i64 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %6, i64 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 5), align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %42 = add nsw i32 %41, -1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %39, %45
  %.not9 = icmp eq i32 %37, %46
  br i1 %.not9, label %64, label %47

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %6, i64 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 5000
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = call i64 (...) @util_cpu_time() #2
  %53 = load %struct.set_family*, %struct.set_family** %4, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %55 = add nsw i32 %54, -1
  %56 = call %struct.set_family* (%struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @unravel to %struct.set_family* (%struct.set_family*, i32, ...)*)(%struct.set_family* noundef %53, i32 noundef %55) #2
  %57 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %56) #2
  store %struct.set_family* %57, %struct.set_family** %4, align 8
  %58 = load i32, i32* @trace, align 4
  %.not10 = icmp eq i32 %58, 0
  br i1 %.not10, label %63, label %59

59:                                               ; preds = %51
  %60 = load %struct.set_family*, %struct.set_family** %4, align 8
  %61 = call i64 (...) @util_cpu_time() #2
  %62 = sub nsw i64 %61, %52
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* noundef %60, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 noundef %62) #2
  br label %63

63:                                               ; preds = %59, %51
  br label %64

64:                                               ; preds = %63, %47, %35, %27, %24
  %65 = load %struct.set_family*, %struct.set_family** %4, align 8
  %66 = getelementptr inbounds %struct.set_family, %struct.set_family* %65, i64 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds %struct.set_family, %struct.set_family* %65, i64 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.set_family, %struct.set_family* %65, i64 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %69, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %67, i64 %73
  br label %75

75:                                               ; preds = %80, %64
  %.0 = phi i32* [ %67, %64 ], [ %85, %80 ]
  %76 = icmp ult i32* %.0, %74
  br i1 %76, label %77, label %86

77:                                               ; preds = %75
  %78 = load i32, i32* %.0, align 4
  %79 = and i32 %78, -32769
  store i32 %79, i32* %.0, align 4
  br label %80

80:                                               ; preds = %77
  %81 = load %struct.set_family*, %struct.set_family** %4, align 8
  %82 = getelementptr inbounds %struct.set_family, %struct.set_family* %81, i64 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %.0, i64 %84
  br label %75, !llvm.loop !4

86:                                               ; preds = %75
  %87 = call i64 (...) @util_cpu_time() #2
  %88 = load %struct.set_family*, %struct.set_family** %4, align 8
  %89 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @expand to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* noundef %88, %struct.set_family* noundef %2, i32 noundef 0) #2
  store %struct.set_family* %89, %struct.set_family** %4, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %87, i32 noundef 4, %struct.set_family* noundef %89, %struct.cost_struct* noundef nonnull %6) #2
  %90 = call i64 (...) @util_cpu_time() #2
  %91 = load %struct.set_family*, %struct.set_family** %4, align 8
  %92 = load %struct.set_family*, %struct.set_family** %5, align 8
  %93 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @irredundant to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %91, %struct.set_family* noundef %92) #2
  store %struct.set_family* %93, %struct.set_family** %4, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %90, i32 noundef 5, %struct.set_family* noundef %93, %struct.cost_struct* noundef nonnull %6) #2
  %94 = load i32, i32* @single_expand, align 4
  %.not3 = icmp eq i32 %94, 0
  br i1 %.not3, label %95, label %170

95:                                               ; preds = %86
  %96 = load i32, i32* @remove_essential, align 4
  %.not4 = icmp eq i32 %96, 0
  br i1 %.not4, label %100, label %97

97:                                               ; preds = %95
  %98 = call i64 (...) @util_cpu_time() #2
  %99 = call %struct.set_family* (%struct.set_family**, %struct.set_family**, ...) bitcast (%struct.set_family* (...)* @essential to %struct.set_family* (%struct.set_family**, %struct.set_family**, ...)*)(%struct.set_family** noundef nonnull %4, %struct.set_family** noundef nonnull %5) #2
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %98, i32 noundef 3, %struct.set_family* noundef %99, %struct.cost_struct* noundef nonnull %6) #2
  br label %103

100:                                              ; preds = %95
  %101 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %102 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 0, i32 noundef %101) #2
  br label %103

103:                                              ; preds = %100, %97
  %.01 = phi %struct.set_family* [ %99, %97 ], [ %102, %100 ]
  %104 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (%struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @cover_cost to void (%struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* noundef %104, %struct.cost_struct* noundef nonnull %6) #2
  br label %105

105:                                              ; preds = %161, %103
  %106 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %6, i64 0, i32 0
  br label %107

107:                                              ; preds = %119, %105
  call void (%struct.cost_struct*, %struct.cost_struct*, ...) bitcast (void (...)* @copy_cost to void (%struct.cost_struct*, %struct.cost_struct*, ...)*)(%struct.cost_struct* noundef nonnull %6, %struct.cost_struct* noundef nonnull %7) #2
  %108 = call i64 (...) @util_cpu_time() #2
  %109 = load %struct.set_family*, %struct.set_family** %4, align 8
  %110 = load %struct.set_family*, %struct.set_family** %5, align 8
  %111 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @reduce to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %109, %struct.set_family* noundef %110) #2
  store %struct.set_family* %111, %struct.set_family** %4, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %108, i32 noundef 6, %struct.set_family* noundef %111, %struct.cost_struct* noundef nonnull %6) #2
  %112 = call i64 (...) @util_cpu_time() #2
  %113 = load %struct.set_family*, %struct.set_family** %4, align 8
  %114 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @expand to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* noundef %113, %struct.set_family* noundef %2, i32 noundef 0) #2
  store %struct.set_family* %114, %struct.set_family** %4, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %112, i32 noundef 4, %struct.set_family* noundef %114, %struct.cost_struct* noundef nonnull %6) #2
  %115 = call i64 (...) @util_cpu_time() #2
  %116 = load %struct.set_family*, %struct.set_family** %4, align 8
  %117 = load %struct.set_family*, %struct.set_family** %5, align 8
  %118 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @irredundant to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %116, %struct.set_family* noundef %117) #2
  store %struct.set_family* %118, %struct.set_family** %4, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %115, i32 noundef 5, %struct.set_family* noundef %118, %struct.cost_struct* noundef nonnull %6) #2
  br label %119

119:                                              ; preds = %107
  %120 = load i32, i32* %106, align 4
  %121 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %7, i64 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %107, label %124, !llvm.loop !6

124:                                              ; preds = %119
  call void (%struct.cost_struct*, %struct.cost_struct*, ...) bitcast (void (...)* @copy_cost to void (%struct.cost_struct*, %struct.cost_struct*, ...)*)(%struct.cost_struct* noundef nonnull %6, %struct.cost_struct* noundef nonnull %7) #2
  %125 = load i32, i32* @use_super_gasp, align 4
  %.not5 = icmp eq i32 %125, 0
  br i1 %.not5, label %136, label %126

126:                                              ; preds = %124
  %127 = load %struct.set_family*, %struct.set_family** %4, align 8
  %128 = load %struct.set_family*, %struct.set_family** %5, align 8
  %129 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, %struct.cost_struct*, ...) bitcast (%struct.set_family* (...)* @super_gasp to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* noundef %127, %struct.set_family* noundef %128, %struct.set_family* noundef %2, %struct.cost_struct* noundef nonnull %6) #2
  store %struct.set_family* %129, %struct.set_family** %4, align 8
  %130 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %6, i64 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %7, i64 0, i32 0
  %133 = load i32, i32* %132, align 4
  %.not8 = icmp slt i32 %131, %133
  br i1 %.not8, label %135, label %134

134:                                              ; preds = %126
  br label %163

135:                                              ; preds = %126
  br label %140

136:                                              ; preds = %124
  %137 = load %struct.set_family*, %struct.set_family** %4, align 8
  %138 = load %struct.set_family*, %struct.set_family** %5, align 8
  %139 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, %struct.cost_struct*, ...) bitcast (%struct.set_family* (...)* @last_gasp to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* noundef %137, %struct.set_family* noundef %138, %struct.set_family* noundef %2, %struct.cost_struct* noundef nonnull %6) #2
  store %struct.set_family* %139, %struct.set_family** %4, align 8
  br label %140

140:                                              ; preds = %136, %135
  br label %141

141:                                              ; preds = %140
  %142 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %6, i64 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %7, i64 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %161, label %147

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %6, i64 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %7, i64 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %6, i64 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %7, i64 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %155, %157
  br label %159

159:                                              ; preds = %153, %147
  %160 = phi i1 [ false, %147 ], [ %158, %153 ]
  br label %161

161:                                              ; preds = %159, %141
  %162 = phi i1 [ true, %141 ], [ %160, %159 ]
  br i1 %162, label %105, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %161
  br label %163

163:                                              ; preds = %.loopexit, %134
  %164 = load %struct.set_family*, %struct.set_family** %4, align 8
  %165 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %164, %struct.set_family* noundef %.01) #2
  store %struct.set_family* %165, %struct.set_family** %4, align 8
  %166 = load i32, i32* @trace, align 4
  %.not6 = icmp eq i32 %166, 0
  br i1 %.not6, label %169, label %167

167:                                              ; preds = %163
  %168 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (%struct.set_family*, i8*, ...) bitcast (void (...)* @size_stamp to void (%struct.set_family*, i8*, ...)*)(%struct.set_family* noundef %168, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)) #2
  br label %169

169:                                              ; preds = %167, %163
  br label %170

170:                                              ; preds = %169, %86
  %171 = load %struct.set_family*, %struct.set_family** %5, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %171) #2
  %172 = load i32, i32* @skip_make_sparse, align 4
  %.not7 = icmp eq i32 %172, 0
  br i1 %.not7, label %173, label %176

173:                                              ; preds = %170
  %174 = load %struct.set_family*, %struct.set_family** %4, align 8
  %175 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @make_sparse to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %174, %struct.set_family* noundef %1, %struct.set_family* noundef %2) #2
  store %struct.set_family* %175, %struct.set_family** %4, align 8
  br label %176

176:                                              ; preds = %173, %170
  %177 = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i64 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.set_family*, %struct.set_family** %4, align 8
  %180 = getelementptr inbounds %struct.set_family, %struct.set_family* %179, i64 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %176
  %184 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %184) #2
  store %struct.set_family* %10, %struct.set_family** %4, align 8
  store i32 0, i32* @unwrap_onset, align 4
  br label %8

185:                                              ; preds = %176
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %10) #2
  br label %186

186:                                              ; preds = %185
  %187 = load %struct.set_family*, %struct.set_family** %4, align 8
  ret %struct.set_family* %187
}

declare dso_local %struct.set_family* @sf_save(...) #1

declare dso_local i64 @util_cpu_time(...) #1

declare dso_local %struct.set_family* @simplify(...) #1

declare dso_local i32** @cube1list(...) #1

declare dso_local void @print_trace(...) #1

declare dso_local void @sf_free(...) #1

declare dso_local void @cover_cost(...) #1

declare dso_local %struct.set_family* @sf_contain(...) #1

declare dso_local %struct.set_family* @unravel(...) #1

declare dso_local %struct.set_family* @expand(...) #1

declare dso_local void @totals(...) #1

declare dso_local %struct.set_family* @irredundant(...) #1

declare dso_local %struct.set_family* @essential(...) #1

declare dso_local %struct.set_family* @sf_new(...) #1

declare dso_local void @copy_cost(...) #1

declare dso_local %struct.set_family* @reduce(...) #1

declare dso_local %struct.set_family* @super_gasp(...) #1

declare dso_local %struct.set_family* @last_gasp(...) #1

declare dso_local %struct.set_family* @sf_append(...) #1

declare dso_local void @size_stamp(...) #1

declare dso_local %struct.set_family* @make_sparse(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
