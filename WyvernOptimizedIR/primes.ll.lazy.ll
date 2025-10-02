; ModuleID = './primes.ll'
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
  %2 = alloca %struct.set_family*, align 8
  %3 = call i32 @primes_consensus_special_cases(i32** noundef %0, %struct.set_family** noundef nonnull %2)
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %54

5:                                                ; preds = %1
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %7 = icmp slt i32 %6, 33
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %14

9:                                                ; preds = %5
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %11 = add nsw i32 %10, -1
  %12 = ashr i32 %11, 5
  %13 = add nsw i32 %12, 2
  %phi.cast = sext i32 %13 to i64
  %phi.bo = shl nsw i64 %phi.cast, 2
  br label %14

14:                                               ; preds = %9, %8
  %15 = phi i64 [ 8, %8 ], [ %phi.bo, %9 ]
  %16 = call i8* @malloc(i64 noundef %15) #2
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %19 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %17, i32 noundef %18) #2
  %20 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %21 = icmp slt i32 %20, 33
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %28

23:                                               ; preds = %14
  %24 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %25 = add nsw i32 %24, -1
  %26 = ashr i32 %25, 5
  %27 = add nsw i32 %26, 2
  %phi.cast1 = sext i32 %27 to i64
  %phi.bo2 = shl nsw i64 %phi.cast1, 2
  br label %28

28:                                               ; preds = %23, %22
  %29 = phi i64 [ 8, %22 ], [ %phi.bo2, %23 ]
  %30 = call i8* @malloc(i64 noundef %29) #2
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %33 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %31, i32 noundef %32) #2
  %34 = call i32 (i32**, i32*, i32*, i32, ...) bitcast (i32 (...)* @binate_split_select to i32 (i32**, i32*, i32*, i32, ...)*)(i32** noundef %0, i32* noundef %19, i32* noundef %33, i32 noundef 1) #2
  %35 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** noundef %0, i32* noundef %19, i32 noundef %34) #2
  %36 = call %struct.set_family* @primes_consensus(i32** noundef %35)
  %37 = call i32** (i32**, i32*, i32, ...) bitcast (i32** (...)* @scofactor to i32** (i32**, i32*, i32, ...)*)(i32** noundef %0, i32* noundef %33, i32 noundef %34) #2
  %38 = call %struct.set_family* @primes_consensus(i32** noundef %37)
  %39 = call %struct.set_family* @primes_consensus_merge(%struct.set_family* noundef %36, %struct.set_family* noundef %38, i32* noundef %19, i32* noundef %33)
  store %struct.set_family* %39, %struct.set_family** %2, align 8
  %.not = icmp eq i32* %19, null
  br i1 %.not, label %42, label %40

40:                                               ; preds = %28
  %41 = bitcast i32* %19 to i8*
  call void @free(i8* noundef %41)
  br label %42

42:                                               ; preds = %40, %28
  %.not3 = icmp eq i32* %33, null
  br i1 %.not3, label %45, label %43

43:                                               ; preds = %42
  %44 = bitcast i32* %33 to i8*
  call void @free(i8* noundef %44)
  br label %45

45:                                               ; preds = %43, %42
  %46 = load i32*, i32** %0, align 8
  %.not4 = icmp eq i32* %46, null
  br i1 %.not4, label %50, label %47

47:                                               ; preds = %45
  %48 = bitcast i32** %0 to i8**
  %49 = load i8*, i8** %48, align 8
  call void @free(i8* noundef %49)
  store i32* null, i32** %0, align 8
  br label %50

50:                                               ; preds = %47, %45
  br i1 true, label %51, label %53

51:                                               ; preds = %50
  %52 = bitcast i32** %0 to i8*
  call void @free(i8* noundef %52)
  br label %53

53:                                               ; preds = %51, %50
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.set_family*, %struct.set_family** %2, align 8
  ret %struct.set_family* %55
}

declare dso_local i32* @set_clear(...) #1

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local i32 @binate_split_select(...) #1

declare dso_local i32** @scofactor(...) #1

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @primes_consensus_special_cases(i32** noundef %0, %struct.set_family** nocapture noundef writeonly %1) #0 {
  %3 = load i32*, i32** %0, align 8
  %4 = getelementptr inbounds i32*, i32** %0, i64 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %9 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 0, i32 noundef %8) #2
  store %struct.set_family* %9, %struct.set_family** %1, align 8
  %10 = load i32*, i32** %0, align 8
  %.not16 = icmp eq i32* %10, null
  br i1 %.not16, label %14, label %11

