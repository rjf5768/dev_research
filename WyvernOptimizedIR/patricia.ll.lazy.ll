; ModuleID = './patricia.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/network-patricia/patricia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptree = type { i64, %struct.ptree_mask*, i8, i8, %struct.ptree*, %struct.ptree* }
%struct.ptree_mask = type { i64, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ptree* @pat_insert(%struct.ptree* noundef %0, %struct.ptree* noundef %1) #0 {
  %.not = icmp eq %struct.ptree* %1, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %.not7 = icmp eq %struct.ptree* %0, null
  br i1 %.not7, label %7, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 1
  %6 = load %struct.ptree_mask*, %struct.ptree_mask** %5, align 8
  %.not8 = icmp eq %struct.ptree_mask* %6, null
  br i1 %.not8, label %7, label %8

7:                                                ; preds = %4, %3, %2
  br label %166

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 1
  %10 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 8
  %11 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %10, i64 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = and i64 %14, %12
  store i64 %15, i64* %13, align 8
  br label %16

16:                                               ; preds = %29, %8
  %.02 = phi %struct.ptree* [ %1, %8 ], [ %28, %29 ]
  %17 = getelementptr inbounds %struct.ptree, %struct.ptree* %.02, i64 0, i32 3
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @bit(i32 noundef %19, i64 noundef %21)
  %.not9 = icmp eq i64 %22, 0
  br i1 %.not9, label %25, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.ptree, %struct.ptree* %.02, i64 0, i32 5
  br label %27

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.ptree, %struct.ptree* %.02, i64 0, i32 4
  br label %27

27:                                               ; preds = %25, %23
  %.in = phi %struct.ptree** [ %24, %23 ], [ %26, %25 ]
  %28 = load %struct.ptree*, %struct.ptree** %.in, align 8
  br label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i64 0, i32 3
  %31 = load i8, i8* %30, align 1
  %32 = icmp slt i8 %18, %31
  br i1 %32, label %16, label %33, !llvm.loop !4

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i64 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %132

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %70, %39
  %.03 = phi i32 [ 0, %39 ], [ %71, %70 ]
  %41 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i64 0, i32 2
  %42 = load i8, i8* %41, align 8
  %43 = zext i8 %42 to i32
  %44 = icmp ult i32 %.03, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 1
  %47 = load %struct.ptree_mask*, %struct.ptree_mask** %46, align 8
  %48 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %47, i64 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i64 0, i32 1
  %51 = load %struct.ptree_mask*, %struct.ptree_mask** %50, align 8
  %52 = zext i32 %.03 to i64
  %53 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %51, i64 %52, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %49, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 1
  %58 = load %struct.ptree_mask*, %struct.ptree_mask** %57, align 8
  %59 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %58, i64 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i64 0, i32 1
  %62 = load %struct.ptree_mask*, %struct.ptree_mask** %61, align 8
  %63 = zext i32 %.03 to i64
  %64 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %62, i64 %63, i32 1
  store i8* %60, i8** %64, align 8
  %65 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 1
  %66 = bitcast %struct.ptree_mask** %65 to i8**
  %67 = load i8*, i8** %66, align 8
  call void @free(i8* noundef %67) #6
  %68 = bitcast %struct.ptree* %0 to i8*
  call void @free(i8* noundef %68) #6
  br label %166

69:                                               ; preds = %45
  br label %70

70:                                               ; preds = %69
  %71 = add nuw nsw i32 %.03, 1
  br label %40, !llvm.loop !6

72:                                               ; preds = %40
  %73 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i64 0, i32 2
  %74 = load i8, i8* %73, align 8
  %75 = zext i8 %74 to i64
  %76 = shl nuw nsw i64 %75, 4
  %77 = add nuw nsw i64 %76, 16
  %78 = call noalias i8* @malloc(i64 noundef %77) #6
  %79 = bitcast i8* %78 to %struct.ptree_mask*
  br label %80

80:                                               ; preds = %111, %72
  %.05 = phi %struct.ptree_mask* [ %79, %72 ], [ %112, %111 ]
  %.14 = phi i32 [ 0, %72 ], [ %.2, %111 ]
  %.01 = phi i32 [ 0, %72 ], [ %.1, %111 ]
  %81 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i64 0, i32 2
  %82 = load i8, i8* %81, align 8
  %83 = zext i8 %82 to i32
  %84 = icmp slt i32 %.14, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 1
  %87 = load %struct.ptree_mask*, %struct.ptree_mask** %86, align 8
  %88 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %87, i64 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i64 0, i32 1
  %91 = load %struct.ptree_mask*, %struct.ptree_mask** %90, align 8
  %92 = sext i32 %.14 to i64
  %93 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %91, i64 %92, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ugt i64 %89, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %85
  %97 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i64 0, i32 1
  %98 = load %struct.ptree_mask*, %struct.ptree_mask** %97, align 8
  %99 = sext i32 %.14 to i64
  %100 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %98, i64 %99
  %101 = bitcast %struct.ptree_mask* %100 to i8*
  %102 = bitcast %struct.ptree_mask* %.05 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %102, i8* noundef nonnull align 1 dereferenceable(16) %101, i64 16, i1 false)
  %103 = add nsw i32 %.14, 1
  br label %110

