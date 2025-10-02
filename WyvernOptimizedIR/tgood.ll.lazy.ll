; ModuleID = './tgood.ll'
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
  call void @pfx_list_chk(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %5, i32 noundef %6, %struct.flagptr* noundef getelementptr inbounds ([228 x %struct.flagptr], [228 x %struct.flagptr]* @pflagindex, i64 0, i64 0), i32 noundef %3, i32 noundef %4)
  %8 = load i8, i8* %1, align 1
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [228 x %struct.flagptr], [228 x %struct.flagptr]* @pflagindex, i64 0, i64 %9
  br label %11

11:                                               ; preds = %40, %7
  %.pn = phi i8* [ %1, %7 ], [ %.01, %40 ]
  %.0 = phi %struct.flagptr* [ %10, %7 ], [ %45, %40 ]
  %.01 = getelementptr inbounds i8, i8* %.pn, i64 1
  %12 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.0, i64 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.0, i64 0, i32 0, i32 0
  %17 = load %struct.flagptr*, %struct.flagptr** %16, align 8
  %18 = icmp ne %struct.flagptr* %17, null
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ false, %11 ], [ %18, %15 ]
  br i1 %20, label %21, label %46

21:                                               ; preds = %19
  %22 = load i8, i8* %.01, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %54

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.0, i64 0, i32 0, i32 0
  %27 = load %struct.flagptr*, %struct.flagptr** %26, align 8
  %28 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %27, i64 0, i32 1
  %29 = load i32, i32* %28, align 8
  %.not7 = icmp eq i32 %29, 0
  br i1 %.not7, label %40, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.0, i64 0, i32 0, i32 0
  %32 = load %struct.flagptr*, %struct.flagptr** %31, align 8
  call void @pfx_list_chk(i8* noundef %0, i8* noundef nonnull %1, i32 noundef %2, i32 noundef %5, i32 noundef %6, %struct.flagptr* noundef %32, i32 noundef %3, i32 noundef %4)
  %33 = load i32, i32* @numhits, align 4
  %.not8 = icmp eq i32 %33, 0
  br i1 %.not8, label %39, label %34

34:                                               ; preds = %30
  %.not9 = icmp eq i32 %4, 0
  br i1 %.not9, label %35, label %39

35:                                               ; preds = %34
  %36 = load i32, i32* @cflag, align 4
  %.not10 = icmp eq i32 %36, 0
  br i1 %.not10, label %37, label %39

37:                                               ; preds = %35
  %.not11 = icmp eq i32 %3, 0
  br i1 %.not11, label %38, label %39

38:                                               ; preds = %37
  br label %54

39:                                               ; preds = %37, %35, %34, %30
  br label %40

40:                                               ; preds = %39, %25
  %41 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.0, i64 0, i32 0, i32 0
  %42 = load %struct.flagptr*, %struct.flagptr** %41, align 8
  %43 = load i8, i8* %.01, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %42, i64 %44
  br label %11, !llvm.loop !4

46:                                               ; preds = %19
  call void @pfx_list_chk(i8* noundef %0, i8* noundef nonnull %1, i32 noundef %2, i32 noundef %5, i32 noundef %6, %struct.flagptr* noundef %.0, i32 noundef %3, i32 noundef %4)
  %47 = load i32, i32* @numhits, align 4
  %.not = icmp eq i32 %47, 0
  br i1 %.not, label %53, label %48

48:                                               ; preds = %46
  %.not4 = icmp eq i32 %4, 0
  br i1 %.not4, label %49, label %53

49:                                               ; preds = %48
  %50 = load i32, i32* @cflag, align 4
  %.not5 = icmp eq i32 %50, 0
  br i1 %.not5, label %51, label %53

51:                                               ; preds = %49
  %.not6 = icmp eq i32 %3, 0
  br i1 %.not6, label %52, label %53

52:                                               ; preds = %51
  br label %54

53:                                               ; preds = %51, %49, %48, %46
  call void @chk_suf(i8* noundef %0, i8* noundef nonnull %1, i32 noundef %2, i32 noundef %6, %struct.flagent* noundef null, i32 noundef %3, i32 noundef %4)
  br label %54

