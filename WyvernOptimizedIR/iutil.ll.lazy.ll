; ModuleID = './iutil.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/iutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.dict_s = type opaque
%struct.file_entry_s = type opaque
%struct.gs_font_s = type opaque
%struct.name_s = type opaque
%struct.vm_save_s = type opaque
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gx_bitmap_s = type opaque

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @refcpy(%struct.ref_s* nocapture noundef writeonly %0, %struct.ref_s* nocapture noundef readonly %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %5, %3
  %.02 = phi i32 [ %2, %3 ], [ %6, %5 ]
  %.01 = phi %struct.ref_s* [ %1, %3 ], [ %8, %5 ]
  %.0 = phi %struct.ref_s* [ %0, %3 ], [ %7, %5 ]
  %.not = icmp eq i32 %.02, 0
  br i1 %.not, label %11, label %5

5:                                                ; preds = %4
  %6 = add i32 %.02, -1
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.0, i64 1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 1
  %9 = bitcast %struct.ref_s* %.0 to i8*
  %10 = bitcast %struct.ref_s* %.01 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %9, i8* noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false)
  br label %4, !llvm.loop !4

11:                                               ; preds = %4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @obj_eq(%struct.ref_s* noundef %0, %struct.ref_s* noundef %1) #2 {
  %3 = alloca %struct.ref_s, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 192
  %.not = icmp eq i16 %6, 0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %2
  br label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = lshr i16 %10, 2
  %12 = and i16 %11, 63
  %13 = zext i16 %12 to i32
  br label %14

14:                                               ; preds = %8, %7
  %15 = phi i32 [ 9, %7 ], [ %13, %8 ]
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 0, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = and i16 %17, 192
  %.not4 = icmp eq i16 %18, 0
  br i1 %.not4, label %20, label %19

19:                                               ; preds = %14
  br label %26

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 0, i32 1
  %22 = load i16, i16* %21, align 8
  %23 = lshr i16 %22, 2
  %24 = and i16 %23, 63
  %25 = zext i16 %24 to i32
  br label %26

26:                                               ; preds = %20, %19
  %27 = phi i32 [ 9, %19 ], [ %25, %20 ]
  %.not5 = icmp eq i32 %15, %27
  br i1 %.not5, label %78, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %30 = load i16, i16* %29, align 8
  %31 = lshr i16 %30, 2
  %32 = and i16 %31, 63
  %33 = zext i16 %32 to i32
  switch i32 %33, label %76 [
    i32 5, label %34
    i32 11, label %48
    i32 7, label %62
    i32 13, label %69
  ]

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 0, i32 1
  %36 = load i16, i16* %35, align 8
  %37 = and i16 %36, 252
  %38 = icmp eq i16 %37, 44
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = bitcast %struct.ref_s* %1 to float*
  %41 = load float, float* %40, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sitofp i64 %43 to float
  %45 = fcmp oeq float %41, %44
  br label %46

46:                                               ; preds = %39, %34
  %47 = phi i1 [ false, %34 ], [ %45, %39 ]
  br label %202

48:                                               ; preds = %28
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 0, i32 1
  %50 = load i16, i16* %49, align 8
  %51 = and i16 %50, 252
  %52 = icmp eq i16 %51, 20
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 0, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sitofp i64 %55 to float
  %57 = bitcast %struct.ref_s* %0 to float*
  %58 = load float, float* %57, align 8
  %59 = fcmp oeq float %58, %56
  br label %60

60:                                               ; preds = %53, %48
  %61 = phi i1 [ false, %48 ], [ %59, %53 ]
  br label %202

62:                                               ; preds = %28
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 0, i32 1
  %64 = load i16, i16* %63, align 8
  %65 = and i16 %64, 252
  %.not9 = icmp eq i16 %65, 52
  br i1 %.not9, label %67, label %66

66:                                               ; preds = %62
  br label %202

67:                                               ; preds = %62
  %68 = call %struct.ref_s* @name_string_ref(%struct.ref_s* noundef %0, %struct.ref_s* noundef nonnull %3) #8
  br label %77

69:                                               ; preds = %28
  %70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 0, i32 1
  %71 = load i16, i16* %70, align 8
  %72 = and i16 %71, 252
  %.not8 = icmp eq i16 %72, 28
  br i1 %.not8, label %74, label %73

