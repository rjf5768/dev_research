; ModuleID = './iinit.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/iinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@dstack = external dso_local global [0 x %struct.ref_s], align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/iinit.c\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"dict_put failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"errordict\00", align 1
@name_errordict = dso_local global %struct.ref_s zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"ErrorNames\00", align 1
@name_ErrorNames = dso_local global %struct.ref_s zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @initial_enter_name(i8* noundef %0, %struct.ref_s* noundef %1) #0 {
  %3 = alloca %struct.ref_s, align 8
  %4 = call i32 (i8*, %struct.ref_s*, ...) bitcast (i32 (...)* @name_enter to i32 (i8*, %struct.ref_s*, ...)*)(i8* noundef %0, %struct.ref_s* noundef nonnull %3) #5
  %5 = call i32 @dict_put(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef nonnull %3, %struct.ref_s* noundef %1) #5
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %11, label %6

6:                                                ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 43) #6
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %9) #7
  call void @exit(i32 noundef 1) #8
  unreachable

11:                                               ; preds = %2
  ret void
}

declare dso_local i32 @name_enter(...) #1

declare dso_local i32 @dict_put(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @initial_enter_op(i8* noundef %0, i32 (%struct.ref_s*)* noundef %1) #0 {
  %3 = alloca %struct.ref_s, align 8
  %4 = bitcast %struct.ref_s* %3 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* %1, i32 (%struct.ref_s*)** %4, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0, i32 1
  store i16 37, i16* %5, align 8
  %6 = load i8, i8* %0, align 1
  %7 = sext i8 %6 to i16
  %8 = add nsw i16 %7, -48
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0, i32 2
  store i16 %8, i16* %9, align 2
  %10 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @interp_fix_op to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef nonnull %3) #5
  %11 = getelementptr inbounds i8, i8* %0, i64 1
  call void @initial_enter_name(i8* noundef nonnull %11, %struct.ref_s* noundef nonnull %3)
  ret void
}

declare dso_local i32 @interp_fix_op(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @obj_init() #0 {
  %1 = alloca %struct.ref_s, align 8
  %2 = alloca %struct.ref_s, align 8
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 0, i32 0, i32 0
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 0, i32 1
  store i16 24, i16* %4, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 1
  store i16 32, i16* %6, align 8
  %7 = call i32 @dict_create(i32 noundef 401, %struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0)) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 1) to i8*), i8* noundef nonnull align 8 dereferenceable(16) bitcast ([0 x %struct.ref_s]* @dstack to i8*), i64 16, i1 false)
  call void @initial_enter_name(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.ref_s* noundef nonnull %1)
  call void @initial_enter_name(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.ref_s* noundef nonnull %2)
  %8 = call i32 (i8*, %struct.ref_s*, ...) bitcast (i32 (...)* @name_enter to i32 (i8*, %struct.ref_s*, ...)*)(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_errordict) #5
  %9 = call i32 (i8*, %struct.ref_s*, ...) bitcast (i32 (...)* @name_enter to i32 (i8*, %struct.ref_s*, ...)*)(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_ErrorNames) #5
  ret void
}

declare dso_local i32 @dict_create(i32 noundef, %struct.ref_s* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @op_init() #0 {
  call void (...) @zarith_op_init() #5
  call void (...) @zarray_op_init() #5
  call void (...) @zcontrol_op_init() #5
  call void (...) @zdict_op_init() #5
  call void (...) @zfile_op_init() #5
  call void (...) @zgeneric_op_init() #5
  call void (...) @zmath_op_init() #5
  call void (...) @zmisc_op_init() #5
  call void (...) @zpacked_op_init() #5
  call void (...) @zrelbit_op_init() #5
  call void (...) @zstack_op_init() #5
  call void (...) @zstring_op_init() #5
  call void (...) @ztype_op_init() #5
  call void (...) @zvmem_op_init() #5
  call void (...) @zchar_op_init() #5
  call void (...) @zcolor_op_init() #5
  call void (...) @zdevice_op_init() #5
  call void (...) @zfont_op_init() #5
  call void (...) @zgstate_op_init() #5
  call void (...) @zht_op_init() #5
  call void (...) @zmatrix_op_init() #5
  call void (...) @zpaint_op_init() #5
  call void (...) @zpath_op_init() #5
  call void (...) @zpath2_op_init() #5
  ret void
}

declare dso_local void @zarith_op_init(...) #1

declare dso_local void @zarray_op_init(...) #1

declare dso_local void @zcontrol_op_init(...) #1

declare dso_local void @zdict_op_init(...) #1

declare dso_local void @zfile_op_init(...) #1

declare dso_local void @zgeneric_op_init(...) #1

declare dso_local void @zmath_op_init(...) #1

declare dso_local void @zmisc_op_init(...) #1

declare dso_local void @zpacked_op_init(...) #1

declare dso_local void @zrelbit_op_init(...) #1

declare dso_local void @zstack_op_init(...) #1

declare dso_local void @zstring_op_init(...) #1

declare dso_local void @ztype_op_init(...) #1

declare dso_local void @zvmem_op_init(...) #1

declare dso_local void @zchar_op_init(...) #1

declare dso_local void @zcolor_op_init(...) #1

declare dso_local void @zdevice_op_init(...) #1

declare dso_local void @zfont_op_init(...) #1

declare dso_local void @zgstate_op_init(...) #1

declare dso_local void @zht_op_init(...) #1

declare dso_local void @zmatrix_op_init(...) #1

declare dso_local void @zpaint_op_init(...) #1

declare dso_local void @zpath_op_init(...) #1

declare dso_local void @zpath2_op_init(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @z_op_init(%struct.op_def* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %.0 = phi %struct.op_def* [ %0, %1 ], [ %10, %5 ]
  %3 = getelementptr inbounds %struct.op_def, %struct.op_def* %.0, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %.not = icmp eq i8* %4, null
  br i1 %.not, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.op_def, %struct.op_def* %.0, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds %struct.op_def, %struct.op_def* %.0, i64 0, i32 1
  %9 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %8, align 8
  call void @initial_enter_op(i8* noundef %7, i32 (%struct.ref_s*)* noundef %9)
  %10 = getelementptr inbounds %struct.op_def, %struct.op_def* %.0, i64 1
  br label %2, !llvm.loop !4

11:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { cold }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