104:                                              ; preds = %85
  %105 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 1
  %106 = bitcast %struct.ptree_mask** %105 to i8**
  %107 = load i8*, i8** %106, align 8
  %108 = bitcast %struct.ptree_mask* %.05 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %108, i8* noundef nonnull align 1 dereferenceable(16) %107, i64 16, i1 false)
  %109 = bitcast i8* %107 to i64*
  store i64 4294967295, i64* %109, align 8
  br label %110

110:                                              ; preds = %104, %96
  %.2 = phi i32 [ %103, %96 ], [ %.14, %104 ]
  %.1 = phi i32 [ %.01, %96 ], [ 1, %104 ]
  br label %111

111:                                              ; preds = %110
  %112 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %.05, i64 1
  br label %80, !llvm.loop !7

113:                                              ; preds = %80
  %.not11 = icmp eq i32 %.01, 0
  br i1 %.not11, label %114, label %119

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 1
  %116 = bitcast %struct.ptree_mask** %115 to i8**
  %117 = load i8*, i8** %116, align 8
  %118 = bitcast %struct.ptree_mask* %.05 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %118, i8* noundef nonnull align 1 dereferenceable(16) %117, i64 16, i1 false)
  br label %119

119:                                              ; preds = %114, %113
  %120 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 1
  %121 = bitcast %struct.ptree_mask** %120 to i8**
  %122 = load i8*, i8** %121, align 8
  call void @free(i8* noundef %122) #6
  %123 = bitcast %struct.ptree* %0 to i8*
  call void @free(i8* noundef %123) #6
  %124 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i64 0, i32 2
  %125 = load i8, i8* %124, align 8
  %126 = add i8 %125, 1
  store i8 %126, i8* %124, align 8
  %127 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i64 0, i32 1
  %128 = bitcast %struct.ptree_mask** %127 to i8**
  %129 = load i8*, i8** %128, align 8
  call void @free(i8* noundef %129) #6
  %130 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i64 0, i32 1
  %131 = bitcast %struct.ptree_mask** %130 to i8**
  store i8* %78, i8** %131, align 8
  br label %166

132:                                              ; preds = %33
  br label %133

133:                                              ; preds = %146, %132
  %.3 = phi i32 [ 1, %132 ], [ %147, %146 ]
  %134 = icmp ult i32 %.3, 32
  br i1 %134, label %135, label %143

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @bit(i32 noundef %.3, i64 noundef %137)
  %139 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i64 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @bit(i32 noundef %.3, i64 noundef %140)
  %142 = icmp eq i64 %138, %141
  br label %143