73:                                               ; preds = %69
  br label %202

74:                                               ; preds = %69
  %75 = call %struct.ref_s* @name_string_ref(%struct.ref_s* noundef %1, %struct.ref_s* noundef nonnull %3) #8
  br label %77

76:                                               ; preds = %28
  br label %202

77:                                               ; preds = %74, %67
  %.02 = phi %struct.ref_s* [ %3, %74 ], [ %1, %67 ]
  %.01 = phi %struct.ref_s* [ %0, %74 ], [ %3, %67 ]
  br label %78

78:                                               ; preds = %77, %26
  %.13 = phi %struct.ref_s* [ %.02, %77 ], [ %1, %26 ]
  %.1 = phi %struct.ref_s* [ %.01, %77 ], [ %0, %26 ]
  %79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.1, i64 0, i32 1
  %80 = load i16, i16* %79, align 8
  %81 = and i16 %80, 192
  %.not6 = icmp eq i16 %81, 0
  br i1 %.not6, label %83, label %82

82:                                               ; preds = %78
  br label %88

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.1, i64 0, i32 1
  %85 = load i16, i16* %84, align 8
  %86 = lshr i16 %85, 2
  %87 = and i16 %86, 63
  br label %88

88:                                               ; preds = %83, %82
  %89 = phi i16 [ 9, %82 ], [ %87, %83 ]
  switch i16 %89, label %201 [
    i16 0, label %90
    i16 10, label %90
    i16 1, label %104
    i16 2, label %110
    i16 3, label %116
    i16 4, label %122
    i16 5, label %128
    i16 6, label %134
    i16 8, label %134
    i16 7, label %135
    i16 9, label %141
    i16 11, label %147
    i16 12, label %153
    i16 13, label %159
    i16 14, label %171
    i16 15, label %195
  ]

90:                                               ; preds = %88, %88
  %91 = bitcast %struct.ref_s* %.1 to %struct.ref_s**
  %92 = load %struct.ref_s*, %struct.ref_s** %91, align 8
  %93 = bitcast %struct.ref_s* %.13 to %struct.ref_s**
  %94 = load %struct.ref_s*, %struct.ref_s** %93, align 8
  %95 = icmp eq %struct.ref_s* %92, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.1, i64 0, i32 2
  %98 = load i16, i16* %97, align 2
  %99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.13, i64 0, i32 2
  %100 = load i16, i16* %99, align 2
  %101 = icmp eq i16 %98, %100
  br label %102

102:                                              ; preds = %96, %90
  %103 = phi i1 [ false, %90 ], [ %101, %96 ]
  br label %202

104:                                              ; preds = %88
  %105 = bitcast %struct.ref_s* %.1 to i16*
  %106 = load i16, i16* %105, align 8
  %107 = bitcast %struct.ref_s* %.13 to i16*
  %108 = load i16, i16* %107, align 8
  %109 = icmp eq i16 %106, %108
  br label %202

110:                                              ; preds = %88
  %111 = bitcast %struct.ref_s* %.1 to %struct.dict_s**
  %112 = load %struct.dict_s*, %struct.dict_s** %111, align 8
  %113 = bitcast %struct.ref_s* %.13 to %struct.dict_s**
  %114 = load %struct.dict_s*, %struct.dict_s** %113, align 8
  %115 = icmp eq %struct.dict_s* %112, %114
  br label %202

116:                                              ; preds = %88
  %117 = bitcast %struct.ref_s* %.1 to %struct.file_entry_s**
  %118 = load %struct.file_entry_s*, %struct.file_entry_s** %117, align 8
  %119 = bitcast %struct.ref_s* %.13 to %struct.file_entry_s**
  %120 = load %struct.file_entry_s*, %struct.file_entry_s** %119, align 8
  %121 = icmp eq %struct.file_entry_s* %118, %120
  br label %202

122:                                              ; preds = %88
  %123 = bitcast %struct.ref_s* %.1 to %struct.gs_font_s**
  %124 = load %struct.gs_font_s*, %struct.gs_font_s** %123, align 8
  %125 = bitcast %struct.ref_s* %.13 to %struct.gs_font_s**
  %126 = load %struct.gs_font_s*, %struct.gs_font_s** %125, align 8
  %127 = icmp eq %struct.gs_font_s* %124, %126
  br label %202

