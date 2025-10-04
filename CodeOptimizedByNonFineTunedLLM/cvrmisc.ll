; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/cvrmisc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/cvrmisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.cdata_struct = type { i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.cost_struct = type { i32, i32, i32, i32, i32, i32 }

@cube = external dso_local global %struct.cube_struct, align 8
@cdata = external dso_local global %struct.cdata_struct, align 8
@fmt_cost.s = internal global [200 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [25 x i8] c"c=%d in=%d out=%d tot=%d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"c=%d in=%d mv=%d out=%d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"# %s\09Cost is %s\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"# %s\09Time was %s, cost is %s\0A\00", align 1
@total_time = external dso_local global [16 x i64], align 16
@total_calls = external dso_local global [16 x i32], align 16
@trace = external dso_local global i32, align 4
@total_name = external dso_local global [16 x i8*], align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"espresso: %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @cover_cost(%struct.set_family* noundef %0, %struct.cost_struct* noundef %1) #0 {
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca %struct.cost_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  store %struct.set_family* %0, %struct.set_family** %3, align 8
  store %struct.cost_struct* %1, %struct.cost_struct** %4, align 8
  %9 = load %struct.set_family*, %struct.set_family** %3, align 8
  %10 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* noundef %9)
  store i32** %10, i32*** %7, align 8
  call void (i32**, ...) bitcast (void (...)* @massive_count to void (i32**, ...)*)(i32** noundef %10)
  %11 = load i32**, i32*** %7, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32**, i32*** %7, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to i8*
  call void @free(i8* noundef %19)
  %20 = load i32**, i32*** %7, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %15, %2
  %23 = load i32**, i32*** %7, align 8
  %24 = icmp ne i32** %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32**, i32*** %7, align 8
  %27 = bitcast i32** %26 to i8*
  call void @free(i8* noundef %27)
  store i32** null, i32*** %7, align 8
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.set_family*, %struct.set_family** %3, align 8
  %30 = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %33 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %35 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %34, i32 0, i32 5
  store i32 0, i32* %35, align 4
  %36 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %37 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %36, i32 0, i32 3
  store i32 0, i32* %37, align 4
  %38 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %39 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %38, i32 0, i32 2
  store i32 0, i32* %39, align 4
  %40 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %41 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %43 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %42, i32 0, i32 4
  store i32 0, i32* %43, align 4
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %58, %28
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 8
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %55 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %44, !llvm.loop !4

61:                                               ; preds = %44
  %62 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 8
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %106, %61
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %66 = sub nsw i32 %65, 1
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %109

68:                                               ; preds = %63
  %69 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %68
  %76 = load %struct.set_family*, %struct.set_family** %3, align 8
  %77 = getelementptr inbounds %struct.set_family, %struct.set_family* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %78, %83
  %85 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %84, %89
  %91 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %92 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %105

95:                                               ; preds = %68
  %96 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %102 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %95, %75
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %63, !llvm.loop !6

109:                                              ; preds = %63
  %110 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 8
  %111 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %133

113:                                              ; preds = %109
  %114 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  %116 = load %struct.set_family*, %struct.set_family** %3, align 8
  %117 = getelementptr inbounds %struct.set_family, %struct.set_family* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %118, %123
  %125 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %124, %129
  %131 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %132 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %113, %109
  %134 = load %struct.set_family*, %struct.set_family** %3, align 8
  %135 = getelementptr inbounds %struct.set_family, %struct.set_family* %134, i32 0, i32 5
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %5, align 8
  %137 = load i32*, i32** %5, align 8
  %138 = load %struct.set_family*, %struct.set_family** %3, align 8
  %139 = getelementptr inbounds %struct.set_family, %struct.set_family* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.set_family*, %struct.set_family** %3, align 8
  %142 = getelementptr inbounds %struct.set_family, %struct.set_family* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = mul nsw i32 %140, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %137, i64 %145
  store i32* %146, i32** %6, align 8
  br label %147

147:                                              ; preds = %162, %133
  %148 = load i32*, i32** %5, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = icmp ult i32* %148, %149
  br i1 %150, label %151, label %169

151:                                              ; preds = %147
  %152 = load i32*, i32** %5, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 32768
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %159 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %151
  %163 = load %struct.set_family*, %struct.set_family** %3, align 8
  %164 = getelementptr inbounds %struct.set_family, %struct.set_family* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32*, i32** %5, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %5, align 8
  br label %147, !llvm.loop !7

169:                                              ; preds = %147
  %170 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %171 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %174 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %172, %175
  %177 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %178 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %176, %179
  %181 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %182 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %181, i32 0, i32 4
  store i32 %180, i32* %182, align 4
  ret void
}

declare dso_local void @massive_count(...) #1