143:                                              ; preds = %135, %133
  %144 = phi i1 [ false, %133 ], [ %142, %135 ]
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  br label %146

146:                                              ; preds = %145
  %147 = add nuw nsw i32 %.3, 1
  br label %133, !llvm.loop !8

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.ptree, %struct.ptree* %1, i64 0, i32 3
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @bit(i32 noundef %151, i64 noundef %153)
  %.not10 = icmp eq i64 %154, 0
  br i1 %.not10, label %160, label %155

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.ptree, %struct.ptree* %1, i64 0, i32 5
  %157 = load %struct.ptree*, %struct.ptree** %156, align 8
  %158 = call %struct.ptree* @insertR(%struct.ptree* noundef %157, %struct.ptree* noundef nonnull %0, i32 noundef %.3, %struct.ptree* noundef nonnull %1)
  %159 = getelementptr inbounds %struct.ptree, %struct.ptree* %1, i64 0, i32 5
  store %struct.ptree* %158, %struct.ptree** %159, align 8
  br label %165

160:                                              ; preds = %148
  %161 = getelementptr inbounds %struct.ptree, %struct.ptree* %1, i64 0, i32 4
  %162 = load %struct.ptree*, %struct.ptree** %161, align 8
  %163 = call %struct.ptree* @insertR(%struct.ptree* noundef %162, %struct.ptree* noundef nonnull %0, i32 noundef %.3, %struct.ptree* noundef nonnull %1)
  %164 = getelementptr inbounds %struct.ptree, %struct.ptree* %1, i64 0, i32 4
  store %struct.ptree* %163, %struct.ptree** %164, align 8
  br label %165

165:                                              ; preds = %160, %155
  br label %166

166:                                              ; preds = %165, %119, %56, %7
  %.0 = phi %struct.ptree* [ %28, %56 ], [ %28, %119 ], [ %0, %165 ], [ null, %7 ]
  ret %struct.ptree* %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i64 @bit(i32 noundef %0, i64 noundef %1) #1 {
  %3 = lshr i32 -2147483648, %0
  %4 = sext i32 %3 to i64
  %5 = and i64 %4, %1
  ret i64 %5
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @bcopy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal %struct.ptree* @insertR(%struct.ptree* noundef %0, %struct.ptree* noundef %1, i32 noundef %2, %struct.ptree* nocapture noundef readonly %3) #3 {
  %5 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 3
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %.not = icmp slt i32 %7, %2
  br i1 %.not, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 3
  %10 = load i8, i8* %9, align 1
  %11 = getelementptr inbounds %struct.ptree, %struct.ptree* %3, i64 0, i32 3
  %12 = load i8, i8* %11, align 1
  %.not1 = icmp sgt i8 %10, %12
  br i1 %.not1, label %32, label %13

13:                                               ; preds = %8, %4
  %14 = trunc i32 %2 to i8
  %15 = getelementptr inbounds %struct.ptree, %struct.ptree* %1, i64 0, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.ptree, %struct.ptree* %1, i64 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @bit(i32 noundef %2, i64 noundef %17)
  %.not3 = icmp eq i64 %18, 0
  br i1 %.not3, label %20, label %19

19:                                               ; preds = %13
  br label %21

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %19
  %22 = phi %struct.ptree* [ %0, %19 ], [ %1, %20 ]
  %23 = getelementptr inbounds %struct.ptree, %struct.ptree* %1, i64 0, i32 4
  store %struct.ptree* %22, %struct.ptree** %23, align 8
  %24 = getelementptr inbounds %struct.ptree, %struct.ptree* %1, i64 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @bit(i32 noundef %2, i64 noundef %25)
  %.not4 = icmp eq i64 %26, 0
  br i1 %.not4, label %28, label %27

