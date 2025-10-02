; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/lib/chk.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/lib/chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@chk_fail_allowed = dso_local global i32 0, align 4
@chk_fail_buf = dso_local global [256 x i8*] zeroinitializer, align 16
@chk_calls = dso_local global i32 0, align 4
@chk_sprintf_buf = internal global [4096 x i8] zeroinitializer, align 16
@memcpy_disallowed = dso_local global i32 0, align 4
@mempcpy_disallowed = dso_local global i32 0, align 4
@memmove_disallowed = dso_local global i32 0, align 4
@memset_disallowed = dso_local global i32 0, align 4
@strcpy_disallowed = dso_local global i32 0, align 4
@stpcpy_disallowed = dso_local global i32 0, align 4
@strncpy_disallowed = dso_local global i32 0, align 4
@stpncpy_disallowed = dso_local global i32 0, align 4
@strcat_disallowed = dso_local global i32 0, align 4
@strncat_disallowed = dso_local global i32 0, align 4
@sprintf_disallowed = dso_local global i32 0, align 4
@vsprintf_disallowed = dso_local global i32 0, align 4
@snprintf_disallowed = dso_local global i32 0, align 4
@vsnprintf_disallowed = dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @__chk_fail() #0 {
  %1 = load volatile i32, i32* @chk_fail_allowed, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @llvm.eh.sjlj.longjmp(i8* bitcast ([256 x i8*]* @chk_fail_buf to i8*))
  unreachable

4:                                                ; preds = %0
  call void @abort() #8
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.eh.sjlj.longjmp(i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #3 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %8, align 8
  br label %11

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8
  %13 = add i64 %12, -1
  store i64 %13, i64* %6, align 8
  %14 = icmp ne i64 %12, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %7, align 8
  %18 = load i8, i8* %16, align 1
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %8, align 8
  store i8 %18, i8* %19, align 1
  br label %11, !llvm.loop !4

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8
  ret i8* %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__memcpy_chk(i8* noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3) #3 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void @abort() #8
  unreachable

12:                                               ; preds = %4
  %13 = load volatile i32, i32* @chk_calls, align 4
  %14 = add nsw i32 %13, 1
  store volatile i32 %14, i32* @chk_calls, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  call void @__chk_fail() #8
  unreachable

19:                                               ; preds = %12
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %21, i64 %22, i1 false)
  ret i8* %20
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @mempcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #3 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %8, align 8
  br label %11

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8
  %13 = add i64 %12, -1
  store i64 %13, i64* %6, align 8
  %14 = icmp ne i64 %12, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %7, align 8
  %18 = load i8, i8* %16, align 1
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %8, align 8
  store i8 %18, i8* %19, align 1
  br label %11, !llvm.loop !6

21:                                               ; preds = %11
  %22 = load i8*, i8** %8, align 8
  ret i8* %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__mempcpy_chk(i8* noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3) #3 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void @abort() #8
  unreachable

12:                                               ; preds = %4
  %13 = load volatile i32, i32* @chk_calls, align 4
  %14 = add nsw i32 %13, 1
  store volatile i32 %14, i32* @chk_calls, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  call void @__chk_fail() #8
  unreachable

19:                                               ; preds = %12
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %21, i64 %22, i1 false)
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  ret i8* %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #3 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %19, %14
  %16 = load i64, i64* %6, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %6, align 8
  %18 = icmp ne i64 %16, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8 %23, i8* %26, align 1
  br label %15, !llvm.loop !7

27:                                               ; preds = %15
  br label %40

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %6, align 8
  %32 = icmp ne i64 %30, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  %36 = load i8, i8* %34, align 1
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %8, align 8
  store i8 %36, i8* %37, align 1
  br label %29, !llvm.loop !8

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i8*, i8** %4, align 8
  ret i8* %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__memmove_chk(i8* noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3) #3 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void @abort() #8
  unreachable

12:                                               ; preds = %4
  %13 = load volatile i32, i32* @chk_calls, align 4
  %14 = add nsw i32 %13, 1
  store volatile i32 %14, i32* @chk_calls, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  call void @__chk_fail() #8
  unreachable

19:                                               ; preds = %12
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %21, i64 %22, i1 false)
  ret i8* %20
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #3 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  br label %7

7:                                                ; preds = %11, %3
  %8 = load i64, i64* %6, align 8
  %9 = add i64 %8, -1
  store i64 %9, i64* %6, align 8
  %10 = icmp ne i64 %8, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = trunc i32 %12 to i8
  %14 = load i64, i64* %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 %14
  store i8 %13, i8* %16, align 1
  br label %7, !llvm.loop !9

