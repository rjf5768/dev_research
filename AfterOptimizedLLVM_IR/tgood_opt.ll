; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/tgood.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/tgood.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flagptr = type { %union.ptr_union, i32 }
%union.ptr_union = type { %struct.flagptr* }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }
%struct.success = type { %struct.dent*, %struct.flagent*, %struct.flagent* }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }

@pflagindex = external dso_local global [228 x %struct.flagptr], align 16
@numhits = external dso_local global i32, align 4
@cflag = external dso_local global i32, align 4
@pflaglist = external dso_local global %struct.flagent*, align 8
@numpflags = external dso_local global i32, align 4
@sflaglist = external dso_local global %struct.flagent*, align 8
@numsflags = external dso_local global i32, align 4
@compoundflag = external dso_local global i32, align 4
@hits = external dso_local global [10 x %struct.success], align 16
@sflagindex = external dso_local global [228 x %struct.flagptr], align 16
@hashheader = external dso_local global %struct.hashheader, align 4
@.str = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %s%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @chk_aff(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.flagptr*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  call void @pfx_list_chk(i8* noundef %17, i8* noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21, %struct.flagptr* noundef getelementptr inbounds ([228 x %struct.flagptr], [228 x %struct.flagptr]* @pflagindex, i64 0, i64 0), i32 noundef %22, i32 noundef %23)
  %24 = load i8*, i8** %9, align 8
  store i8* %24, i8** %15, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %15, align 8
  %27 = load i8, i8* %25, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [228 x %struct.flagptr], [228 x %struct.flagptr]* @pflagindex, i64 0, i64 %28
  store %struct.flagptr* %29, %struct.flagptr** %16, align 8
  br label %30

30:                                               ; preds = %84, %7
  %31 = load %struct.flagptr*, %struct.flagptr** %16, align 8
  %32 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.flagptr*, %struct.flagptr** %16, align 8
  %37 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %36, i32 0, i32 0
  %38 = bitcast %union.ptr_union* %37 to %struct.flagptr**
  %39 = load %struct.flagptr*, %struct.flagptr** %38, align 8
  %40 = icmp ne %struct.flagptr* %39, null
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i1 [ false, %30 ], [ %40, %35 ]
  br i1 %42, label %43, label %94

43:                                               ; preds = %41
  %44 = load i8*, i8** %15, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %122

49:                                               ; preds = %43
  %50 = load %struct.flagptr*, %struct.flagptr** %16, align 8
  %51 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %50, i32 0, i32 0
  %52 = bitcast %union.ptr_union* %51 to %struct.flagptr**
  %53 = load %struct.flagptr*, %struct.flagptr** %52, align 8
  %54 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %53, i64 0
  %55 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %49
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.flagptr*, %struct.flagptr** %16, align 8
  %65 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %64, i32 0, i32 0
  %66 = bitcast %union.ptr_union* %65 to %struct.flagptr**
  %67 = load %struct.flagptr*, %struct.flagptr** %66, align 8
  %68 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %67, i64 0
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  call void @pfx_list_chk(i8* noundef %59, i8* noundef %60, i32 noundef %61, i32 noundef %62, i32 noundef %63, %struct.flagptr* noundef %68, i32 noundef %69, i32 noundef %70)
  %71 = load i32, i32* @numhits, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %58
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @cflag, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  br label %122

83:                                               ; preds = %79, %76, %73, %58
  br label %84

84:                                               ; preds = %83, %49
  %85 = load %struct.flagptr*, %struct.flagptr** %16, align 8
  %86 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %85, i32 0, i32 0
  %87 = bitcast %union.ptr_union* %86 to %struct.flagptr**
  %88 = load %struct.flagptr*, %struct.flagptr** %87, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %15, align 8
  %91 = load i8, i8* %89, align 1
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %88, i64 %92
  store %struct.flagptr* %93, %struct.flagptr** %16, align 8
  br label %30, !llvm.loop !4

94:                                               ; preds = %41
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.flagptr*, %struct.flagptr** %16, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  call void @pfx_list_chk(i8* noundef %95, i8* noundef %96, i32 noundef %97, i32 noundef %98, i32 noundef %99, %struct.flagptr* noundef %100, i32 noundef %101, i32 noundef %102)
  %103 = load i32, i32* @numhits, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %94
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* @cflag, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  br label %122

115:                                              ; preds = %111, %108, %105, %94
  %116 = load i8*, i8** %8, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  call void @chk_suf(i8* noundef %116, i8* noundef %117, i32 noundef %118, i32 noundef %119, %struct.flagent* noundef null, i32 noundef %120, i32 noundef %121)
  br label %122

122:                                              ; preds = %115, %114, %82, %48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @pfx_list_chk(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, %struct.flagptr* noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.flagptr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.dent*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.flagent*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [184 x i8], align 16
  %25 = alloca [184 x i8], align 16
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.flagptr* %5, %struct.flagptr** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %26 = load %struct.flagptr*, %struct.flagptr** %14, align 8
  %27 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %26, i32 0, i32 0
  %28 = bitcast %union.ptr_union* %27 to %struct.flagent**
  %29 = load %struct.flagent*, %struct.flagent** %28, align 8
  store %struct.flagent* %29, %struct.flagent** %21, align 8
  %30 = load %struct.flagptr*, %struct.flagptr** %14, align 8
  %31 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %20, align 4
  br label %33

33:                                               ; preds = %331, %8
  %34 = load i32, i32* %20, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %336

36:                                               ; preds = %33
  %37 = load %struct.flagent*, %struct.flagent** %21, align 8
  %38 = getelementptr inbounds %struct.flagent, %struct.flagent* %37, i32 0, i32 6
  %39 = load i16, i16* %38, align 8
  %40 = sext i16 %39 to i32
  %41 = and i32 %40, 2
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %331

48:                                               ; preds = %43, %36
  %49 = load i32, i32* @compoundflag, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load %struct.flagent*, %struct.flagent** %21, align 8
  %53 = getelementptr inbounds %struct.flagent, %struct.flagent* %52, i32 0, i32 6
  %54 = load i16, i16* %53, align 8
  %55 = sext i16 %54 to i32
  %56 = load i32, i32* %12, align 4
  %57 = xor i32 %55, %56
  %58 = and i32 %57, 2
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %331

61:                                               ; preds = %51, %48
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.flagent*, %struct.flagent** %21, align 8
  %64 = getelementptr inbounds %struct.flagent, %struct.flagent* %63, i32 0, i32 4
  %65 = load i16, i16* %64, align 4
  %66 = sext i16 %65 to i32
  %67 = sub nsw i32 %62, %66
  store i32 %67, i32* %23, align 4
  %68 = load i32, i32* %23, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %330

70:                                               ; preds = %61
  %71 = load %struct.flagent*, %struct.flagent** %21, align 8
  %72 = getelementptr inbounds %struct.flagent, %struct.flagent* %71, i32 0, i32 4
  %73 = load i16, i16* %72, align 4
  %74 = sext i16 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %70
  %77 = load %struct.flagent*, %struct.flagent** %21, align 8
  %78 = getelementptr inbounds %struct.flagent, %struct.flagent* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load %struct.flagent*, %struct.flagent** %21, align 8
  %82 = getelementptr inbounds %struct.flagent, %struct.flagent* %81, i32 0, i32 4
  %83 = load i16, i16* %82, align 4
  %84 = sext i16 %83 to i64
  %85 = call i32 @strncmp(i8* noundef %79, i8* noundef %80, i64 noundef %84) #4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %330

87:                                               ; preds = %76, %70
  %88 = load i32, i32* %23, align 4
  %89 = load %struct.flagent*, %struct.flagent** %21, align 8
  %90 = getelementptr inbounds %struct.flagent, %struct.flagent* %89, i32 0, i32 3
  %91 = load i16, i16* %90, align 2
  %92 = sext i16 %91 to i32
  %93 = add nsw i32 %88, %92
  %94 = load %struct.flagent*, %struct.flagent** %21, align 8
  %95 = getelementptr inbounds %struct.flagent, %struct.flagent* %94, i32 0, i32 5
  %96 = load i16, i16* %95, align 2
  %97 = sext i16 %96 to i32
  %98 = icmp sge i32 %93, %97
  br i1 %98, label %99, label %330

99:                                               ; preds = %87
  %100 = load %struct.flagent*, %struct.flagent** %21, align 8
  %101 = getelementptr inbounds %struct.flagent, %struct.flagent* %100, i32 0, i32 3
  %102 = load i16, i16* %101, align 2
  %103 = icmp ne i16 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  %106 = load %struct.flagent*, %struct.flagent** %21, align 8
  %107 = getelementptr inbounds %struct.flagent, %struct.flagent* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @strcpy(i8* noundef %105, i8* noundef %108) #5
  br label %110

110:                                              ; preds = %104, %99
  %111 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  %112 = load %struct.flagent*, %struct.flagent** %21, align 8
  %113 = getelementptr inbounds %struct.flagent, %struct.flagent* %112, i32 0, i32 3
  %114 = load i16, i16* %113, align 2
  %115 = sext i16 %114 to i32
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %111, i64 %116
  %118 = load i8*, i8** %10, align 8
  %119 = load %struct.flagent*, %struct.flagent** %21, align 8
  %120 = getelementptr inbounds %struct.flagent, %struct.flagent* %119, i32 0, i32 4
  %121 = load i16, i16* %120, align 4
  %122 = sext i16 %121 to i32
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %118, i64 %123
  %125 = call i8* @strcpy(i8* noundef %117, i8* noundef %124) #5
  %126 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  store i8* %126, i8** %18, align 8
  store i32 0, i32* %17, align 4
  br label %127

127:                                              ; preds = %150, %110
  %128 = load i32, i32* %17, align 4
  %129 = load %struct.flagent*, %struct.flagent** %21, align 8
  %130 = getelementptr inbounds %struct.flagent, %struct.flagent* %129, i32 0, i32 5
  %131 = load i16, i16* %130, align 2
  %132 = sext i16 %131 to i32
  %133 = icmp slt i32 %128, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %127
  %135 = load %struct.flagent*, %struct.flagent** %21, align 8
  %136 = getelementptr inbounds %struct.flagent, %struct.flagent* %135, i32 0, i32 7
  %137 = load i8*, i8** %18, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %18, align 8
  %139 = load i8, i8* %137, align 1
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds [228 x i8], [228 x i8]* %136, i64 0, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = load i32, i32* %17, align 4
  %145 = shl i32 1, %144
  %146 = and i32 %143, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %134
  br label %153

149:                                              ; preds = %134
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %17, align 4
  br label %127, !llvm.loop !6

153:                                              ; preds = %148, %127
  %154 = load i32, i32* %17, align 4
  %155 = load %struct.flagent*, %struct.flagent** %21, align 8
  %156 = getelementptr inbounds %struct.flagent, %struct.flagent* %155, i32 0, i32 5
  %157 = load i16, i16* %156, align 2
  %158 = sext i16 %157 to i32
  %159 = icmp sge i32 %154, %158
  br i1 %159, label %160, label %329

160:                                              ; preds = %153
  %161 = load %struct.flagent*, %struct.flagent** %21, align 8
  %162 = getelementptr inbounds %struct.flagent, %struct.flagent* %161, i32 0, i32 3
  %163 = load i16, i16* %162, align 2
  %164 = sext i16 %163 to i32
  %165 = load i32, i32* %23, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %23, align 4
  %167 = load i32, i32* @cflag, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %160
  %170 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  %171 = load %struct.flagent*, %struct.flagent** %21, align 8
  %172 = getelementptr inbounds %struct.flagent, %struct.flagent* %171, i32 0, i32 2
  %173 = load i16, i16* %172, align 8
  %174 = sext i16 %173 to i32
  %175 = add nsw i32 %174, 65
  %176 = load %struct.flagent*, %struct.flagent** %21, align 8
  %177 = getelementptr inbounds %struct.flagent, %struct.flagent* %176, i32 0, i32 3
  %178 = load i16, i16* %177, align 2
  %179 = sext i16 %178 to i32
  %180 = load %struct.flagent*, %struct.flagent** %21, align 8
  %181 = getelementptr inbounds %struct.flagent, %struct.flagent* %180, i32 0, i32 4
  %182 = load i16, i16* %181, align 4
  %183 = sext i16 %182 to i32
  call void @flagpr(i8* noundef %170, i32 noundef %175, i32 noundef %179, i32 noundef %183, i32 noundef -1, i32 noundef 0)
  br label %312

184:                                              ; preds = %160
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %262

187:                                              ; preds = %184
  %188 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  %189 = call %struct.dent* @lookup(i8* noundef %188, i32 noundef 1)
  store %struct.dent* %189, %struct.dent** %19, align 8
  %190 = icmp ne %struct.dent* %189, null
  br i1 %190, label %191, label %261

191:                                              ; preds = %187
  %192 = getelementptr inbounds [184 x i8], [184 x i8]* %25, i64 0, i64 0
  store i8* %192, i8** %18, align 8
  %193 = load %struct.flagent*, %struct.flagent** %21, align 8
  %194 = getelementptr inbounds %struct.flagent, %struct.flagent* %193, i32 0, i32 4
  %195 = load i16, i16* %194, align 4
  %196 = icmp ne i16 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %191
  %198 = load i8*, i8** %18, align 8
  %199 = load %struct.flagent*, %struct.flagent** %21, align 8
  %200 = getelementptr inbounds %struct.flagent, %struct.flagent* %199, i32 0, i32 1
  %201 = load i8*, i8** %200, align 8
  %202 = call i8* @strcpy(i8* noundef %198, i8* noundef %201) #5
  %203 = load %struct.flagent*, %struct.flagent** %21, align 8
  %204 = getelementptr inbounds %struct.flagent, %struct.flagent* %203, i32 0, i32 4
  %205 = load i16, i16* %204, align 4
  %206 = sext i16 %205 to i32
  %207 = load i8*, i8** %18, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  store i8* %209, i8** %18, align 8
  %210 = load i8*, i8** %18, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %18, align 8
  store i8 43, i8* %210, align 1
  br label %212

212:                                              ; preds = %197, %191
  %213 = load i8*, i8** %18, align 8
  %214 = getelementptr inbounds [184 x i8], [184 x i8]* %25, i64 0, i64 0
  %215 = ptrtoint i8* %213 to i64
  %216 = ptrtoint i8* %214 to i64
  %217 = sub i64 %215, %216
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %22, align 4
  %219 = load i8*, i8** %18, align 8
  %220 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  %221 = call i8* @strcpy(i8* noundef %219, i8* noundef %220) #5
  %222 = load i32, i32* %23, align 4
  %223 = load i8*, i8** %18, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i8, i8* %223, i64 %224
  store i8* %225, i8** %18, align 8
  %226 = load %struct.flagent*, %struct.flagent** %21, align 8
  %227 = getelementptr inbounds %struct.flagent, %struct.flagent* %226, i32 0, i32 3
  %228 = load i16, i16* %227, align 2
  %229 = icmp ne i16 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %212
  %231 = load i8*, i8** %18, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %18, align 8
  store i8 45, i8* %231, align 1
  %233 = load i8*, i8** %18, align 8
  %234 = load %struct.flagent*, %struct.flagent** %21, align 8
  %235 = getelementptr inbounds %struct.flagent, %struct.flagent* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = call i8* @strcpy(i8* noundef %233, i8* noundef %236) #5
  br label %238

238:                                              ; preds = %230, %212
  %239 = getelementptr inbounds [184 x i8], [184 x i8]* %25, i64 0, i64 0
  %240 = load i8*, i8** %9, align 8
  %241 = load %struct.flagent*, %struct.flagent** %21, align 8
  %242 = getelementptr inbounds %struct.flagent, %struct.flagent* %241, i32 0, i32 3
  %243 = load i16, i16* %242, align 2
  %244 = sext i16 %243 to i32
  %245 = load i32, i32* %22, align 4
  %246 = load i8*, i8** %18, align 8
  %247 = getelementptr inbounds [184 x i8], [184 x i8]* %25, i64 0, i64 0
  %248 = ptrtoint i8* %246 to i64
  %249 = ptrtoint i8* %247 to i64
  %250 = sub i64 %248, %249
  %251 = load i32, i32* %23, align 4
  %252 = sext i32 %251 to i64
  %253 = sub nsw i64 %250, %252
  %254 = load i32, i32* %22, align 4
  %255 = sext i32 %254 to i64
  %256 = sub nsw i64 %253, %255
  %257 = trunc i64 %256 to i32
  %258 = load %struct.dent*, %struct.dent** %19, align 8
  %259 = load %struct.flagent*, %struct.flagent** %21, align 8
  %260 = call i32 @ins_root_cap(i8* noundef %239, i8* noundef %240, i32 noundef %244, i32 noundef %245, i32 noundef 0, i32 noundef %257, %struct.dent* noundef %258, %struct.flagent* noundef %259, %struct.flagent* noundef null)
  br label %261

261:                                              ; preds = %238, %187
  br label %311

262:                                              ; preds = %184
  %263 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  %264 = call %struct.dent* @lookup(i8* noundef %263, i32 noundef 1)
  store %struct.dent* %264, %struct.dent** %19, align 8
  %265 = icmp ne %struct.dent* %264, null
  br i1 %265, label %266, label %310

266:                                              ; preds = %262
  %267 = load %struct.dent*, %struct.dent** %19, align 8
  %268 = getelementptr inbounds %struct.dent, %struct.dent* %267, i32 0, i32 2
  %269 = getelementptr inbounds [1 x i64], [1 x i64]* %268, i64 0, i64 0
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.flagent*, %struct.flagent** %21, align 8
  %272 = getelementptr inbounds %struct.flagent, %struct.flagent* %271, i32 0, i32 2
  %273 = load i16, i16* %272, align 8
  %274 = sext i16 %273 to i32
  %275 = zext i32 %274 to i64
  %276 = shl i64 1, %275
  %277 = and i64 %270, %276
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %310

279:                                              ; preds = %266
  %280 = load i32, i32* @numhits, align 4
  %281 = icmp slt i32 %280, 10
  br i1 %281, label %282, label %299

282:                                              ; preds = %279
  %283 = load %struct.dent*, %struct.dent** %19, align 8
  %284 = load i32, i32* @numhits, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 %285
  %287 = getelementptr inbounds %struct.success, %struct.success* %286, i32 0, i32 0
  store %struct.dent* %283, %struct.dent** %287, align 8
  %288 = load %struct.flagent*, %struct.flagent** %21, align 8
  %289 = load i32, i32* @numhits, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 %290
  %292 = getelementptr inbounds %struct.success, %struct.success* %291, i32 0, i32 1
  store %struct.flagent* %288, %struct.flagent** %292, align 8
  %293 = load i32, i32* @numhits, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 %294
  %296 = getelementptr inbounds %struct.success, %struct.success* %295, i32 0, i32 2
  store %struct.flagent* null, %struct.flagent** %296, align 8
  %297 = load i32, i32* @numhits, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* @numhits, align 4
  br label %299

299:                                              ; preds = %282, %279
  %300 = load i32, i32* %16, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %309, label %302

302:                                              ; preds = %299
  %303 = load i8*, i8** %9, align 8
  %304 = load i32, i32* %11, align 4
  %305 = call i32 @cap_ok(i8* noundef %303, %struct.success* noundef getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 0), i32 noundef %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %302
  br label %336

308:                                              ; preds = %302
  store i32 0, i32* @numhits, align 4
  br label %309

309:                                              ; preds = %308, %299
  br label %310

310:                                              ; preds = %309, %266, %262
  br label %311

311:                                              ; preds = %310, %261
  br label %312

312:                                              ; preds = %311, %169
  %313 = load %struct.flagent*, %struct.flagent** %21, align 8
  %314 = getelementptr inbounds %struct.flagent, %struct.flagent* %313, i32 0, i32 6
  %315 = load i16, i16* %314, align 8
  %316 = sext i16 %315 to i32
  %317 = and i32 %316, 1
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %328

319:                                              ; preds = %312
  %320 = load i8*, i8** %9, align 8
  %321 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  %322 = load i32, i32* %23, align 4
  %323 = load i32, i32* %13, align 4
  %324 = or i32 %323, 1
  %325 = load %struct.flagent*, %struct.flagent** %21, align 8
  %326 = load i32, i32* %15, align 4
  %327 = load i32, i32* %16, align 4
  call void @chk_suf(i8* noundef %320, i8* noundef %321, i32 noundef %322, i32 noundef %324, %struct.flagent* noundef %325, i32 noundef %326, i32 noundef %327)
  br label %328

328:                                              ; preds = %319, %312
  br label %329

329:                                              ; preds = %328, %153
  br label %330

330:                                              ; preds = %329, %87, %76, %61
  br label %331

331:                                              ; preds = %330, %60, %47
  %332 = load %struct.flagent*, %struct.flagent** %21, align 8
  %333 = getelementptr inbounds %struct.flagent, %struct.flagent* %332, i32 1
  store %struct.flagent* %333, %struct.flagent** %21, align 8
  %334 = load i32, i32* %20, align 4
  %335 = add nsw i32 %334, -1
  store i32 %335, i32* %20, align 4
  br label %33, !llvm.loop !7

336:                                              ; preds = %307, %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @chk_suf(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, %struct.flagent* noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.flagent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.flagptr*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.flagent* %4, %struct.flagent** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.flagent*, %struct.flagent** %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  call void @suf_list_chk(i8* noundef %17, i8* noundef %18, i32 noundef %19, %struct.flagptr* noundef getelementptr inbounds ([228 x %struct.flagptr], [228 x %struct.flagptr]* @sflagindex, i64 0, i64 0), i32 noundef %20, %struct.flagent* noundef %21, i32 noundef %22, i32 noundef %23)
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 -1
  store i8* %28, i8** %15, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [228 x %struct.flagptr], [228 x %struct.flagptr]* @sflagindex, i64 0, i64 %31
  store %struct.flagptr* %32, %struct.flagptr** %16, align 8
  br label %33

33:                                               ; preds = %86, %7
  %34 = load %struct.flagptr*, %struct.flagptr** %16, align 8
  %35 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.flagptr*, %struct.flagptr** %16, align 8
  %40 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %39, i32 0, i32 0
  %41 = bitcast %union.ptr_union* %40 to %struct.flagptr**
  %42 = load %struct.flagptr*, %struct.flagptr** %41, align 8
  %43 = icmp ne %struct.flagptr* %42, null
  br label %44

44:                                               ; preds = %38, %33
  %45 = phi i1 [ false, %33 ], [ %43, %38 ]
  br i1 %45, label %46, label %96

46:                                               ; preds = %44
  %47 = load i8*, i8** %15, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %105

51:                                               ; preds = %46
  %52 = load %struct.flagptr*, %struct.flagptr** %16, align 8
  %53 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %52, i32 0, i32 0
  %54 = bitcast %union.ptr_union* %53 to %struct.flagptr**
  %55 = load %struct.flagptr*, %struct.flagptr** %54, align 8
  %56 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %55, i64 0
  %57 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %51
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.flagptr*, %struct.flagptr** %16, align 8
  %65 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %64, i32 0, i32 0
  %66 = bitcast %union.ptr_union* %65 to %struct.flagptr**
  %67 = load %struct.flagptr*, %struct.flagptr** %66, align 8
  %68 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %67, i64 0
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.flagent*, %struct.flagent** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  call void @suf_list_chk(i8* noundef %61, i8* noundef %62, i32 noundef %63, %struct.flagptr* noundef %68, i32 noundef %69, %struct.flagent* noundef %70, i32 noundef %71, i32 noundef %72)
  %73 = load i32, i32* @numhits, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %60
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @cflag, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  br label %105

85:                                               ; preds = %81, %78, %75, %60
  br label %86

86:                                               ; preds = %85, %51
  %87 = load %struct.flagptr*, %struct.flagptr** %16, align 8
  %88 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %87, i32 0, i32 0
  %89 = bitcast %union.ptr_union* %88 to %struct.flagptr**
  %90 = load %struct.flagptr*, %struct.flagptr** %89, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %15, align 8
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %90, i64 %94
  store %struct.flagptr* %95, %struct.flagptr** %16, align 8
  br label %33, !llvm.loop !8

96:                                               ; preds = %44
  %97 = load i8*, i8** %8, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.flagptr*, %struct.flagptr** %16, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.flagent*, %struct.flagent** %12, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  call void @suf_list_chk(i8* noundef %97, i8* noundef %98, i32 noundef %99, %struct.flagptr* noundef %100, i32 noundef %101, %struct.flagent* noundef %102, i32 noundef %103, i32 noundef %104)
  br label %105

105:                                              ; preds = %96, %84, %50
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @expand_pre(i8* noundef %0, i8* noundef %1, i64* noundef %2, i32 noundef %3, i8* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.flagent*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load %struct.flagent*, %struct.flagent** @pflaglist, align 8
  store %struct.flagent* %14, %struct.flagent** %13, align 8
  %15 = load i32, i32* @numpflags, align 4
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %42, %5
  %17 = load i32, i32* %11, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %16
  %20 = load i64*, i64** %8, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.flagent*, %struct.flagent** %13, align 8
  %24 = getelementptr inbounds %struct.flagent, %struct.flagent* %23, i32 0, i32 2
  %25 = load i16, i16* %24, align 8
  %26 = sext i16 %25 to i32
  %27 = zext i32 %26 to i64
  %28 = shl i64 1, %27
  %29 = and i64 %22, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %19
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.flagent*, %struct.flagent** %13, align 8
  %35 = load i64*, i64** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @pr_pre_expansion(i8* noundef %32, i8* noundef %33, %struct.flagent* noundef %34, i64* noundef %35, i32 noundef %36, i8* noundef %37)
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %31, %19
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.flagent*, %struct.flagent** %13, align 8
  %44 = getelementptr inbounds %struct.flagent, %struct.flagent* %43, i32 1
  store %struct.flagent* %44, %struct.flagent** %13, align 8
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %11, align 4
  br label %16, !llvm.loop !9

47:                                               ; preds = %16
  %48 = load i32, i32* %12, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pr_pre_expansion(i8* noundef %0, i8* noundef %1, %struct.flagent* noundef %2, i64* noundef %3, i32 noundef %4, i8* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.flagent*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [120 x i8], align 16
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.flagent* %2, %struct.flagent** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i64 @strlen(i8* noundef %18) #4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = load %struct.flagent*, %struct.flagent** %10, align 8
  %22 = getelementptr inbounds %struct.flagent, %struct.flagent* %21, i32 0, i32 5
  %23 = load i16, i16* %22, align 2
  %24 = sext i16 %23 to i32
  %25 = load i32, i32* %16, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %225

28:                                               ; preds = %6
  %29 = load %struct.flagent*, %struct.flagent** %10, align 8
  %30 = getelementptr inbounds %struct.flagent, %struct.flagent* %29, i32 0, i32 3
  %31 = load i16, i16* %30, align 2
  %32 = sext i16 %31 to i32
  %33 = load i32, i32* %16, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %225

38:                                               ; preds = %28
  %39 = load %struct.flagent*, %struct.flagent** %10, align 8
  %40 = getelementptr inbounds %struct.flagent, %struct.flagent* %39, i32 0, i32 4
  %41 = load i16, i16* %40, align 4
  %42 = sext i16 %41 to i32
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %45 = load i8*, i8** %9, align 8
  store i8* %45, i8** %15, align 8
  br label %46

46:                                               ; preds = %72, %38
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.flagent*, %struct.flagent** %10, align 8
  %49 = getelementptr inbounds %struct.flagent, %struct.flagent* %48, i32 0, i32 5
  %50 = load i16, i16* %49, align 2
  %51 = sext i16 %50 to i32
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %46
  %54 = load %struct.flagent*, %struct.flagent** %10, align 8
  %55 = getelementptr inbounds %struct.flagent, %struct.flagent* %54, i32 0, i32 7
  %56 = load i8*, i8** %15, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %15, align 8
  %58 = load i8, i8* %56, align 1
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds [228 x i8], [228 x i8]* %55, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = load i32, i32* %14, align 4
  %67 = shl i32 1, %66
  %68 = and i32 %65, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %225

71:                                               ; preds = %53
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %46, !llvm.loop !10

75:                                               ; preds = %46
  %76 = load %struct.flagent*, %struct.flagent** %10, align 8
  %77 = getelementptr inbounds %struct.flagent, %struct.flagent* %76, i32 0, i32 4
  %78 = load i16, i16* %77, align 4
  %79 = icmp ne i16 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = getelementptr inbounds [120 x i8], [120 x i8]* %17, i64 0, i64 0
  %82 = load %struct.flagent*, %struct.flagent** %10, align 8
  %83 = getelementptr inbounds %struct.flagent, %struct.flagent* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @strcpy(i8* noundef %81, i8* noundef %84) #5
  %86 = getelementptr inbounds [120 x i8], [120 x i8]* %17, i64 0, i64 0
  %87 = load %struct.flagent*, %struct.flagent** %10, align 8
  %88 = getelementptr inbounds %struct.flagent, %struct.flagent* %87, i32 0, i32 4
  %89 = load i16, i16* %88, align 4
  %90 = sext i16 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %86, i64 %91
  store i8* %92, i8** %15, align 8
  br label %93

93:                                               ; preds = %80, %75
  %94 = load i8*, i8** %15, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load %struct.flagent*, %struct.flagent** %10, align 8
  %97 = getelementptr inbounds %struct.flagent, %struct.flagent* %96, i32 0, i32 3
  %98 = load i16, i16* %97, align 2
  %99 = sext i16 %98 to i32
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %95, i64 %100
  %102 = call i8* @strcpy(i8* noundef %94, i8* noundef %101) #5
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = icmp ne i8 %108, 0
  br i1 %109, label %110, label %179

110:                                              ; preds = %93
  %111 = load i8*, i8** %9, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8* %112, i8** %15, align 8
  br label %113

113:                                              ; preds = %126, %110
  %114 = load i8*, i8** %15, align 8
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = load i8*, i8** %15, align 8
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i64 0, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  br label %129

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125
  %127 = load i8*, i8** %15, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %15, align 8
  br label %113, !llvm.loop !11

129:                                              ; preds = %124, %113
  %130 = load i8*, i8** %15, align 8
  %131 = load i8, i8* %130, align 1
  %132 = icmp ne i8 %131, 0
  br i1 %132, label %133, label %178

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %147, %133
  %135 = load i8*, i8** %15, align 8
  %136 = load i8, i8* %135, align 1
  %137 = icmp ne i8 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %134
  %139 = load i8*, i8** %15, align 8
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i64 0, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = icmp ne i8 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  br label %150

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146
  %148 = load i8*, i8** %15, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %15, align 8
  br label %134, !llvm.loop !12

150:                                              ; preds = %145, %134
  %151 = load i8*, i8** %15, align 8
  %152 = load i8, i8* %151, align 1
  %153 = icmp ne i8 %152, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %150
  %155 = load %struct.flagent*, %struct.flagent** %10, align 8
  %156 = getelementptr inbounds %struct.flagent, %struct.flagent* %155, i32 0, i32 4
  %157 = load i16, i16* %156, align 4
  %158 = sext i16 %157 to i64
  %159 = getelementptr inbounds [120 x i8], [120 x i8]* %17, i64 0, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i64 0, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = icmp ne i8 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %154
  %166 = getelementptr inbounds [120 x i8], [120 x i8]* %17, i64 0, i64 0
  %167 = load %struct.flagent*, %struct.flagent** %10, align 8
  %168 = getelementptr inbounds %struct.flagent, %struct.flagent* %167, i32 0, i32 4
  %169 = load i16, i16* %168, align 4
  %170 = sext i16 %169 to i32
  call void @forcelc(i8* noundef %166, i32 noundef %170)
  br label %171

171:                                              ; preds = %165, %154
  br label %177

172:                                              ; preds = %150
  %173 = getelementptr inbounds [120 x i8], [120 x i8]* %17, i64 0, i64 0
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i32, i32* %16, align 4
  %176 = sub nsw i32 %175, 1
  call void @forcelc(i8* noundef %174, i32 noundef %176)
  br label %177

177:                                              ; preds = %172, %171
  br label %178

178:                                              ; preds = %177, %129
  br label %193

179:                                              ; preds = %93
  %180 = load i8*, i8** %15, align 8
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i64 0, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = icmp ne i8 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %179
  %187 = getelementptr inbounds [120 x i8], [120 x i8]* %17, i64 0, i64 0
  %188 = load %struct.flagent*, %struct.flagent** %10, align 8
  %189 = getelementptr inbounds %struct.flagent, %struct.flagent* %188, i32 0, i32 4
  %190 = load i16, i16* %189, align 4
  %191 = sext i16 %190 to i32
  call void @forcelc(i8* noundef %187, i32 noundef %191)
  br label %192

192:                                              ; preds = %186, %179
  br label %193

193:                                              ; preds = %192, %178
  %194 = load i32, i32* %12, align 4
  %195 = icmp eq i32 %194, 3
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i8*, i8** %8, align 8
  %198 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %197)
  br label %199

199:                                              ; preds = %196, %193
  %200 = load i32, i32* %12, align 4
  %201 = icmp ne i32 %200, 4
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = getelementptr inbounds [120 x i8], [120 x i8]* %17, i64 0, i64 0
  %204 = call i8* @ichartosstr(i8* noundef %203, i32 noundef 1)
  %205 = load i8*, i8** %13, align 8
  %206 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef %204, i8* noundef %205)
  br label %207

207:                                              ; preds = %202, %199
  %208 = load %struct.flagent*, %struct.flagent** %10, align 8
  %209 = getelementptr inbounds %struct.flagent, %struct.flagent* %208, i32 0, i32 6
  %210 = load i16, i16* %209, align 8
  %211 = sext i16 %210 to i32
  %212 = and i32 %211, 1
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %207
  %215 = load i32, i32* %16, align 4
  %216 = load i8*, i8** %8, align 8
  %217 = getelementptr inbounds [120 x i8], [120 x i8]* %17, i64 0, i64 0
  %218 = load i64*, i64** %11, align 8
  %219 = load i32, i32* %12, align 4
  %220 = load i8*, i8** %13, align 8
  %221 = call i32 @expand_suf(i8* noundef %216, i8* noundef %217, i64* noundef %218, i32 noundef 1, i32 noundef %219, i8* noundef %220)
  %222 = add nsw i32 %215, %221
  store i32 %222, i32* %7, align 4
  br label %225

223:                                              ; preds = %207
  %224 = load i32, i32* %16, align 4
  store i32 %224, i32* %7, align 4
  br label %225

225:                                              ; preds = %223, %214, %70, %37, %27
  %226 = load i32, i32* %7, align 4
  ret i32 %226
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @expand_suf(i8* noundef %0, i8* noundef %1, i64* noundef %2, i32 noundef %3, i32 noundef %4, i8* noundef %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.flagent*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %16 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  store %struct.flagent* %16, %struct.flagent** %15, align 8
  %17 = load i32, i32* @numsflags, align 4
  store i32 %17, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %55, %6
  %19 = load i32, i32* %13, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %18
  %22 = load i64*, i64** %9, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.flagent*, %struct.flagent** %15, align 8
  %26 = getelementptr inbounds %struct.flagent, %struct.flagent* %25, i32 0, i32 2
  %27 = load i16, i16* %26, align 8
  %28 = sext i16 %27 to i32
  %29 = zext i32 %28 to i64
  %30 = shl i64 1, %29
  %31 = and i64 %24, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %21
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load %struct.flagent*, %struct.flagent** %15, align 8
  %39 = getelementptr inbounds %struct.flagent, %struct.flagent* %38, i32 0, i32 6
  %40 = load i16, i16* %39, align 8
  %41 = sext i16 %40 to i32
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %37, %33
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.flagent*, %struct.flagent** %15, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @pr_suf_expansion(i8* noundef %45, i8* noundef %46, %struct.flagent* noundef %47, i32 noundef %48, i8* noundef %49)
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %44, %37
  br label %54

54:                                               ; preds = %53, %21
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.flagent*, %struct.flagent** %15, align 8
  %57 = getelementptr inbounds %struct.flagent, %struct.flagent* %56, i32 1
  store %struct.flagent* %57, %struct.flagent** %15, align 8
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %13, align 4
  br label %18, !llvm.loop !13

60:                                               ; preds = %18
  %61 = load i32, i32* %14, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pr_suf_expansion(i8* noundef %0, i8* noundef %1, %struct.flagent* noundef %2, i32 noundef %3, i8* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.flagent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [120 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.flagent* %2, %struct.flagent** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @strlen(i8* noundef %16) #4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %14, align 4
  %19 = load %struct.flagent*, %struct.flagent** %9, align 8
  %20 = getelementptr inbounds %struct.flagent, %struct.flagent* %19, i32 0, i32 5
  %21 = load i16, i16* %20, align 2
  %22 = sext i16 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %131

27:                                               ; preds = %5
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.flagent*, %struct.flagent** %9, align 8
  %30 = getelementptr inbounds %struct.flagent, %struct.flagent* %29, i32 0, i32 3
  %31 = load i16, i16* %30, align 2
  %32 = sext i16 %31 to i32
  %33 = sub nsw i32 %28, %32
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %131

36:                                               ; preds = %27
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8* %40, i8** %13, align 8
  br label %41

41:                                               ; preds = %63, %36
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %12, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load %struct.flagent*, %struct.flagent** %9, align 8
  %47 = getelementptr inbounds %struct.flagent, %struct.flagent* %46, i32 0, i32 7
  %48 = load i8*, i8** %13, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %13, align 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [228 x i8], [228 x i8]* %47, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = load i32, i32* %12, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %131

63:                                               ; preds = %45
  br label %41, !llvm.loop !14

64:                                               ; preds = %41
  %65 = getelementptr inbounds [120 x i8], [120 x i8]* %15, i64 0, i64 0
  %66 = load i8*, i8** %8, align 8
  %67 = call i8* @strcpy(i8* noundef %65, i8* noundef %66) #5
  %68 = getelementptr inbounds [120 x i8], [120 x i8]* %15, i64 0, i64 0
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load %struct.flagent*, %struct.flagent** %9, align 8
  %73 = getelementptr inbounds %struct.flagent, %struct.flagent* %72, i32 0, i32 3
  %74 = load i16, i16* %73, align 2
  %75 = sext i16 %74 to i32
  %76 = sext i32 %75 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i8, i8* %71, i64 %77
  store i8* %78, i8** %13, align 8
  %79 = load %struct.flagent*, %struct.flagent** %9, align 8
  %80 = getelementptr inbounds %struct.flagent, %struct.flagent* %79, i32 0, i32 4
  %81 = load i16, i16* %80, align 4
  %82 = icmp ne i16 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %64
  %84 = load i8*, i8** %13, align 8
  %85 = load %struct.flagent*, %struct.flagent** %9, align 8
  %86 = getelementptr inbounds %struct.flagent, %struct.flagent* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @strcpy(i8* noundef %84, i8* noundef %87) #5
  %89 = load i8*, i8** %13, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i64 0, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %83
  %97 = load i8*, i8** %13, align 8
  %98 = load %struct.flagent*, %struct.flagent** %9, align 8
  %99 = getelementptr inbounds %struct.flagent, %struct.flagent* %98, i32 0, i32 4
  %100 = load i16, i16* %99, align 4
  %101 = sext i16 %100 to i32
  call void @forcelc(i8* noundef %97, i32 noundef %101)
  br label %102

102:                                              ; preds = %96, %83
  br label %105

103:                                              ; preds = %64
  %104 = load i8*, i8** %13, align 8
  store i8 0, i8* %104, align 1
  br label %105

105:                                              ; preds = %103, %102
  %106 = load i32, i32* %10, align 4
  %107 = icmp eq i32 %106, 3
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 4
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = getelementptr inbounds [120 x i8], [120 x i8]* %15, i64 0, i64 0
  %116 = call i8* @ichartosstr(i8* noundef %115, i32 noundef 1)
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef %116, i8* noundef %117)
  br label %119

119:                                              ; preds = %114, %111
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.flagent*, %struct.flagent** %9, align 8
  %122 = getelementptr inbounds %struct.flagent, %struct.flagent* %121, i32 0, i32 4
  %123 = load i16, i16* %122, align 4
  %124 = sext i16 %123 to i32
  %125 = add nsw i32 %120, %124
  %126 = load %struct.flagent*, %struct.flagent** %9, align 8
  %127 = getelementptr inbounds %struct.flagent, %struct.flagent* %126, i32 0, i32 3
  %128 = load i16, i16* %127, align 2
  %129 = sext i16 %128 to i32
  %130 = sub nsw i32 %125, %129
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %119, %62, %35, %26
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

declare dso_local void @flagpr(i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare dso_local %struct.dent* @lookup(i8* noundef, i32 noundef) #3

declare dso_local i32 @ins_root_cap(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.dent* noundef, %struct.flagent* noundef, %struct.flagent* noundef) #3

declare dso_local i32 @cap_ok(i8* noundef, %struct.success* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @suf_list_chk(i8* noundef %0, i8* noundef %1, i32 noundef %2, %struct.flagptr* noundef %3, i32 noundef %4, %struct.flagent* noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.flagptr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.flagent*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.dent*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.flagent*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [184 x i8], align 16
  %25 = alloca [184 x i8], align 16
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.flagptr* %3, %struct.flagptr** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.flagent* %5, %struct.flagent** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %26 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  %27 = load i8*, i8** %10, align 8
  %28 = call i8* @strcpy(i8* noundef %26, i8* noundef %27) #5
  %29 = load %struct.flagptr*, %struct.flagptr** %12, align 8
  %30 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %29, i32 0, i32 0
  %31 = bitcast %union.ptr_union* %30 to %struct.flagent**
  %32 = load %struct.flagent*, %struct.flagent** %31, align 8
  store %struct.flagent* %32, %struct.flagent** %21, align 8
  %33 = load %struct.flagptr*, %struct.flagptr** %12, align 8
  %34 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %20, align 4
  br label %36

36:                                               ; preds = %432, %8
  %37 = load i32, i32* %20, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %437

39:                                               ; preds = %36
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.flagent*, %struct.flagent** %21, align 8
  %45 = getelementptr inbounds %struct.flagent, %struct.flagent* %44, i32 0, i32 6
  %46 = load i16, i16* %45, align 8
  %47 = sext i16 %46 to i32
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %432

51:                                               ; preds = %43, %39
  %52 = load %struct.flagent*, %struct.flagent** %21, align 8
  %53 = getelementptr inbounds %struct.flagent, %struct.flagent* %52, i32 0, i32 6
  %54 = load i16, i16* %53, align 8
  %55 = sext i16 %54 to i32
  %56 = and i32 %55, 2
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i32, i32* %13, align 4
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %432

63:                                               ; preds = %58, %51
  %64 = load i32, i32* @compoundflag, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load %struct.flagent*, %struct.flagent** %21, align 8
  %68 = getelementptr inbounds %struct.flagent, %struct.flagent* %67, i32 0, i32 6
  %69 = load i16, i16* %68, align 8
  %70 = sext i16 %69 to i32
  %71 = load i32, i32* %13, align 4
  %72 = xor i32 %70, %71
  %73 = and i32 %72, 2
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %432

76:                                               ; preds = %66, %63
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.flagent*, %struct.flagent** %21, align 8
  %79 = getelementptr inbounds %struct.flagent, %struct.flagent* %78, i32 0, i32 4
  %80 = load i16, i16* %79, align 4
  %81 = sext i16 %80 to i32
  %82 = sub nsw i32 %77, %81
  store i32 %82, i32* %23, align 4
  %83 = load i32, i32* %23, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %431

85:                                               ; preds = %76
  %86 = load %struct.flagent*, %struct.flagent** %21, align 8
  %87 = getelementptr inbounds %struct.flagent, %struct.flagent* %86, i32 0, i32 4
  %88 = load i16, i16* %87, align 4
  %89 = sext i16 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %85
  %92 = load %struct.flagent*, %struct.flagent** %21, align 8
  %93 = getelementptr inbounds %struct.flagent, %struct.flagent* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = load i32, i32* %23, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = call i32 @strcmp(i8* noundef %94, i8* noundef %98) #4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %431

101:                                              ; preds = %91, %85
  %102 = load i32, i32* %23, align 4
  %103 = load %struct.flagent*, %struct.flagent** %21, align 8
  %104 = getelementptr inbounds %struct.flagent, %struct.flagent* %103, i32 0, i32 3
  %105 = load i16, i16* %104, align 2
  %106 = sext i16 %105 to i32
  %107 = add nsw i32 %102, %106
  %108 = load %struct.flagent*, %struct.flagent** %21, align 8
  %109 = getelementptr inbounds %struct.flagent, %struct.flagent* %108, i32 0, i32 5
  %110 = load i16, i16* %109, align 2
  %111 = sext i16 %110 to i32
  %112 = icmp sge i32 %107, %111
  br i1 %112, label %113, label %431

113:                                              ; preds = %101
  %114 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  %115 = load i8*, i8** %10, align 8
  %116 = call i8* @strcpy(i8* noundef %114, i8* noundef %115) #5
  %117 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  %118 = load i32, i32* %23, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8* %120, i8** %17, align 8
  %121 = load %struct.flagent*, %struct.flagent** %21, align 8
  %122 = getelementptr inbounds %struct.flagent, %struct.flagent* %121, i32 0, i32 3
  %123 = load i16, i16* %122, align 2
  %124 = icmp ne i16 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %113
  %126 = load i8*, i8** %17, align 8
  %127 = load %struct.flagent*, %struct.flagent** %21, align 8
  %128 = getelementptr inbounds %struct.flagent, %struct.flagent* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i8* @strcpy(i8* noundef %126, i8* noundef %129) #5
  %131 = load %struct.flagent*, %struct.flagent** %21, align 8
  %132 = getelementptr inbounds %struct.flagent, %struct.flagent* %131, i32 0, i32 3
  %133 = load i16, i16* %132, align 2
  %134 = sext i16 %133 to i32
  %135 = load i32, i32* %23, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %23, align 4
  %137 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  %138 = load i32, i32* %23, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  store i8* %140, i8** %17, align 8
  br label %143

141:                                              ; preds = %113
  %142 = load i8*, i8** %17, align 8
  store i8 0, i8* %142, align 1
  br label %143

143:                                              ; preds = %141, %125
  %144 = load %struct.flagent*, %struct.flagent** %21, align 8
  %145 = getelementptr inbounds %struct.flagent, %struct.flagent* %144, i32 0, i32 5
  %146 = load i16, i16* %145, align 2
  %147 = sext i16 %146 to i32
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %167, %143
  %149 = load i32, i32* %18, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %18, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %148
  %153 = load %struct.flagent*, %struct.flagent** %21, align 8
  %154 = getelementptr inbounds %struct.flagent, %struct.flagent* %153, i32 0, i32 7
  %155 = load i8*, i8** %17, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 -1
  store i8* %156, i8** %17, align 8
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds [228 x i8], [228 x i8]* %154, i64 0, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = load i32, i32* %18, align 4
  %163 = shl i32 1, %162
  %164 = and i32 %161, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %152
  br label %168

167:                                              ; preds = %152
  br label %148, !llvm.loop !15

168:                                              ; preds = %166, %148
  %169 = load i32, i32* %18, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %430

171:                                              ; preds = %168
  %172 = load i32, i32* @cflag, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %214

174:                                              ; preds = %171
  %175 = load i32, i32* %13, align 4
  %176 = and i32 %175, 1
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %202

178:                                              ; preds = %174
  %179 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  %180 = load %struct.flagent*, %struct.flagent** %14, align 8
  %181 = getelementptr inbounds %struct.flagent, %struct.flagent* %180, i32 0, i32 2
  %182 = load i16, i16* %181, align 8
  %183 = sext i16 %182 to i32
  %184 = add nsw i32 %183, 65
  %185 = load %struct.flagent*, %struct.flagent** %14, align 8
  %186 = getelementptr inbounds %struct.flagent, %struct.flagent* %185, i32 0, i32 3
  %187 = load i16, i16* %186, align 2
  %188 = sext i16 %187 to i32
  %189 = load %struct.flagent*, %struct.flagent** %14, align 8
  %190 = getelementptr inbounds %struct.flagent, %struct.flagent* %189, i32 0, i32 4
  %191 = load i16, i16* %190, align 4
  %192 = sext i16 %191 to i32
  %193 = load %struct.flagent*, %struct.flagent** %21, align 8
  %194 = getelementptr inbounds %struct.flagent, %struct.flagent* %193, i32 0, i32 2
  %195 = load i16, i16* %194, align 8
  %196 = sext i16 %195 to i32
  %197 = add nsw i32 %196, 65
  %198 = load %struct.flagent*, %struct.flagent** %21, align 8
  %199 = getelementptr inbounds %struct.flagent, %struct.flagent* %198, i32 0, i32 4
  %200 = load i16, i16* %199, align 4
  %201 = sext i16 %200 to i32
  call void @flagpr(i8* noundef %179, i32 noundef %184, i32 noundef %188, i32 noundef %192, i32 noundef %197, i32 noundef %201)
  br label %213

202:                                              ; preds = %174
  %203 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  %204 = load %struct.flagent*, %struct.flagent** %21, align 8
  %205 = getelementptr inbounds %struct.flagent, %struct.flagent* %204, i32 0, i32 2
  %206 = load i16, i16* %205, align 8
  %207 = sext i16 %206 to i32
  %208 = add nsw i32 %207, 65
  %209 = load %struct.flagent*, %struct.flagent** %21, align 8
  %210 = getelementptr inbounds %struct.flagent, %struct.flagent* %209, i32 0, i32 4
  %211 = load i16, i16* %210, align 4
  %212 = sext i16 %211 to i32
  call void @flagpr(i8* noundef %203, i32 noundef -1, i32 noundef 0, i32 noundef 0, i32 noundef %208, i32 noundef %212)
  br label %213

213:                                              ; preds = %202, %178
  br label %429

214:                                              ; preds = %171
  %215 = load i32, i32* %15, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %361

217:                                              ; preds = %214
  %218 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  %219 = call %struct.dent* @lookup(i8* noundef %218, i32 noundef 1)
  store %struct.dent* %219, %struct.dent** %19, align 8
  %220 = icmp ne %struct.dent* %219, null
  br i1 %220, label %221, label %360

221:                                              ; preds = %217
  %222 = getelementptr inbounds [184 x i8], [184 x i8]* %25, i64 0, i64 0
  store i8* %222, i8** %17, align 8
  %223 = load i32, i32* %13, align 4
  %224 = and i32 %223, 1
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %247

226:                                              ; preds = %221
  %227 = load %struct.flagent*, %struct.flagent** %14, align 8
  %228 = getelementptr inbounds %struct.flagent, %struct.flagent* %227, i32 0, i32 4
  %229 = load i16, i16* %228, align 4
  %230 = sext i16 %229 to i32
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %247

232:                                              ; preds = %226
  %233 = load i8*, i8** %17, align 8
  %234 = load %struct.flagent*, %struct.flagent** %14, align 8
  %235 = getelementptr inbounds %struct.flagent, %struct.flagent* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = call i8* @strcpy(i8* noundef %233, i8* noundef %236) #5
  %238 = load %struct.flagent*, %struct.flagent** %14, align 8
  %239 = getelementptr inbounds %struct.flagent, %struct.flagent* %238, i32 0, i32 4
  %240 = load i16, i16* %239, align 4
  %241 = sext i16 %240 to i32
  %242 = load i8*, i8** %17, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  store i8* %244, i8** %17, align 8
  %245 = load i8*, i8** %17, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %246, i8** %17, align 8
  store i8 43, i8* %245, align 1
  br label %247

247:                                              ; preds = %232, %226, %221
  %248 = load i8*, i8** %17, align 8
  %249 = getelementptr inbounds [184 x i8], [184 x i8]* %25, i64 0, i64 0
  %250 = ptrtoint i8* %248 to i64
  %251 = ptrtoint i8* %249 to i64
  %252 = sub i64 %250, %251
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %22, align 4
  %254 = load i8*, i8** %17, align 8
  %255 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  %256 = call i8* @strcpy(i8* noundef %254, i8* noundef %255) #5
  %257 = load i32, i32* %23, align 4
  %258 = load i8*, i8** %17, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i8, i8* %258, i64 %259
  store i8* %260, i8** %17, align 8
  %261 = load i32, i32* %13, align 4
  %262 = and i32 %261, 1
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %285

264:                                              ; preds = %247
  %265 = load %struct.flagent*, %struct.flagent** %14, align 8
  %266 = getelementptr inbounds %struct.flagent, %struct.flagent* %265, i32 0, i32 3
  %267 = load i16, i16* %266, align 2
  %268 = sext i16 %267 to i32
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %285

270:                                              ; preds = %264
  %271 = load i8*, i8** %17, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %17, align 8
  store i8 45, i8* %271, align 1
  %273 = load i8*, i8** %17, align 8
  %274 = load %struct.flagent*, %struct.flagent** %14, align 8
  %275 = getelementptr inbounds %struct.flagent, %struct.flagent* %274, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = call i8* @strcpy(i8* noundef %273, i8* noundef %276) #5
  %278 = load %struct.flagent*, %struct.flagent** %14, align 8
  %279 = getelementptr inbounds %struct.flagent, %struct.flagent* %278, i32 0, i32 3
  %280 = load i16, i16* %279, align 2
  %281 = sext i16 %280 to i32
  %282 = load i8*, i8** %17, align 8
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i8, i8* %282, i64 %283
  store i8* %284, i8** %17, align 8
  br label %285

285:                                              ; preds = %270, %264, %247
  %286 = load %struct.flagent*, %struct.flagent** %21, align 8
  %287 = getelementptr inbounds %struct.flagent, %struct.flagent* %286, i32 0, i32 3
  %288 = load i16, i16* %287, align 2
  %289 = icmp ne i16 %288, 0
  br i1 %289, label %290, label %305

290:                                              ; preds = %285
  %291 = load i8*, i8** %17, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %17, align 8
  store i8 45, i8* %291, align 1
  %293 = load i8*, i8** %17, align 8
  %294 = load %struct.flagent*, %struct.flagent** %21, align 8
  %295 = getelementptr inbounds %struct.flagent, %struct.flagent* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  %297 = call i8* @strcpy(i8* noundef %293, i8* noundef %296) #5
  %298 = load %struct.flagent*, %struct.flagent** %21, align 8
  %299 = getelementptr inbounds %struct.flagent, %struct.flagent* %298, i32 0, i32 3
  %300 = load i16, i16* %299, align 2
  %301 = sext i16 %300 to i32
  %302 = load i8*, i8** %17, align 8
  %303 = sext i32 %301 to i64
  %304 = getelementptr inbounds i8, i8* %302, i64 %303
  store i8* %304, i8** %17, align 8
  br label %305

305:                                              ; preds = %290, %285
  %306 = load %struct.flagent*, %struct.flagent** %21, align 8
  %307 = getelementptr inbounds %struct.flagent, %struct.flagent* %306, i32 0, i32 4
  %308 = load i16, i16* %307, align 4
  %309 = icmp ne i16 %308, 0
  br i1 %309, label %310, label %325

310:                                              ; preds = %305
  %311 = load i8*, i8** %17, align 8
  %312 = getelementptr inbounds i8, i8* %311, i32 1
  store i8* %312, i8** %17, align 8
  store i8 43, i8* %311, align 1
  %313 = load i8*, i8** %17, align 8
  %314 = load %struct.flagent*, %struct.flagent** %21, align 8
  %315 = getelementptr inbounds %struct.flagent, %struct.flagent* %314, i32 0, i32 1
  %316 = load i8*, i8** %315, align 8
  %317 = call i8* @strcpy(i8* noundef %313, i8* noundef %316) #5
  %318 = load %struct.flagent*, %struct.flagent** %21, align 8
  %319 = getelementptr inbounds %struct.flagent, %struct.flagent* %318, i32 0, i32 4
  %320 = load i16, i16* %319, align 4
  %321 = sext i16 %320 to i32
  %322 = load i8*, i8** %17, align 8
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds i8, i8* %322, i64 %323
  store i8* %324, i8** %17, align 8
  br label %325

325:                                              ; preds = %310, %305
  %326 = getelementptr inbounds [184 x i8], [184 x i8]* %25, i64 0, i64 0
  %327 = load i8*, i8** %9, align 8
  %328 = load i32, i32* %13, align 4
  %329 = and i32 %328, 1
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %325
  %332 = load %struct.flagent*, %struct.flagent** %14, align 8
  %333 = getelementptr inbounds %struct.flagent, %struct.flagent* %332, i32 0, i32 3
  %334 = load i16, i16* %333, align 2
  %335 = sext i16 %334 to i32
  br label %337

336:                                              ; preds = %325
  br label %337

337:                                              ; preds = %336, %331
  %338 = phi i32 [ %335, %331 ], [ 0, %336 ]
  %339 = load i32, i32* %22, align 4
  %340 = load %struct.flagent*, %struct.flagent** %21, align 8
  %341 = getelementptr inbounds %struct.flagent, %struct.flagent* %340, i32 0, i32 3
  %342 = load i16, i16* %341, align 2
  %343 = sext i16 %342 to i32
  %344 = load i8*, i8** %17, align 8
  %345 = getelementptr inbounds [184 x i8], [184 x i8]* %25, i64 0, i64 0
  %346 = ptrtoint i8* %344 to i64
  %347 = ptrtoint i8* %345 to i64
  %348 = sub i64 %346, %347
  %349 = load i32, i32* %23, align 4
  %350 = sext i32 %349 to i64
  %351 = sub nsw i64 %348, %350
  %352 = load i32, i32* %22, align 4
  %353 = sext i32 %352 to i64
  %354 = sub nsw i64 %351, %353
  %355 = trunc i64 %354 to i32
  %356 = load %struct.dent*, %struct.dent** %19, align 8
  %357 = load %struct.flagent*, %struct.flagent** %14, align 8
  %358 = load %struct.flagent*, %struct.flagent** %21, align 8
  %359 = call i32 @ins_root_cap(i8* noundef %326, i8* noundef %327, i32 noundef %338, i32 noundef %339, i32 noundef %343, i32 noundef %355, %struct.dent* noundef %356, %struct.flagent* noundef %357, %struct.flagent* noundef %358)
  br label %360

360:                                              ; preds = %337, %217
  br label %428

361:                                              ; preds = %214
  %362 = getelementptr inbounds [184 x i8], [184 x i8]* %24, i64 0, i64 0
  %363 = call %struct.dent* @lookup(i8* noundef %362, i32 noundef 1)
  store %struct.dent* %363, %struct.dent** %19, align 8
  %364 = icmp ne %struct.dent* %363, null
  br i1 %364, label %365, label %427

365:                                              ; preds = %361
  %366 = load %struct.dent*, %struct.dent** %19, align 8
  %367 = getelementptr inbounds %struct.dent, %struct.dent* %366, i32 0, i32 2
  %368 = getelementptr inbounds [1 x i64], [1 x i64]* %367, i64 0, i64 0
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.flagent*, %struct.flagent** %21, align 8
  %371 = getelementptr inbounds %struct.flagent, %struct.flagent* %370, i32 0, i32 2
  %372 = load i16, i16* %371, align 8
  %373 = sext i16 %372 to i32
  %374 = zext i32 %373 to i64
  %375 = shl i64 1, %374
  %376 = and i64 %369, %375
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %427

378:                                              ; preds = %365
  %379 = load i32, i32* %13, align 4
  %380 = and i32 %379, 1
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %395, label %382

382:                                              ; preds = %378
  %383 = load %struct.dent*, %struct.dent** %19, align 8
  %384 = getelementptr inbounds %struct.dent, %struct.dent* %383, i32 0, i32 2
  %385 = getelementptr inbounds [1 x i64], [1 x i64]* %384, i64 0, i64 0
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.flagent*, %struct.flagent** %14, align 8
  %388 = getelementptr inbounds %struct.flagent, %struct.flagent* %387, i32 0, i32 2
  %389 = load i16, i16* %388, align 8
  %390 = sext i16 %389 to i32
  %391 = zext i32 %390 to i64
  %392 = shl i64 1, %391
  %393 = and i64 %386, %392
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %427

395:                                              ; preds = %382, %378
  %396 = load i32, i32* @numhits, align 4
  %397 = icmp slt i32 %396, 10
  br i1 %397, label %398, label %416

398:                                              ; preds = %395
  %399 = load %struct.dent*, %struct.dent** %19, align 8
  %400 = load i32, i32* @numhits, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 %401
  %403 = getelementptr inbounds %struct.success, %struct.success* %402, i32 0, i32 0
  store %struct.dent* %399, %struct.dent** %403, align 8
  %404 = load %struct.flagent*, %struct.flagent** %14, align 8
  %405 = load i32, i32* @numhits, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 %406
  %408 = getelementptr inbounds %struct.success, %struct.success* %407, i32 0, i32 1
  store %struct.flagent* %404, %struct.flagent** %408, align 8
  %409 = load %struct.flagent*, %struct.flagent** %21, align 8
  %410 = load i32, i32* @numhits, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 %411
  %413 = getelementptr inbounds %struct.success, %struct.success* %412, i32 0, i32 2
  store %struct.flagent* %409, %struct.flagent** %413, align 8
  %414 = load i32, i32* @numhits, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* @numhits, align 4
  br label %416

416:                                              ; preds = %398, %395
  %417 = load i32, i32* %16, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %426, label %419

419:                                              ; preds = %416
  %420 = load i8*, i8** %9, align 8
  %421 = load i32, i32* %11, align 4
  %422 = call i32 @cap_ok(i8* noundef %420, %struct.success* noundef getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 0), i32 noundef %421)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %425

424:                                              ; preds = %419
  br label %437

425:                                              ; preds = %419
  store i32 0, i32* @numhits, align 4
  br label %426

426:                                              ; preds = %425, %416
  br label %427

427:                                              ; preds = %426, %382, %365, %361
  br label %428

428:                                              ; preds = %427, %360
  br label %429

429:                                              ; preds = %428, %213
  br label %430

430:                                              ; preds = %429, %168
  br label %431

431:                                              ; preds = %430, %101, %91, %76
  br label %432

432:                                              ; preds = %431, %75, %62, %50
  %433 = load %struct.flagent*, %struct.flagent** %21, align 8
  %434 = getelementptr inbounds %struct.flagent, %struct.flagent* %433, i32 1
  store %struct.flagent* %434, %struct.flagent** %21, align 8
  %435 = load i32, i32* %20, align 4
  %436 = add nsw i32 %435, -1
  store i32 %436, i32* %20, align 4
  br label %36, !llvm.loop !16

437:                                              ; preds = %424, %36
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @forcelc(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %16, %2
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 21), i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = load i8*, i8** %3, align 8
  store i8 %14, i8* %15, align 1
  br label %16

16:                                               ; preds = %9
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  br label %5, !llvm.loop !17

19:                                               ; preds = %5
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

declare dso_local i8* @ichartosstr(i8* noundef, i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

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
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!22, !5}
!22 = distinct !{!23, !5}
!23 = distinct !{!24, !5}
!24 = distinct !{!25, !5}
!25 = distinct !{!26, !5}
!26 = distinct !{!27, !5}
!27 = distinct !{!28, !5}
!28 = distinct !{!29, !5}
!29 = distinct !{!30, !5}
!30 = distinct !{!31, !5}
!32 = distinct !{!33, !5}
!33 = distinct !{!34, !5}
!34 = distinct !{!35, !5}
!35 = distinct !{!36, !5}
!36 = distinct !{!37, !5}
!37 = distinct !{!38, !5}
!38 = distinct !{!39, !5}
!39 = distinct !{!40, !5}
!40 = distinct !{!41, !5}
!42 = distinct !{!43, !5}
!43 = distinct !{!44, !5}
!44 = distinct !{!45, !5}
!45 = distinct !{!46, !5}
!47 = distinct !{!48, !5}
!48 = distinct !{!49, !5}
!49 = distinct !{!50, !5}
!51 = distinct !{!52, !5}
!52 = distinct !{!53, !5}
!53 = distinct !{!54, !5}
!54 = distinct !{!55, !5}
!55 = distinct !{!56, !5}
!56 = distinct !{!57, !5}
!57 = distinct !{!58, !5}
!58 = distinct !{!59, !5}
!59 = distinct !{!60, !5}
!61 = distinct !{!62, !5}
!62 = distinct !{!63, !5}
!63 = distinct !{!64, !5}
!64 = distinct !{!65, !5}
!65 = distinct !{!66, !5}
!66 = distinct !{!67, !5}
!67 = distinct !{!68, !5}
!68 = distinct !{!69, !5}
!69 = distinct !{!70, !5}
!71 = distinct !{!72, !5}
!72 = distinct !{!73, !5}
!73 = distinct !{!74, !5}
!74 = distinct !{!75, !5}
!75 = distinct !{!76, !5}
!76 = distinct !{!77, !5}
!77 = distinct !{!78, !5}
!78 = distinct !{!79, !5}
!80 = distinct !{!81, !5}
!82 = distinct !{!83, !5}
!83 = distinct !{!84, !5}
!85 = distinct !{!86, !5}
!87 = distinct !{!88, !5}
!89 = distinct !{!89, !5}
!90 = distinct !{!91, !5}
!92 = distinct !{!93, !5}
!93 = distinct !{!94, !5}
!95 = distinct !{!96, !5}
!97 = distinct !{!98, !5}
!98 = distinct !{!99, !5}
!99 = distinct !{!100, !5}
!101 = distinct !{!102, !5}
!103 = distinct !{!104, !5}
!105 = distinct !{!106, !5}
!107 = distinct !{!108, !5}
!108 = distinct !{!109, !5}
!109 = distinct !{!110, !5}
!110 = distinct !{!111, !5}
!112 = distinct !{!113, !5}
!114 = distinct !{!115, !5}
!116 = distinct !{!117, !5}
!118 = distinct !{!118, !5}
!119 = distinct !{!119, !5}
!120 = distinct !{!121, !5}
!122 = distinct !{!123, !5}
!123 = distinct !{!124, !5}
!125 = distinct !{!126, !5}
!127 = distinct !{!128, !5}
!129 = distinct !{!130, !5}
!131 = distinct !{!132, !5}
!133 = distinct !{!134, !5}
!135 = distinct !{!136, !5}
!137 = distinct !{!138, !5}
!139 = distinct !{!140, !5}
!141 = distinct !{!142, !5}
!143 = distinct !{!144, !5}
!145 = distinct !{!146, !5}
!147 = distinct !{!148, !5}
!149 = distinct !{!150, !5}
!151 = distinct !{!152, !5}
!153 = distinct !{!154, !5}
!155 = distinct !{!156, !5}
!157 = distinct !{!158, !5}
!159 = distinct !{!160, !5}
!161 = distinct !{!162, !5}
!163 = distinct !{!164, !5}
!165 = distinct !{!166, !5}
!167 = distinct !{!168, !5}
!169 = distinct !{!170, !5}
!171 = distinct !{!172, !5}
!173 = distinct !{!174, !5}
!175 = distinct !{!176, !5}
!177 = distinct !{!178, !5}
!179 = distinct !{!180, !5}
!181 = distinct !{!182, !5}
!183 = distinct !{!184, !5}
!185 = distinct !{!186, !5}
!187 = distinct !{!188, !5}
!189 = distinct !{!190, !5}
!191 = distinct !{!192, !5}
!193 = distinct !{!194, !5}
!195 = distinct !{!196, !5}
!197 = distinct !{!198, !5}
!199 = distinct !{!200, !5}
!201 = distinct !{!202, !5}
!203 = distinct !{!204, !5}
!205 = distinct !{!206, !5}
!207 = distinct !{!208, !5}
!209 = distinct !{!210, !5}
!211 = distinct !{!212, !5}
!213 = distinct !{!214, !5}