declare dso_local i32** @cube1list(...) #1

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @fmt_cost(%struct.cost_struct* noundef %0) #0 {
  %2 = alloca %struct.cost_struct*, align 8
  store %struct.cost_struct* %0, %struct.cost_struct** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %5 = sub nsw i32 %4, 1
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load %struct.cost_struct*, %struct.cost_struct** %2, align 8
  %9 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cost_struct*, %struct.cost_struct** %2, align 8
  %12 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cost_struct*, %struct.cost_struct** %2, align 8
  %15 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cost_struct*, %struct.cost_struct** %2, align 8
  %18 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @fmt_cost.s, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %19) #4
  br label %35

21:                                               ; preds = %1
  %22 = load %struct.cost_struct*, %struct.cost_struct** %2, align 8
  %23 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cost_struct*, %struct.cost_struct** %2, align 8
  %26 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cost_struct*, %struct.cost_struct** %2, align 8
  %29 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cost_struct*, %struct.cost_struct** %2, align 8
  %32 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([200 x i8], [200 x i8]* @fmt_cost.s, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %33) #4
  br label %35

35:                                               ; preds = %21, %7
  ret i8* getelementptr inbounds ([200 x i8], [200 x i8]* @fmt_cost.s, i64 0, i64 0)
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @print_cost(%struct.set_family* noundef %0) #0 {
  %2 = alloca %struct.set_family*, align 8
  %3 = alloca %struct.cost_struct, align 4
  store %struct.set_family* %0, %struct.set_family** %2, align 8
  %4 = load %struct.set_family*, %struct.set_family** %2, align 8
  call void @cover_cost(%struct.set_family* noundef %4, %struct.cost_struct* noundef %3)
  %5 = call i8* @fmt_cost(%struct.cost_struct* noundef %3)
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @copy_cost(%struct.cost_struct* noundef %0, %struct.cost_struct* noundef %1) #0 {
  %3 = alloca %struct.cost_struct*, align 8
  %4 = alloca %struct.cost_struct*, align 8
  store %struct.cost_struct* %0, %struct.cost_struct** %3, align 8
  store %struct.cost_struct* %1, %struct.cost_struct** %4, align 8
  %5 = load %struct.cost_struct*, %struct.cost_struct** %3, align 8
  %6 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %9 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.cost_struct*, %struct.cost_struct** %3, align 8
  %11 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %14 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.cost_struct*, %struct.cost_struct** %3, align 8
  %16 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %19 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.cost_struct*, %struct.cost_struct** %3, align 8
  %21 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %24 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cost_struct*, %struct.cost_struct** %3, align 8
  %26 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %29 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cost_struct*, %struct.cost_struct** %3, align 8
  %31 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cost_struct*, %struct.cost_struct** %4, align 8
  %34 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @size_stamp(%struct.set_family* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca i8*, align 8
  store %struct.set_family* %0, %struct.set_family** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.set_family*, %struct.set_family** %3, align 8
  %7 = call i8* @print_cost(%struct.set_family* noundef %6)
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* noundef %5, i8* noundef %7)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = call i32 @fflush(%struct._IO_FILE* noundef %9)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_trace(%struct.set_family* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.set_family* %0, %struct.set_family** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i8* @util_print_time(i64 noundef %8)
  %10 = load %struct.set_family*, %struct.set_family** %4, align 8
  %11 = call i8* @print_cost(%struct.set_family* noundef %10)
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* noundef %7, i8* noundef %9, i8* noundef %11)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = call i32 @fflush(%struct._IO_FILE* noundef %13)
  ret void
}

declare dso_local i8* @util_print_time(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @totals(i64 noundef %0, i32 noundef %1, %struct.set_family* noundef %2, %struct.cost_struct* noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca %struct.cost_struct*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.set_family* %2, %struct.set_family** %7, align 8
  store %struct.cost_struct* %3, %struct.cost_struct** %8, align 8
  %9 = call i64 (...) @util_cpu_time()
  %10 = load i64, i64* %5, align 8
  %11 = sub nsw i64 %9, %10
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [16 x i64], [16 x i64]* @total_time, i64 0, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, %12
  store i64 %17, i64* %15, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* @total_calls, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.set_family*, %struct.set_family** %7, align 8
  %24 = load %struct.cost_struct*, %struct.cost_struct** %8, align 8
  call void @cover_cost(%struct.set_family* noundef %23, %struct.cost_struct* noundef %24)
  %25 = load i32, i32* @trace, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [16 x i8*], [16 x i8*]* @total_name, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i8* @util_print_time(i64 noundef %32)
  %34 = load %struct.cost_struct*, %struct.cost_struct** %8, align 8
  %35 = call i8* @fmt_cost(%struct.cost_struct* noundef %34)
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* noundef %31, i8* noundef %33, i8* noundef %35)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = call i32 @fflush(%struct._IO_FILE* noundef %37)
  br label %39

39:                                               ; preds = %27, %4
  ret void
}

declare dso_local i64 @util_cpu_time(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fatal(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* noundef %4)
  call void @exit(i32 noundef 1) #5
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

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