17:                                               ; preds = %7
  %18 = load i8*, i8** %4, align 8
  ret i8* %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__memset_chk(i8* noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #3 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void @abort() #8
  unreachable

12:                                               ; preds = %4
  %13 = load volatile i32, i32* @chk_calls, align 4
  %14 = add nsw i32 %13, 1
  store volatile i32 %14, i32* @chk_calls, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  call void @__chk_fail() #8
  unreachable

19:                                               ; preds = %12
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = trunc i32 %21 to i8
  %23 = load i64, i64* %7, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %20, i8 %22, i64 %23, i1 false)
  ret i8* %20
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @strcpy(i8* noundef %0, i8* noundef %1) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  br label %7

7:                                                ; preds = %14, %2
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %4, align 8
  %10 = load i8, i8* %8, align 1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %3, align 8
  store i8 %10, i8* %11, align 1
  %13 = icmp ne i8 %10, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %7, !llvm.loop !10

15:                                               ; preds = %7
  %16 = load i8*, i8** %5, align 8
  ret i8* %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__strcpy_chk(i8* noundef %0, i8* noundef %1, i64 noundef %2) #3 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  call void @abort() #8
  unreachable

10:                                               ; preds = %3
  %11 = load volatile i32, i32* @chk_calls, align 4
  %12 = add nsw i32 %11, 1
  store volatile i32 %12, i32* @chk_calls, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strlen(i8* noundef %13)
  %15 = load i64, i64* %6, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  call void @__chk_fail() #8
  unreachable

18:                                               ; preds = %10
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @strcpy(i8* noundef %19, i8* noundef %20)
  ret i8* %21
}

