; ModuleID = './zcolor.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.gs_state_s = type opaque
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%_wyvern_thunk_type.0 = type { %struct.ref_s* (%_wyvern_thunk_type.0*)*, %struct.ref_s*, i1, %struct.ref_s* }
%struct.gs_color_s = type opaque

@osp = external dso_local global %struct.ref_s*, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@igs = external dso_local global %struct.gs_state_s*, align 8
@zcolor_op_init.my_defs = internal global [3 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentgscolor }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetgscolor }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"0currentgscolor\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"1setgscolor\00", align 1
@gs_color_sizeof = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"make_color\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentgscolor(%struct.ref_s* noundef %0) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store %struct.ref_s* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_zcurrentgscolor_294978223, %struct.ref_s* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_thunk_arg_gep_, align 8
  %_wyvern_thunkcall3 = call %struct.ref_s* @_wyvern_slice_memo_zcurrentgscolor_294978223(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  store %struct.ref_s* %_wyvern_thunkcall3, %struct.ref_s** @osp, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %_wyvern_thunkcall2 = call %struct.ref_s* @_wyvern_slice_memo_zcurrentgscolor_294978223(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %3 = icmp ugt %struct.ref_s* %_wyvern_thunkcall2, %2
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  store %struct.ref_s* %6, %struct.ref_s** @osp, align 8
  br label %20

7:                                                ; preds = %1
  %8 = call i32 @_wyvern_calleeclone_make_color_0904082039(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %_wyvern_thunkcall = call %struct.ref_s* @_wyvern_slice_memo_zcurrentgscolor_294978223(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %12 = bitcast %struct.ref_s* %_wyvern_thunkcall to %struct.gs_color_s**
  %13 = load %struct.gs_color_s*, %struct.gs_color_s** %12, align 8
  %14 = call i32 @gs_currentgscolor(%struct.gs_state_s* noundef %11, %struct.gs_color_s* noundef %13) #3
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %7
  %.01 = phi i32 [ %8, %7 ], [ %14, %10 ]
  %17 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  store %struct.ref_s* %18, %struct.ref_s** @osp, align 8
  br label %19

19:                                               ; preds = %16, %10
  %.1 = phi i32 [ %.01, %16 ], [ %14, %10 ]
  br label %20

20:                                               ; preds = %19, %4
  %.0 = phi i32 [ -16, %4 ], [ %.1, %19 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @make_color(%struct.ref_s* nocapture noundef writeonly %0) #0 {
  %2 = load i32, i32* @gs_color_sizeof, align 4
  %3 = call i8* @alloc(i32 noundef 1, i32 noundef %2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #3
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %9

6:                                                ; preds = %1
  %7 = bitcast %struct.ref_s* %0 to i8**
  store i8* %3, i8** %7, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 56, i16* %8, align 8
  br label %9

9:                                                ; preds = %6, %5
  %.0 = phi i32 [ -25, %5 ], [ 0, %6 ]
  ret i32 %.0
}

declare dso_local i32 @gs_currentgscolor(%struct.gs_state_s* noundef, %struct.gs_color_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetgscolor(%struct.ref_s* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 56
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %17

7:                                                ; preds = %1
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %9 = bitcast %struct.ref_s* %0 to %struct.gs_color_s**
  %10 = load %struct.gs_color_s*, %struct.gs_color_s** %9, align 8
  %11 = call i32 @gs_setgscolor(%struct.gs_state_s* noundef %8, %struct.gs_color_s* noundef %10) #3
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %17

14:                                               ; preds = %7
  %15 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  store %struct.ref_s* %16, %struct.ref_s** @osp, align 8
  br label %17

17:                                               ; preds = %14, %13, %6
  %.0 = phi i32 [ %11, %13 ], [ 0, %14 ], [ -20, %6 ]
  ret i32 %.0
}

declare dso_local i32 @gs_setgscolor(%struct.gs_state_s* noundef, %struct.gs_color_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zcolor_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([3 x %struct.op_def], [3 x %struct.op_def]* @zcolor_op_init.my_defs, i64 0, i64 0)) #3
  ret void
}

declare dso_local i32 @z_op_init(...) #1

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
define %struct.ref_s* @_wyvern_slice_memo_zcurrentgscolor_294978223(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #2 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load %struct.ref_s*, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load %struct.ref_s*, %struct.ref_s** %_wyvern_arg_addr_, align 8
  %0 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_arg_, i64 1
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_make_color_0904082039(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr) #0 {
  %1 = load i32, i32* @gs_color_sizeof, align 4
  %2 = call i8* @alloc(i32 noundef 1, i32 noundef %1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #3
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %8

5:                                                ; preds = %0
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load %struct.ref_s* (%_wyvern_thunk_type.0*)*, %struct.ref_s* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call %struct.ref_s* %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3
  %6 = bitcast %struct.ref_s* %_wyvern_thunkcall3 to i8**
  store i8* %2, i8** %6, align 8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load %struct.ref_s* (%_wyvern_thunk_type.0*)*, %struct.ref_s* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call %struct.ref_s* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 0, i32 1
  store i16 56, i16* %7, align 8
  br label %8

8:                                                ; preds = %5, %4
  %.0 = phi i32 [ -25, %4 ], [ 0, %5 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
