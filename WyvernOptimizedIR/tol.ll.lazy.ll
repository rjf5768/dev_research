; ModuleID = './tol.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/spiff/tol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._T_tstr = type { i32, %struct.R_flstr*, %struct._T_tstr* }
%struct.R_flstr = type { i32, i32, i8* }

@_T_gtol = dso_local global %struct._T_tstr* null, align 8
@T_initdefault.called_before = internal global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"T_initdefault called more than once\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"1e-10\00", align 1
@_T_tols = internal global [10 x %struct._T_tstr*] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [29 x i8] c"too many tolerances per line\00", align 1
@Z_err_buf = external dso_local global [0 x i8], align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s : negative tolerances don't make any sense\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"%s : relative tolerances greater than 2 don't make any sense\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"don't understand tolerance type '%c'\0A\00", align 1
@_T_getspec.retval = internal global [1024 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @T_initdefault() #0 {
  %1 = load i32, i32* @T_initdefault.called_before, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0)) #8
  br label %3

3:                                                ; preds = %2, %0
  %4 = load %struct._T_tstr*, %struct._T_tstr** @_T_gtol, align 8
  %5 = icmp eq %struct._T_tstr* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  call void @_T_addtol(%struct._T_tstr** noundef nonnull @_T_gtol, i32 noundef 0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  call void @_T_addtol(%struct._T_tstr** noundef nonnull @_T_gtol, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %7

7:                                                ; preds = %6, %3
  store i32 1, i32* @T_initdefault.called_before, align 4
  ret void
}

declare dso_local void @Z_fatal(...) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @T_clear_tols() #2 {
  br label %1

1:                                                ; preds = %6, %0
  %.0 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %2 = icmp ult i32 %.0, 10
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [10 x %struct._T_tstr*], [10 x %struct._T_tstr*]* @_T_tols, i64 0, i64 %4
  call void @_T_tolclear(%struct._T_tstr** noundef nonnull %5)
  br label %6

6:                                                ; preds = %3
  %7 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

8:                                                ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @_T_tolclear(%struct._T_tstr** nocapture noundef writeonly %0) #3 {
  store %struct._T_tstr* null, %struct._T_tstr** %0, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @T_setdef(i8* noundef %0) #0 {
  call void @_T_defclear()
  call void @_T_settol(%struct._T_tstr** noundef nonnull @_T_gtol, i8* noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_T_settol(%struct._T_tstr** nocapture noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  store i8* %1, i8** %3, align 8
  br label %4

4:                                                ; preds = %22, %2
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %.not = icmp eq i8 %6, 0
  br i1 %.not, label %23, label %7

7:                                                ; preds = %4
  call void (i8**, ...) bitcast (void (...)* @S_skipspace to void (i8**, ...)*)(i8** noundef nonnull %3) #8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = getelementptr inbounds i8, i8* %8, i64 1
  store i8* %10, i8** %3, align 8
  call void (i8**, ...) bitcast (void (...)* @S_skipspace to void (i8**, ...)*)(i8** noundef nonnull %3) #8
  %11 = sext i8 %9 to i32
  switch i32 %11, label %19 [
    i32 97, label %12
    i32 114, label %14
    i32 105, label %16
    i32 100, label %17
  ]

12:                                               ; preds = %7
  %13 = load i8*, i8** %3, align 8
  call void @_T_addtol(%struct._T_tstr** noundef %0, i32 noundef 0, i8* noundef %13)
  br label %22

14:                                               ; preds = %7
  %15 = load i8*, i8** %3, align 8
  call void @_T_addtol(%struct._T_tstr** noundef %0, i32 noundef 1, i8* noundef %15)
  br label %22

16:                                               ; preds = %7
  call void @_T_addtol(%struct._T_tstr** noundef %0, i32 noundef 2, i8* noundef null)
  br label %22

17:                                               ; preds = %7
  %18 = load %struct._T_tstr*, %struct._T_tstr** @_T_gtol, align 8
  call void @_T_appendtols(%struct._T_tstr** noundef %0, %struct._T_tstr* noundef %18)
  br label %22

19:                                               ; preds = %7
  %20 = sext i8 %9 to i32
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 noundef %20) #8
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0)) #8
  br label %22

22:                                               ; preds = %19, %17, %16, %14, %12
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef nonnull %3) #8
  br label %4, !llvm.loop !6

23:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @T_tolline(i8* noundef readonly %0) #0 {
  call void @T_clear_tols()
  br label %2

2:                                                ; preds = %11, %1
  %.01 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %.0 = phi i8* [ %0, %1 ], [ %13, %11 ]
  %3 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %14, label %4