54:                                               ; preds = %53, %52, %38, %24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @pfx_list_chk(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, %struct.flagptr* nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca [184 x i8], align 16
  %10 = alloca [184 x i8], align 16
  %11 = bitcast %struct.flagptr* %5 to %struct.flagent**
  %12 = load %struct.flagent*, %struct.flagent** %11, align 8
  %13 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %5, i64 0, i32 1
  %14 = load i32, i32* %13, align 8
  br label %15

15:                                               ; preds = %211, %8
  %.01 = phi i32 [ %14, %8 ], [ %213, %211 ]
  %.0 = phi %struct.flagent* [ %12, %8 ], [ %212, %211 ]
  %16 = icmp sgt i32 %.01, 0
  br i1 %16, label %17, label %.loopexit4

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 6
  %19 = load i16, i16* %18, align 8
  %20 = and i16 %19, 2
  %.not = icmp eq i16 %20, 0
  br i1 %.not, label %25, label %21

21:                                               ; preds = %17
  %22 = and i32 %3, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %211

25:                                               ; preds = %21, %17
  %26 = load i32, i32* @compoundflag, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 6
  %30 = load i16, i16* %29, align 8
  %31 = zext i16 %30 to i32
  %32 = xor i32 %31, %3
  %33 = and i32 %32, 2
  %.not20 = icmp eq i32 %33, 0
  br i1 %.not20, label %35, label %34

34:                                               ; preds = %28
  br label %211

35:                                               ; preds = %28, %25
  %36 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 4
  %37 = load i16, i16* %36, align 4
  %38 = sext i16 %37 to i32
  %39 = sub nsw i32 %2, %38
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %210

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 4
  %43 = load i16, i16* %42, align 4
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 4
  %49 = load i16, i16* %48, align 4
  %50 = sext i16 %49 to i64
  %51 = call i32 @strncmp(i8* noundef %47, i8* noundef %1, i64 noundef %50) #5
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %210

53:                                               ; preds = %45, %41
  %54 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 3
  %55 = load i16, i16* %54, align 2
  %56 = sext i16 %55 to i32
  %57 = add nsw i32 %39, %56
  %58 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 5
  %59 = load i16, i16* %58, align 2
  %60 = sext i16 %59 to i32
  %.not7 = icmp slt i32 %57, %60
  br i1 %.not7, label %210, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 3
  %63 = load i16, i16* %62, align 2
  %.not8 = icmp eq i16 %63, 0
  br i1 %.not8, label %69, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 0
  %66 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @strcpy(i8* noundef nonnull %65, i8* noundef nonnull dereferenceable(1) %67) #6
  br label %69

69:                                               ; preds = %64, %61
  %70 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 3
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i64
  %73 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 4
  %75 = load i16, i16* %74, align 4
  %76 = sext i16 %75 to i64
  %77 = getelementptr inbounds i8, i8* %1, i64 %76
  %78 = call i8* @strcpy(i8* noundef nonnull %73, i8* noundef nonnull dereferenceable(1) %77) #6
  %79 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 0
  br label %80

80:                                               ; preds = %97, %69
  %.03 = phi i32 [ 0, %69 ], [ %98, %97 ]
  %.02 = phi i8* [ %79, %69 ], [ %86, %97 ]
  %81 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 5
  %82 = load i16, i16* %81, align 2
  %83 = sext i16 %82 to i32
  %84 = icmp slt i32 %.03, %83
  br i1 %84, label %85, label %.loopexit

85:                                               ; preds = %80
  %86 = getelementptr inbounds i8, i8* %.02, i64 1
  %87 = load i8, i8* %.02, align 1
  %88 = zext i8 %87 to i64
  %89 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 7, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = shl i32 1, %.03
  %93 = and i32 %92, %91
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %99

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96
  %98 = add nuw nsw i32 %.03, 1
  br label %80, !llvm.loop !6

.loopexit:                                        ; preds = %80
  br label %99

99:                                               ; preds = %.loopexit, %95
  %100 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 5
  %101 = load i16, i16* %100, align 2
  %102 = sext i16 %101 to i32
  %.not9 = icmp slt i32 %.03, %102
  br i1 %.not9, label %209, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 3
  %105 = load i16, i16* %104, align 2
  %106 = sext i16 %105 to i32
  %107 = add nsw i32 %39, %106
  %108 = load i32, i32* @cflag, align 4
  %.not10 = icmp eq i32 %108, 0
  br i1 %.not10, label %121, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 0
  %111 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 2
  %112 = load i16, i16* %111, align 8
  %113 = sext i16 %112 to i32
  %114 = add nsw i32 %113, 65
  %115 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 3
  %116 = load i16, i16* %115, align 2
  %117 = sext i16 %116 to i32
  %118 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 4
  %119 = load i16, i16* %118, align 4
  %120 = sext i16 %119 to i32
  call void @flagpr(i8* noundef nonnull %110, i32 noundef %114, i32 noundef %117, i32 noundef %120, i32 noundef -1, i32 noundef 0) #6
  br label %201

121:                                              ; preds = %103
  %.not11 = icmp eq i32 %6, 0
  br i1 %.not11, label %168, label %122

122:                                              ; preds = %121
  %123 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 0
  %124 = call %struct.dent* @lookup(i8* noundef nonnull %123, i32 noundef 1) #6
  %.not17 = icmp eq %struct.dent* %124, null
  br i1 %.not17, label %167, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds [184 x i8], [184 x i8]* %10, i64 0, i64 0
  %127 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 4
  %128 = load i16, i16* %127, align 4
  %.not18 = icmp eq i16 %128, 0
  br i1 %.not18, label %138, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i8* @strcpy(i8* noundef nonnull %126, i8* noundef nonnull dereferenceable(1) %131) #6
  %133 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 4
  %134 = load i16, i16* %133, align 4
  %135 = sext i16 %134 to i64
  %136 = getelementptr inbounds [184 x i8], [184 x i8]* %10, i64 0, i64 %135
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8 43, i8* %136, align 1
  br label %138

138:                                              ; preds = %129, %125
  %.1 = phi i8* [ %137, %129 ], [ %126, %125 ]
  %139 = ptrtoint i8* %.1 to i64
  %140 = ptrtoint [184 x i8]* %10 to i64
  %141 = sub i64 %139, %140
  %142 = trunc i64 %141 to i32
  %143 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 0
  %144 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %.1, i8* noundef nonnull %143) #6
  %145 = sext i32 %107 to i64
  %146 = getelementptr inbounds i8, i8* %.1, i64 %145
  %147 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 3
  %148 = load i16, i16* %147, align 2
  %.not19 = icmp eq i16 %148, 0
  br i1 %.not19, label %154, label %149

149:                                              ; preds = %138
  %150 = getelementptr inbounds i8, i8* %146, i64 1
  store i8 45, i8* %146, align 1
  %151 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i8* @strcpy(i8* noundef nonnull %150, i8* noundef nonnull dereferenceable(1) %152) #6
  br label %154

154:                                              ; preds = %149, %138
  %.2 = phi i8* [ %150, %149 ], [ %146, %138 ]
  %155 = getelementptr inbounds [184 x i8], [184 x i8]* %10, i64 0, i64 0
  %156 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 3
  %157 = load i16, i16* %156, align 2
  %158 = sext i16 %157 to i32
  %159 = ptrtoint i8* %.2 to i64
  %160 = ptrtoint [184 x i8]* %10 to i64
  %161 = zext i32 %107 to i64
  %162 = add i64 %160, %161
  %163 = add i64 %162, %141
  %164 = sub i64 %159, %163
  %165 = trunc i64 %164 to i32
  %166 = call i32 @ins_root_cap(i8* noundef nonnull %155, i8* noundef %0, i32 noundef %158, i32 noundef %142, i32 noundef 0, i32 noundef %165, %struct.dent* noundef nonnull %124, %struct.flagent* noundef %.0, %struct.flagent* noundef null) #6
  br label %167

167:                                              ; preds = %154, %122
  br label %200

168:                                              ; preds = %121
  %169 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 0
  %170 = call %struct.dent* @lookup(i8* noundef nonnull %169, i32 noundef 1) #6
  %.not12 = icmp eq %struct.dent* %170, null
  br i1 %.not12, label %199, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.dent, %struct.dent* %170, i64 0, i32 2, i64 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 2
  %175 = load i16, i16* %174, align 8
  %176 = sext i16 %175 to i64
  %177 = and i64 %176, 4294967295
  %178 = shl i64 1, %177
  %179 = and i64 %173, %178
  %.not14 = icmp eq i64 %179, 0
  br i1 %.not14, label %199, label %180