11:                                               ; preds = %7
  %12 = bitcast i32** %0 to i8**
  %13 = load i8*, i8** %12, align 8
  call void @free(i8* noundef %13)
  store i32* null, i32** %0, align 8
  br label %14

14:                                               ; preds = %11, %7
  br i1 true, label %15, label %17

15:                                               ; preds = %14
  %16 = bitcast i32** %0 to i8*
  call void @free(i8* noundef %16)
  br label %17

17:                                               ; preds = %15, %14
  br label %195

18:                                               ; preds = %2
  %19 = getelementptr inbounds i32*, i32** %0, i64 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %24 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 1, i32 noundef %23) #2
  %25 = getelementptr inbounds i32*, i32** %0, i64 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %3, i32* noundef %3, i32* noundef %26) #2
  %28 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %24, i32* noundef %27) #2
  store %struct.set_family* %28, %struct.set_family** %1, align 8
  %29 = load i32*, i32** %0, align 8
  %.not15 = icmp eq i32* %29, null
  br i1 %.not15, label %33, label %30

30:                                               ; preds = %22
  %31 = bitcast i32** %0 to i8**
  %32 = load i8*, i8** %31, align 8
  call void @free(i8* noundef %32)
  store i32* null, i32** %0, align 8
  br label %33

33:                                               ; preds = %30, %22
  br i1 true, label %34, label %36

34:                                               ; preds = %33
  %35 = bitcast i32** %0 to i8*
  call void @free(i8* noundef %35)
  br label %36

36:                                               ; preds = %34, %33
  br label %195

37:                                               ; preds = %18
  %38 = getelementptr inbounds i32*, i32** %0, i64 2
  br label %39

39:                                               ; preds = %57, %37
  %.02 = phi i32** [ %38, %37 ], [ %40, %57 ]
  %40 = getelementptr inbounds i32*, i32** %.02, i64 1
  %41 = load i32*, i32** %.02, align 8
  %.not = icmp eq i32* %41, null
  br i1 %.not, label %58, label %42

42:                                               ; preds = %39
  %43 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @full_row to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %41, i32* noundef %3) #2
  %.not13 = icmp eq i32 %43, 0
  br i1 %.not13, label %57, label %44

44:                                               ; preds = %42
  %45 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %46 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 1, i32 noundef %45) #2
  %47 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12), align 8
  %48 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %46, i32* noundef %47) #2
  store %struct.set_family* %48, %struct.set_family** %1, align 8
  %49 = load i32*, i32** %0, align 8
  %.not14 = icmp eq i32* %49, null
  br i1 %.not14, label %53, label %50

50:                                               ; preds = %44
  %51 = bitcast i32** %0 to i8**
  %52 = load i8*, i8** %51, align 8
  call void @free(i8* noundef %52)
  store i32* null, i32** %0, align 8
  br label %53

53:                                               ; preds = %50, %44
  br i1 true, label %54, label %56

54:                                               ; preds = %53
  %55 = bitcast i32** %0 to i8*
  call void @free(i8* noundef %55)
  br label %56

56:                                               ; preds = %54, %53
  br label %195

57:                                               ; preds = %42
  br label %39, !llvm.loop !4

58:                                               ; preds = %39
  %59 = load i32, i32* %3, align 4
  %60 = shl i32 %59, 5
  %61 = and i32 %60, 32736
  %62 = icmp ult i32 %61, 33
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %72

64:                                               ; preds = %58
  %65 = load i32, i32* %3, align 4
  %66 = shl i32 %65, 5
  %67 = and i32 %66, 32736
  %68 = add nsw i32 %67, -1
  %69 = lshr i32 %68, 3
  %70 = and i32 %69, 536870908
  %71 = add nuw nsw i32 %70, 8
  %phi.bo = zext i32 %71 to i64
  br label %72

72:                                               ; preds = %64, %63
  %73 = phi i64 [ 8, %63 ], [ %phi.bo, %64 ]
  %74 = call i8* @malloc(i64 noundef %73) #2
  %75 = bitcast i8* %74 to i32*
  %76 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* noundef %75, i32* noundef nonnull %3) #2
  %77 = getelementptr inbounds i32*, i32** %0, i64 2
  br label %78

