; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/primes.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/primes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.cdata_struct = type { i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@cube = external dso_local global %struct.cube_struct, align 8
@cdata = external dso_local global %struct.cdata_struct, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @primes_consensus(i32** noundef %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.set_family*, align 8
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca %struct.set_family*, align 8
  store i32** %0, i32*** %2, align 8
  %9 = load i32**, i32*** %2, align 8
  %10 = call i32 @primes_consensus_special_cases(i32** noundef %9, %struct.set_family** noundef %6)
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %96

12:                                               ; preds = %1
  %13 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %14 = icmp sle i32 %13, 32
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %22

16:                                               ; preds = %12
  %17 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %18 = sub nsw i32 %17, 1
  %19 = ashr i32 %18, 5
  %20 = add nsw i32 %19, 1
  %21 = add nsw i32 %20, 1
  br label %22

22:                                               ; preds = %16, %15
  %23 = phi i32 [ 2, %15 ], [ %21, %16 ]
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = call i8* @malloc(i64 noundef %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %29 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %27, i32 noundef %28)
  store i32* %29, i32** %3, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %31 = icmp sle i32 %30, 32
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %39

33:                                               ; preds = %22
  %34 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %35 = sub nsw i32 %34, 1
  %36 = ashr i32 %35, 5
  %37 = add nsw i32 %36, 1
  %38 = add nsw i32 %37, 1
  br label %39

39:                                               ; preds = %33, %32
  %40 = phi i32 [ 2, %32 ], [ %38, %33 ]
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = call i8* @malloc(i64 noundef %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %46 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %44, i32 noundef %45)
  store i32* %46, i32** %4, align 8
  %47 = load i32**, i32*** %2, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 (i32**, i32*, i32*, i32, ...) bitcast (i32 (...)* @binate_split_select to i32 (i32**, i32*, i32*, i32, ...)*)(i32** noundef %47, i32* noundef %48, i32* noundef %49, i32 noundef 1)
  store i32 %50, i32* %5, align 4
  %51 = load i32**, i32*** %2, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** noundef %51, i32* noundef %52, i32 noundef %53)
  %55 = call %struct.set_family* @primes_consensus(i32** noundef %54)
  store %struct.set_family* %55, %struct.set_family** %7, align 8
  %56 = load i32**, i32*** %2, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** noundef %56, i32* noundef %57, i32 noundef %58)
  %60 = call %struct.set_family* @primes_consensus(i32** noundef %59)
  store %struct.set_family* %60, %struct.set_family** %8, align 8
  %61 = load %struct.set_family*, %struct.set_family** %7, align 8
  %62 = load %struct.set_family*, %struct.set_family** %8, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = call %struct.set_family* @primes_consensus_merge(%struct.set_family* noundef %61, %struct.set_family* noundef %62, i32* noundef %63, i32* noundef %64)
  store %struct.set_family* %65, %struct.set_family** %6, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %39
  %69 = load i32*, i32** %3, align 8
  %70 = bitcast i32* %69 to i8*
  call void @free(i8* noundef %70)
  store i32* null, i32** %3, align 8
  br label %71

71:                                               ; preds = %68, %39
  %72 = load i32*, i32** %4, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32*, i32** %4, align 8
  %76 = bitcast i32* %75 to i8*
  call void @free(i8* noundef %76)
  store i32* null, i32** %4, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32**, i32*** %2, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i32**, i32*** %2, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 0
  %85 = load i32*, i32** %84, align 8
  %86 = bitcast i32* %85 to i8*
  call void @free(i8* noundef %86)
  %87 = load i32**, i32*** %2, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 0
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %82, %77
  %90 = load i32**, i32*** %2, align 8
  %91 = icmp ne i32** %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32**, i32*** %2, align 8
  %94 = bitcast i32** %93 to i8*
  call void @free(i8* noundef %94)
  store i32** null, i32*** %2, align 8
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %1
  %97 = load %struct.set_family*, %struct.set_family** %6, align 8
  ret %struct.set_family* %97
}

declare dso_local i32* @set_clear(...) #1

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local i32 @binate_split_select(...) #1