declare dso_local i64 @strlen(i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @stpcpy(i8* noundef %0, i8* noundef %1) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %5

5:                                                ; preds = %10, %2
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %4, align 8
  %13 = load i8, i8* %11, align 1
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %3, align 8
  store i8 %13, i8* %14, align 1
  br label %5, !llvm.loop !11

16:                                               ; preds = %5
  %17 = load i8*, i8** %3, align 8
  store i8 0, i8* %17, align 1
  %18 = load i8*, i8** %3, align 8
  ret i8* %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__stpcpy_chk(i8* noundef %0, i8* noundef %1, i64 noundef %2) #3 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  call void @abort() #8
  unreachable

10:                                               ; preds = %3
  %11 = load volatile i32, i32* @chk_calls, align 4
  %12 = add nsw i32 %11, 1
  store volatile i32 %12, i32* @chk_calls, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strlen(i8* noundef %13)
  %15 = load i64, i64* %6, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  call void @__chk_fail() #8
  unreachable

18:                                               ; preds = %10
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @stpcpy(i8* noundef %19, i8* noundef %20)
  ret i8* %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @stpncpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #3 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %24, %3
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi i1 [ false, %8 ], [ %15, %13 ]
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %5, align 8
  %21 = load i8, i8* %19, align 1
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  store i8 %21, i8* %22, align 1
  br label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %6, align 8
  br label %8, !llvm.loop !12

27:                                               ; preds = %16
  %28 = load i8*, i8** %4, align 8
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %33, %27
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %6, align 8
  %32 = icmp ne i64 %30, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  store i8 0, i8* %34, align 1
  br label %29, !llvm.loop !13

36:                                               ; preds = %29
  %37 = load i8*, i8** %7, align 8
  ret i8* %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__stpncpy_chk(i8* noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3) #3 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void @abort() #8
  unreachable

12:                                               ; preds = %4
  %13 = load volatile i32, i32* @chk_calls, align 4
  %14 = add nsw i32 %13, 1
  store volatile i32 %14, i32* @chk_calls, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  call void @__chk_fail() #8
  unreachable

19:                                               ; preds = %12
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i8* @stpncpy(i8* noundef %20, i8* noundef %21, i64 noundef %22)
  ret i8* %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @strncpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #3 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %7, align 8
  br label %9

9:                                                ; preds = %25, %3
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i1 [ false, %9 ], [ %16, %14 ]
  br i1 %18, label %19, label %28

19:                                               ; preds = %17
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  %22 = load i8, i8* %20, align 1
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  store i8 %22, i8* %23, align 1
  br label %25

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %6, align 8
  br label %9, !llvm.loop !14

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %6, align 8
  %32 = icmp ne i64 %30, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  store i8 0, i8* %34, align 1
  br label %29, !llvm.loop !15

36:                                               ; preds = %29
  %37 = load i8*, i8** %7, align 8
  ret i8* %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__strncpy_chk(i8* noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3) #3 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void @abort() #8
  unreachable

12:                                               ; preds = %4
  %13 = load volatile i32, i32* @chk_calls, align 4
  %14 = add nsw i32 %13, 1
  store volatile i32 %14, i32* @chk_calls, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  call void @__chk_fail() #8
  unreachable

19:                                               ; preds = %12
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i8* @strncpy(i8* noundef %20, i8* noundef %21, i64 noundef %22)
  ret i8* %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @strcat(i8* noundef %0, i8* noundef %1) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  br label %7

7:                                                ; preds = %11, %2
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8
  br label %7, !llvm.loop !16

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %22, %14
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %4, align 8
  %18 = load i8, i8* %16, align 1
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %5, align 8
  store i8 %18, i8* %19, align 1
  %21 = icmp ne i8 %18, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %15, !llvm.loop !17

23:                                               ; preds = %15
  %24 = load i8*, i8** %3, align 8
  ret i8* %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__strcat_chk(i8* noundef %0, i8* noundef %1, i64 noundef %2) #3 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  call void @abort() #8
  unreachable

10:                                               ; preds = %3
  %11 = load volatile i32, i32* @chk_calls, align 4
  %12 = add nsw i32 %11, 1
  store volatile i32 %12, i32* @chk_calls, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strlen(i8* noundef %13)
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strlen(i8* noundef %15)
  %17 = add i64 %14, %16
  %18 = load i64, i64* %6, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  call void @__chk_fail() #8
  unreachable

21:                                               ; preds = %10
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i8* @strcat(i8* noundef %22, i8* noundef %23)
  ret i8* %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @strncat(i8* noundef %0, i8* noundef %1, i64 noundef %2) #3 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  br label %11

11:                                               ; preds = %15, %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  br label %11, !llvm.loop !18

18:                                               ; preds = %11
  store i8 0, i8* %9, align 1
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i64, i64* %7, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  %25 = load i8, i8* %23, align 1
  store i8 %25, i8* %9, align 1
  %26 = load i8, i8* %9, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  store i8 %26, i8* %27, align 1
  %29 = load i8, i8* %9, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i8*, i8** %8, align 8
  store i8* %33, i8** %4, align 8
  br label %45

34:                                               ; preds = %22
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %7, align 8
  br label %19, !llvm.loop !19

37:                                               ; preds = %19
  %38 = load i8, i8* %9, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i8*, i8** %8, align 8
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %43, %32
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__strncat_chk(i8* noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3) #3 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* noundef %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  call void @abort() #8
  unreachable

19:                                               ; preds = %4
  %20 = load volatile i32, i32* @chk_calls, align 4
  %21 = add nsw i32 %20, 1
  store volatile i32 %21, i32* @chk_calls, align 4
  br label %22

22:                                               ; preds = %38, %19
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i64, i64* %10, align 8
  %28 = icmp ugt i64 %27, 0
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i1 [ false, %22 ], [ %28, %26 ]
  br i1 %30, label %31, label %43

31:                                               ; preds = %29
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %11, align 8
  %34 = load i8, i8* %32, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %43

38:                                               ; preds = %31
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %10, align 8
  br label %22, !llvm.loop !20

43:                                               ; preds = %37, %29
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  call void @__chk_fail() #8
  unreachable

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i8* @strncat(i8* noundef %49, i8* noundef %50, i64 noundef %51)
  ret i8* %52
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__sprintf_chk(i8* noundef %0, i32 noundef %1, i64 noundef %2, i8* noundef %3, ...) #3 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #8
  unreachable

17:                                               ; preds = %13, %4
  %18 = load volatile i32, i32* @chk_calls, align 4
  %19 = add nsw i32 %18, 1
  store volatile i32 %19, i32* @chk_calls, align 4
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0
  %21 = bitcast %struct.__va_list_tag* %20 to i8*
  call void @llvm.va_start(i8* %21)
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0
  %24 = call i32 @vsprintf(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i8* noundef %22, %struct.__va_list_tag* noundef %23)
  store i32 %24, i32* %9, align 4
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0
  %26 = bitcast %struct.__va_list_tag* %25 to i8*
  call void @llvm.va_end(i8* %26)
  %27 = load i32, i32* %9, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %17
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %7, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  call void @__chk_fail() #8
  unreachable

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %39, i1 false)
  br label %40

40:                                               ; preds = %35, %17
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #7