78:                                               ; preds = %97, %72
  %.1 = phi i32** [ %77, %72 ], [ %79, %97 ]
  %79 = getelementptr inbounds i32*, i32** %.1, i64 1
  %80 = load i32*, i32** %.1, align 8
  %.not5 = icmp eq i32* %80, null
  br i1 %.not5, label %98, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %76, align 4
  %83 = and i32 %82, 1023
  br label %84

84:                                               ; preds = %94, %81
  %.04 = phi i32 [ %83, %81 ], [ %95, %94 ]
  %85 = sext i32 %.04 to i64
  %86 = getelementptr inbounds i32, i32* %76, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %.04 to i64
  %89 = getelementptr inbounds i32, i32* %80, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %87, %90
  %92 = sext i32 %.04 to i64
  %93 = getelementptr inbounds i32, i32* %76, i64 %92
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %84
  %95 = add nsw i32 %.04, -1
  %96 = icmp sgt i32 %.04, 1
  br i1 %96, label %84, label %97, !llvm.loop !6

97:                                               ; preds = %94
  br label %78, !llvm.loop !7

98:                                               ; preds = %78
  %99 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12), align 8
  %100 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_equal to i32 (i32*, i32*, ...)*)(i32* noundef %76, i32* noundef %99) #2
  %.not6 = icmp eq i32 %100, 0
  br i1 %.not6, label %101, label %160

101:                                              ; preds = %98
  %102 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %103 = icmp slt i32 %102, 33
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %110

105:                                              ; preds = %101
  %106 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %107 = add nsw i32 %106, -1
  %108 = ashr i32 %107, 5
  %109 = add nsw i32 %108, 2
  %phi.cast = sext i32 %109 to i64
  %phi.bo7 = shl nsw i64 %phi.cast, 2
  br label %110

110:                                              ; preds = %105, %104
  %111 = phi i64 [ 8, %104 ], [ %phi.bo7, %105 ]
  %112 = call i8* @malloc(i64 noundef %111) #2
  %113 = bitcast i8* %112 to i32*
  %114 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %115 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %113, i32 noundef %114) #2
  %116 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12), align 8
  %117 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %115, i32* noundef %116, i32* noundef %76) #2
  %118 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* noundef nonnull %3, i32* noundef nonnull %3, i32* noundef %115) #2
  %.not8 = icmp eq i32* %115, null
  br i1 %.not8, label %121, label %119

119:                                              ; preds = %110
  %120 = bitcast i32* %115 to i8*
  call void @free(i8* noundef %120)
  br label %121

121:                                              ; preds = %119, %110
  %122 = call %struct.set_family* @primes_consensus(i32** noundef nonnull %0)
  %123 = getelementptr inbounds %struct.set_family, %struct.set_family* %122, i64 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds %struct.set_family, %struct.set_family* %122, i64 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.set_family, %struct.set_family* %122, i64 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 %126, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %124, i64 %130
  br label %132

132:                                              ; preds = %151, %121
  %.03 = phi i32* [ %124, %121 ], [ %155, %151 ]
  %133 = icmp ult i32* %.03, %131
  br i1 %133, label %134, label %156

134:                                              ; preds = %132
  %135 = load i32, i32* %.03, align 4
  %136 = and i32 %135, 1023
  br label %137

137:                                              ; preds = %147, %134
  %.01 = phi i32 [ %136, %134 ], [ %148, %147 ]
  %138 = sext i32 %.01 to i64
  %139 = getelementptr inbounds i32, i32* %.03, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %.01 to i64
  %142 = getelementptr inbounds i32, i32* %76, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %140, %143
  %145 = sext i32 %.01 to i64
  %146 = getelementptr inbounds i32, i32* %.03, i64 %145
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %137
  %148 = add nsw i32 %.01, -1
  %149 = icmp sgt i32 %.01, 1
  br i1 %149, label %137, label %150, !llvm.loop !8

150:                                              ; preds = %147
  br label %151

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct.set_family, %struct.set_family* %122, i64 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %.03, i64 %154
  br label %132, !llvm.loop !9

156:                                              ; preds = %132
  store %struct.set_family* %122, %struct.set_family** %1, align 8
  %.not9 = icmp eq i32* %76, null
  br i1 %.not9, label %159, label %157

157:                                              ; preds = %156
  %158 = bitcast i32* %76 to i8*
  call void @free(i8* noundef %158)
  br label %159

159:                                              ; preds = %157, %156
  br label %195