128:                                              ; preds = %88
  %129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.1, i64 0, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.13, i64 0, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %130, %132
  br label %202

134:                                              ; preds = %88, %88
  br label %202

135:                                              ; preds = %88
  %136 = bitcast %struct.ref_s* %.1 to %struct.name_s**
  %137 = load %struct.name_s*, %struct.name_s** %136, align 8
  %138 = bitcast %struct.ref_s* %.13 to %struct.name_s**
  %139 = load %struct.name_s*, %struct.name_s** %138, align 8
  %140 = icmp eq %struct.name_s* %137, %139
  br label %202

141:                                              ; preds = %88
  %142 = bitcast %struct.ref_s* %.1 to i32 (%struct.ref_s*)**
  %143 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %142, align 8
  %144 = bitcast %struct.ref_s* %.13 to i32 (%struct.ref_s*)**
  %145 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %144, align 8
  %146 = icmp eq i32 (%struct.ref_s*)* %143, %145
  br label %202

147:                                              ; preds = %88
  %148 = bitcast %struct.ref_s* %.1 to float*
  %149 = load float, float* %148, align 8
  %150 = bitcast %struct.ref_s* %.13 to float*
  %151 = load float, float* %150, align 8
  %152 = fcmp oeq float %149, %151
  br label %202

153:                                              ; preds = %88
  %154 = bitcast %struct.ref_s* %.1 to %struct.vm_save_s**
  %155 = load %struct.vm_save_s*, %struct.vm_save_s** %154, align 8
  %156 = bitcast %struct.ref_s* %.13 to %struct.vm_save_s**
  %157 = load %struct.vm_save_s*, %struct.vm_save_s** %156, align 8
  %158 = icmp eq %struct.vm_save_s* %155, %157
  br label %202

159:                                              ; preds = %88
  %160 = bitcast %struct.ref_s* %.1 to i8**
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.1, i64 0, i32 2
  %163 = load i16, i16* %162, align 2
  %164 = zext i16 %163 to i32
  %165 = bitcast %struct.ref_s* %.13 to i8**
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.13, i64 0, i32 2
  %168 = load i16, i16* %167, align 2
  %169 = zext i16 %168 to i32
  %170 = call i32 @bytes_compare(i8* noundef %161, i32 noundef %164, i8* noundef %166, i32 noundef %169)
  %.not7 = icmp eq i32 %170, 0
  br label %202

171:                                              ; preds = %88
  %172 = bitcast %struct.ref_s* %.1 to %struct.gs_color_s**
  %173 = load %struct.gs_color_s*, %struct.gs_color_s** %172, align 8
  %174 = bitcast %struct.ref_s* %.13 to %struct.gs_color_s**
  %175 = load %struct.gs_color_s*, %struct.gs_color_s** %174, align 8
  %176 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %173, i64 0, i32 0
  %177 = load i16, i16* %176, align 2
  %178 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %175, i64 0, i32 0
  %179 = load i16, i16* %178, align 2
  %180 = icmp eq i16 %177, %179
  br i1 %180, label %181, label %193

181:                                              ; preds = %171
  %182 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %173, i64 0, i32 1
  %183 = load i16, i16* %182, align 2
  %184 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %175, i64 0, i32 1
  %185 = load i16, i16* %184, align 2
  %186 = icmp eq i16 %183, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %173, i64 0, i32 2
  %189 = load i16, i16* %188, align 2
  %190 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %175, i64 0, i32 2
  %191 = load i16, i16* %190, align 2
  %192 = icmp eq i16 %189, %191
  br label %193

193:                                              ; preds = %187, %181, %171
  %194 = phi i1 [ false, %181 ], [ false, %171 ], [ %192, %187 ]
  br label %202

195:                                              ; preds = %88
  %196 = bitcast %struct.ref_s* %.1 to %struct.gx_device_s**
  %197 = load %struct.gx_device_s*, %struct.gx_device_s** %196, align 8
  %198 = bitcast %struct.ref_s* %.13 to %struct.gx_device_s**
  %199 = load %struct.gx_device_s*, %struct.gx_device_s** %198, align 8
  %200 = icmp eq %struct.gx_device_s* %197, %199
  br label %202

201:                                              ; preds = %88
  br label %202