27:                                               ; preds = %21
  br label %29

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %27
  %30 = phi %struct.ptree* [ %1, %27 ], [ %0, %28 ]
  %31 = getelementptr inbounds %struct.ptree, %struct.ptree* %1, i64 0, i32 5
  store %struct.ptree* %30, %struct.ptree** %31, align 8
  br label %50

32:                                               ; preds = %8
  %33 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 3
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = getelementptr inbounds %struct.ptree, %struct.ptree* %1, i64 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @bit(i32 noundef %35, i64 noundef %37)
  %.not2 = icmp eq i64 %38, 0
  br i1 %.not2, label %44, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 5
  %41 = load %struct.ptree*, %struct.ptree** %40, align 8
  %42 = call %struct.ptree* @insertR(%struct.ptree* noundef %41, %struct.ptree* noundef %1, i32 noundef %2, %struct.ptree* noundef %0)
  %43 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 5
  store %struct.ptree* %42, %struct.ptree** %43, align 8
  br label %49

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 4
  %46 = load %struct.ptree*, %struct.ptree** %45, align 8
  %47 = call %struct.ptree* @insertR(%struct.ptree* noundef %46, %struct.ptree* noundef %1, i32 noundef %2, %struct.ptree* noundef %0)
  %48 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 4
  store %struct.ptree* %47, %struct.ptree** %48, align 8
  br label %49

49:                                               ; preds = %44, %39
  br label %50

50:                                               ; preds = %49, %29
  %.0 = phi %struct.ptree* [ %1, %29 ], [ %0, %49 ]
  ret %struct.ptree* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pat_remove(%struct.ptree* noundef readonly %0, %struct.ptree* noundef %1) #0 {
  %.not = icmp eq %struct.ptree* %0, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 1
  %5 = load %struct.ptree_mask*, %struct.ptree_mask** %4, align 8
  %.not9 = icmp eq %struct.ptree_mask* %5, null
  br i1 %.not9, label %7, label %6

6:                                                ; preds = %3
  br i1 undef, label %8, label %7

7:                                                ; preds = %6, %3, %2
  br label %210

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %22, %8
  %.06 = phi %struct.ptree* [ %1, %8 ], [ %21, %22 ]
  %.04 = phi %struct.ptree* [ %1, %8 ], [ %.06, %22 ]
  %10 = getelementptr inbounds %struct.ptree, %struct.ptree* %.06, i64 0, i32 3
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @bit(i32 noundef %12, i64 noundef %14)
  %.not10 = icmp eq i64 %15, 0
  br i1 %.not10, label %18, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ptree, %struct.ptree* %.06, i64 0, i32 5
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.ptree, %struct.ptree* %.06, i64 0, i32 4
  br label %20

20:                                               ; preds = %18, %16
  %.in = phi %struct.ptree** [ %17, %16 ], [ %19, %18 ]
  %21 = load %struct.ptree*, %struct.ptree** %.in, align 8
  br label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 3
  %24 = load i8, i8* %23, align 1
  %25 = icmp slt i8 %11, %24
  br i1 %25, label %9, label %26, !llvm.loop !9

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 0
  %30 = load i64, i64* %29, align 8
  %.not11 = icmp eq i64 %28, %30
  br i1 %.not11, label %32, label %31

31:                                               ; preds = %26
  br label %210

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 2
  %34 = load i8, i8* %33, align 8
  %35 = icmp eq i8 %34, 1
  br i1 %35, label %36, label %141

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 3
  %38 = load i8, i8* %37, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %210

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 1
  %43 = load %struct.ptree_mask*, %struct.ptree_mask** %42, align 8
  %44 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %43, i64 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 1
  %47 = load %struct.ptree_mask*, %struct.ptree_mask** %46, align 8
  %48 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %47, i64 0, i32 0
  %49 = load i64, i64* %48, align 8
  %.not14 = icmp eq i64 %45, %49
  br i1 %.not14, label %51, label %50