160:                                              ; preds = %98
  %.not10 = icmp eq i32* %76, null
  br i1 %.not10, label %163, label %161

161:                                              ; preds = %160
  %162 = bitcast i32* %76 to i8*
  call void @free(i8* noundef %162)
  br label %163

163:                                              ; preds = %161, %160
  call void (i32**, ...) bitcast (void (...)* @massive_count to void (i32**, ...)*)(i32** noundef nonnull %0) #2
  %164 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 4), align 8
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %179

166:                                              ; preds = %163
  %167 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %168 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 1, i32 noundef %167) #2
  %169 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12), align 8
  %170 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %168, i32* noundef %169) #2
  store %struct.set_family* %170, %struct.set_family** %1, align 8
  %171 = load i32*, i32** %0, align 8
  %.not12 = icmp eq i32* %171, null
  br i1 %.not12, label %175, label %172

172:                                              ; preds = %166
  %173 = bitcast i32** %0 to i8**
  %174 = load i8*, i8** %173, align 8
  call void @free(i8* noundef %174)
  store i32* null, i32** %0, align 8
  br label %175

175:                                              ; preds = %172, %166
  br i1 true, label %176, label %178

176:                                              ; preds = %175
  %177 = bitcast i32** %0 to i8*
  call void @free(i8* noundef %177)
  br label %178

178:                                              ; preds = %176, %175
  br label %195

179:                                              ; preds = %163
  %180 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 5), align 4
  %181 = load i32, i32* getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 4), align 8
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %179
  %184 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @cubeunlist to %struct.set_family* (i32**, ...)*)(i32** noundef nonnull %0) #2
  %185 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %184) #2
  store %struct.set_family* %185, %struct.set_family** %1, align 8
  %186 = load i32*, i32** %0, align 8
  %.not11 = icmp eq i32* %186, null
  br i1 %.not11, label %190, label %187

187:                                              ; preds = %183
  %188 = bitcast i32** %0 to i8**
  %189 = load i8*, i8** %188, align 8
  call void @free(i8* noundef %189)
  store i32* null, i32** %0, align 8
  br label %190

190:                                              ; preds = %187, %183
  br i1 true, label %191, label %193

191:                                              ; preds = %190
  %192 = bitcast i32** %0 to i8*
  call void @free(i8* noundef %192)
  br label %193

193:                                              ; preds = %191, %190
  br label %195

194:                                              ; preds = %179
  br label %195

195:                                              ; preds = %194, %193, %178, %159, %56, %36, %17
  %.0 = phi i32 [ 1, %17 ], [ 1, %36 ], [ 1, %56 ], [ 1, %178 ], [ 1, %193 ], [ 2, %194 ], [ 1, %159 ]
  ret i32 %.0
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
define internal %struct.set_family* @primes_consensus_merge(%struct.set_family* noundef %0, %struct.set_family* noundef %1, i32* nocapture noundef readonly %2, i32* nocapture noundef readonly %3) #0 {
  %5 = call %struct.set_family* @and_with_cofactor(%struct.set_family* noundef %0, i32* noundef %2)
  %6 = call %struct.set_family* @and_with_cofactor(%struct.set_family* noundef %1, i32* noundef %3)
  %7 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i64 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 500, i32 noundef %8) #2
  %10 = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i64 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_join to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %5, %struct.set_family* noundef %6) #2
  %13 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %12) #2
  %14 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i64 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i64 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i64 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %17, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %15, i64 %21
  br label %23

23:                                               ; preds = %67, %4
  %.07 = phi i32* [ %11, %4 ], [ %.18, %67 ]
  %.05 = phi i32* [ %15, %4 ], [ %71, %67 ]
  %.01 = phi %struct.set_family* [ %9, %4 ], [ %.12, %67 ]
  %.0 = phi %struct.set_family* [ %13, %4 ], [ %.1, %67 ]
  %24 = icmp ult i32* %.05, %22
  br i1 %24, label %25, label %72

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i64 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i64 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i64 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %29, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %27, i64 %33
  br label %35

35:                                               ; preds = %61, %25
  %.18 = phi i32* [ %.07, %25 ], [ %.310, %61 ]
  %.06 = phi i32* [ %27, %25 ], [ %65, %61 ]
  %.12 = phi %struct.set_family* [ %.01, %25 ], [ %.34, %61 ]
  %.1 = phi %struct.set_family* [ %.0, %25 ], [ %.3, %61 ]
  %36 = icmp ult i32* %.06, %34
  br i1 %36, label %37, label %66