4:                                                ; preds = %2
  %5 = icmp ugt i32 %.01, 9
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #8
  br label %7

7:                                                ; preds = %6, %4
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds [10 x %struct._T_tstr*], [10 x %struct._T_tstr*]* @_T_tols, i64 0, i64 %8
  %10 = call i8* @_T_getspec(i8* noundef nonnull %.0)
  call void @_T_settol(%struct._T_tstr** noundef nonnull %9, i8* noundef %10)
  br label %11

11:                                               ; preds = %7
  %12 = add nuw nsw i32 %.01, 1
  %13 = call i8* @_T_nextspec(i8* noundef nonnull %.0)
  br label %2, !llvm.loop !7

14:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i8* @_T_getspec(i8* nocapture noundef readonly %0) #4 {
  br label %2

2:                                                ; preds = %9, %1
  %.01 = phi i8* [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @_T_getspec.retval, i64 0, i64 0), %1 ], [ %12, %9 ]
  %.0 = phi i8* [ %0, %1 ], [ %10, %9 ]
  %3 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %3, 59
  br i1 %.not, label %7, label %4

4:                                                ; preds = %2
  %5 = load i8, i8* %.0, align 1
  %6 = icmp ne i8 %5, 0
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i1 [ false, %2 ], [ %6, %4 ]
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = getelementptr inbounds i8, i8* %.0, i64 1
  %11 = load i8, i8* %.0, align 1
  %12 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %11, i8* %.01, align 1
  br label %2, !llvm.loop !8

13:                                               ; preds = %7
  store i8 0, i8* %.01, align 1
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_T_getspec.retval, i64 0, i64 0)
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i8* @_T_nextspec(i8* noundef readonly %0) #5 {
  br label %2

2:                                                ; preds = %10, %1
  %.0 = phi i8* [ %0, %1 ], [ %11, %10 ]
  %3 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %3, 59
  br i1 %.not, label %7, label %4

4:                                                ; preds = %2
  %5 = load i8, i8* %.0, align 1
  %6 = icmp ne i8 %5, 0
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i1 [ false, %2 ], [ %6, %4 ]
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %2, !llvm.loop !9

12:                                               ; preds = %7
  %13 = load i8, i8* %.0, align 1
  %14 = icmp eq i8 %13, 59
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %17

17:                                               ; preds = %15, %12
  %.1 = phi i8* [ %16, %15 ], [ %.0, %12 ]
  ret i8* %.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @T_moretols(i32 noundef %0) #6 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 9
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = add nsw i32 %0, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [10 x %struct._T_tstr*], [10 x %struct._T_tstr*]* @_T_tols, i64 0, i64 %7
  %9 = load %struct._T_tstr*, %struct._T_tstr** %8, align 8
  %10 = icmp ne %struct._T_tstr* %9, null
  %phi.cast = zext i1 %10 to i32
  br label %11