180:                                              ; preds = %171
  %181 = load i32, i32* @numhits, align 4
  %182 = icmp slt i32 %181, 10
  br i1 %182, label %183, label %193

183:                                              ; preds = %180
  %184 = load i32, i32* @numhits, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 %185, i32 0
  store %struct.dent* %170, %struct.dent** %186, align 8
  %187 = sext i32 %184 to i64
  %188 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 %187, i32 1
  store %struct.flagent* %.0, %struct.flagent** %188, align 8
  %189 = load i32, i32* @numhits, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 %190, i32 2
  store %struct.flagent* null, %struct.flagent** %191, align 8
  %192 = add nsw i32 %189, 1
  store i32 %192, i32* @numhits, align 4
  br label %193

193:                                              ; preds = %183, %180
  %.not15 = icmp eq i32 %7, 0
  br i1 %.not15, label %194, label %198

194:                                              ; preds = %193
  %195 = call i32 @cap_ok(i8* noundef %0, %struct.success* noundef getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 0), i32 noundef %2) #6
  %.not16 = icmp eq i32 %195, 0
  br i1 %.not16, label %197, label %196

196:                                              ; preds = %194
  br label %214

197:                                              ; preds = %194
  store i32 0, i32* @numhits, align 4
  br label %198

198:                                              ; preds = %197, %193
  br label %199

199:                                              ; preds = %198, %171, %168
  br label %200

200:                                              ; preds = %199, %167
  br label %201

201:                                              ; preds = %200, %109
  %202 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 6
  %203 = load i16, i16* %202, align 8
  %204 = and i16 %203, 1
  %.not13 = icmp eq i16 %204, 0
  br i1 %.not13, label %208, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 0
  %207 = or i32 %4, 1
  call void @chk_suf(i8* noundef %0, i8* noundef nonnull %206, i32 noundef %107, i32 noundef %207, %struct.flagent* noundef %.0, i32 noundef %6, i32 noundef %7)
  br label %208

208:                                              ; preds = %205, %201
  br label %209

209:                                              ; preds = %208, %99
  br label %210

210:                                              ; preds = %209, %53, %45, %35
  br label %211

211:                                              ; preds = %210, %34, %24
  %212 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 1
  %213 = add nsw i32 %.01, -1
  br label %15, !llvm.loop !7

.loopexit4:                                       ; preds = %15
  br label %214