37:                                               ; preds = %35
  %38 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist01 to i32 (i32*, i32*, ...)*)(i32* noundef %.05, i32* noundef %.06) #2
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  call void (i32*, i32*, i32*, ...) bitcast (void (...)* @consensus to void (i32*, i32*, i32*, ...)*)(i32* noundef %.18, i32* noundef %.05, i32* noundef %.06) #2
  %41 = getelementptr inbounds %struct.set_family, %struct.set_family* %.12, i64 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = getelementptr inbounds %struct.set_family, %struct.set_family* %.12, i64 0, i32 2
  %45 = load i32, i32* %44, align 8
  %.not = icmp slt i32 %43, %45
  br i1 %.not, label %54, label %46

46:                                               ; preds = %40
  %47 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %.12) #2
  %48 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %.1, %struct.set_family* noundef %47) #2
  %49 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i64 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 500, i32 noundef %50) #2
  %52 = getelementptr inbounds %struct.set_family, %struct.set_family* %51, i64 0, i32 5
  %53 = load i32*, i32** %52, align 8
  br label %59

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.set_family, %struct.set_family* %.12, i64 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %.18, i64 %57
  br label %59

59:                                               ; preds = %54, %46
  %.29 = phi i32* [ %53, %46 ], [ %58, %54 ]
  %.23 = phi %struct.set_family* [ %51, %46 ], [ %.12, %54 ]
  %.2 = phi %struct.set_family* [ %48, %46 ], [ %.1, %54 ]
  br label %60

60:                                               ; preds = %59, %37
  %.310 = phi i32* [ %.29, %59 ], [ %.18, %37 ]
  %.34 = phi %struct.set_family* [ %.23, %59 ], [ %.12, %37 ]
  %.3 = phi %struct.set_family* [ %.2, %59 ], [ %.1, %37 ]
  br label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i64 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %.06, i64 %64
  br label %35, !llvm.loop !10

66:                                               ; preds = %35
  br label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i64 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %.05, i64 %70
  br label %23, !llvm.loop !11

72:                                               ; preds = %23
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %5) #2
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %6) #2
  %73 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %.01) #2
  %74 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %.0, %struct.set_family* noundef %73) #2
  ret %struct.set_family* %74
}

declare dso_local %struct.set_family* @sf_join(...) #1

declare dso_local i32 @cdist01(...) #1

declare dso_local void @consensus(...) #1

declare dso_local %struct.set_family* @sf_union(...) #1

declare dso_local void @sf_free(...) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.set_family* @and_with_cofactor(%struct.set_family* noundef %0, i32* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = mul nsw i32 %6, %8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %4, i64 %10
  br label %12

12:                                               ; preds = %41, %2
  %.01 = phi i32* [ %4, %2 ], [ %45, %41 ]
  %13 = icmp ult i32* %.01, %11
  br i1 %13, label %14, label %46

14:                                               ; preds = %12
  %15 = load i32, i32* %.01, align 4
  %16 = and i32 %15, 1023
  br label %17

17:                                               ; preds = %27, %14
  %.0 = phi i32 [ %16, %14 ], [ %28, %27 ]
  %18 = sext i32 %.0 to i64
  %19 = getelementptr inbounds i32, i32* %.01, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %.0 to i64
  %22 = getelementptr inbounds i32, i32* %1, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %20, %23
  %25 = sext i32 %.0 to i64
  %26 = getelementptr inbounds i32, i32* %.01, i64 %25
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %17
  %28 = add nsw i32 %.0, -1
  %29 = icmp sgt i32 %.0, 1
  br i1 %29, label %17, label %30, !llvm.loop !12

30:                                               ; preds = %27
  %31 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12), align 8
  %32 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %.01, i32* noundef %31) #2
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %.01, align 4
  %36 = and i32 %35, -8193
  br label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %.01, align 4
  %39 = or i32 %38, 8192
  br label %40

40:                                               ; preds = %37, %34
  %storemerge = phi i32 [ %36, %34 ], [ %39, %37 ]
  store i32 %storemerge, i32* %.01, align 4
  br label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %.01, i64 %44
  br label %12, !llvm.loop !13

46:                                               ; preds = %12
  %47 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_inactive to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %0) #2
  ret %struct.set_family* %47
}

declare dso_local i32 @cdist(...) #1

declare dso_local %struct.set_family* @sf_inactive(...) #1

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