declare dso_local i32** @scofactor(...) #1

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @primes_consensus_special_cases(i32** noundef %0, %struct.set_family** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.set_family**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.set_family*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store %struct.set_family** %1, %struct.set_family*** %5, align 8
  %14 = load i32**, i32*** %4, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load i32**, i32*** %4, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %2
  %22 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %23 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 0, i32 noundef %22)
  %24 = load %struct.set_family**, %struct.set_family*** %5, align 8
  store %struct.set_family* %23, %struct.set_family** %24, align 8
  %25 = load i32**, i32*** %4, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load i32**, i32*** %4, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  %33 = bitcast i32* %32 to i8*
  call void @free(i8* noundef %33)
  %34 = load i32**, i32*** %4, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %29, %21
  %37 = load i32**, i32*** %4, align 8
  %38 = icmp ne i32** %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32**, i32*** %4, align 8
  %41 = bitcast i32** %40 to i8*
  call void @free(i8* noundef %41)
  store i32** null, i32*** %4, align 8
  br label %42

42:                                               ; preds = %39, %36
  store i32 1, i32* %3, align 4
  br label %353

43:                                               ; preds = %2
  %44 = load i32**, i32*** %4, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 3
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %77

48:                                               ; preds = %43
  %49 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %50 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 1, i32 noundef %49)
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32**, i32*** %4, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %51, i32* noundef %52, i32* noundef %55)
  %57 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %50, i32* noundef %56)
  %58 = load %struct.set_family**, %struct.set_family*** %5, align 8
  store %struct.set_family* %57, %struct.set_family** %58, align 8
  %59 = load i32**, i32*** %4, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %48
  %64 = load i32**, i32*** %4, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 0
  %66 = load i32*, i32** %65, align 8
  %67 = bitcast i32* %66 to i8*
  call void @free(i8* noundef %67)
  %68 = load i32**, i32*** %4, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 0
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %63, %48
  %71 = load i32**, i32*** %4, align 8
  %72 = icmp ne i32** %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32**, i32*** %4, align 8
  %75 = bitcast i32** %74 to i8*
  call void @free(i8* noundef %75)
  store i32** null, i32*** %4, align 8
  br label %76

76:                                               ; preds = %73, %70
  store i32 1, i32* %3, align 4
  br label %353

77:                                               ; preds = %43
  %78 = load i32**, i32*** %4, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 2
  store i32** %79, i32*** %6, align 8
  br label %80

80:                                               ; preds = %114, %77
  %81 = load i32**, i32*** %6, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i32 1
  store i32** %82, i32*** %6, align 8
  %83 = load i32*, i32** %81, align 8
  store i32* %83, i32** %7, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %115

85:                                               ; preds = %80
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @full_row to i32 (i32*, i32*, ...)*)(i32* noundef %86, i32* noundef %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %85
  %91 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %92 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 1, i32 noundef %91)
  %93 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %94 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %92, i32* noundef %93)
  %95 = load %struct.set_family**, %struct.set_family*** %5, align 8
  store %struct.set_family* %94, %struct.set_family** %95, align 8
  %96 = load i32**, i32*** %4, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %90
  %101 = load i32**, i32*** %4, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 0
  %103 = load i32*, i32** %102, align 8
  %104 = bitcast i32* %103 to i8*
  call void @free(i8* noundef %104)
  %105 = load i32**, i32*** %4, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 0
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %100, %90
  %108 = load i32**, i32*** %4, align 8
  %109 = icmp ne i32** %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32**, i32*** %4, align 8
  %112 = bitcast i32** %111 to i8*
  call void @free(i8* noundef %112)
  store i32** null, i32*** %4, align 8
  br label %113

113:                                              ; preds = %110, %107
  store i32 1, i32* %3, align 4
  br label %353

114:                                              ; preds = %85
  br label %80, !llvm.loop !4

115:                                              ; preds = %80
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 1023
  %120 = mul i32 32, %119
  %121 = icmp ule i32 %120, 32
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %133

123:                                              ; preds = %115
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 1023
  %128 = mul i32 32, %127
  %129 = sub i32 %128, 1
  %130 = lshr i32 %129, 5
  %131 = add i32 %130, 1
  %132 = add i32 %131, 1
  br label %133

133:                                              ; preds = %123, %122
  %134 = phi i32 [ 2, %122 ], [ %132, %123 ]
  %135 = zext i32 %134 to i64
  %136 = mul i64 4, %135
  %137 = call i8* @malloc(i64 noundef %136)
  %138 = bitcast i8* %137 to i32*
  %139 = load i32*, i32** %9, align 8
  %140 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* noundef %138, i32* noundef %139)
  store i32* %140, i32** %8, align 8
  %141 = load i32**, i32*** %4, align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 2
  store i32** %142, i32*** %6, align 8
  br label %143

