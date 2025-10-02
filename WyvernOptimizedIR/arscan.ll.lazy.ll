; ModuleID = './arscan.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/arscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_hdr = type { [16 x i8], [12 x i8], [6 x i8], [6 x i8], [8 x i8], [10 x i8], [2 x i8] }
%_wyvern_thunk_type.0 = type { i64 (%_wyvern_thunk_type.0*)*, i64, i1, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"!<arch>\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"`\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @ar_scan(i8* noundef %0, i64 (...)* nocapture noundef readonly %1, i64 noundef %2) #0 {
  %4 = alloca [8 x i8], align 1
  %5 = alloca %struct.ar_hdr, align 1
  %6 = alloca [17 x i8], align 16
  %7 = alloca i32, align 4
  %8 = call i32 (i8*, i32, ...) @open(i8* noundef %0, i32 noundef 0, i32 noundef 0) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %77

11:                                               ; preds = %3
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %13 = call i64 @read(i32 noundef %8, i8* noundef nonnull %12, i64 noundef 8) #9
  %14 = trunc i64 %13 to i32
  %.not = icmp eq i32 %14, 8
  br i1 %.not, label %15, label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(8) %16, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 8)
  %.not4 = icmp eq i32 %bcmp, 0
  br i1 %.not4, label %19, label %17

17:                                               ; preds = %15, %11
  %18 = call i32 @close(i32 noundef %8) #9
  br label %77

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %74, %19
  %.02 = phi i64 [ 8, %19 ], [ %.13, %74 ]
  %21 = call i64 @lseek(i32 noundef %8, i64 noundef %.02, i32 noundef 0) #9
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @close(i32 noundef %8) #9
  br label %77

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %5, i64 0, i32 0, i64 0
  %27 = call i64 @read(i32 noundef %8, i8* noundef nonnull %26, i64 noundef 60) #9
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %75

31:                                               ; preds = %25
  %sext.mask = and i64 %27, 4294967295
  %.not5 = icmp eq i64 %sext.mask, 60
  br i1 %.not5, label %32, label %34

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %5, i64 0, i32 6, i64 0
  %bcmp6 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %33, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 2)
  %.not7 = icmp eq i32 %bcmp6, 0
  br i1 %.not7, label %36, label %34

34:                                               ; preds = %32, %31
  %35 = call i32 @close(i32 noundef %8) #9
  br label %77

36:                                               ; preds = %32
  %37 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 0
  %38 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %5, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %37, i8* noundef nonnull align 1 dereferenceable(16) %38, i64 16, i1 false)
  %39 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 16
  br label %40

40:                                               ; preds = %49, %36
  %.01 = phi i8* [ %39, %36 ], [ %.1, %49 ]
  %41 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 0
  %42 = icmp ugt i8* %.01, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds i8, i8* %.01, i64 -1
  %45 = load i8, i8* %44, align 1
  %46 = icmp eq i8 %45, 32
  br label %47

47:                                               ; preds = %43, %40
  %.1 = phi i8* [ %44, %43 ], [ %.01, %40 ]
  %48 = phi i1 [ %46, %43 ], [ false, %40 ]
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  store i8 0, i8* %.1, align 1
  br label %40, !llvm.loop !4

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %5, i64 0, i32 4, i64 0
  %52 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %51, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %7) #9
  %53 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %5, i64 0, i32 5, i64 0
  %54 = call i64 @atol(i8* noundef nonnull %53) #7
  %55 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 0
  %56 = add i64 %.02, 60
  %57 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %5, i64 0, i32 1, i64 0
  %58 = call i64 @atol(i8* noundef nonnull %57) #7
  %59 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %5, i64 0, i32 2, i64 0
  %60 = call i32 @atoi(i8* noundef nonnull %59) #7
  %61 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %5, i64 0, i32 3, i64 0
  %62 = call i32 @atoi(i8* noundef nonnull %61) #7
  %63 = load i32, i32* %7, align 4
  %64 = bitcast i64 (...)* %1 to i64 (i32, i8*, i64, i64, i64, i64, i32, i32, i32, i64, ...)*
  %65 = call i64 (i32, i8*, i64, i64, i64, i64, i32, i32, i32, i64, ...) %64(i32 noundef %8, i8* noundef nonnull %55, i64 noundef %.02, i64 noundef %56, i64 noundef %54, i64 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %63, i64 noundef %2) #9
  %.not8 = icmp eq i64 %65, 0
  br i1 %.not8, label %68, label %66

66:                                               ; preds = %50
  %67 = call i32 @close(i32 noundef %8) #9
  br label %77

68:                                               ; preds = %50
  %69 = add i64 %54, 60
  %70 = add i64 %.02, %69
  %71 = and i64 %70, 1
  %.not9 = icmp eq i64 %71, 0
  br i1 %.not9, label %74, label %72

72:                                               ; preds = %68
  %73 = add nsw i64 %70, 1
  br label %74

74:                                               ; preds = %72, %68
  %.13 = phi i64 [ %73, %72 ], [ %70, %68 ]
  br label %20

75:                                               ; preds = %30
  %76 = call i32 @close(i32 noundef %8) #9
  br label %77

77:                                               ; preds = %75, %66, %34, %23, %17, %10
  %.0 = phi i64 [ -1, %10 ], [ -2, %17 ], [ -2, %23 ], [ 0, %75 ], [ -2, %34 ], [ %65, %66 ]
  ret i64 %.0
}

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #1

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @close(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @atol(i8* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define dso_local i32 @ar_name_equal(i8* noundef %0, i8* noundef %1) #5 {
  %3 = call i8* @strrchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 47) #7
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8, i8* %3, i64 1
  br label %6

6:                                                ; preds = %4, %2
  %.01 = phi i8* [ %5, %4 ], [ %0, %2 ]
  %7 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %.01, i8* noundef nonnull dereferenceable(1) %1, i64 noundef 15) #7
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %8, label %9

8:                                                ; preds = %6
  br label %39

9:                                                ; preds = %6
  %10 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %.01, i8* noundef nonnull dereferenceable(1) %1, i64 noundef 13) #7
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %11, label %38

11:                                               ; preds = %9
  %12 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.01) #7
  %13 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #7
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %14, 15
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %1, i64 13
  %18 = load i8, i8* %17, align 1
  %19 = icmp eq i8 %18, 46
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, i8* %1, i64 14
  %22 = load i8, i8* %21, align 1
  %23 = icmp eq i8 %22, 111
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = add i64 %12, 4294967294
  %26 = and i64 %25, 4294967295
  %27 = getelementptr inbounds i8, i8* %.01, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = icmp eq i8 %28, 46
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = add i64 %12, 4294967295
  %32 = and i64 %31, 4294967295
  %33 = getelementptr inbounds i8, i8* %.01, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = icmp eq i8 %34, 111
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %39

37:                                               ; preds = %30, %24, %20, %16, %11
  br label %38

38:                                               ; preds = %37, %9
  br label %39

39:                                               ; preds = %38, %36, %8
  %.0 = phi i32 [ 0, %38 ], [ 1, %36 ], [ 1, %8 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ar_member_touch(i8* noundef %0, i8* noundef %1) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %3 = alloca %struct.ar_hdr, align 1
  %4 = alloca %struct.stat, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i64 (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_ar_member_touch_522378372, i64 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store i8* %1, i8** %_wyvern_thunk_arg_gep_, align 8
  %5 = call i64 @_wyvern_calleeclone_ar_scan_2964672970(i8* noundef %0, i64 (...)* noundef bitcast (i64 (i32, i8*, i64, i64, i64, i64, i32, i32, i32, i8*)* @ar_member_pos to i64 (...)*), %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = trunc i64 %5 to i32
  br label %59

9:                                                ; preds = %2
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %10, label %11

10:                                               ; preds = %9
  br label %59

11:                                               ; preds = %9
  %12 = call i32 (i8*, i32, ...) @open(i8* noundef %0, i32 noundef 2, i32 noundef 438) #9
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %59

15:                                               ; preds = %11
  %16 = call i64 @lseek(i32 noundef %12, i64 noundef %5, i32 noundef 0) #9
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %54

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %3, i64 0, i32 0, i64 0
  %21 = call i64 @read(i32 noundef %12, i8* noundef nonnull %20, i64 noundef 60) #9
  %.not2 = icmp eq i64 %21, 60
  br i1 %.not2, label %23, label %22

22:                                               ; preds = %19
  br label %54

23:                                               ; preds = %19
  %24 = call i64 @lseek(i32 noundef %12, i64 noundef %5, i32 noundef 0) #9
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %54

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %3, i64 0, i32 0, i64 0
  %29 = call i64 @write(i32 noundef %12, i8* noundef nonnull %28, i64 noundef 60) #9
  %.not3 = icmp eq i64 %29, 60
  br i1 %.not3, label %31, label %30

30:                                               ; preds = %27
  br label %54

31:                                               ; preds = %27
  %32 = call i32 @fstat(i32 noundef %12, %struct.stat* noundef nonnull %4) #9
  br label %33

33:                                               ; preds = %38, %31
  %.01 = phi i32 [ 0, %31 ], [ %39, %38 ]
  %34 = icmp ult i32 %.01, 12
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  %36 = zext i32 %.01 to i64
  %37 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %3, i64 0, i32 1, i64 %36
  store i8 32, i8* %37, align 1
  br label %38

38:                                               ; preds = %35
  %39 = add nuw nsw i32 %.01, 1
  br label %33, !llvm.loop !6

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %3, i64 0, i32 1, i64 0
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %41, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 noundef %43) #9
  %45 = call i64 @lseek(i32 noundef %12, i64 noundef %5, i32 noundef 0) #9
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %54

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %3, i64 0, i32 0, i64 0
  %50 = call i64 @write(i32 noundef %12, i8* noundef nonnull %49, i64 noundef 60) #9
  %.not4 = icmp eq i64 %50, 60
  br i1 %.not4, label %52, label %51

51:                                               ; preds = %48
  br label %54

52:                                               ; preds = %48
  %53 = call i32 @close(i32 noundef %12) #9
  br label %59

54:                                               ; preds = %51, %47, %30, %26, %22, %18
  %55 = call i32* @__errno_location() #10
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @close(i32 noundef %12) #9
  %58 = call i32* @__errno_location() #10
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %52, %14, %10, %7
  %.0 = phi i32 [ %8, %7 ], [ -3, %14 ], [ -3, %54 ], [ 0, %52 ], [ 1, %10 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i64 @ar_member_pos(i32 noundef %0, i8* noundef readonly %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i8* noundef readonly %9) #5 {
  %11 = call i32 @ar_name_equal(i8* noundef %9, i8* noundef %1)
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %12, label %13

12:                                               ; preds = %10
  br label %14

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13, %12
  %.0 = phi i64 [ %2, %13 ], [ 0, %12 ]
  ret i64 %.0
}

declare dso_local i64 @write(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32 noundef, %struct.stat* noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() #6

; Function Attrs: nounwind readonly willreturn
define i64 @_wyvern_slice_memo_ar_member_touch_522378372(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #7 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i64, i64* %_wyvern_memo_val_addr, align 8
  ret i64 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i8*, i8** %_wyvern_arg_addr_, align 8
  %0 = ptrtoint i8* %_wyvern_arg_ to i64
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i64 %0, i64* %_wyvern_memo_val_addr, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @_wyvern_calleeclone_ar_scan_2964672970(i8* noundef %0, i64 (...)* nocapture noundef readonly %1, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr) #0 {
  %3 = alloca [8 x i8], align 1
  %4 = alloca %struct.ar_hdr, align 1
  %5 = alloca [17 x i8], align 16
  %6 = alloca i32, align 4
  %7 = call i32 (i8*, i32, ...) @open(i8* noundef %0, i32 noundef 0, i32 noundef 0) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %76

10:                                               ; preds = %2
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %12 = call i64 @read(i32 noundef %7, i8* noundef nonnull %11, i64 noundef 8) #9
  %13 = trunc i64 %12 to i32
  %.not = icmp eq i32 %13, 8
  br i1 %.not, label %14, label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(8) %15, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 8)
  %.not1 = icmp eq i32 %bcmp, 0
  br i1 %.not1, label %18, label %16

16:                                               ; preds = %14, %10
  %17 = call i32 @close(i32 noundef %7) #9
  br label %76

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %73, %18
  %.02 = phi i64 [ 8, %18 ], [ %.13, %73 ]
  %20 = call i64 @lseek(i32 noundef %7, i64 noundef %.02, i32 noundef 0) #9
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @close(i32 noundef %7) #9
  br label %76

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %4, i64 0, i32 0, i64 0
  %26 = call i64 @read(i32 noundef %7, i8* noundef nonnull %25, i64 noundef 60) #9
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %74

30:                                               ; preds = %24
  %sext.mask = and i64 %26, 4294967295
  %.not2 = icmp eq i64 %sext.mask, 60
  br i1 %.not2, label %31, label %33

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %4, i64 0, i32 6, i64 0
  %bcmp3 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %32, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 2)
  %.not4 = icmp eq i32 %bcmp3, 0
  br i1 %.not4, label %35, label %33

33:                                               ; preds = %31, %30
  %34 = call i32 @close(i32 noundef %7) #9
  br label %76

35:                                               ; preds = %31
  %36 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %37 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %4, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %36, i8* noundef nonnull align 1 dereferenceable(16) %37, i64 16, i1 false)
  %38 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 16
  br label %39

39:                                               ; preds = %48, %35
  %.01 = phi i8* [ %38, %35 ], [ %.1, %48 ]
  %40 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %41 = icmp ugt i8* %.01, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = getelementptr inbounds i8, i8* %.01, i64 -1
  %44 = load i8, i8* %43, align 1
  %45 = icmp eq i8 %44, 32
  br label %46

46:                                               ; preds = %42, %39
  %.1 = phi i8* [ %43, %42 ], [ %.01, %39 ]
  %47 = phi i1 [ %45, %42 ], [ false, %39 ]
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  store i8 0, i8* %.1, align 1
  br label %39, !llvm.loop !4

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %4, i64 0, i32 4, i64 0
  %51 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %50, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %6) #9
  %52 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %4, i64 0, i32 5, i64 0
  %53 = call i64 @atol(i8* noundef nonnull %52) #7
  %54 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %55 = add i64 %.02, 60
  %56 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %4, i64 0, i32 1, i64 0
  %57 = call i64 @atol(i8* noundef nonnull %56) #7
  %58 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %4, i64 0, i32 2, i64 0
  %59 = call i32 @atoi(i8* noundef nonnull %58) #7
  %60 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %4, i64 0, i32 3, i64 0
  %61 = call i32 @atoi(i8* noundef nonnull %60) #7
  %62 = load i32, i32* %6, align 4
  %63 = bitcast i64 (...)* %1 to i64 (i32, i8*, i64, i64, i64, i64, i32, i32, i32, i64, ...)*
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i64 (%_wyvern_thunk_type.0*)*, i64 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i64 %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #9
  %64 = call i64 (i32, i8*, i64, i64, i64, i64, i32, i32, i32, i64, ...) %63(i32 noundef %7, i8* noundef nonnull %54, i64 noundef %.02, i64 noundef %55, i64 noundef %53, i64 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %62, i64 noundef %_wyvern_thunkcall) #9
  %.not5 = icmp eq i64 %64, 0
  br i1 %.not5, label %67, label %65

65:                                               ; preds = %49
  %66 = call i32 @close(i32 noundef %7) #9
  br label %76

67:                                               ; preds = %49
  %68 = add i64 %53, 60
  %69 = add i64 %.02, %68
  %70 = and i64 %69, 1
  %.not6 = icmp eq i64 %70, 0
  br i1 %.not6, label %73, label %71

71:                                               ; preds = %67
  %72 = add nsw i64 %69, 1
  br label %73

73:                                               ; preds = %71, %67
  %.13 = phi i64 [ %72, %71 ], [ %69, %67 ]
  br label %19

74:                                               ; preds = %29
  %75 = call i32 @close(i32 noundef %7) #9
  br label %76

76:                                               ; preds = %74, %65, %33, %22, %16, %9
  %.0 = phi i64 [ -1, %9 ], [ -2, %16 ], [ -2, %22 ], [ 0, %74 ], [ -2, %33 ], [ %64, %65 ]
  ret i64 %.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
