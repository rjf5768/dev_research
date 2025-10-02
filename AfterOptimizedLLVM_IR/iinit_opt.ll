; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/iinit.c'
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
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.ref_s, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ref_s* %1, %struct.ref_s** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 (i8*, %struct.ref_s*, ...) bitcast (i32 (...)* @name_enter to i32 (i8*, %struct.ref_s*, ...)*)(i8* noundef %6, %struct.ref_s* noundef %5)
  %8 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %9 = call i32 @dict_put(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef %5, %struct.ref_s* noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 noundef 43)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 noundef 1) #4
  unreachable

16:                                               ; preds = %2
  ret void
}

declare dso_local i32 @name_enter(...) #1

declare dso_local i32 @dict_put(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @initial_enter_op(i8* noundef %0, i32 (%struct.ref_s*)* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32 (%struct.ref_s*)*, align 8
  %5 = alloca %struct.ref_s, align 8
  store i8* %0, i8** %3, align 8
  store i32 (%struct.ref_s*)* %1, i32 (%struct.ref_s*)** %4, align 8
  %6 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %4, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %8 = bitcast %union.v* %7 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* %6, i32 (%struct.ref_s*)** %8, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 37, i16* %9, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = sub nsw i32 %12, 48
  %14 = trunc i32 %13 to i16
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 2
  store i16 %14, i16* %15, align 2
  %16 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @interp_fix_op to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %5)
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  call void @initial_enter_name(i8* noundef %18, %struct.ref_s* noundef %5)
  ret void
}

declare dso_local i32 @interp_fix_op(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @obj_init() #0 {
  %1 = alloca %struct.ref_s, align 8
  %2 = alloca %struct.ref_s, align 8
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %4 = bitcast %union.v* %3 to i64*
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  store i16 24, i16* %5, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %7 = bitcast %union.v* %6 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  store i16 32, i16* %8, align 8
  %9 = call i32 @dict_create(i32 noundef 401, %struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 1) to i8*), i8* align 8 bitcast ([0 x %struct.ref_s]* @dstack to i8*), i64 16, i1 false)
  call void @initial_enter_name(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.ref_s* noundef %1)
  call void @initial_enter_name(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.ref_s* noundef %2)
  %10 = call i32 (i8*, %struct.ref_s*, ...) bitcast (i32 (...)* @name_enter to i32 (i8*, %struct.ref_s*, ...)*)(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.ref_s* noundef @name_errordict)
  %11 = call i32 (i8*, %struct.ref_s*, ...) bitcast (i32 (...)* @name_enter to i32 (i8*, %struct.ref_s*, ...)*)(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), %struct.ref_s* noundef @name_ErrorNames)
  ret void
}

declare dso_local i32 @dict_create(i32 noundef, %struct.ref_s* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @op_init() #0 {
  call void (...) @zarith_op_init()
  call void (...) @zarray_op_init()
  call void (...) @zcontrol_op_init()
  call void (...) @zdict_op_init()
  call void (...) @zfile_op_init()
  call void (...) @zgeneric_op_init()
  call void (...) @zmath_op_init()
  call void (...) @zmisc_op_init()
  call void (...) @zpacked_op_init()
  call void (...) @zrelbit_op_init()
  call void (...) @zstack_op_init()
  call void (...) @zstring_op_init()
  call void (...) @ztype_op_init()
  call void (...) @zvmem_op_init()
  call void (...) @zchar_op_init()
  call void (...) @zcolor_op_init()
  call void (...) @zdevice_op_init()
  call void (...) @zfont_op_init()
  call void (...) @zgstate_op_init()
  call void (...) @zht_op_init()
  call void (...) @zmatrix_op_init()
  call void (...) @zpaint_op_init()
  call void (...) @zpath_op_init()
  call void (...) @zpath2_op_init()
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
define dso_local void @z_op_init(%struct.op_def* noundef %0) #0 {
  %2 = alloca %struct.op_def*, align 8
  %3 = alloca %struct.op_def*, align 8
  store %struct.op_def* %0, %struct.op_def** %2, align 8
  %4 = load %struct.op_def*, %struct.op_def** %2, align 8
  store %struct.op_def* %4, %struct.op_def** %3, align 8
  br label %5

5:                                                ; preds = %10, %1
  %6 = load %struct.op_def*, %struct.op_def** %3, align 8
  %7 = getelementptr inbounds %struct.op_def, %struct.op_def* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load %struct.op_def*, %struct.op_def** %3, align 8
  %12 = getelementptr inbounds %struct.op_def, %struct.op_def* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.op_def*, %struct.op_def** %3, align 8
  %15 = getelementptr inbounds %struct.op_def, %struct.op_def* %14, i32 0, i32 1
  %16 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %15, align 8
  call void @initial_enter_op(i8* noundef %13, i32 (%struct.ref_s*)* noundef %16)
  %17 = load %struct.op_def*, %struct.op_def** %3, align 8
  %18 = getelementptr inbounds %struct.op_def, %struct.op_def* %17, i32 1
  store %struct.op_def* %18, %struct.op_def** %3, align 8
  br label %5, !llvm.loop !4

19:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