143:                                              ; preds = %182, %133
  %144 = load i32**, i32*** %6, align 8
  %145 = getelementptr inbounds i32*, i32** %144, i32 1
  store i32** %145, i32*** %6, align 8
  %146 = load i32*, i32** %144, align 8
  store i32* %146, i32** %7, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %183

148:                                              ; preds = %143
  %149 = load i32*, i32** %8, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 1023
  store i32 %152, i32* %12, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, -1024
  store i32 %156, i32* %154, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %178, %148
  %163 = load i32*, i32** %8, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %167, %172
  %174 = load i32*, i32** %8, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %173, i32* %177, align 4
  br label %178

178:                                              ; preds = %162
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %12, align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %162, label %182, !llvm.loop !6

182:                                              ; preds = %178
  br label %143, !llvm.loop !7

183:                                              ; preds = %143
  %184 = load i32*, i32** %8, align 8
  %185 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %186 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_equal to i32 (i32*, i32*, ...)*)(i32* noundef %184, i32* noundef %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %290, label %188

188:                                              ; preds = %183
  %189 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %190 = icmp sle i32 %189, 32
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %198

192:                                              ; preds = %188
  %193 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %194 = sub nsw i32 %193, 1
  %195 = ashr i32 %194, 5
  %196 = add nsw i32 %195, 1
  %197 = add nsw i32 %196, 1
  br label %198

198:                                              ; preds = %192, %191
  %199 = phi i32 [ 2, %191 ], [ %197, %192 ]
  %200 = sext i32 %199 to i64
  %201 = mul i64 4, %200
  %202 = call i8* @malloc(i64 noundef %201)
  %203 = bitcast i8* %202 to i32*
  %204 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %205 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %203, i32 noundef %204)
  store i32* %205, i32** %7, align 8
  %206 = load i32*, i32** %7, align 8
  %207 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %208 = load i32*, i32** %8, align 8
  %209 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %206, i32* noundef %207, i32* noundef %208)
  %210 = load i32*, i32** %9, align 8
  %211 = load i32*, i32** %9, align 8
  %212 = load i32*, i32** %7, align 8
  %213 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %210, i32* noundef %211, i32* noundef %212)
  %214 = load i32*, i32** %7, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %198
  %217 = load i32*, i32** %7, align 8
  %218 = bitcast i32* %217 to i8*
  call void @free(i8* noundef %218)
  store i32* null, i32** %7, align 8
  br label %219

219:                                              ; preds = %216, %198
  %220 = load i32**, i32*** %4, align 8
  %221 = call %struct.set_family* @primes_consensus(i32** noundef %220)
  store %struct.set_family* %221, %struct.set_family** %11, align 8
  %222 = load %struct.set_family*, %struct.set_family** %11, align 8
  %223 = getelementptr inbounds %struct.set_family, %struct.set_family* %222, i32 0, i32 5
  %224 = load i32*, i32** %223, align 8
  store i32* %224, i32** %7, align 8
  %225 = load i32*, i32** %7, align 8
  %226 = load %struct.set_family*, %struct.set_family** %11, align 8
  %227 = getelementptr inbounds %struct.set_family, %struct.set_family* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.set_family*, %struct.set_family** %11, align 8
  %230 = getelementptr inbounds %struct.set_family, %struct.set_family* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = mul nsw i32 %228, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %225, i64 %233
  store i32* %234, i32** %10, align 8
  br label %235

235:                                              ; preds = %274, %219
  %236 = load i32*, i32** %7, align 8
  %237 = load i32*, i32** %10, align 8
  %238 = icmp ult i32* %236, %237
  br i1 %238, label %239, label %281

239:                                              ; preds = %235
  %240 = load i32*, i32** %7, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %242, 1023
  store i32 %243, i32* %13, align 4
  %244 = load i32*, i32** %7, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, -1024
  store i32 %247, i32* %245, align 4
  %248 = load i32, i32* %13, align 4
  %249 = load i32*, i32** %7, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %269, %239
  %254 = load i32*, i32** %7, align 8
  %255 = load i32, i32* %13, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** %8, align 8
  %260 = load i32, i32* %13, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %258, %263
  %265 = load i32*, i32** %7, align 8
  %266 = load i32, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  store i32 %264, i32* %268, align 4
  br label %269

269:                                              ; preds = %253
  %270 = load i32, i32* %13, align 4
  %271 = add nsw i32 %270, -1
  store i32 %271, i32* %13, align 4
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %253, label %273, !llvm.loop !8