214:                                              ; preds = %.loopexit4, %196
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @chk_suf(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, %struct.flagent* noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  call void @suf_list_chk(i8* noundef %0, i8* noundef %1, i32 noundef %2, %struct.flagptr* noundef getelementptr inbounds ([228 x %struct.flagptr], [228 x %struct.flagptr]* @sflagindex, i64 0, i64 0), i32 noundef %3, %struct.flagent* noundef %4, i32 noundef %5, i32 noundef %6)
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds i8, i8* %1, i64 %8
  %10 = getelementptr inbounds i8, i8* %9, i64 -1
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [228 x %struct.flagptr], [228 x %struct.flagptr]* @sflagindex, i64 0, i64 %12
  br label %14

14:                                               ; preds = %42, %7
  %.01 = phi i8* [ %10, %7 ], [ %45, %42 ]
  %.0 = phi %struct.flagptr* [ %13, %7 ], [ %48, %42 ]
  %15 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.0, i64 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.0, i64 0, i32 0, i32 0
  %20 = load %struct.flagptr*, %struct.flagptr** %19, align 8
  %21 = icmp ne %struct.flagptr* %20, null
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %49

24:                                               ; preds = %22
  %25 = icmp eq i8* %.01, %1
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  br label %50

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.0, i64 0, i32 0, i32 0
  %29 = load %struct.flagptr*, %struct.flagptr** %28, align 8
  %30 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %29, i64 0, i32 1
  %31 = load i32, i32* %30, align 8
  %.not = icmp eq i32 %31, 0
  br i1 %.not, label %42, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.0, i64 0, i32 0, i32 0
  %34 = load %struct.flagptr*, %struct.flagptr** %33, align 8
  call void @suf_list_chk(i8* noundef %0, i8* noundef %1, i32 noundef %2, %struct.flagptr* noundef %34, i32 noundef %3, %struct.flagent* noundef %4, i32 noundef %5, i32 noundef %6)
  %35 = load i32, i32* @numhits, align 4
  %.not4 = icmp eq i32 %35, 0
  br i1 %.not4, label %41, label %36

36:                                               ; preds = %32
  %.not5 = icmp eq i32 %6, 0
  br i1 %.not5, label %37, label %41

37:                                               ; preds = %36
  %38 = load i32, i32* @cflag, align 4
  %.not6 = icmp eq i32 %38, 0
  br i1 %.not6, label %39, label %41

39:                                               ; preds = %37
  %.not7 = icmp eq i32 %5, 0
  br i1 %.not7, label %40, label %41

40:                                               ; preds = %39
  br label %50

41:                                               ; preds = %39, %37, %36, %32
  br label %42

42:                                               ; preds = %41, %27
  %43 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.0, i64 0, i32 0, i32 0
  %44 = load %struct.flagptr*, %struct.flagptr** %43, align 8
  %45 = getelementptr inbounds i8, i8* %.01, i64 -1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %44, i64 %47
  br label %14, !llvm.loop !8

49:                                               ; preds = %22
  call void @suf_list_chk(i8* noundef %0, i8* noundef %1, i32 noundef %2, %struct.flagptr* noundef %.0, i32 noundef %3, %struct.flagent* noundef %4, i32 noundef %5, i32 noundef %6)
  br label %50

50:                                               ; preds = %49, %40, %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @expand_pre(i8* noundef %0, i8* noundef %1, i64* nocapture noundef readonly %2, i32 noundef %3, i8* noundef %4) #0 {
  %6 = load %struct.flagent*, %struct.flagent** @pflaglist, align 8
  %7 = load i32, i32* @numpflags, align 4
  br label %8

8:                                                ; preds = %22, %5
  %.02 = phi i32 [ %7, %5 ], [ %24, %22 ]
  %.01 = phi i32 [ 0, %5 ], [ %.1, %22 ]
  %.0 = phi %struct.flagent* [ %6, %5 ], [ %23, %22 ]
  %9 = icmp sgt i32 %.02, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %8
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 2
  %13 = load i16, i16* %12, align 8
  %14 = sext i16 %13 to i64
  %15 = and i64 %14, 4294967295
  %16 = shl i64 1, %15
  %17 = and i64 %11, %16
  %.not = icmp eq i64 %17, 0
  br i1 %.not, label %21, label %18

18:                                               ; preds = %10
  %19 = call i32 @pr_pre_expansion(i8* noundef %0, i8* noundef %1, %struct.flagent* noundef %.0, i64* noundef nonnull %2, i32 noundef %3, i8* noundef %4)
  %20 = add nsw i32 %.01, %19
  br label %21

21:                                               ; preds = %18, %10
  %.1 = phi i32 [ %20, %18 ], [ %.01, %10 ]
  br label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 1
  %24 = add nsw i32 %.02, -1
  br label %8, !llvm.loop !9

25:                                               ; preds = %8
  ret i32 %.01
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pr_pre_expansion(i8* noundef %0, i8* noundef %1, %struct.flagent* nocapture noundef readonly %2, i64* nocapture noundef readonly %3, i32 noundef %4, i8* noundef %5) #0 {
  %7 = alloca [120 x i8], align 16
  %8 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #5
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 5
  %11 = load i16, i16* %10, align 2
  %12 = sext i16 %11 to i32
  %13 = icmp sgt i32 %12, %9
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  br label %147

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 3
  %17 = load i16, i16* %16, align 2
  %18 = sext i16 %17 to i32
  %19 = sub nsw i32 %9, %18
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %147

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 4
  %24 = load i16, i16* %23, align 4
  %25 = sext i16 %24 to i32
  %26 = add nsw i32 %19, %25
  br label %27

27:                                               ; preds = %47, %22
  %.02 = phi i32 [ 0, %22 ], [ %48, %47 ]
  %.01 = phi i8* [ %1, %22 ], [ %33, %47 ]
  %28 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 5
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  %31 = icmp slt i32 %.02, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = getelementptr inbounds i8, i8* %.01, i64 1
  %34 = load i8, i8* %.01, align 1
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 22, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 7, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = shl i32 1, %.02
  %43 = and i32 %42, %41
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %147

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46
  %48 = add nuw nsw i32 %.02, 1
  br label %27, !llvm.loop !10

49:                                               ; preds = %27
  %50 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 4
  %51 = load i16, i16* %50, align 4
  %.not = icmp eq i16 %51, 0
  br i1 %.not, label %61, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds [120 x i8], [120 x i8]* %7, i64 0, i64 0
  %54 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @strcpy(i8* noundef nonnull %53, i8* noundef nonnull dereferenceable(1) %55) #6
  %57 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 4
  %58 = load i16, i16* %57, align 4
  %59 = sext i16 %58 to i64
  %60 = getelementptr inbounds [120 x i8], [120 x i8]* %7, i64 0, i64 %59
  br label %61

61:                                               ; preds = %52, %49
  %.1 = phi i8* [ %60, %52 ], [ %.01, %49 ]
  %62 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 3
  %63 = load i16, i16* %62, align 2
  %64 = sext i16 %63 to i64
  %65 = getelementptr inbounds i8, i8* %1, i64 %64
  %66 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %.1, i8* noundef nonnull dereferenceable(1) %65) #6
  %67 = load i8, i8* %1, align 1
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %68
  %70 = load i8, i8* %69, align 1
  %.not9 = icmp eq i8 %70, 0
  br i1 %.not9, label %118, label %71

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %81, %71
  %.pn = phi i8* [ %1, %71 ], [ %.2, %81 ]
  %.2 = getelementptr inbounds i8, i8* %.pn, i64 1
  %73 = load i8, i8* %.2, align 1
  %.not13 = icmp eq i8 %73, 0
  br i1 %.not13, label %.loopexit3, label %74

74:                                               ; preds = %72
  %75 = load i8, i8* %.2, align 1
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %76
  %78 = load i8, i8* %77, align 1
  %.not19 = icmp eq i8 %78, 0
  br i1 %.not19, label %79, label %80

79:                                               ; preds = %74
  br label %82

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80
  br label %72, !llvm.loop !11

.loopexit3:                                       ; preds = %72
  br label %82

82:                                               ; preds = %.loopexit3, %79
  %83 = load i8, i8* %.2, align 1
  %.not14 = icmp eq i8 %83, 0
  br i1 %.not14, label %117, label %84

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %94, %84
  %.3 = phi i8* [ %.2, %84 ], [ %95, %94 ]
  %86 = load i8, i8* %.3, align 1
  %.not15 = icmp eq i8 %86, 0
  br i1 %.not15, label %.loopexit, label %87

87:                                               ; preds = %85
  %88 = load i8, i8* %.3, align 1
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %89
  %91 = load i8, i8* %90, align 1
  %.not18 = icmp eq i8 %91, 0
  br i1 %.not18, label %93, label %92

92:                                               ; preds = %87
  br label %96

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93
  %95 = getelementptr inbounds i8, i8* %.3, i64 1
  br label %85, !llvm.loop !12

.loopexit:                                        ; preds = %85
  br label %96

96:                                               ; preds = %.loopexit, %92
  %97 = load i8, i8* %.3, align 1
  %.not16 = icmp eq i8 %97, 0
  br i1 %.not16, label %113, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 4
  %100 = load i16, i16* %99, align 4
  %101 = sext i16 %100 to i64
  %102 = getelementptr inbounds [120 x i8], [120 x i8]* %7, i64 0, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %104
  %106 = load i8, i8* %105, align 1
  %.not17 = icmp eq i8 %106, 0
  br i1 %.not17, label %107, label %112

107:                                              ; preds = %98
  %108 = getelementptr inbounds [120 x i8], [120 x i8]* %7, i64 0, i64 0
  %109 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 4
  %110 = load i16, i16* %109, align 4
  %111 = sext i16 %110 to i32
  call void @forcelc(i8* noundef nonnull %108, i32 noundef %111)
  br label %112

