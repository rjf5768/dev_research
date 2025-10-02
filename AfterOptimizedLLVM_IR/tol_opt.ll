; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/spiff/tol.c'
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
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %4

4:                                                ; preds = %3, %0
  %5 = load %struct._T_tstr*, %struct._T_tstr** @_T_gtol, align 8
  %6 = icmp eq %struct._T_tstr* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  call void @_T_addtol(%struct._T_tstr** noundef @_T_gtol, i32 noundef 0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  call void @_T_addtol(%struct._T_tstr** noundef @_T_gtol, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %7, %4
  store i32 1, i32* @T_initdefault.called_before, align 4
  ret void
}

declare dso_local void @Z_fatal(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @T_clear_tols() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %9, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 10
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [10 x %struct._T_tstr*], [10 x %struct._T_tstr*]* @_T_tols, i64 0, i64 %7
  call void @_T_tolclear(%struct._T_tstr** noundef %8)
  br label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %1, align 4
  br label %2, !llvm.loop !4

12:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_T_tolclear(%struct._T_tstr** noundef %0) #0 {
  %2 = alloca %struct._T_tstr**, align 8
  store %struct._T_tstr** %0, %struct._T_tstr*** %2, align 8
  %3 = load %struct._T_tstr**, %struct._T_tstr*** %2, align 8
  store %struct._T_tstr* null, %struct._T_tstr** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @T_setdef(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @_T_defclear()
  %3 = load i8*, i8** %2, align 8
  call void @_T_settol(%struct._T_tstr** noundef @_T_gtol, i8* noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_T_settol(%struct._T_tstr** noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct._T_tstr**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store %struct._T_tstr** %0, %struct._T_tstr*** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %6

6:                                                ; preds = %33, %2
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 0, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %6
  call void (i8**, ...) bitcast (void (...)* @S_skipspace to void (i8**, ...)*)(i8** noundef %4)
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %5, align 1
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  call void (i8**, ...) bitcast (void (...)* @S_skipspace to void (i8**, ...)*)(i8** noundef %4)
  %16 = load i8, i8* %5, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %29 [
    i32 97, label %18
    i32 114, label %21
    i32 105, label %24
    i32 100, label %26
  ]

18:                                               ; preds = %11
  %19 = load %struct._T_tstr**, %struct._T_tstr*** %3, align 8
  %20 = load i8*, i8** %4, align 8
  call void @_T_addtol(%struct._T_tstr** noundef %19, i32 noundef 0, i8* noundef %20)
  br label %33

21:                                               ; preds = %11
  %22 = load %struct._T_tstr**, %struct._T_tstr*** %3, align 8
  %23 = load i8*, i8** %4, align 8
  call void @_T_addtol(%struct._T_tstr** noundef %22, i32 noundef 1, i8* noundef %23)
  br label %33

24:                                               ; preds = %11
  %25 = load %struct._T_tstr**, %struct._T_tstr*** %3, align 8
  call void @_T_addtol(%struct._T_tstr** noundef %25, i32 noundef 2, i8* noundef null)
  br label %33

26:                                               ; preds = %11
  %27 = load %struct._T_tstr**, %struct._T_tstr*** %3, align 8
  %28 = load %struct._T_tstr*, %struct._T_tstr** @_T_gtol, align 8
  call void @_T_appendtols(%struct._T_tstr** noundef %27, %struct._T_tstr* noundef %28)
  br label %33

29:                                               ; preds = %11
  %30 = load i8, i8* %5, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 noundef %31) #3
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %26, %24, %21, %18
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef %4)
  br label %6, !llvm.loop !6

34:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @T_tolline(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @T_clear_tols()
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 0, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 10
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [10 x %struct._T_tstr*], [10 x %struct._T_tstr*]* @_T_tols, i64 0, i64 %15
  %17 = load i8*, i8** %2, align 8
  %18 = call i8* @_T_getspec(i8* noundef %17)
  call void @_T_settol(%struct._T_tstr** noundef %16, i8* noundef %18)
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = call i8* @_T_nextspec(i8* noundef %22)
  store i8* %23, i8** %2, align 8
  br label %4, !llvm.loop !7

24:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @_T_getspec(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_T_getspec.retval, i64 0, i64 0), i8** %3, align 8
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 59, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = load i8*, i8** %2, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 0, %12
  br label %14

14:                                               ; preds = %9, %4
  %15 = phi i1 [ false, %4 ], [ %13, %9 ]
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %2, align 8
  %19 = load i8, i8* %17, align 1
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %3, align 8
  store i8 %19, i8* %20, align 1
  br label %4, !llvm.loop !8

22:                                               ; preds = %14
  %23 = load i8*, i8** %3, align 8
  store i8 0, i8* %23, align 1
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_T_getspec.retval, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @_T_nextspec(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %16, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 59, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 0, %11
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i1 [ false, %3 ], [ %12, %8 ]
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %15
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %2, align 8
  br label %3, !llvm.loop !9

19:                                               ; preds = %13
  %20 = load i8*, i8** %2, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 59, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %2, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @T_moretols(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sgt i32 9, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [10 x %struct._T_tstr*], [10 x %struct._T_tstr*]* @_T_tols, i64 0, i64 %11
  %13 = load %struct._T_tstr*, %struct._T_tstr** %12, align 8
  %14 = icmp eq %struct._T_tstr* %13, null
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %8, %5, %1
  %17 = phi i1 [ false, %5 ], [ false, %1 ], [ %15, %8 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._T_tstr* @T_gettol(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [10 x %struct._T_tstr*], [10 x %struct._T_tstr*]* @_T_tols, i64 0, i64 %4
  %6 = load %struct._T_tstr*, %struct._T_tstr** %5, align 8
  ret %struct._T_tstr* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._T_tstr* @T_picktol(%struct._T_tstr* noundef %0, %struct._T_tstr* noundef %1) #0 {
  %3 = alloca %struct._T_tstr*, align 8
  %4 = alloca %struct._T_tstr*, align 8
  %5 = alloca %struct._T_tstr*, align 8
  store %struct._T_tstr* %0, %struct._T_tstr** %4, align 8
  store %struct._T_tstr* %1, %struct._T_tstr** %5, align 8
  %6 = load %struct._T_tstr*, %struct._T_tstr** %4, align 8
  %7 = icmp eq %struct._T_tstr* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load %struct._T_tstr*, %struct._T_tstr** %4, align 8
  store %struct._T_tstr* %9, %struct._T_tstr** %3, align 8
  br label %17

10:                                               ; preds = %2
  %11 = load %struct._T_tstr*, %struct._T_tstr** %5, align 8
  %12 = icmp eq %struct._T_tstr* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load %struct._T_tstr*, %struct._T_tstr** %5, align 8
  store %struct._T_tstr* %14, %struct._T_tstr** %3, align 8
  br label %17

15:                                               ; preds = %10
  %16 = load %struct._T_tstr*, %struct._T_tstr** @_T_gtol, align 8
  store %struct._T_tstr* %16, %struct._T_tstr** %3, align 8
  br label %17

17:                                               ; preds = %15, %13, %8
  %18 = load %struct._T_tstr*, %struct._T_tstr** %3, align 8
  ret %struct._T_tstr* %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_T_appendtols(%struct._T_tstr** noundef %0, %struct._T_tstr* noundef %1) #0 {
  %3 = alloca %struct._T_tstr**, align 8
  %4 = alloca %struct._T_tstr*, align 8
  %5 = alloca %struct._T_tstr*, align 8
  store %struct._T_tstr** %0, %struct._T_tstr*** %3, align 8
  store %struct._T_tstr* %1, %struct._T_tstr** %4, align 8
  %6 = load %struct._T_tstr**, %struct._T_tstr*** %3, align 8
  %7 = load %struct._T_tstr*, %struct._T_tstr** %6, align 8
  %8 = icmp eq %struct._T_tstr* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct._T_tstr*, %struct._T_tstr** %4, align 8
  %11 = load %struct._T_tstr**, %struct._T_tstr*** %3, align 8
  store %struct._T_tstr* %10, %struct._T_tstr** %11, align 8
  br label %30

12:                                               ; preds = %2
  %13 = load %struct._T_tstr**, %struct._T_tstr*** %3, align 8
  %14 = load %struct._T_tstr*, %struct._T_tstr** %13, align 8
  store %struct._T_tstr* %14, %struct._T_tstr** %5, align 8
  br label %15

15:                                               ; preds = %22, %12
  %16 = load %struct._T_tstr*, %struct._T_tstr** %5, align 8
  %17 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %16, i32 0, i32 2
  %18 = load %struct._T_tstr*, %struct._T_tstr** %17, align 8
  %19 = icmp eq %struct._T_tstr* %18, null
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = load %struct._T_tstr*, %struct._T_tstr** %5, align 8
  %24 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %23, i32 0, i32 2
  %25 = load %struct._T_tstr*, %struct._T_tstr** %24, align 8
  store %struct._T_tstr* %25, %struct._T_tstr** %5, align 8
  br label %15, !llvm.loop !10

26:                                               ; preds = %15
  %27 = load %struct._T_tstr*, %struct._T_tstr** %4, align 8
  %28 = load %struct._T_tstr*, %struct._T_tstr** %5, align 8
  %29 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %28, i32 0, i32 2
  store %struct._T_tstr* %27, %struct._T_tstr** %29, align 8
  br label %30

30:                                               ; preds = %26, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_T_addtol(%struct._T_tstr** noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct._T_tstr**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct._T_tstr*, align 8
  store %struct._T_tstr** %0, %struct._T_tstr*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct._T_tstr**, %struct._T_tstr*** %4, align 8
  %9 = load %struct._T_tstr*, %struct._T_tstr** %8, align 8
  %10 = icmp eq %struct._T_tstr* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 noundef 24)
  %13 = bitcast i32* %12 to %struct._T_tstr*
  %14 = load %struct._T_tstr**, %struct._T_tstr*** %4, align 8
  store %struct._T_tstr* %13, %struct._T_tstr** %14, align 8
  store %struct._T_tstr* %13, %struct._T_tstr** %7, align 8
  br label %37

15:                                               ; preds = %3
  %16 = load %struct._T_tstr**, %struct._T_tstr*** %4, align 8
  %17 = load %struct._T_tstr*, %struct._T_tstr** %16, align 8
  store %struct._T_tstr* %17, %struct._T_tstr** %7, align 8
  br label %18

18:                                               ; preds = %25, %15
  %19 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %20 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %19, i32 0, i32 2
  %21 = load %struct._T_tstr*, %struct._T_tstr** %20, align 8
  %22 = icmp eq %struct._T_tstr* %21, null
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24
  %26 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %27 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %26, i32 0, i32 2
  %28 = load %struct._T_tstr*, %struct._T_tstr** %27, align 8
  store %struct._T_tstr* %28, %struct._T_tstr** %7, align 8
  br label %18, !llvm.loop !11

29:                                               ; preds = %18
  %30 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 noundef 24)
  %31 = bitcast i32* %30 to %struct._T_tstr*
  %32 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %33 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %32, i32 0, i32 2
  store %struct._T_tstr* %31, %struct._T_tstr** %33, align 8
  %34 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %35 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %34, i32 0, i32 2
  %36 = load %struct._T_tstr*, %struct._T_tstr** %35, align 8
  store %struct._T_tstr* %36, %struct._T_tstr** %7, align 8
  br label %37

37:                                               ; preds = %29, %11
  %38 = load i32, i32* %5, align 4
  %39 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %40 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %42 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %41, i32 0, i32 2
  store %struct._T_tstr* null, %struct._T_tstr** %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 2, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %47 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %46, i32 0, i32 1
  store %struct.R_flstr* null, %struct.R_flstr** %47, align 8
  br label %76

48:                                               ; preds = %37
  %49 = load i8*, i8** %6, align 8
  %50 = call %struct.R_flstr* (i8*, i32, ...) bitcast (%struct.R_flstr* (...)* @F_atof to %struct.R_flstr* (i8*, i32, ...)*)(i8* noundef %49, i32 noundef 0)
  %51 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %52 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %51, i32 0, i32 1
  store %struct.R_flstr* %50, %struct.R_flstr** %52, align 8
  %53 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %54 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %53, i32 0, i32 1
  %55 = load %struct.R_flstr*, %struct.R_flstr** %54, align 8
  %56 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* noundef %60) #3
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %48
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 1, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %67 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %66, i32 0, i32 1
  %68 = load %struct.R_flstr*, %struct.R_flstr** %67, align 8
  %69 = call %struct.R_flstr* (i8*, i32, ...) bitcast (%struct.R_flstr* (...)* @F_atof to %struct.R_flstr* (i8*, i32, ...)*)(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef 1)
  %70 = call i32 @F_floatcmp(%struct.R_flstr* noundef %68, %struct.R_flstr* noundef %69)
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i8* noundef %73) #3
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %65, %62
  br label %76

76:                                               ; preds = %75, %45
  ret void
}

declare dso_local i32* @_Z_myalloc(...) #1

declare dso_local %struct.R_flstr* @F_atof(...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare dso_local i32 @F_floatcmp(%struct.R_flstr* noundef, %struct.R_flstr* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @_T_defclear() #0 {
  call void @_T_tolclear(%struct._T_tstr** noundef @_T_gtol)
  ret void
}

declare dso_local void @S_skipspace(...) #1

declare dso_local void @S_nextword(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