50:                                               ; preds = %41
  br label %210

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %65, %51
  %.05 = phi %struct.ptree* [ %.06, %51 ], [ %64, %65 ]
  %53 = getelementptr inbounds %struct.ptree, %struct.ptree* %.05, i64 0, i32 3
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = getelementptr inbounds %struct.ptree, %struct.ptree* %.06, i64 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @bit(i32 noundef %55, i64 noundef %57)
  %.not15 = icmp eq i64 %58, 0
  br i1 %.not15, label %61, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.ptree, %struct.ptree* %.05, i64 0, i32 5
  br label %63

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.ptree, %struct.ptree* %.05, i64 0, i32 4
  br label %63

63:                                               ; preds = %61, %59
  %.in16 = phi %struct.ptree** [ %60, %59 ], [ %62, %61 ]
  %64 = load %struct.ptree*, %struct.ptree** %.in16, align 8
  br label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.ptree, %struct.ptree* %64, i64 0, i32 3
  %67 = load i8, i8* %66, align 1
  %68 = icmp slt i8 %54, %67
  br i1 %68, label %52, label %69, !llvm.loop !10

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ptree, %struct.ptree* %.05, i64 0, i32 3
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = getelementptr inbounds %struct.ptree, %struct.ptree* %.06, i64 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @bit(i32 noundef %72, i64 noundef %74)
  %.not17 = icmp eq i64 %75, 0
  br i1 %.not17, label %78, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.ptree, %struct.ptree* %.05, i64 0, i32 5
  store %struct.ptree* %21, %struct.ptree** %77, align 8
  br label %80

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.ptree, %struct.ptree* %.05, i64 0, i32 4
  store %struct.ptree* %21, %struct.ptree** %79, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = getelementptr inbounds %struct.ptree, %struct.ptree* %.04, i64 0, i32 3
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @bit(i32 noundef %83, i64 noundef %85)
  %.not18 = icmp eq i64 %86, 0
  br i1 %.not18, label %101, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.ptree, %struct.ptree* %.06, i64 0, i32 3
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @bit(i32 noundef %90, i64 noundef %92)
  %.not23 = icmp eq i64 %93, 0
  br i1 %.not23, label %96, label %94

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.ptree, %struct.ptree* %.06, i64 0, i32 4
  br label %98

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.ptree, %struct.ptree* %.06, i64 0, i32 5
  br label %98

98:                                               ; preds = %96, %94
  %.in24 = phi %struct.ptree** [ %95, %94 ], [ %97, %96 ]
  %99 = load %struct.ptree*, %struct.ptree** %.in24, align 8
  %100 = getelementptr inbounds %struct.ptree, %struct.ptree* %.04, i64 0, i32 5
  store %struct.ptree* %99, %struct.ptree** %100, align 8
  br label %115

101:                                              ; preds = %80
  %102 = getelementptr inbounds %struct.ptree, %struct.ptree* %.06, i64 0, i32 3
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @bit(i32 noundef %104, i64 noundef %106)
  %.not19 = icmp eq i64 %107, 0
  br i1 %.not19, label %110, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.ptree, %struct.ptree* %.06, i64 0, i32 4
  br label %112

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.ptree, %struct.ptree* %.06, i64 0, i32 5
  br label %112

112:                                              ; preds = %110, %108
  %.in20 = phi %struct.ptree** [ %109, %108 ], [ %111, %110 ]
  %113 = load %struct.ptree*, %struct.ptree** %.in20, align 8
  %114 = getelementptr inbounds %struct.ptree, %struct.ptree* %.04, i64 0, i32 4
  store %struct.ptree* %113, %struct.ptree** %114, align 8
  br label %115

115:                                              ; preds = %112, %98
  %116 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 1
  %117 = load %struct.ptree_mask*, %struct.ptree_mask** %116, align 8
  %118 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %117, i64 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %.not21 = icmp eq i8* %119, null
  br i1 %.not21, label %125, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 1
  %122 = load %struct.ptree_mask*, %struct.ptree_mask** %121, align 8
  %123 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %122, i64 0, i32 1
  %124 = load i8*, i8** %123, align 8
  call void @free(i8* noundef %124) #6
  br label %125

