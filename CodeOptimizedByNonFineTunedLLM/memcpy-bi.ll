; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memcpy-bi.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memcpy-bi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@src = dso_local global [80 x i8] zeroinitializer, align 16
@dst = dso_local global [80 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %10) #5
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  call void @abort() #6
  unreachable

14:                                               ; preds = %3
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %16, %0
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 80
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load i32, i32* %2, align 4
  %10 = srem i32 %9, 26
  %11 = add nsw i32 97, %10
  %12 = trunc i32 %11 to i8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [80 x i8], [80 x i8]* @src, i64 0, i64 %14
  store i8 %12, i8* %15, align 1
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  br label %4, !llvm.loop !4

19:                                               ; preds = %4
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 0, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 0, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 0)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 1, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 1)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 2, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 2, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 2)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 3, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 3, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 3)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 4, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 4, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 4)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 5, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 5, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 5)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 6, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 6, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 6)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 7, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 7, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 7)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 8, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 8)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 9, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 9, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 9)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 10, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 10)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 11, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 11, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 11)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 12, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 12, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 12)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 13, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 13, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 13)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 14, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 14, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 14)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 15, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 15, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 15)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 16, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 16)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 17, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 17, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 17)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 18, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 18, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 18)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 19, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 19, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 19)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 20, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 20, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 20)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 21, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 21, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 21)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 22, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 22, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 22)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 23, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 23, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 23)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 24, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 24)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 25, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 25, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 25)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 26, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 26, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 26)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 27, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 27, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 27)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 28, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 28, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 28)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 29, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 29, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 29)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 30, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 30, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 30)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 31, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 31, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 31)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 32, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 32)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 33, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 33, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 33)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 34, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 34, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 34)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 35, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 35, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 35)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 36, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 36, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 36)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 37, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 37, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 37)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 38, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 38, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 38)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 39, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 39, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 39)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 40, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 40, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 40)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 41, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 41, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 41)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 42, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 42, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 42)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 43, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 43, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 43)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 44, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 44, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 44)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 45, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 45, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 45)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 46, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 46, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 46)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 47, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 47, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 47)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 48, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 48, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 48)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 49, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 49, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 49)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 50, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 50, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 50)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 51, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 51, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 51)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 52, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 52, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 52)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 53, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 53, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 53)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 54, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 54, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 54)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 55, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 55, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 55)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 56, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 56)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 57, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 57, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 57)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 58, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 58, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 58)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 59, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 59, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 59)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 60, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 60, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 60)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 61, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 61, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 61)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 62, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 62, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 62)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 63, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 63, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 63)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 64, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 64, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 64)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 65, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 65, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 65)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 66, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 66, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 66)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 67, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 67, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 67)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 68, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 68, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 68)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 69, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 69, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 69)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 70, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 70, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 70)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 71, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 71, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 71)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 72, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 72, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 72)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 73, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 73, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 73)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 74, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 74, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 74)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 75, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 75, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 75)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 76, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 76, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 76)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 77, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 77, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 77)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 78, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 78, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 78)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 79, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 79, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 79)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