202:                                              ; preds = %201, %195, %193, %159, %153, %147, %141, %135, %134, %128, %122, %116, %110, %104, %102, %76, %73, %66, %60, %46
  %.0.shrunk = phi i1 [ false, %76 ], [ false, %73 ], [ false, %201 ], [ %200, %195 ], [ %194, %193 ], [ %.not7, %159 ], [ %158, %153 ], [ %152, %147 ], [ %146, %141 ], [ %140, %135 ], [ true, %134 ], [ %133, %128 ], [ %127, %122 ], [ %121, %116 ], [ %115, %110 ], [ %109, %104 ], [ %103, %102 ], [ false, %66 ], [ %61, %60 ], [ %47, %46 ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

declare dso_local %struct.ref_s* @name_string_ref(%struct.ref_s* noundef, %struct.ref_s* noundef) #3

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @bytes_compare(i8* nocapture noundef readonly %0, i32 noundef %1, i8* nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = icmp ult i32 %3, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6, %4
  %.03 = phi i32 [ %3, %6 ], [ %1, %4 ]
  br label %8

8:                                                ; preds = %18, %7
  %.1 = phi i32 [ %.03, %7 ], [ %9, %18 ]
  %.02 = phi i8* [ %0, %7 ], [ %20, %18 ]
  %.01 = phi i8* [ %2, %7 ], [ %19, %18 ]
  %9 = add i32 %.1, -1
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %21, label %10

10:                                               ; preds = %8
  %11 = load i8, i8* %.02, align 1
  %12 = load i8, i8* %.01, align 1
  %.not5 = icmp eq i8 %11, %12
  br i1 %.not5, label %18, label %13

13:                                               ; preds = %10
  %14 = load i8, i8* %.02, align 1
  %15 = load i8, i8* %.01, align 1
  %16 = icmp ult i8 %14, %15
  %17 = select i1 %16, i32 -1, i32 1
  br label %29

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, i8* %.01, i64 1
  %20 = getelementptr inbounds i8, i8* %.02, i64 1
  br label %8, !llvm.loop !6

21:                                               ; preds = %8
  %22 = icmp eq i32 %1, %3
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %27

24:                                               ; preds = %21
  %25 = icmp ult i32 %1, %3
  %26 = select i1 %25, i32 -1, i32 1
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32 [ 0, %23 ], [ %26, %24 ]
  br label %29

29:                                               ; preds = %27, %13
  %.0 = phi i32 [ %17, %13 ], [ %28, %27 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @string_hash(i8* nocapture noundef readonly %0, i32 noundef %1) #4 {
  br label %3

3:                                                ; preds = %4, %2
  %.02 = phi i8* [ %0, %2 ], [ %7, %4 ]
  %.01 = phi i32 [ 0, %2 ], [ %10, %4 ]
  %.0 = phi i32 [ %1, %2 ], [ %5, %4 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %11, label %4

4:                                                ; preds = %3
  %5 = add i32 %.0, -1
  %6 = mul i32 %.01, 19
  %7 = getelementptr inbounds i8, i8* %.02, i64 1
  %8 = load i8, i8* %.02, align 1
  %9 = zext i8 %8 to i32
  %10 = add i32 %6, %9
  br label %3, !llvm.loop !7

11:                                               ; preds = %3
  ret i32 %.01
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @string_to_ref(i8* noundef %0, %struct.ref_s* nocapture noundef writeonly %1, i8* noundef %2) #2 {
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #9
  %5 = trunc i64 %4 to i32
  %6 = call i8* @alloc(i32 noundef %5, i32 noundef 1, i8* noundef %2) #8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  br label %15

9:                                                ; preds = %3
  %10 = and i64 %4, 4294967295
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %6, i8* align 1 %0, i64 %10, i1 false)
  %11 = bitcast %struct.ref_s* %1 to i8**
  store i8* %6, i8** %11, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 0, i32 1
  store i16 822, i16* %12, align 8
  %13 = trunc i64 %4 to i16
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 0, i32 2
  store i16 %13, i16* %14, align 2
  br label %15

15:                                               ; preds = %9, %8
  %.0 = phi i32 [ -25, %8 ], [ 0, %9 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #5

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @ref_to_string(%struct.ref_s* nocapture noundef readonly %0, i8* noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %4 = load i16, i16* %3, align 2
  %5 = zext i16 %4 to i32
  %6 = add nuw nsw i32 %5, 1
  %7 = call i8* @alloc(i32 noundef %6, i32 noundef 1, i8* noundef %1) #8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %16

10:                                               ; preds = %2
  %11 = bitcast %struct.ref_s* %0 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = zext i16 %4 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %7, i8* align 1 %12, i64 %13, i1 false)
  %14 = zext i16 %4 to i64
  %15 = getelementptr inbounds i8, i8* %7, i64 %14
  store i8 0, i8* %15, align 1
  br label %16

16:                                               ; preds = %10, %9
  %.0 = phi i8* [ null, %9 ], [ %7, %10 ]
  ret i8* %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @num_params(%struct.ref_s* nocapture noundef readonly %0, i32 noundef %1, float* noundef writeonly %2) #6 {
  br label %4

4:                                                ; preds = %31, %3
  %.03 = phi i32 [ 0, %3 ], [ %.1, %31 ]
  %.02 = phi i32 [ %1, %3 ], [ %5, %31 ]
  %.01 = phi %struct.ref_s* [ %0, %3 ], [ %32, %31 ]
  %5 = add nsw i32 %.02, -1
  %6 = icmp sgt i32 %.02, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %4
  %8 = shl i32 %.03, 1
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = lshr i16 %10, 2
  %12 = and i16 %11, 63
  %13 = zext i16 %12 to i32
  switch i32 %13, label %30 [
    i32 11, label %14
    i32 5, label %21
  ]

14:                                               ; preds = %7
  %.not5 = icmp eq float* %2, null
  br i1 %.not5, label %20, label %15

15:                                               ; preds = %14
  %16 = bitcast %struct.ref_s* %.01 to float*
  %17 = load float, float* %16, align 8
  %18 = sext i32 %5 to i64
  %19 = getelementptr inbounds float, float* %2, i64 %18
  store float %17, float* %19, align 4
  br label %20

20:                                               ; preds = %15, %14
  br label %31

21:                                               ; preds = %7
  %.not = icmp eq float* %2, null
  br i1 %.not, label %28, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sitofp i64 %24 to float
  %26 = sext i32 %5 to i64
  %27 = getelementptr inbounds float, float* %2, i64 %26
  store float %25, float* %27, align 4
  br label %28

28:                                               ; preds = %22, %21
  %29 = or i32 %8, 1
  br label %31

30:                                               ; preds = %7
  br label %34

31:                                               ; preds = %28, %20
  %.1 = phi i32 [ %29, %28 ], [ %8, %20 ]
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 -1
  br label %4, !llvm.loop !8

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %33, %30
  %.0 = phi i32 [ -20, %30 ], [ %.03, %33 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @real_param(%struct.ref_s* nocapture noundef readonly %0, float* nocapture noundef writeonly %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 63
  %8 = zext i16 %7 to i32
  switch i32 %8, label %16 [
    i32 5, label %9
    i32 11, label %13
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sitofp i64 %11 to float
  br label %17

13:                                               ; preds = %3
  %14 = bitcast %struct.ref_s* %0 to float*
  %15 = load float, float* %14, align 8
  br label %17

16:                                               ; preds = %3
  br label %35

17:                                               ; preds = %13, %9
  %.01 = phi float [ %15, %13 ], [ %12, %9 ]
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %34, label %18

18:                                               ; preds = %17
  %19 = fcmp olt float %.01, 0.000000e+00
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = fpext float %.01 to double
  %22 = fcmp olt double %21, -1.000000e-05
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %35

24:                                               ; preds = %20
  br label %33

25:                                               ; preds = %18
  %26 = fcmp ogt float %.01, 1.000000e+00
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = fpext float %.01 to double
  %29 = fcmp ogt double %28, 1.000010e+00
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %35

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %25
  %.1 = phi float [ 1.000000e+00, %31 ], [ %.01, %25 ]
  br label %33

33:                                               ; preds = %32, %24
  %.2 = phi float [ 0.000000e+00, %24 ], [ %.1, %32 ]
  br label %34

34:                                               ; preds = %33, %17
  %.3 = phi float [ %.2, %33 ], [ %.01, %17 ]
  store float %.3, float* %1, align 4
  br label %35

35:                                               ; preds = %34, %30, %23, %16
  %.0 = phi i32 [ -20, %16 ], [ -15, %23 ], [ 0, %34 ], [ -15, %30 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @read_matrix(%struct.ref_s* nocapture noundef readonly %0, %struct.gs_matrix_s* nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %4 = load i16, i16* %3, align 8
  %5 = lshr i16 %4, 2
  %6 = and i16 %5, 63
  %7 = zext i16 %6 to i32
  switch i32 %7, label %8 [
    i32 0, label %9
    i32 10, label %9
  ]

8:                                                ; preds = %2
  br label %45

9:                                                ; preds = %2, %2
  br label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %12 = load i16, i16* %11, align 2
  %.not = icmp eq i16 %12, 6
  br i1 %.not, label %14, label %13

13:                                               ; preds = %10
  br label %45

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = and i16 %16, 512
  %.not3 = icmp eq i16 %17, 0
  br i1 %.not3, label %18, label %19

18:                                               ; preds = %14
  br label %45

19:                                               ; preds = %14
  %20 = bitcast %struct.ref_s* %0 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast %struct.gs_matrix_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %22, i8* noundef nonnull align 8 dereferenceable(96) %21, i64 96, i1 false)
  %23 = bitcast %struct.gs_matrix_s* %1 to %struct.ref_s*
  br label %24

24:                                               ; preds = %41, %19
  %.02 = phi %struct.ref_s* [ %23, %19 ], [ %42, %41 ]
  %.01 = phi i32 [ 0, %19 ], [ %43, %41 ]
  %25 = icmp ult i32 %.01, 6
  br i1 %25, label %26, label %44

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 0, i32 1
  %28 = load i16, i16* %27, align 8
  %29 = lshr i16 %28, 2
  %30 = and i16 %29, 63
  %31 = zext i16 %30 to i32
  switch i32 %31, label %32 [
    i32 5, label %33
    i32 11, label %39
  ]

32:                                               ; preds = %26
  br label %45

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 0, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sitofp i64 %35 to float
  %37 = bitcast %struct.ref_s* %.02 to float*
  store float %36, float* %37, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 0, i32 1
  store i16 44, i16* %38, align 8
  br label %39

39:                                               ; preds = %33, %26
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  %43 = add nuw nsw i32 %.01, 1
  br label %24, !llvm.loop !9

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %44, %32, %18, %13, %8
  %.0 = phi i32 [ -20, %8 ], [ -15, %13 ], [ -20, %32 ], [ 0, %44 ], [ -7, %18 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @write_matrix(%struct.ref_s* nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %.not = icmp eq i16 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  br label %35

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %8 = load i16, i16* %7, align 2
  %.not3 = icmp eq i16 %8, 6
  br i1 %.not3, label %10, label %9

9:                                                ; preds = %6
  br label %35

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = and i16 %12, 256
  %.not4 = icmp eq i16 %13, 0
  br i1 %.not4, label %14, label %15

14:                                               ; preds = %10
  br label %35

15:                                               ; preds = %10
  %16 = bitcast %struct.ref_s* %0 to %struct.ref_s**
  %17 = load %struct.ref_s*, %struct.ref_s** %16, align 8
  br label %18

18:                                               ; preds = %31, %15
  %.02 = phi %struct.ref_s* [ %17, %15 ], [ %33, %31 ]
  %.01 = phi i32 [ 5, %15 ], [ %32, %31 ]
  %19 = icmp sgt i32 %.01, -1
  br i1 %19, label %20, label %34

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 0, i32 1
  %22 = load i16, i16* %21, align 8
  %23 = lshr i16 %22, 2
  %24 = and i16 %23, 63
  %25 = zext i16 %24 to i32
  switch i32 %25, label %26 [
    i32 11, label %29
    i32 5, label %29
  ]

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 0, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 0, i32 1
  store i16 20, i16* %28, align 8
  br label %29

29:                                               ; preds = %26, %20, %20
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  %32 = add nsw i32 %.01, -1
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  br label %18, !llvm.loop !10

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34, %14, %9, %5
  %.0 = phi i32 [ -20, %5 ], [ -15, %9 ], [ 0, %34 ], [ -7, %14 ]
  ret i32 %.0
}

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

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