125:                                              ; preds = %120, %115
  %126 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 1
  %127 = bitcast %struct.ptree_mask** %126 to i8**
  %128 = load i8*, i8** %127, align 8
  call void @free(i8* noundef %128) #6
  %.not22 = icmp eq %struct.ptree* %21, %.06
  br i1 %.not22, label %139, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.ptree, %struct.ptree* %.06, i64 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 0
  store i64 %131, i64* %132, align 8
  %133 = getelementptr inbounds %struct.ptree, %struct.ptree* %.06, i64 0, i32 1
  %134 = load %struct.ptree_mask*, %struct.ptree_mask** %133, align 8
  %135 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 1
  store %struct.ptree_mask* %134, %struct.ptree_mask** %135, align 8
  %136 = getelementptr inbounds %struct.ptree, %struct.ptree* %.06, i64 0, i32 2
  %137 = load i8, i8* %136, align 8
  %138 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 2
  store i8 %137, i8* %138, align 8
  br label %139

139:                                              ; preds = %129, %125
  %140 = bitcast %struct.ptree* %.06 to i8*
  call void @free(i8* noundef %140) #6
  br label %210

141:                                              ; preds = %32
  br label %142

142:                                              ; preds = %160, %141
  %.01 = phi i32 [ 0, %141 ], [ %161, %160 ]
  %143 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 2
  %144 = load i8, i8* %143, align 8
  %145 = zext i8 %144 to i32
  %146 = icmp ult i32 %.01, %145
  br i1 %146, label %147, label %.loopexit

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 1
  %149 = load %struct.ptree_mask*, %struct.ptree_mask** %148, align 8
  %150 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %149, i64 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 1
  %153 = load %struct.ptree_mask*, %struct.ptree_mask** %152, align 8
  %154 = zext i32 %.01 to i64
  %155 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %153, i64 %154, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %151, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %162

159:                                              ; preds = %147
  br label %160

160:                                              ; preds = %159
  %161 = add nuw nsw i32 %.01, 1
  br label %142, !llvm.loop !11

.loopexit:                                        ; preds = %142
  br label %162

162:                                              ; preds = %.loopexit, %158
  %163 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 2
  %164 = load i8, i8* %163, align 8
  %165 = zext i8 %164 to i32
  %.not12 = icmp ult i32 %.01, %165
  br i1 %.not12, label %167, label %166

166:                                              ; preds = %162
  br label %210

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 2
  %169 = load i8, i8* %168, align 8
  %170 = zext i8 %169 to i64
  %171 = shl nuw nsw i64 %170, 4
  %172 = add nsw i64 %171, -16
  %173 = call noalias i8* @malloc(i64 noundef %172) #6
  %174 = bitcast i8* %173 to %struct.ptree_mask*
  br label %175

175:                                              ; preds = %199, %167
  %.02 = phi %struct.ptree_mask* [ %174, %167 ], [ %.13, %199 ]
  %.1 = phi i32 [ 0, %167 ], [ %200, %199 ]
  %176 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 2
  %177 = load i8, i8* %176, align 8
  %178 = zext i8 %177 to i32
  %179 = icmp ult i32 %.1, %178
  br i1 %179, label %180, label %201

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 1
  %182 = load %struct.ptree_mask*, %struct.ptree_mask** %181, align 8
  %183 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %182, i64 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 1
  %186 = load %struct.ptree_mask*, %struct.ptree_mask** %185, align 8
  %187 = zext i32 %.1 to i64
  %188 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %186, i64 %187, i32 0
  %189 = load i64, i64* %188, align 8
  %.not13 = icmp eq i64 %184, %189
  br i1 %.not13, label %198, label %190