273:                                              ; preds = %269
  br label %274

274:                                              ; preds = %273
  %275 = load %struct.set_family*, %struct.set_family** %11, align 8
  %276 = getelementptr inbounds %struct.set_family, %struct.set_family* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32*, i32** %7, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  store i32* %280, i32** %7, align 8
  br label %235, !llvm.loop !9

281:                                              ; preds = %235
  %282 = load %struct.set_family*, %struct.set_family** %11, align 8
  %283 = load %struct.set_family**, %struct.set_family*** %5, align 8
  store %struct.set_family* %282, %struct.set_family** %283, align 8
  %284 = load i32*, i32** %8, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = load i32*, i32** %8, align 8
  %288 = bitcast i32* %287 to i8*
  call void @free(i8* noundef %288)
  store i32* null, i32** %8, align 8
  br label %289

289:                                              ; preds = %286, %281
  store i32 1, i32* %3, align 4
  br label %353

290:                                              ; preds = %183
  %291 = load i32*, i32** %8, align 8
  %292 = icmp ne i32* %291, null
  br i1 %292, label %293, label %296

293:                                              ; preds = %290
  %294 = load i32*, i32** %8, align 8
  %295 = bitcast i32* %294 to i8*
  call void @free(i8* noundef %295)
  store i32* null, i32** %8, align 8
  br label %296

296:                                              ; preds = %293, %290
  %297 = load i32**, i32*** %4, align 8
  call void (i32**, ...) bitcast (void (...)* @massive_count to void (i32**, ...)*)(i32** noundef %297)
  %298 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 8
  %299 = icmp eq i32 %298, 1
  br i1 %299, label %300, label %324

300:                                              ; preds = %296
  %301 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %302 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 1, i32 noundef %301)
  %303 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %304 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %302, i32* noundef %303)
  %305 = load %struct.set_family**, %struct.set_family*** %5, align 8
  store %struct.set_family* %304, %struct.set_family** %305, align 8
  %306 = load i32**, i32*** %4, align 8
  %307 = getelementptr inbounds i32*, i32** %306, i64 0
  %308 = load i32*, i32** %307, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %317

310:                                              ; preds = %300
  %311 = load i32**, i32*** %4, align 8
  %312 = getelementptr inbounds i32*, i32** %311, i64 0
  %313 = load i32*, i32** %312, align 8
  %314 = bitcast i32* %313 to i8*
  call void @free(i8* noundef %314)
  %315 = load i32**, i32*** %4, align 8
  %316 = getelementptr inbounds i32*, i32** %315, i64 0
  store i32* null, i32** %316, align 8
  br label %317

317:                                              ; preds = %310, %300
  %318 = load i32**, i32*** %4, align 8
  %319 = icmp ne i32** %318, null
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load i32**, i32*** %4, align 8
  %322 = bitcast i32** %321 to i8*
  call void @free(i8* noundef %322)
  store i32** null, i32*** %4, align 8
  br label %323

323:                                              ; preds = %320, %317
  store i32 1, i32* %3, align 4
  br label %353

324:                                              ; preds = %296
  %325 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 5), align 4
  %326 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 4), align 8
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %352

328:                                              ; preds = %324
  %329 = load i32**, i32*** %4, align 8
  %330 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @cubeunlist to %struct.set_family* (i32**, ...)*)(i32** noundef %329)
  store %struct.set_family* %330, %struct.set_family** %11, align 8
  %331 = load %struct.set_family*, %struct.set_family** %11, align 8
  %332 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %331)
  %333 = load %struct.set_family**, %struct.set_family*** %5, align 8
  store %struct.set_family* %332, %struct.set_family** %333, align 8
  %334 = load i32**, i32*** %4, align 8
  %335 = getelementptr inbounds i32*, i32** %334, i64 0
  %336 = load i32*, i32** %335, align 8
  %337 = icmp ne i32* %336, null
  br i1 %337, label %338, label %345

338:                                              ; preds = %328
  %339 = load i32**, i32*** %4, align 8
  %340 = getelementptr inbounds i32*, i32** %339, i64 0
  %341 = load i32*, i32** %340, align 8
  %342 = bitcast i32* %341 to i8*
  call void @free(i8* noundef %342)
  %343 = load i32**, i32*** %4, align 8
  %344 = getelementptr inbounds i32*, i32** %343, i64 0
  store i32* null, i32** %344, align 8
  br label %345

