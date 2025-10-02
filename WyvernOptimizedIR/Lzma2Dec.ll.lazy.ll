; ModuleID = './Lzma2Dec.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Lzma2Dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CLzma2Dec = type { %struct.CLzmaDec, i32, i32, i32, i8, i32, i32, i32 }
%struct.CLzmaDec = type { %struct._CLzmaProps, i16*, i8*, i8*, i32, i32, i64, i64, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, [20 x i8] }
%struct._CLzmaProps = type { i32, i32, i32, i32 }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%_wyvern_thunk_type.0 = type { i8* (%_wyvern_thunk_type.0*)*, i8*, i1 }
%_wyvern_thunk_type.2 = type { i8* (%_wyvern_thunk_type.2*)*, i8*, i1 }
%_wyvern_thunk_type.10 = type { i8* (%_wyvern_thunk_type.10*)*, i8*, i1 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Lzma2Dec_AllocateProbs(%struct.CLzma2Dec* noundef %0, i8 noundef zeroext %1, %struct.ISzAlloc* noundef %2) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %4 = alloca [5 x i8], align 1
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i8* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_Lzma2Dec_AllocateProbs_509397683, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %5 = call i32 @_wyvern_calleeclone_Lzma2Dec_GetOldProps_1888110833(i8 noundef zeroext %1, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %3
  br label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %10 = call i32 @LzmaDec_AllocateProbs(%struct.CLzmaDec* noundef %8, i8* noundef nonnull %9, i32 noundef 5, %struct.ISzAlloc* noundef %2) #7
  br label %11

11:                                               ; preds = %7, %6
  %.0 = phi i32 [ %5, %6 ], [ %10, %7 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @Lzma2Dec_GetOldProps(i8 noundef zeroext %0, i8* nocapture noundef writeonly %1) #1 {
  %3 = icmp ugt i8 %0, 40
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %28

5:                                                ; preds = %2
  %6 = icmp eq i8 %0, 40
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %15

8:                                                ; preds = %5
  %9 = and i8 %0, 1
  %10 = or i8 %9, 2
  %11 = zext i8 %10 to i32
  %12 = lshr i8 %0, 1
  %narrow = add nuw i8 %12, 11
  %13 = zext i8 %narrow to i32
  %14 = shl i32 %11, %13
  br label %15

15:                                               ; preds = %8, %7
  %16 = phi i32 [ -1, %7 ], [ %14, %8 ]
  store i8 4, i8* %1, align 1
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds i8, i8* %1, i64 1
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %16, 8
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds i8, i8* %1, i64 2
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %16, 16
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds i8, i8* %1, i64 3
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %16, 24
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds i8, i8* %1, i64 4
  store i8 %26, i8* %27, align 1
  br label %28

28:                                               ; preds = %15, %4
  %.0 = phi i32 [ 4, %4 ], [ 0, %15 ]
  ret i32 %.0
}

declare dso_local i32 @LzmaDec_AllocateProbs(%struct.CLzmaDec* noundef, i8* noundef, i32 noundef, %struct.ISzAlloc* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Lzma2Dec_Allocate(%struct.CLzma2Dec* noundef %0, i8 noundef zeroext %1, %struct.ISzAlloc* noundef %2) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.2, align 8
  %4 = alloca [5 x i8], align 1
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 0
  store i8* (%_wyvern_thunk_type.2*)* @_wyvern_slice_memo_Lzma2Dec_Allocate_168693216, i8* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %5 = call i32 @_wyvern_calleeclone_Lzma2Dec_GetOldProps_1570292551(i8 noundef zeroext %1, %_wyvern_thunk_type.2* noundef nonnull %_wyvern_thunk_alloca)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %3
  br label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %10 = call i32 @LzmaDec_Allocate(%struct.CLzmaDec* noundef %8, i8* noundef nonnull %9, i32 noundef 5, %struct.ISzAlloc* noundef %2) #7
  br label %11

11:                                               ; preds = %7, %6
  %.0 = phi i32 [ %5, %6 ], [ %10, %7 ]
  ret i32 %.0
}

declare dso_local i32 @LzmaDec_Allocate(%struct.CLzmaDec* noundef, i8* noundef, i32 noundef, %struct.ISzAlloc* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Lzma2Dec_Init(%struct.CLzma2Dec* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 3
  store i32 0, i32* %2, align 8
  %3 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 5
  store i32 1, i32* %3, align 8
  %4 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 6
  store i32 1, i32* %4, align 4
  %5 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 7
  store i32 1, i32* %5, align 8
  %6 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0
  call void @LzmaDec_Init(%struct.CLzmaDec* noundef %6) #7
  ret void
}

declare dso_local void @LzmaDec_Init(%struct.CLzmaDec* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Lzma2Dec_DecodeToDic(%struct.CLzma2Dec* noundef %0, i64 noundef %1, i8* noundef %2, i64* nocapture noundef %3, i32 noundef %4, i32* noundef %5) #0 {
  %7 = alloca i64, align 8
  %8 = load i64, i64* %3, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %.backedge, %6
  %.03 = phi i8* [ %2, %6 ], [ %.03.be, %.backedge ]
  %10 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 3
  %11 = load i32, i32* %10, align 8
  %.not = icmp eq i32 %11, 8
  br i1 %.not, label %182, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %183

19:                                               ; preds = %12
  %20 = icmp eq i64 %14, %1
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = icmp eq i32 %4, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  store i32 2, i32* %5, align 4
  br label %183

24:                                               ; preds = %21, %19
  %25 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 3
  %26 = load i32, i32* %25, align 8
  %.not6 = icmp eq i32 %26, 6
  br i1 %.not6, label %41, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 3
  %29 = load i32, i32* %28, align 8
  %.not15 = icmp eq i32 %29, 7
  br i1 %.not15, label %41, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %3, align 8
  %32 = icmp eq i64 %31, %8
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 3, i32* %5, align 4
  br label %183

34:                                               ; preds = %30
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  %37 = getelementptr inbounds i8, i8* %.03, i64 1
  %38 = load i8, i8* %.03, align 1
  %39 = call i32 @Lzma2Dec_UpdateState(%struct.CLzma2Dec* noundef %0, i8 noundef zeroext %38)
  %40 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 3
  store i32 %39, i32* %40, align 8
  br label %.backedge

.backedge:                                        ; preds = %34, %181
  %.03.be = phi i8* [ %37, %34 ], [ %.1, %181 ]
  br label %9, !llvm.loop !4

41:                                               ; preds = %27, %24
  %42 = sub i64 %1, %14
  %43 = load i64, i64* %3, align 8
  %44 = sub i64 %8, %43
  store i64 %44, i64* %7, align 8
  %45 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  %.not7 = icmp ult i64 %42, %47
  br i1 %.not7, label %52, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = zext i32 %50 to i64
  br label %52

52:                                               ; preds = %48, %41
  %.02 = phi i64 [ %51, %48 ], [ %42, %41 ]
  %.01 = phi i32 [ 1, %48 ], [ 0, %41 ]
  %53 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 4
  %54 = load i8, i8* %53, align 4
  %55 = icmp sgt i8 %54, -1
  br i1 %55, label %56, label %101

56:                                               ; preds = %52
  %57 = load i64, i64* %3, align 8
  %58 = icmp eq i64 %57, %8
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 3, i32* %5, align 4
  br label %183

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 6
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 4
  %66 = load i8, i8* %65, align 4
  %67 = icmp eq i8 %66, 1
  %68 = zext i1 %67 to i32
  br i1 %67, label %69, label %72

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 6
  store i32 1, i32* %70, align 4
  %71 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 7
  store i32 1, i32* %71, align 8
  br label %77

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 5
  %74 = load i32, i32* %73, align 8
  %.not14 = icmp eq i32 %74, 0
  br i1 %.not14, label %76, label %75

75:                                               ; preds = %72
  br label %183

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %69
  %78 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 5
  store i32 0, i32* %78, align 8
  %79 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0
  call void @LzmaDec_InitDicAndState(%struct.CLzmaDec* noundef %79, i32 noundef %68, i32 noundef 0) #7
  br label %80

80:                                               ; preds = %77, %60
  %81 = load i64, i64* %7, align 8
  %82 = icmp ugt i64 %81, %.02
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i64 %.02, i64* %7, align 8
  br label %84

84:                                               ; preds = %83, %80
  %85 = load i64, i64* %7, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %183

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0
  %90 = load i64, i64* %7, align 8
  call void @LzmaDec_UpdateWithUncompressed(%struct.CLzmaDec* noundef %89, i8* noundef %.03, i64 noundef %90)
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %3, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %3, align 8
  %94 = trunc i64 %91 to i32
  %95 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = sub i32 %96, %94
  store i32 %97, i32* %95, align 4
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 0, i32 7
  %100 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 3
  store i32 %99, i32* %100, align 8
  br label %181

101:                                              ; preds = %52
  %102 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 6
  br i1 %104, label %105, label %127

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 4
  %107 = load i8, i8* %106, align 4
  %108 = lshr i8 %107, 5
  %109 = and i8 %108, 3
  %110 = icmp eq i8 %109, 3
  %111 = zext i1 %110 to i32
  %112 = icmp ne i8 %109, 0
  %113 = zext i1 %112 to i32
  br i1 %110, label %117, label %114

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 5
  %116 = load i32, i32* %115, align 8
  %.not12 = icmp eq i32 %116, 0
  br i1 %.not12, label %117, label %121

117:                                              ; preds = %114, %105
  br i1 %112, label %122, label %118

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 6
  %120 = load i32, i32* %119, align 4
  %.not13 = icmp eq i32 %120, 0
  br i1 %.not13, label %122, label %121

121:                                              ; preds = %118, %114
  br label %183

122:                                              ; preds = %118, %117
  %123 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0
  call void @LzmaDec_InitDicAndState(%struct.CLzmaDec* noundef %123, i32 noundef %111, i32 noundef %113) #7
  %124 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 5
  store i32 0, i32* %124, align 8
  %125 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 6
  store i32 0, i32* %125, align 4
  %126 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 3
  store i32 7, i32* %126, align 8
  br label %127

127:                                              ; preds = %122, %101
  %128 = load i64, i64* %7, align 8
  %129 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = zext i32 %130 to i64
  %132 = icmp ugt i64 %128, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %7, align 8
  br label %137

137:                                              ; preds = %133, %127
  %138 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0
  %139 = add i64 %14, %.02
  %140 = call i32 @LzmaDec_DecodeToDic(%struct.CLzmaDec* noundef %138, i64 noundef %139, i8* noundef %.03, i64* noundef nonnull %7, i32 noundef %.01, i32* noundef nonnull %5) #7
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* %3, align 8
  %143 = add i64 %142, %141
  store i64 %143, i64* %3, align 8
  %144 = trunc i64 %141 to i32
  %145 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = sub i32 %146, %144
  store i32 %147, i32* %145, align 8
  %148 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = sub i64 %149, %14
  %151 = trunc i64 %150 to i32
  %152 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = sub i32 %153, %151
  store i32 %154, i32* %152, align 4
  %.not8 = icmp eq i32 %140, 0
  br i1 %.not8, label %156, label %155

155:                                              ; preds = %137
  br label %183

156:                                              ; preds = %137
  %157 = load i32, i32* %5, align 4
  %158 = icmp eq i32 %157, 3
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %183

160:                                              ; preds = %156
  %161 = load i64, i64* %7, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %160
  %164 = icmp eq i64 %150, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %163
  %166 = load i32, i32* %5, align 4
  %.not9 = icmp eq i32 %166, 4
  br i1 %.not9, label %167, label %173

167:                                              ; preds = %165
  %168 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 2
  %169 = load i32, i32* %168, align 4
  %.not10 = icmp eq i32 %169, 0
  br i1 %.not10, label %170, label %173

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 1
  %172 = load i32, i32* %171, align 8
  %.not11 = icmp eq i32 %172, 0
  br i1 %.not11, label %174, label %173

173:                                              ; preds = %170, %167, %165
  br label %183

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 3
  store i32 0, i32* %175, align 8
  br label %176

176:                                              ; preds = %174, %163, %160
  %177 = load i32, i32* %5, align 4
  %178 = icmp eq i32 %177, 4
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  store i32 2, i32* %5, align 4
  br label %180

180:                                              ; preds = %179, %176
  br label %181

181:                                              ; preds = %180, %88
  %.pn = phi i64 [ %91, %88 ], [ %141, %180 ]
  %.1 = getelementptr inbounds i8, i8* %.03, i64 %.pn
  br label %.backedge

182:                                              ; preds = %9
  store i32 1, i32* %5, align 4
  br label %183

183:                                              ; preds = %182, %173, %159, %155, %121, %87, %75, %59, %33, %23, %18
  %.0 = phi i32 [ 1, %18 ], [ 0, %23 ], [ 0, %33 ], [ 0, %59 ], [ 1, %87 ], [ 1, %75 ], [ %140, %155 ], [ %140, %159 ], [ 1, %173 ], [ 1, %121 ], [ 0, %182 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @Lzma2Dec_UpdateState(%struct.CLzma2Dec* noundef %0, i8 noundef zeroext %1) #3 {
  %3 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 3
  %4 = load i32, i32* %3, align 8
  switch i32 %4, label %86 [
    i32 0, label %5
    i32 1, label %29
    i32 2, label %35
    i32 3, label %46
    i32 4, label %50
    i32 5, label %67
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 4
  store i8 %1, i8* %6, align 4
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %87

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 4
  %11 = load i8, i8* %10, align 4
  %12 = icmp sgt i8 %11, -1
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 4
  %15 = load i8, i8* %14, align 4
  %16 = and i8 %15, 127
  %17 = icmp ugt i8 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %87

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 2
  store i32 0, i32* %20, align 4
  br label %28

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 4
  %23 = load i8, i8* %22, align 4
  %24 = and i8 %23, 31
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 16
  %27 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 2
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %21, %19
  br label %87

29:                                               ; preds = %2
  %30 = zext i8 %1 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %87

35:                                               ; preds = %2
  %36 = zext i8 %1 to i32
  %37 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  %40 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 2
  %41 = add i32 %39, 1
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 4
  %43 = load i8, i8* %42, align 4
  %44 = icmp sgt i8 %43, -1
  %45 = select i1 %44, i32 6, i32 3
  br label %87

46:                                               ; preds = %2
  %47 = zext i8 %1 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 1
  store i32 %48, i32* %49, align 8
  br label %87

50:                                               ; preds = %2
  %51 = zext i8 %1 to i32
  %52 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %51
  %55 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 1
  %56 = add i32 %54, 1
  store i32 %56, i32* %55, align 8
  %57 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 4
  %58 = load i8, i8* %57, align 4
  %59 = and i8 %58, 64
  %.not = icmp eq i8 %59, 0
  br i1 %.not, label %61, label %60

60:                                               ; preds = %50
  br label %65

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 7
  %63 = load i32, i32* %62, align 8
  %.not1 = icmp eq i32 %63, 0
  %64 = select i1 %.not1, i32 6, i32 9
  br label %65

65:                                               ; preds = %61, %60
  %66 = phi i32 [ 5, %60 ], [ %64, %61 ]
  br label %87

67:                                               ; preds = %2
  %68 = icmp ugt i8 %1, -32
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  br label %87

70:                                               ; preds = %67
  %71 = urem i8 %1, 9
  %72 = zext i8 %71 to i32
  %73 = udiv i8 %1, 9
  %74 = udiv i8 %1, 45
  %75 = zext i8 %74 to i32
  %76 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0, i32 0, i32 2
  store i32 %75, i32* %76, align 8
  %77 = urem i8 %73, 5
  %78 = zext i8 %77 to i32
  %79 = add nuw nsw i32 %72, %78
  %80 = icmp ugt i32 %79, 4
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %87

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0, i32 0, i32 0
  store i32 %72, i32* %83, align 8
  %84 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0, i32 0, i32 1
  store i32 %78, i32* %84, align 4
  %85 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 7
  store i32 0, i32* %85, align 8
  br label %87

86:                                               ; preds = %2
  br label %87

87:                                               ; preds = %86, %82, %81, %69, %65, %46, %35, %29, %28, %18, %8
  %.0 = phi i32 [ 9, %86 ], [ 9, %69 ], [ 9, %81 ], [ 6, %82 ], [ %66, %65 ], [ 4, %46 ], [ %45, %35 ], [ 2, %29 ], [ 8, %8 ], [ 9, %18 ], [ 1, %28 ]
  ret i32 %.0
}

declare dso_local void @LzmaDec_InitDicAndState(%struct.CLzmaDec* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal void @LzmaDec_UpdateWithUncompressed(%struct.CLzmaDec* nocapture noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %0, i64 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i8, i8* %5, i64 %7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %1, i64 %2, i1 false)
  %9 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %0, i64 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %10, %2
  store i64 %11, i64* %9, align 8
  %12 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %0, i64 0, i32 9
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %0, i64 0, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %0, i64 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  %.not = icmp ugt i64 %21, %2
  br i1 %.not, label %26, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %0, i64 0, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %0, i64 0, i32 9
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %15, %3
  %27 = trunc i64 %2 to i32
  %28 = getelementptr inbounds %struct.CLzmaDec, %struct.CLzmaDec* %0, i64 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = add i32 %29, %27
  store i32 %30, i32* %28, align 8
  ret void
}

declare dso_local i32 @LzmaDec_DecodeToDic(%struct.CLzmaDec* noundef, i64 noundef, i8* noundef, i64* noundef, i32 noundef, i32* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Lzma2Dec_DecodeToBuf(%struct.CLzma2Dec* noundef %0, i8* nocapture noundef writeonly %1, i64* nocapture noundef %2, i8* noundef %3, i64* nocapture noundef %4, i32 noundef %5, i32* noundef %6) #0 {
  %8 = alloca i64, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* %4, align 8
  store i64 0, i64* %2, align 8
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %54, %7
  %.06 = phi i64 [ %9, %7 ], [ %45, %54 ]
  %.05 = phi i64 [ %10, %7 ], [ %35, %54 ]
  %.04 = phi i8* [ %3, %7 ], [ %34, %54 ]
  %.02 = phi i8* [ %1, %7 ], [ %44, %54 ]
  store i64 %.05, i64* %8, align 8
  %12 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0, i32 6
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %17, %11
  %20 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %23, %21
  %25 = icmp ugt i64 %.06, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  br label %31

29:                                               ; preds = %19
  %30 = add i64 %21, %.06
  br label %31

31:                                               ; preds = %29, %26
  %.03 = phi i64 [ %28, %26 ], [ %30, %29 ]
  %.01 = phi i32 [ 0, %26 ], [ %5, %29 ]
  %32 = call i32 @Lzma2Dec_DecodeToDic(%struct.CLzma2Dec* noundef %0, i64 noundef %.03, i8* noundef %.04, i64* noundef nonnull %8, i32 noundef %.01, i32* noundef %6)
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i8, i8* %.04, i64 %33
  %35 = sub i64 %.05, %33
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, %33
  store i64 %37, i64* %4, align 8
  %38 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %39, %21
  %41 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %0, i64 0, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.02, i8* align 1 %43, i64 %40, i1 false)
  %44 = getelementptr inbounds i8, i8* %.02, i64 %40
  %45 = sub i64 %.06, %40
  %46 = load i64, i64* %2, align 8
  %47 = add i64 %46, %40
  store i64 %47, i64* %2, align 8
  %.not = icmp eq i32 %32, 0
  br i1 %.not, label %49, label %48

48:                                               ; preds = %31
  br label %55

49:                                               ; preds = %31
  %50 = icmp eq i64 %40, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %49
  %52 = icmp eq i64 %45, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %51, %49
  br label %55

54:                                               ; preds = %51
  br label %11

55:                                               ; preds = %53, %48
  %.0 = phi i32 [ %32, %48 ], [ 0, %53 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Lzma2Decode(i8* noundef %0, i64* nocapture noundef %1, i8* noundef %2, i64* nocapture noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32* noundef %6, %struct.ISzAlloc* noundef %7) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.10, align 8
  %9 = alloca %struct.CLzma2Dec, align 8
  %10 = alloca [5 x i8], align 1
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %9, i64 0, i32 0, i32 2
  store i8* null, i8** %13, align 8
  %14 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %9, i64 0, i32 0, i32 1
  store i16* null, i16** %14, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %1, align 8
  store i32 0, i32* %6, align 4
  %15 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %9, i64 0, i32 0, i32 2
  store i8* %0, i8** %15, align 8
  %16 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %9, i64 0, i32 0, i32 7
  store i64 %11, i64* %16, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunk_alloca, i64 0, i32 0
  store i8* (%_wyvern_thunk_type.10*)* @_wyvern_slice_memo_Lzma2Decode_554419753, i8* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %17 = call i32 @_wyvern_calleeclone_Lzma2Dec_GetOldProps_1895354715(i8 noundef zeroext %4, %_wyvern_thunk_type.10* noundef nonnull %_wyvern_thunk_alloca)
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %19, label %18

18:                                               ; preds = %8
  br label %35

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %9, i64 0, i32 0
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %22 = call i32 @LzmaDec_AllocateProbs(%struct.CLzmaDec* noundef nonnull %20, i8* noundef nonnull %21, i32 noundef 5, %struct.ISzAlloc* noundef %7) #7
  %.not2 = icmp eq i32 %22, 0
  br i1 %.not2, label %24, label %23

23:                                               ; preds = %19
  br label %35

24:                                               ; preds = %19
  store i64 %12, i64* %3, align 8
  %25 = call i32 @Lzma2Dec_DecodeToDic(%struct.CLzma2Dec* noundef nonnull %9, i64 noundef %11, i8* noundef %2, i64* noundef nonnull %3, i32 noundef %5, i32* noundef nonnull %6)
  %26 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %9, i64 0, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %1, align 8
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32, %29, %24
  %.01 = phi i32 [ 6, %32 ], [ %25, %29 ], [ %25, %24 ]
  %34 = getelementptr inbounds %struct.CLzma2Dec, %struct.CLzma2Dec* %9, i64 0, i32 0
  call void @LzmaDec_FreeProbs(%struct.CLzmaDec* noundef nonnull %34, %struct.ISzAlloc* noundef %7) #7
  br label %35

35:                                               ; preds = %33, %23, %18
  %.0 = phi i32 [ %17, %18 ], [ %22, %23 ], [ %.01, %33 ]
  ret i32 %.0
}

declare dso_local void @LzmaDec_FreeProbs(%struct.CLzmaDec* noundef, %struct.ISzAlloc* noundef) #2

; Function Attrs: nounwind readonly willreturn
define i8* @_wyvern_slice_memo_Lzma2Dec_AllocateProbs_509397683(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i8*, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [5 x i8], align 1
  %1 = getelementptr inbounds [5 x i8], [5 x i8]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i8* %1, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @_wyvern_calleeclone_Lzma2Dec_GetOldProps_1888110833(i8 noundef zeroext %0, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr) #1 {
  %2 = icmp ugt i8 %0, 40
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %27

4:                                                ; preds = %1
  %5 = icmp eq i8 %0, 40
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %14

7:                                                ; preds = %4
  %8 = and i8 %0, 1
  %9 = or i8 %8, 2
  %10 = zext i8 %9 to i32
  %11 = lshr i8 %0, 1
  %narrow = add nuw i8 %11, 11
  %12 = zext i8 %narrow to i32
  %13 = shl i32 %10, %12
  br label %14

14:                                               ; preds = %7, %6
  %15 = phi i32 [ -1, %6 ], [ %13, %7 ]
  %_wyvern_thunk_fptr_addr10 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr11 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr10, align 8
  %_wyvern_thunkcall12 = call i8* %_wyvern_thunkfptr11(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #7
  store i8 4, i8* %_wyvern_thunkcall12, align 1
  %16 = trunc i32 %15 to i8
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call i8* %_wyvern_thunkfptr8(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #7
  %17 = getelementptr inbounds i8, i8* %_wyvern_thunkcall9, i64 1
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %15, 8
  %19 = trunc i32 %18 to i8
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call i8* %_wyvern_thunkfptr5(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #7
  %20 = getelementptr inbounds i8, i8* %_wyvern_thunkcall6, i64 2
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %15, 16
  %22 = trunc i32 %21 to i8
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i8* %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #7
  %23 = getelementptr inbounds i8, i8* %_wyvern_thunkcall3, i64 3
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %15, 24
  %25 = trunc i32 %24 to i8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i8* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #7
  %26 = getelementptr inbounds i8, i8* %_wyvern_thunkcall, i64 4
  store i8 %25, i8* %26, align 1
  br label %27

27:                                               ; preds = %14, %3
  %.0 = phi i32 [ 4, %3 ], [ 0, %14 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define i8* @_wyvern_slice_memo_Lzma2Dec_Allocate_168693216(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #6 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i8*, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [5 x i8], align 1
  %1 = getelementptr inbounds [5 x i8], [5 x i8]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i8* %1, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @_wyvern_calleeclone_Lzma2Dec_GetOldProps_1570292551(i8 noundef zeroext %0, %_wyvern_thunk_type.2* noundef %_wyvern_thunkptr) #1 {
  %2 = icmp ugt i8 %0, 40
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %27

4:                                                ; preds = %1
  %5 = icmp eq i8 %0, 40
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %14

7:                                                ; preds = %4
  %8 = and i8 %0, 1
  %9 = or i8 %8, 2
  %10 = zext i8 %9 to i32
  %11 = lshr i8 %0, 1
  %narrow = add nuw i8 %11, 11
  %12 = zext i8 %narrow to i32
  %13 = shl i32 %10, %12
  br label %14

14:                                               ; preds = %7, %6
  %15 = phi i32 [ -1, %6 ], [ %13, %7 ]
  %_wyvern_thunk_fptr_addr10 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr11 = load i8* (%_wyvern_thunk_type.2*)*, i8* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr10, align 8
  %_wyvern_thunkcall12 = call i8* %_wyvern_thunkfptr11(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #7
  store i8 4, i8* %_wyvern_thunkcall12, align 1
  %16 = trunc i32 %15 to i8
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load i8* (%_wyvern_thunk_type.2*)*, i8* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call i8* %_wyvern_thunkfptr8(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #7
  %17 = getelementptr inbounds i8, i8* %_wyvern_thunkcall9, i64 1
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %15, 8
  %19 = trunc i32 %18 to i8
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load i8* (%_wyvern_thunk_type.2*)*, i8* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call i8* %_wyvern_thunkfptr5(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #7
  %20 = getelementptr inbounds i8, i8* %_wyvern_thunkcall6, i64 2
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %15, 16
  %22 = trunc i32 %21 to i8
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i8* (%_wyvern_thunk_type.2*)*, i8* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i8* %_wyvern_thunkfptr2(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #7
  %23 = getelementptr inbounds i8, i8* %_wyvern_thunkcall3, i64 3
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %15, 24
  %25 = trunc i32 %24 to i8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i8* (%_wyvern_thunk_type.2*)*, i8* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i8* %_wyvern_thunkfptr(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #7
  %26 = getelementptr inbounds i8, i8* %_wyvern_thunkcall, i64 4
  store i8 %25, i8* %26, align 1
  br label %27

27:                                               ; preds = %14, %3
  %.0 = phi i32 [ 4, %3 ], [ 0, %14 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define i8* @_wyvern_slice_memo_Lzma2Decode_554419753(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #6 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i8*, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [5 x i8], align 1
  %1 = getelementptr inbounds [5 x i8], [5 x i8]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i8* %1, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @_wyvern_calleeclone_Lzma2Dec_GetOldProps_1895354715(i8 noundef zeroext %0, %_wyvern_thunk_type.10* noundef %_wyvern_thunkptr) #1 {
  %2 = icmp ugt i8 %0, 40
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %27

4:                                                ; preds = %1
  %5 = icmp eq i8 %0, 40
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %14

7:                                                ; preds = %4
  %8 = and i8 %0, 1
  %9 = or i8 %8, 2
  %10 = zext i8 %9 to i32
  %11 = lshr i8 %0, 1
  %narrow = add nuw i8 %11, 11
  %12 = zext i8 %narrow to i32
  %13 = shl i32 %10, %12
  br label %14

14:                                               ; preds = %7, %6
  %15 = phi i32 [ -1, %6 ], [ %13, %7 ]
  %_wyvern_thunk_fptr_addr10 = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr11 = load i8* (%_wyvern_thunk_type.10*)*, i8* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_addr10, align 8
  %_wyvern_thunkcall12 = call i8* %_wyvern_thunkfptr11(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #7
  store i8 4, i8* %_wyvern_thunkcall12, align 1
  %16 = trunc i32 %15 to i8
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load i8* (%_wyvern_thunk_type.10*)*, i8* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call i8* %_wyvern_thunkfptr8(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #7
  %17 = getelementptr inbounds i8, i8* %_wyvern_thunkcall9, i64 1
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %15, 8
  %19 = trunc i32 %18 to i8
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load i8* (%_wyvern_thunk_type.10*)*, i8* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call i8* %_wyvern_thunkfptr5(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #7
  %20 = getelementptr inbounds i8, i8* %_wyvern_thunkcall6, i64 2
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %15, 16
  %22 = trunc i32 %21 to i8
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i8* (%_wyvern_thunk_type.10*)*, i8* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i8* %_wyvern_thunkfptr2(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #7
  %23 = getelementptr inbounds i8, i8* %_wyvern_thunkcall3, i64 3
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %15, 24
  %25 = trunc i32 %24 to i8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i8* (%_wyvern_thunk_type.10*)*, i8* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i8* %_wyvern_thunkfptr(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #7
  %26 = getelementptr inbounds i8, i8* %_wyvern_thunkcall, i64 4
  store i8 %25, i8* %26, align 1
  br label %27

27:                                               ; preds = %14, %3
  %.0 = phi i32 [ 4, %3 ], [ 0, %14 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