11:                                               ; preds = %5, %3, %1
  %12 = phi i32 [ 0, %3 ], [ 0, %1 ], [ %phi.cast, %5 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local %struct._T_tstr* @T_gettol(i32 noundef %0) #6 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [10 x %struct._T_tstr*], [10 x %struct._T_tstr*]* @_T_tols, i64 0, i64 %2
  %4 = load %struct._T_tstr*, %struct._T_tstr** %3, align 8
  ret %struct._T_tstr* %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local %struct._T_tstr* @T_picktol(%struct._T_tstr* noundef readnone %0, %struct._T_tstr* noundef readnone %1) #6 {
  %3 = icmp eq %struct._T_tstr* %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  br label %10

5:                                                ; preds = %2
  %6 = icmp eq %struct._T_tstr* %1, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  br label %10

8:                                                ; preds = %5
  %9 = load %struct._T_tstr*, %struct._T_tstr** @_T_gtol, align 8
  br label %10

10:                                               ; preds = %8, %7, %4
  %.0 = phi %struct._T_tstr* [ %9, %8 ], [ %1, %7 ], [ %0, %4 ]
  ret %struct._T_tstr* %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_T_appendtols(%struct._T_tstr** nocapture noundef %0, %struct._T_tstr* noundef %1) #4 {
  %3 = load %struct._T_tstr*, %struct._T_tstr** %0, align 8
  %4 = icmp eq %struct._T_tstr* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store %struct._T_tstr* %1, %struct._T_tstr** %0, align 8
  br label %15

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %11, %6
  %.0.in = phi %struct._T_tstr** [ %0, %6 ], [ %12, %11 ]
  %.0 = load %struct._T_tstr*, %struct._T_tstr** %.0.in, align 8
  %8 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %.0, i64 0, i32 2
  %9 = load %struct._T_tstr*, %struct._T_tstr** %8, align 8
  %.not = icmp eq %struct._T_tstr* %9, null
  br i1 %.not, label %13, label %10

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %.0, i64 0, i32 2
  br label %7, !llvm.loop !10

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %.0, i64 0, i32 2
  store %struct._T_tstr* %1, %struct._T_tstr** %14, align 8
  br label %15

15:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_T_addtol(%struct._T_tstr** nocapture noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = load %struct._T_tstr*, %struct._T_tstr** %0, align 8
  %5 = icmp eq %struct._T_tstr* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 noundef 24) #8
  %8 = bitcast %struct._T_tstr** %0 to i32**
  store i32* %7, i32** %8, align 8
  br label %20

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %14, %9
  %.0.in = phi %struct._T_tstr** [ %0, %9 ], [ %15, %14 ]
  %.0 = load %struct._T_tstr*, %struct._T_tstr** %.0.in, align 8
  %11 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %.0, i64 0, i32 2
  %12 = load %struct._T_tstr*, %struct._T_tstr** %11, align 8
  %.not = icmp eq %struct._T_tstr* %12, null
  br i1 %.not, label %16, label %13

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %.0, i64 0, i32 2
  br label %10, !llvm.loop !11

16:                                               ; preds = %10
  %17 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 noundef 24) #8
  %18 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %.0, i64 0, i32 2
  %19 = bitcast %struct._T_tstr** %18 to i32**
  store i32* %17, i32** %19, align 8
  br label %20

20:                                               ; preds = %16, %6
  %.1.in = phi i32* [ %7, %6 ], [ %17, %16 ]
  store i32 %1, i32* %.1.in, align 8
  %21 = getelementptr inbounds i32, i32* %.1.in, i64 4
  %22 = bitcast i32* %21 to %struct._T_tstr**
  store %struct._T_tstr* null, %struct._T_tstr** %22, align 8
  %23 = icmp eq i32 %1, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds i32, i32* %.1.in, i64 2
  %26 = bitcast i32* %25 to %struct.R_flstr**
  store %struct.R_flstr* null, %struct.R_flstr** %26, align 8
  br label %47

27:                                               ; preds = %20
  %28 = call %struct.R_flstr* (i8*, i32, ...) bitcast (%struct.R_flstr* (...)* @F_atof to %struct.R_flstr* (i8*, i32, ...)*)(i8* noundef %2, i32 noundef 0) #8
  %29 = getelementptr inbounds i32, i32* %.1.in, i64 2
  %30 = bitcast i32* %29 to %struct.R_flstr**
  store %struct.R_flstr* %28, %struct.R_flstr** %30, align 8
  %31 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %28, i64 0, i32 1
  %32 = load i32, i32* %31, align 4
  %.not1 = icmp eq i32 %32, 0
  br i1 %.not1, label %35, label %33

33:                                               ; preds = %27
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* noundef %2) #8
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0)) #8
  br label %35

35:                                               ; preds = %33, %27
  %36 = icmp eq i32 %1, 1
  br i1 %36, label %37, label %46

37:                                               ; preds = %35
  %38 = getelementptr inbounds i32, i32* %.1.in, i64 2
  %39 = bitcast i32* %38 to %struct.R_flstr**
  %40 = load %struct.R_flstr*, %struct.R_flstr** %39, align 8
  %41 = call %struct.R_flstr* (i8*, i32, ...) bitcast (%struct.R_flstr* (...)* @F_atof to %struct.R_flstr* (i8*, i32, ...)*)(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef 1) #8
  %42 = call i32 @F_floatcmp(%struct.R_flstr* noundef %40, %struct.R_flstr* noundef %41) #8
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i8* noundef %2) #8
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0)) #8
  br label %46

46:                                               ; preds = %44, %37, %35
  br label %47

47:                                               ; preds = %46, %24
  ret void
}

declare dso_local i32* @_Z_myalloc(...) #1

declare dso_local %struct.R_flstr* @F_atof(...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #7

declare dso_local i32 @F_floatcmp(%struct.R_flstr* noundef, %struct.R_flstr* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @_T_defclear() #3 {
  call void @_T_tolclear(%struct._T_tstr** noundef nonnull @_T_gtol)
  ret void
}

declare dso_local void @S_skipspace(...) #1

declare dso_local void @S_nextword(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