345:                                              ; preds = %338, %328
  %346 = load i32**, i32*** %4, align 8
  %347 = icmp ne i32** %346, null
  br i1 %347, label %348, label %351

348:                                              ; preds = %345
  %349 = load i32**, i32*** %4, align 8
  %350 = bitcast i32** %349 to i8*
  call void @free(i8* noundef %350)
  store i32** null, i32*** %4, align 8
  br label %351

351:                                              ; preds = %348, %345
  store i32 1, i32* %3, align 4
  br label %353

352:                                              ; preds = %324
  store i32 2, i32* %3, align 4
  br label %353

353:                                              ; preds = %352, %351, %323, %289, %113, %76, %42
  %354 = load i32, i32* %3, align 4
  ret i32 %354
}

declare dso_local %struct.set_family* @sf_new(...) #1

declare dso_local %struct.set_family* @sf_addset(...) #1

declare dso_local i32* @set_or(...) #1

declare dso_local i32 @full_row(...) #1

declare dso_local i32* @set_copy(...) #1

declare dso_local i32 @setp_equal(...) #1

declare dso_local i32* @set_diff(...) #1

declare dso_local void @massive_count(...) #1

declare dso_local %struct.set_family* @cubeunlist(...) #1

declare dso_local %struct.set_family* @sf_contain(...) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.set_family* @primes_consensus_merge(%struct.set_family* noundef %0, %struct.set_family* noundef %1, i32* noundef %2, i32* noundef %3) #0 {
  %5 = alloca %struct.set_family*, align 8
  %6 = alloca %struct.set_family*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.set_family*, align 8
  %15 = alloca %struct.set_family*, align 8
  store %struct.set_family* %0, %struct.set_family** %5, align 8
  store %struct.set_family* %1, %struct.set_family** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.set_family*, %struct.set_family** %5, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.set_family* @and_with_cofactor(%struct.set_family* noundef %16, i32* noundef %17)
  store %struct.set_family* %18, %struct.set_family** %5, align 8
  %19 = load %struct.set_family*, %struct.set_family** %6, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call %struct.set_family* @and_with_cofactor(%struct.set_family* noundef %19, i32* noundef %20)
  store %struct.set_family* %21, %struct.set_family** %6, align 8
  %22 = load %struct.set_family*, %struct.set_family** %5, align 8
  %23 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 500, i32 noundef %24)
  store %struct.set_family* %25, %struct.set_family** %14, align 8
  %26 = load %struct.set_family*, %struct.set_family** %14, align 8
  %27 = getelementptr inbounds %struct.set_family, %struct.set_family* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %13, align 8
  %29 = load %struct.set_family*, %struct.set_family** %5, align 8
  %30 = load %struct.set_family*, %struct.set_family** %6, align 8
  %31 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_join to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %29, %struct.set_family* noundef %30)
  %32 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %31)
  store %struct.set_family* %32, %struct.set_family** %15, align 8
  %33 = load %struct.set_family*, %struct.set_family** %5, align 8
  %34 = getelementptr inbounds %struct.set_family, %struct.set_family* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.set_family*, %struct.set_family** %5, align 8
  %38 = getelementptr inbounds %struct.set_family, %struct.set_family* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.set_family*, %struct.set_family** %5, align 8
  %41 = getelementptr inbounds %struct.set_family, %struct.set_family* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %36, i64 %44
  store i32* %45, i32** %11, align 8
  br label %46

46:                                               ; preds = %114, %4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = icmp ult i32* %47, %48
  br i1 %49, label %50, label %121

50:                                               ; preds = %46
  %51 = load %struct.set_family*, %struct.set_family** %6, align 8
  %52 = getelementptr inbounds %struct.set_family, %struct.set_family* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.set_family*, %struct.set_family** %6, align 8
  %56 = getelementptr inbounds %struct.set_family, %struct.set_family* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.set_family*, %struct.set_family** %6, align 8
  %59 = getelementptr inbounds %struct.set_family, %struct.set_family* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %54, i64 %62
  store i32* %63, i32** %12, align 8
  br label %64

64:                                               ; preds = %106, %50
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = icmp ult i32* %65, %66
  br i1 %67, label %68, label %113

68:                                               ; preds = %64
  %69 = load i32*, i32** %9, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist01 to i32 (i32*, i32*, ...)*)(i32* noundef %69, i32* noundef %70)
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %105