112:                                              ; preds = %107, %98
  br label %116

113:                                              ; preds = %96
  %114 = getelementptr inbounds [120 x i8], [120 x i8]* %7, i64 0, i64 1
  %115 = add nsw i32 %26, -1
  call void @forcelc(i8* noundef nonnull %114, i32 noundef %115)
  br label %116

116:                                              ; preds = %113, %112
  br label %117

117:                                              ; preds = %116, %82
  br label %129

118:                                              ; preds = %61
  %119 = load i8, i8* %.1, align 1
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %120
  %122 = load i8, i8* %121, align 1
  %.not10 = icmp eq i8 %122, 0
  br i1 %.not10, label %123, label %128

123:                                              ; preds = %118
  %124 = getelementptr inbounds [120 x i8], [120 x i8]* %7, i64 0, i64 0
  %125 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 4
  %126 = load i16, i16* %125, align 4
  %127 = sext i16 %126 to i32
  call void @forcelc(i8* noundef nonnull %124, i32 noundef %127)
  br label %128

128:                                              ; preds = %123, %118
  br label %129

129:                                              ; preds = %128, %117
  %130 = icmp eq i32 %4, 3
  br i1 %130, label %131, label %133

131:                                              ; preds = %129
  %132 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %0) #6
  br label %133

133:                                              ; preds = %131, %129
  %.not11 = icmp eq i32 %4, 4
  br i1 %.not11, label %138, label %134

134:                                              ; preds = %133
  %135 = getelementptr inbounds [120 x i8], [120 x i8]* %7, i64 0, i64 0
  %136 = call i8* @ichartosstr(i8* noundef nonnull %135, i32 noundef 1) #6
  %137 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef %136, i8* noundef %5) #6
  br label %138

138:                                              ; preds = %134, %133
  %139 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 6
  %140 = load i16, i16* %139, align 8
  %141 = and i16 %140, 1
  %.not12 = icmp eq i16 %141, 0
  br i1 %.not12, label %146, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds [120 x i8], [120 x i8]* %7, i64 0, i64 0
  %144 = call i32 @expand_suf(i8* noundef %0, i8* noundef nonnull %143, i64* noundef %3, i32 noundef 1, i32 noundef %4, i8* noundef %5)
  %145 = add nsw i32 %26, %144
  br label %147

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146, %142, %45, %21, %14
  %.0 = phi i32 [ 0, %14 ], [ 0, %21 ], [ 0, %45 ], [ %145, %142 ], [ %26, %146 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @expand_suf(i8* noundef %0, i8* noundef %1, i64* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i8* noundef %5) #0 {
  %7 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  %8 = load i32, i32* @numsflags, align 4
  br label %9

9:                                                ; preds = %31, %6
  %.02 = phi i32 [ %8, %6 ], [ %33, %31 ]
  %.01 = phi i32 [ 0, %6 ], [ %.2, %31 ]
  %.0 = phi %struct.flagent* [ %7, %6 ], [ %32, %31 ]
  %10 = icmp sgt i32 %.02, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %9
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 2
  %14 = load i16, i16* %13, align 8
  %15 = sext i16 %14 to i64
  %16 = and i64 %15, 4294967295
  %17 = shl i64 1, %16
  %18 = and i64 %12, %17
  %.not = icmp eq i64 %18, 0
  br i1 %.not, label %30, label %19

19:                                               ; preds = %11
  %20 = and i32 %3, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 0, i32 6
  %24 = load i16, i16* %23, align 8
  %25 = and i16 %24, 1
  %.not3 = icmp eq i16 %25, 0
  br i1 %.not3, label %29, label %26

26:                                               ; preds = %22, %19
  %27 = call i32 @pr_suf_expansion(i8* noundef %0, i8* noundef %1, %struct.flagent* noundef %.0, i32 noundef %4, i8* noundef %5)
  %28 = add nsw i32 %.01, %27
  br label %29

29:                                               ; preds = %26, %22
  %.1 = phi i32 [ %28, %26 ], [ %.01, %22 ]
  br label %30

30:                                               ; preds = %29, %11
  %.2 = phi i32 [ %.1, %29 ], [ %.01, %11 ]
  br label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.flagent, %struct.flagent* %.0, i64 1
  %33 = add nsw i32 %.02, -1
  br label %9, !llvm.loop !13

34:                                               ; preds = %9
  ret i32 %.01
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pr_suf_expansion(i8* noundef %0, i8* noundef %1, %struct.flagent* nocapture noundef readonly %2, i32 noundef %3, i8* noundef %4) #0 {
  %6 = alloca [120 x i8], align 16
  %7 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #5
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 5
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i32
  %12 = icmp sgt i32 %11, %8
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  br label %85

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 3
  %16 = load i16, i16* %15, align 2
  %17 = sext i16 %16 to i32
  %.not = icmp sgt i32 %8, %17
  br i1 %.not, label %19, label %18

18:                                               ; preds = %14
  br label %85

19:                                               ; preds = %14
  %sext = shl i64 %7, 32
  %20 = ashr exact i64 %sext, 32
  %21 = getelementptr inbounds i8, i8* %1, i64 %20
  br label %22

22:                                               ; preds = %39, %19
  %.02 = phi i32 [ %11, %19 ], [ %23, %39 ]
  %.01 = phi i8* [ %21, %19 ], [ %26, %39 ]
  %23 = add nsw i32 %.02, -1
  %24 = icmp sgt i32 %.02, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %.01, i64 -1
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 22, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 7, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = shl i32 1, %23
  %36 = and i32 %35, %34
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %85

39:                                               ; preds = %25
  br label %22, !llvm.loop !14

40:                                               ; preds = %22
  %41 = getelementptr inbounds [120 x i8], [120 x i8]* %6, i64 0, i64 0
  %42 = call i8* @strcpy(i8* noundef nonnull %41, i8* noundef nonnull dereferenceable(1) %1) #6
  %sext3 = shl i64 %7, 32
  %43 = ashr exact i64 %sext3, 32
  %44 = getelementptr inbounds [120 x i8], [120 x i8]* %6, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 3
  %46 = load i16, i16* %45, align 2
  %47 = sext i16 %46 to i64
  %48 = sub nsw i64 0, %47
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  %50 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 4
  %51 = load i16, i16* %50, align 4
  %.not4 = icmp eq i16 %51, 0
  br i1 %.not4, label %66, label %52

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @strcpy(i8* noundef nonnull %49, i8* noundef nonnull dereferenceable(1) %54) #6
  %56 = getelementptr inbounds i8, i8* %49, i64 -1
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %58
  %60 = load i8, i8* %59, align 1
  %.not6 = icmp eq i8 %60, 0
  br i1 %.not6, label %61, label %65

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 4
  %63 = load i16, i16* %62, align 4
  %64 = sext i16 %63 to i32
  call void @forcelc(i8* noundef nonnull %49, i32 noundef %64)
  br label %65

65:                                               ; preds = %61, %52
  br label %67

66:                                               ; preds = %40
  store i8 0, i8* %49, align 1
  br label %67

67:                                               ; preds = %66, %65
  %68 = icmp eq i32 %3, 3
  br i1 %68, label %69, label %71

69:                                               ; preds = %67
  %70 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %0) #6
  br label %71

