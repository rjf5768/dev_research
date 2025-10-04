; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-prefetch-4.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-prefetch-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arr = dso_local global [100 x i32] zeroinitializer, align 16
@ptr = dso_local global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([100 x i32]* @arr to i8*), i64 80) to i32*), align 8
@arrindex = dso_local global i32 4, align 4
@getptrcnt = dso_local global i32 0, align 4
@getintcnt = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @assign_arg_ptr(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  store i32* %4, i32** %3, align 8
  %5 = bitcast i32* %4 to i8*
  call void @llvm.prefetch.p0i8(i8* %5, i32 0, i32 0, i32 1)
  %6 = load i32*, i32** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp eq i32* %6, %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: inaccessiblemem_or_argmemonly nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @assign_glob_ptr() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @ptr, align 8
  store i32* %2, i32** %1, align 8
  %3 = bitcast i32* %2 to i8*
  call void @llvm.prefetch.p0i8(i8* %3, i32 0, i32 0, i32 1)
  %4 = load i32*, i32** %1, align 8
  %5 = load i32*, i32** @ptr, align 8
  %6 = icmp eq i32* %4, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @assign_arg_idx(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = bitcast i32* %9 to i8*
  call void @llvm.prefetch.p0i8(i8* %10, i32 0, i32 0, i32 1)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @assign_glob_idx() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @ptr, align 8
  %3 = load i32, i32* @arrindex, align 4
  store i32 %3, i32* %1, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %2, i64 %4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @arrindex, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @preinc_arg_ptr(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %7, i32** %2, align 8
  %8 = bitcast i32* %7 to i8*
  call void @llvm.prefetch.p0i8(i8* %8, i32 0, i32 0, i32 1)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %9, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @preinc_glob_ptr() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @ptr, align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 1
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** @ptr, align 8
  %5 = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %5, i32** @ptr, align 8
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  %7 = load i32*, i32** @ptr, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp eq i32* %7, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @postinc_arg_ptr(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %7, i32** %2, align 8
  %8 = bitcast i32* %6 to i8*
  call void @llvm.prefetch.p0i8(i8* %8, i32 0, i32 0, i32 1)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %9, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @postinc_glob_ptr() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @ptr, align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 1
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** @ptr, align 8
  %5 = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %5, i32** @ptr, align 8
  %6 = bitcast i32* %4 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  %7 = load i32*, i32** @ptr, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp eq i32* %7, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @predec_arg_ptr(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 -1
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i32 -1
  store i32* %7, i32** %2, align 8
  %8 = bitcast i32* %7 to i8*
  call void @llvm.prefetch.p0i8(i8* %8, i32 0, i32 0, i32 1)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %9, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @predec_glob_ptr() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @ptr, align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 -1
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** @ptr, align 8
  %5 = getelementptr inbounds i32, i32* %4, i32 -1
  store i32* %5, i32** @ptr, align 8
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  %7 = load i32*, i32** @ptr, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp eq i32* %7, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @postdec_arg_ptr(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 -1
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i32 -1
  store i32* %7, i32** %2, align 8
  %8 = bitcast i32* %6 to i8*
  call void @llvm.prefetch.p0i8(i8* %8, i32 0, i32 0, i32 1)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %9, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @postdec_glob_ptr() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @ptr, align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 -1
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** @ptr, align 8
  %5 = getelementptr inbounds i32, i32* %4, i32 -1
  store i32* %5, i32** @ptr, align 8
  %6 = bitcast i32* %4 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  %7 = load i32*, i32** @ptr, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp eq i32* %7, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @preinc_arg_idx(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = bitcast i32* %12 to i8*
  call void @llvm.prefetch.p0i8(i8* %13, i32 0, i32 0, i32 1)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @preinc_glob_idx() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @arrindex, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* %1, align 4
  %4 = load i32*, i32** @ptr, align 8
  %5 = load i32, i32* @arrindex, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @arrindex, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %4, i64 %7
  %9 = bitcast i32* %8 to i8*
  call void @llvm.prefetch.p0i8(i8* %9, i32 0, i32 0, i32 1)
  %10 = load i32, i32* @arrindex, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @postinc_arg_idx(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %4, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = bitcast i32* %12 to i8*
  call void @llvm.prefetch.p0i8(i8* %13, i32 0, i32 0, i32 1)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @postinc_glob_idx() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @arrindex, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* %1, align 4
  %4 = load i32*, i32** @ptr, align 8
  %5 = load i32, i32* @arrindex, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @arrindex, align 4
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i32, i32* %4, i64 %7
  %9 = bitcast i32* %8 to i8*
  call void @llvm.prefetch.p0i8(i8* %9, i32 0, i32 0, i32 1)
  %10 = load i32, i32* @arrindex, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @predec_arg_idx(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = bitcast i32* %12 to i8*
  call void @llvm.prefetch.p0i8(i8* %13, i32 0, i32 0, i32 1)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @predec_glob_idx() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @arrindex, align 4
  %3 = sub nsw i32 %2, 1
  store i32 %3, i32* %1, align 4
  %4 = load i32*, i32** @ptr, align 8
  %5 = load i32, i32* @arrindex, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @arrindex, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %4, i64 %7
  %9 = bitcast i32* %8 to i8*
  call void @llvm.prefetch.p0i8(i8* %9, i32 0, i32 0, i32 1)
  %10 = load i32, i32* @arrindex, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @postdec_arg_idx(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %4, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = bitcast i32* %12 to i8*
  call void @llvm.prefetch.p0i8(i8* %13, i32 0, i32 0, i32 1)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @postdec_glob_idx() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @arrindex, align 4
  %3 = sub nsw i32 %2, 1
  store i32 %3, i32* %1, align 4
  %4 = load i32*, i32** @ptr, align 8
  %5 = load i32, i32* @arrindex, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @arrindex, align 4
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i32, i32* %4, i64 %7
  %9 = bitcast i32* %8 to i8*
  call void @llvm.prefetch.p0i8(i8* %9, i32 0, i32 0, i32 1)
  %10 = load i32, i32* @arrindex, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @getptr(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @getptrcnt, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @getptrcnt, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  ret i32* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @funccall_arg_ptr(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32* @getptr(i32* noundef %3)
  %5 = bitcast i32* %4 to i8*
  call void @llvm.prefetch.p0i8(i8* %5, i32 0, i32 0, i32 1)
  %6 = load i32, i32* @getptrcnt, align 4
  %7 = icmp eq i32 %6, 1
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getint(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @getintcnt, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @getintcnt, align 4
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %5, 1
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @funccall_arg_idx(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @getint(i32 noundef %6)
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %5, i64 %8
  %10 = bitcast i32* %9 to i8*
  call void @llvm.prefetch.p0i8(i8* %10, i32 0, i32 0, i32 1)
  %11 = load i32, i32* @getintcnt, align 4
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32*, i32** @ptr, align 8
  %3 = call i32 @assign_arg_ptr(i32* noundef %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #3
  unreachable

6:                                                ; preds = %0
  %7 = call i32 @assign_glob_ptr()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  call void @abort() #3
  unreachable

10:                                               ; preds = %6
  %11 = load i32*, i32** @ptr, align 8
  %12 = call i32 @assign_arg_idx(i32* noundef %11, i32 noundef 4)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  call void @abort() #3
  unreachable

15:                                               ; preds = %10
  %16 = call i32 @assign_glob_idx()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  call void @abort() #3
  unreachable

19:                                               ; preds = %15
  %20 = load i32*, i32** @ptr, align 8
  %21 = call i32 @preinc_arg_ptr(i32* noundef %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  call void @abort() #3
  unreachable

24:                                               ; preds = %19
  %25 = call i32 @preinc_glob_ptr()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  call void @abort() #3
  unreachable

28:                                               ; preds = %24
  %29 = load i32*, i32** @ptr, align 8
  %30 = call i32 @postinc_arg_ptr(i32* noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  call void @abort() #3
  unreachable

33:                                               ; preds = %28
  %34 = call i32 @postinc_glob_ptr()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  call void @abort() #3
  unreachable

37:                                               ; preds = %33
  %38 = load i32*, i32** @ptr, align 8
  %39 = call i32 @predec_arg_ptr(i32* noundef %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  call void @abort() #3
  unreachable

42:                                               ; preds = %37
  %43 = call i32 @predec_glob_ptr()
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  call void @abort() #3
  unreachable

46:                                               ; preds = %42
  %47 = load i32*, i32** @ptr, align 8
  %48 = call i32 @postdec_arg_ptr(i32* noundef %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  call void @abort() #3
  unreachable

51:                                               ; preds = %46
  %52 = call i32 @postdec_glob_ptr()
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  call void @abort() #3
  unreachable

55:                                               ; preds = %51
  %56 = load i32*, i32** @ptr, align 8
  %57 = call i32 @preinc_arg_idx(i32* noundef %56, i32 noundef 3)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  call void @abort() #3
  unreachable

60:                                               ; preds = %55
  %61 = call i32 @preinc_glob_idx()
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  call void @abort() #3
  unreachable

64:                                               ; preds = %60
  %65 = load i32*, i32** @ptr, align 8
  %66 = call i32 @postinc_arg_idx(i32* noundef %65, i32 noundef 3)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  call void @abort() #3
  unreachable

69:                                               ; preds = %64
  %70 = call i32 @postinc_glob_idx()
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  call void @abort() #3
  unreachable

73:                                               ; preds = %69
  %74 = load i32*, i32** @ptr, align 8
  %75 = call i32 @predec_arg_idx(i32* noundef %74, i32 noundef 3)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  call void @abort() #3
  unreachable

78:                                               ; preds = %73
  %79 = call i32 @predec_glob_idx()
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  call void @abort() #3
  unreachable

82:                                               ; preds = %78
  %83 = load i32*, i32** @ptr, align 8
  %84 = call i32 @postdec_arg_idx(i32* noundef %83, i32 noundef 3)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  call void @abort() #3
  unreachable

87:                                               ; preds = %82
  %88 = call i32 @postdec_glob_idx()
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  call void @abort() #3
  unreachable

91:                                               ; preds = %87
  %92 = load i32*, i32** @ptr, align 8
  %93 = call i32 @funccall_arg_ptr(i32* noundef %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  call void @abort() #3
  unreachable

96:                                               ; preds = %91
  %97 = load i32*, i32** @ptr, align 8
  %98 = call i32 @funccall_arg_idx(i32* noundef %97, i32 noundef 3)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  call void @abort() #3
  unreachable

101:                                              ; preds = %96
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblemem_or_argmemonly nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