73:                                               ; preds = %68
  %74 = load i32*, i32** %13, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32*, i32** %10, align 8
  call void (i32*, i32*, i32*, ...) bitcast (void (...)* @consensus to void (i32*, i32*, i32*, ...)*)(i32* noundef %74, i32* noundef %75, i32* noundef %76)
  %77 = load %struct.set_family*, %struct.set_family** %14, align 8
  %78 = getelementptr inbounds %struct.set_family, %struct.set_family* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.set_family*, %struct.set_family** %14, align 8
  %82 = getelementptr inbounds %struct.set_family, %struct.set_family* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp sge i32 %80, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %73
  %86 = load %struct.set_family*, %struct.set_family** %15, align 8
  %87 = load %struct.set_family*, %struct.set_family** %14, align 8
  %88 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %87)
  %89 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %86, %struct.set_family* noundef %88)
  store %struct.set_family* %89, %struct.set_family** %15, align 8
  %90 = load %struct.set_family*, %struct.set_family** %5, align 8
  %91 = getelementptr inbounds %struct.set_family, %struct.set_family* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 500, i32 noundef %92)
  store %struct.set_family* %93, %struct.set_family** %14, align 8
  %94 = load %struct.set_family*, %struct.set_family** %14, align 8
  %95 = getelementptr inbounds %struct.set_family, %struct.set_family* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** %13, align 8
  br label %104

97:                                               ; preds = %73
  %98 = load %struct.set_family*, %struct.set_family** %14, align 8
  %99 = getelementptr inbounds %struct.set_family, %struct.set_family* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %13, align 8
  br label %104

104:                                              ; preds = %97, %85
  br label %105

105:                                              ; preds = %104, %68
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.set_family*, %struct.set_family** %6, align 8
  %108 = getelementptr inbounds %struct.set_family, %struct.set_family* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %10, align 8
  br label %64, !llvm.loop !10

113:                                              ; preds = %64
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.set_family*, %struct.set_family** %5, align 8
  %116 = getelementptr inbounds %struct.set_family, %struct.set_family* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %9, align 8
  br label %46, !llvm.loop !11

121:                                              ; preds = %46
  %122 = load %struct.set_family*, %struct.set_family** %5, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %122)
  %123 = load %struct.set_family*, %struct.set_family** %6, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %123)
  %124 = load %struct.set_family*, %struct.set_family** %15, align 8
  %125 = load %struct.set_family*, %struct.set_family** %14, align 8
  %126 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %125)
  %127 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %124, %struct.set_family* noundef %126)
  store %struct.set_family* %127, %struct.set_family** %15, align 8
  %128 = load %struct.set_family*, %struct.set_family** %15, align 8
  ret %struct.set_family* %128
}

declare dso_local %struct.set_family* @sf_join(...) #1

declare dso_local i32 @cdist01(...) #1

declare dso_local void @consensus(...) #1

declare dso_local %struct.set_family* @sf_union(...) #1

declare dso_local void @sf_free(...) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.set_family* @and_with_cofactor(%struct.set_family* noundef %0, i32* noundef %1) #0 {
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.set_family* %0, %struct.set_family** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.set_family*, %struct.set_family** %3, align 8
  %9 = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.set_family*, %struct.set_family** %3, align 8
  %13 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.set_family*, %struct.set_family** %3, align 8
  %16 = getelementptr inbounds %struct.set_family, %struct.set_family* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %14, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %11, i64 %19
  store i32* %20, i32** %5, align 8
  br label %21

21:                                               ; preds = %75, %2
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ult i32* %22, %23
  br i1 %24, label %25, label %82

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1023
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -1024
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %55, %25
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %44, %49
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %39
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %7, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %39, label %59, !llvm.loop !12

59:                                               ; preds = %55
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %62 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist to i32 (i32*, i32*, ...)*)(i32* noundef %60, i32* noundef %61)
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, -8193
  store i32 %68, i32* %66, align 4
  br label %74

69:                                               ; preds = %59
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, 8192
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.set_family*, %struct.set_family** %3, align 8
  %77 = getelementptr inbounds %struct.set_family, %struct.set_family* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %6, align 8
  br label %21, !llvm.loop !13

82:                                               ; preds = %21
  %83 = load %struct.set_family*, %struct.set_family** %3, align 8
  %84 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_inactive to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %83)
  ret %struct.set_family* %84
}

declare dso_local i32 @cdist(...) #1

declare dso_local %struct.set_family* @sf_inactive(...) #1

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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