190:                                              ; preds = %180
  %191 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 1
  %192 = load %struct.ptree_mask*, %struct.ptree_mask** %191, align 8
  %193 = zext i32 %.1 to i64
  %194 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %192, i64 %193
  %195 = bitcast %struct.ptree_mask* %194 to i8*
  %196 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %.02, i64 1
  %197 = bitcast %struct.ptree_mask* %.02 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %197, i8* noundef nonnull align 1 dereferenceable(16) %195, i64 16, i1 false)
  br label %198

198:                                              ; preds = %190, %180
  %.13 = phi %struct.ptree_mask* [ %196, %190 ], [ %.02, %180 ]
  br label %199

199:                                              ; preds = %198
  %200 = add nuw nsw i32 %.1, 1
  br label %175, !llvm.loop !12

201:                                              ; preds = %175
  %202 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 2
  %203 = load i8, i8* %202, align 8
  %204 = add i8 %203, -1
  store i8 %204, i8* %202, align 8
  %205 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 1
  %206 = bitcast %struct.ptree_mask** %205 to i8**
  %207 = load i8*, i8** %206, align 8
  call void @free(i8* noundef %207) #6
  %208 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 1
  %209 = bitcast %struct.ptree_mask** %208 to i8**
  store i8* %173, i8** %209, align 8
  br label %210

210:                                              ; preds = %201, %166, %139, %50, %40, %31, %7
  %.0 = phi i32 [ 0, %31 ], [ 0, %40 ], [ 0, %50 ], [ 1, %139 ], [ 0, %166 ], [ 1, %201 ], [ 0, %7 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local %struct.ptree* @pat_search(i64 noundef %0, %struct.ptree* noundef readonly %1) #4 {
  %.not = icmp eq %struct.ptree* %1, null
  br i1 %.not, label %3, label %4

3:                                                ; preds = %2
  br label %43

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %26, %4
  %.02 = phi %struct.ptree* [ null, %4 ], [ %.1, %26 ]
  %.01 = phi %struct.ptree* [ %1, %4 ], [ %25, %26 ]
  %6 = getelementptr inbounds %struct.ptree, %struct.ptree* %.01, i64 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.ptree, %struct.ptree* %.01, i64 0, i32 1
  %9 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 8
  %10 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %9, i64 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = and i64 %11, %0
  %13 = icmp eq i64 %7, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14, %5
  %.1 = phi %struct.ptree* [ %.01, %14 ], [ %.02, %5 ]
  %16 = getelementptr inbounds %struct.ptree, %struct.ptree* %.01, i64 0, i32 3
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = call i64 @bit(i32 noundef %18, i64 noundef %0)
  %.not3 = icmp eq i64 %19, 0
  br i1 %.not3, label %22, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ptree, %struct.ptree* %.01, i64 0, i32 5
  br label %24

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.ptree, %struct.ptree* %.01, i64 0, i32 4
  br label %24

24:                                               ; preds = %22, %20
  %.in = phi %struct.ptree** [ %21, %20 ], [ %23, %22 ]
  %25 = load %struct.ptree*, %struct.ptree** %.in, align 8
  br label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.ptree, %struct.ptree* %25, i64 0, i32 3
  %28 = load i8, i8* %27, align 1
  %29 = icmp slt i8 %17, %28
  br i1 %29, label %5, label %30, !llvm.loop !13

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ptree, %struct.ptree* %25, i64 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.ptree, %struct.ptree* %25, i64 0, i32 1
  %34 = load %struct.ptree_mask*, %struct.ptree_mask** %33, align 8
  %35 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %34, i64 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = and i64 %36, %0
  %38 = icmp eq i64 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %41

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %39
  %42 = phi %struct.ptree* [ %25, %39 ], [ %.1, %40 ]
  br label %43

43:                                               ; preds = %41, %3
  %.0 = phi %struct.ptree* [ %42, %41 ], [ null, %3 ]
  ret %struct.ptree* %.0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }

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