declare dso_local i32 @vsprintf(i8* noundef, i8* noundef, %struct.__va_list_tag* noundef) #6

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__vsprintf_chk(i8* noundef %0, i32 noundef %1, i64 noundef %2, i8* noundef %3, %struct.__va_list_tag* noundef %4) #3 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.__va_list_tag*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.__va_list_tag* %4, %struct.__va_list_tag** %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp eq i64 %12, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @abort() #8
  unreachable

18:                                               ; preds = %14, %5
  %19 = load volatile i32, i32* @chk_calls, align 4
  %20 = add nsw i32 %19, 1
  store volatile i32 %20, i32* @chk_calls, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = load %struct.__va_list_tag*, %struct.__va_list_tag** %10, align 8
  %23 = call i32 @vsprintf(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i8* noundef %21, %struct.__va_list_tag* noundef %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %8, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  call void @__chk_fail() #8
  unreachable

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %36, i1 false)
  br label %37

37:                                               ; preds = %32, %18
  %38 = load i32, i32* %11, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__snprintf_chk(i8* noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i8* noundef %4, ...) #3 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @abort() #8
  unreachable

19:                                               ; preds = %15, %5
  %20 = load volatile i32, i32* @chk_calls, align 4
  %21 = add nsw i32 %20, 1
  store volatile i32 %21, i32* @chk_calls, align 4
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  call void @__chk_fail() #8
  unreachable

26:                                               ; preds = %19
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i64 0, i64 0
  %28 = bitcast %struct.__va_list_tag* %27 to i8*
  call void @llvm.va_start(i8* %28)
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i64 0, i64 0
  %31 = call i32 @vsprintf(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i8* noundef %29, %struct.__va_list_tag* noundef %30)
  store i32 %31, i32* %11, align 4
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i64 0, i64 0
  %33 = bitcast %struct.__va_list_tag* %32 to i8*
  call void @llvm.va_end(i8* %33)
  %34 = load i32, i32* %11, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %26
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %7, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %42, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %45, i1 false)
  br label %54

46:                                               ; preds = %36
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %48, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %49, i1 false)
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub i64 %51, 1
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 0, i8* %53, align 1
  br label %54

54:                                               ; preds = %46, %41
  br label %55

55:                                               ; preds = %54, %26
  %56 = load i32, i32* %11, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__vsnprintf_chk(i8* noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i8* noundef %4, %struct.__va_list_tag* noundef %5) #3 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.__va_list_tag*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.__va_list_tag* %5, %struct.__va_list_tag** %12, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @abort() #8
  unreachable

20:                                               ; preds = %16, %6
  %21 = load volatile i32, i32* @chk_calls, align 4
  %22 = add nsw i32 %21, 1
  store volatile i32 %22, i32* @chk_calls, align 4
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  call void @__chk_fail() #8
  unreachable

27:                                               ; preds = %20
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.__va_list_tag*, %struct.__va_list_tag** %12, align 8
  %30 = call i32 @vsprintf(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i8* noundef %28, %struct.__va_list_tag* noundef %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %8, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %42, i1 false)
  br label %51

43:                                               ; preds = %33
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = sub i64 %45, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %44, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %46, i1 false)
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 0, i8* %50, align 1
  br label %51

51:                                               ; preds = %43, %38
  br label %52

52:                                               ; preds = %51, %27
  %53 = load i32, i32* %13, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @snprintf(i8* noundef %0, i64 noundef %1, i8* noundef %2, ...) #3 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_start(i8* %10)
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %13 = call i32 @vsprintf(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i8* noundef %11, %struct.__va_list_tag* noundef %12)
  store i32 %13, i32* %7, align 4
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %15 = bitcast %struct.__va_list_tag* %14 to i8*
  call void @llvm.va_end(i8* %15)
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %5, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %27, i1 false)
  br label %40

28:                                               ; preds = %18
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = sub i64 %33, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %34, i1 false)
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %31, %28
  br label %40

40:                                               ; preds = %39, %23
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vsnprintf(i8* noundef %0, i64 noundef %1, i8* noundef %2, %struct.__va_list_tag* noundef %3) #3 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.__va_list_tag*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.__va_list_tag* %3, %struct.__va_list_tag** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load %struct.__va_list_tag*, %struct.__va_list_tag** %8, align 8
  %12 = call i32 @vsprintf(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i8* noundef %10, %struct.__va_list_tag* noundef %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %24, i1 false)
  br label %37

25:                                               ; preds = %15
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = sub i64 %30, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %31, i1 false)
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %28, %25
  br label %37

37:                                               ; preds = %36, %20
  br label %38

38:                                               ; preds = %37, %4
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { noreturn }

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
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