71:                                               ; preds = %69, %67
  %.not5 = icmp eq i32 %3, 4
  br i1 %.not5, label %76, label %72

72:                                               ; preds = %71
  %73 = getelementptr inbounds [120 x i8], [120 x i8]* %6, i64 0, i64 0
  %74 = call i8* @ichartosstr(i8* noundef nonnull %73, i32 noundef 1) #6
  %75 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef %74, i8* noundef %4) #6
  br label %76

76:                                               ; preds = %72, %71
  %77 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 4
  %78 = load i16, i16* %77, align 4
  %79 = sext i16 %78 to i32
  %80 = add nsw i32 %8, %79
  %81 = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i64 0, i32 3
  %82 = load i16, i16* %81, align 2
  %83 = sext i16 %82 to i32
  %84 = sub nsw i32 %80, %83
  br label %85

85:                                               ; preds = %76, %38, %18, %13
  %.0 = phi i32 [ 0, %13 ], [ 0, %18 ], [ 0, %38 ], [ %84, %76 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

declare dso_local void @flagpr(i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare dso_local %struct.dent* @lookup(i8* noundef, i32 noundef) #3

declare dso_local i32 @ins_root_cap(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.dent* noundef, %struct.flagent* noundef, %struct.flagent* noundef) #3

declare dso_local i32 @cap_ok(i8* noundef, %struct.success* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @suf_list_chk(i8* noundef %0, i8* noundef %1, i32 noundef %2, %struct.flagptr* nocapture noundef readonly %3, i32 noundef %4, %struct.flagent* noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca [184 x i8], align 16
  %10 = alloca [184 x i8], align 16
  %11 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 0
  %12 = call i8* @strcpy(i8* noundef nonnull %11, i8* noundef nonnull dereferenceable(1) %1) #6
  %13 = bitcast %struct.flagptr* %3 to %struct.flagent**
  %14 = load %struct.flagent*, %struct.flagent** %13, align 8
  %15 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %3, i64 0, i32 1
  %16 = load i32, i32* %15, align 8
  br label %17

17:                                               ; preds = %277, %8
  %.02 = phi i32 [ %16, %8 ], [ %279, %277 ]
  %.01 = phi %struct.flagent* [ %14, %8 ], [ %278, %277 ]
  %18 = icmp sgt i32 %.02, 0
  br i1 %18, label %19, label %.loopexit5

19:                                               ; preds = %17
  %20 = and i32 %4, 1
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %27, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 6
  %23 = load i16, i16* %22, align 8
  %24 = and i16 %23, 1
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %277

27:                                               ; preds = %21, %19
  %28 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 6
  %29 = load i16, i16* %28, align 8
  %30 = and i16 %29, 2
  %.not7 = icmp eq i16 %30, 0
  br i1 %.not7, label %35, label %31

31:                                               ; preds = %27
  %32 = and i32 %4, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %277

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @compoundflag, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 6
  %40 = load i16, i16* %39, align 8
  %41 = zext i16 %40 to i32
  %42 = xor i32 %41, %4
  %43 = and i32 %42, 2
  %.not26 = icmp eq i32 %43, 0
  br i1 %.not26, label %45, label %44

44:                                               ; preds = %38
  br label %277

45:                                               ; preds = %38, %35
  %46 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 4
  %47 = load i16, i16* %46, align 4
  %48 = sext i16 %47 to i32
  %49 = sub nsw i32 %2, %48
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %276

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 4
  %53 = load i16, i16* %52, align 4
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = sext i32 %49 to i64
  %59 = getelementptr inbounds i8, i8* %1, i64 %58
  %60 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %57, i8* noundef nonnull %59) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %276

62:                                               ; preds = %55, %51
  %63 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 3
  %64 = load i16, i16* %63, align 2
  %65 = sext i16 %64 to i32
  %66 = add nsw i32 %49, %65
  %67 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 5
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %.not8 = icmp slt i32 %66, %69
  br i1 %.not8, label %276, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 0
  %72 = call i8* @strcpy(i8* noundef nonnull %71, i8* noundef nonnull dereferenceable(1) %1) #6
  %73 = sext i32 %49 to i64
  %74 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 3
  %76 = load i16, i16* %75, align 2
  %.not9 = icmp eq i16 %76, 0
  br i1 %.not9, label %87, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @strcpy(i8* noundef nonnull %74, i8* noundef nonnull dereferenceable(1) %79) #6
  %81 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 3
  %82 = load i16, i16* %81, align 2
  %83 = sext i16 %82 to i32
  %84 = add nsw i32 %49, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 %85
  br label %88

87:                                               ; preds = %70
  store i8 0, i8* %74, align 1
  br label %88

88:                                               ; preds = %87, %77
  %.04 = phi i8* [ %86, %77 ], [ %74, %87 ]
  %.0 = phi i32 [ %84, %77 ], [ %49, %87 ]
  %89 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 5
  %90 = load i16, i16* %89, align 2
  %91 = sext i16 %90 to i32
  br label %92

92:                                               ; preds = %106, %88
  %.1 = phi i8* [ %.04, %88 ], [ %96, %106 ]
  %.03 = phi i32 [ %91, %88 ], [ %93, %106 ]
  %93 = add nsw i32 %.03, -1
  %94 = icmp sgt i32 %.03, 0
  br i1 %94, label %95, label %.loopexit

95:                                               ; preds = %92
  %96 = getelementptr inbounds i8, i8* %.1, i64 -1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 7, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = shl i32 1, %93
  %103 = and i32 %102, %101
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %107

106:                                              ; preds = %95
  br label %92, !llvm.loop !15

.loopexit:                                        ; preds = %92
  br label %107

107:                                              ; preds = %.loopexit, %105
  %108 = icmp slt i32 %.03, 1
  br i1 %108, label %109, label %275

109:                                              ; preds = %107
  %110 = load i32, i32* @cflag, align 4
  %.not10 = icmp eq i32 %110, 0
  br i1 %.not10, label %142, label %111

111:                                              ; preds = %109
  %112 = and i32 %4, 1
  %.not25 = icmp eq i32 %112, 0
  br i1 %.not25, label %132, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 0
  %115 = getelementptr inbounds %struct.flagent, %struct.flagent* %5, i64 0, i32 2
  %116 = load i16, i16* %115, align 8
  %117 = sext i16 %116 to i32
  %118 = add nsw i32 %117, 65
  %119 = getelementptr inbounds %struct.flagent, %struct.flagent* %5, i64 0, i32 3
  %120 = load i16, i16* %119, align 2
  %121 = sext i16 %120 to i32
  %122 = getelementptr inbounds %struct.flagent, %struct.flagent* %5, i64 0, i32 4
  %123 = load i16, i16* %122, align 4
  %124 = sext i16 %123 to i32
  %125 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 2
  %126 = load i16, i16* %125, align 8
  %127 = sext i16 %126 to i32
  %128 = add nsw i32 %127, 65
  %129 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 4
  %130 = load i16, i16* %129, align 4
  %131 = sext i16 %130 to i32
  call void @flagpr(i8* noundef nonnull %114, i32 noundef %118, i32 noundef %121, i32 noundef %124, i32 noundef %128, i32 noundef %131) #6
  br label %141

132:                                              ; preds = %111
  %133 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 0
  %134 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 2
  %135 = load i16, i16* %134, align 8
  %136 = sext i16 %135 to i32
  %137 = add nsw i32 %136, 65
  %138 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 4
  %139 = load i16, i16* %138, align 4
  %140 = sext i16 %139 to i32
  call void @flagpr(i8* noundef nonnull %133, i32 noundef -1, i32 noundef 0, i32 noundef 0, i32 noundef %137, i32 noundef %140) #6
  br label %141

141:                                              ; preds = %132, %113
  br label %274

142:                                              ; preds = %109
  %.not11 = icmp eq i32 %6, 0
  br i1 %.not11, label %229, label %143

143:                                              ; preds = %142
  %144 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 0
  %145 = call %struct.dent* @lookup(i8* noundef nonnull %144, i32 noundef 1) #6
  %.not17 = icmp eq %struct.dent* %145, null
  br i1 %.not17, label %228, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds [184 x i8], [184 x i8]* %10, i64 0, i64 0
  %148 = and i32 %4, 1
  %.not18 = icmp eq i32 %148, 0
  br i1 %.not18, label %161, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.flagent, %struct.flagent* %5, i64 0, i32 4
  %151 = load i16, i16* %150, align 4
  %.not24 = icmp eq i16 %151, 0
  br i1 %.not24, label %161, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.flagent, %struct.flagent* %5, i64 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i8* @strcpy(i8* noundef nonnull %147, i8* noundef nonnull dereferenceable(1) %154) #6
  %156 = getelementptr inbounds %struct.flagent, %struct.flagent* %5, i64 0, i32 4
  %157 = load i16, i16* %156, align 4
  %158 = sext i16 %157 to i64
  %159 = getelementptr inbounds [184 x i8], [184 x i8]* %10, i64 0, i64 %158
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  store i8 43, i8* %159, align 1
  br label %161

161:                                              ; preds = %152, %149, %146
  %.2 = phi i8* [ %160, %152 ], [ %147, %149 ], [ %147, %146 ]
  %162 = ptrtoint i8* %.2 to i64
  %163 = ptrtoint [184 x i8]* %10 to i64
  %164 = sub i64 %162, %163
  %165 = trunc i64 %164 to i32
  %166 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 0
  %167 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %.2, i8* noundef nonnull %166) #6
  %168 = sext i32 %.0 to i64
  %169 = getelementptr inbounds i8, i8* %.2, i64 %168
  %170 = and i32 %4, 1
  %.not19 = icmp eq i32 %170, 0
  br i1 %.not19, label %183, label %171

171:                                              ; preds = %161
  %172 = getelementptr inbounds %struct.flagent, %struct.flagent* %5, i64 0, i32 3
  %173 = load i16, i16* %172, align 2
  %.not23 = icmp eq i16 %173, 0
  br i1 %.not23, label %183, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds i8, i8* %169, i64 1
  store i8 45, i8* %169, align 1
  %176 = getelementptr inbounds %struct.flagent, %struct.flagent* %5, i64 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i8* @strcpy(i8* noundef nonnull %175, i8* noundef nonnull dereferenceable(1) %177) #6
  %179 = getelementptr inbounds %struct.flagent, %struct.flagent* %5, i64 0, i32 3
  %180 = load i16, i16* %179, align 2
  %181 = sext i16 %180 to i64
  %182 = getelementptr inbounds i8, i8* %175, i64 %181
  br label %183

183:                                              ; preds = %174, %171, %161
  %.3 = phi i8* [ %182, %174 ], [ %169, %171 ], [ %169, %161 ]
  %184 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 3
  %185 = load i16, i16* %184, align 2
  %.not20 = icmp eq i16 %185, 0
  br i1 %.not20, label %195, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds i8, i8* %.3, i64 1
  store i8 45, i8* %.3, align 1
  %188 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i8* @strcpy(i8* noundef nonnull %187, i8* noundef nonnull dereferenceable(1) %189) #6
  %191 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 3
  %192 = load i16, i16* %191, align 2
  %193 = sext i16 %192 to i64
  %194 = getelementptr inbounds i8, i8* %187, i64 %193
  br label %195

195:                                              ; preds = %186, %183
  %.4 = phi i8* [ %194, %186 ], [ %.3, %183 ]
  %196 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 4
  %197 = load i16, i16* %196, align 4
  %.not21 = icmp eq i16 %197, 0
  br i1 %.not21, label %207, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds i8, i8* %.4, i64 1
  store i8 43, i8* %.4, align 1
  %200 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 1
  %201 = load i8*, i8** %200, align 8
  %202 = call i8* @strcpy(i8* noundef nonnull %199, i8* noundef nonnull dereferenceable(1) %201) #6
  %203 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 4
  %204 = load i16, i16* %203, align 4
  %205 = sext i16 %204 to i64
  %206 = getelementptr inbounds i8, i8* %199, i64 %205
  br label %207

207:                                              ; preds = %198, %195
  %.5 = phi i8* [ %206, %198 ], [ %.4, %195 ]
  %208 = getelementptr inbounds [184 x i8], [184 x i8]* %10, i64 0, i64 0
  %209 = and i32 %4, 1
  %.not22 = icmp eq i32 %209, 0
  br i1 %.not22, label %214, label %210

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.flagent, %struct.flagent* %5, i64 0, i32 3
  %212 = load i16, i16* %211, align 2
  %213 = sext i16 %212 to i32
  br label %215

214:                                              ; preds = %207
  br label %215

215:                                              ; preds = %214, %210
  %216 = phi i32 [ %213, %210 ], [ 0, %214 ]
  %217 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 3
  %218 = load i16, i16* %217, align 2
  %219 = sext i16 %218 to i32
  %220 = ptrtoint i8* %.5 to i64
  %221 = ptrtoint [184 x i8]* %10 to i64
  %222 = zext i32 %.0 to i64
  %223 = add i64 %221, %222
  %224 = add i64 %223, %164
  %225 = sub i64 %220, %224
  %226 = trunc i64 %225 to i32
  %227 = call i32 @ins_root_cap(i8* noundef nonnull %208, i8* noundef %0, i32 noundef %216, i32 noundef %165, i32 noundef %219, i32 noundef %226, %struct.dent* noundef nonnull %145, %struct.flagent* noundef %5, %struct.flagent* noundef %.01) #6
  br label %228

228:                                              ; preds = %215, %143
  br label %273

229:                                              ; preds = %142
  %230 = getelementptr inbounds [184 x i8], [184 x i8]* %9, i64 0, i64 0
  %231 = call %struct.dent* @lookup(i8* noundef nonnull %230, i32 noundef 1) #6
  %.not12 = icmp eq %struct.dent* %231, null
  br i1 %.not12, label %272, label %232

232:                                              ; preds = %229
  %233 = getelementptr inbounds %struct.dent, %struct.dent* %231, i64 0, i32 2, i64 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 0, i32 2
  %236 = load i16, i16* %235, align 8
  %237 = sext i16 %236 to i64
  %238 = and i64 %237, 4294967295
  %239 = shl i64 1, %238
  %240 = and i64 %234, %239
  %.not13 = icmp eq i64 %240, 0
  br i1 %.not13, label %272, label %241

241:                                              ; preds = %232
  %242 = and i32 %4, 1
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %253, label %244

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.dent, %struct.dent* %231, i64 0, i32 2, i64 0
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.flagent, %struct.flagent* %5, i64 0, i32 2
  %248 = load i16, i16* %247, align 8
  %249 = sext i16 %248 to i64
  %250 = and i64 %249, 4294967295
  %251 = shl i64 1, %250
  %252 = and i64 %246, %251
  %.not14 = icmp eq i64 %252, 0
  br i1 %.not14, label %272, label %253

253:                                              ; preds = %244, %241
  %254 = load i32, i32* @numhits, align 4
  %255 = icmp slt i32 %254, 10
  br i1 %255, label %256, label %266

256:                                              ; preds = %253
  %257 = load i32, i32* @numhits, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 %258, i32 0
  store %struct.dent* %231, %struct.dent** %259, align 8
  %260 = sext i32 %257 to i64
  %261 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 %260, i32 1
  store %struct.flagent* %5, %struct.flagent** %261, align 8
  %262 = load i32, i32* @numhits, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 %263, i32 2
  store %struct.flagent* %.01, %struct.flagent** %264, align 8
  %265 = add nsw i32 %262, 1
  store i32 %265, i32* @numhits, align 4
  br label %266

266:                                              ; preds = %256, %253
  %.not15 = icmp eq i32 %7, 0
  br i1 %.not15, label %267, label %271

267:                                              ; preds = %266
  %268 = call i32 @cap_ok(i8* noundef %0, %struct.success* noundef getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 0), i32 noundef %2) #6
  %.not16 = icmp eq i32 %268, 0
  br i1 %.not16, label %270, label %269

269:                                              ; preds = %267
  br label %280

270:                                              ; preds = %267
  store i32 0, i32* @numhits, align 4
  br label %271

271:                                              ; preds = %270, %266
  br label %272

272:                                              ; preds = %271, %244, %232, %229
  br label %273

273:                                              ; preds = %272, %228
  br label %274

274:                                              ; preds = %273, %141
  br label %275

275:                                              ; preds = %274, %107
  br label %276

276:                                              ; preds = %275, %62, %55, %45
  br label %277

277:                                              ; preds = %276, %44, %34, %26
  %278 = getelementptr inbounds %struct.flagent, %struct.flagent* %.01, i64 1
  %279 = add nsw i32 %.02, -1
  br label %17, !llvm.loop !16

.loopexit5:                                       ; preds = %17
  br label %280

280:                                              ; preds = %.loopexit5, %269
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @forcelc(i8* nocapture noundef %0, i32 noundef %1) #4 {
  br label %3

3:                                                ; preds = %11, %2
  %.01 = phi i32 [ %1, %2 ], [ %4, %11 ]
  %.0 = phi i8* [ %0, %2 ], [ %12, %11 ]
  %4 = add nsw i32 %.01, -1
  %5 = icmp sgt i32 %.01, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = load i8, i8* %.0, align 1
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 21, i64 %8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %.0, align 1
  br label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %3, !llvm.loop !17

13:                                               ; preds = %3
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

declare dso_local i8* @ichartosstr(i8* noundef, i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
