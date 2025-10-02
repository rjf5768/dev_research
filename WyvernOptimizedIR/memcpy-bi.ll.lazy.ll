; ModuleID = './memcpy-bi.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memcpy-bi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@src = dso_local global [80 x i8] zeroinitializer, align 16
@dst = dso_local global [80 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(i8* noundef readonly %0, i8* noundef readonly %1, i32 noundef %2) #0 {
  %4 = sext i32 %2 to i64
  %bcmp = call i32 @bcmp(i8* %0, i8* %1, i64 %4)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #6
  unreachable

6:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %2 = icmp ult i32 %.0, 80
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = urem i32 %.0, 26
  %5 = trunc i32 %4 to i8
  %6 = add nuw i8 %5, 97
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [80 x i8], [80 x i8]* @src, i64 0, i64 %7
  store i8 %6, i8* %8, align 1
  br label %9

9:                                                ; preds = %3
  %10 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

11:                                               ; preds = %1
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 0)
  store i8 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), align 16
  %12 = load i8, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), align 16
  store i8 %12, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), align 16
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 1)
  store i16 0, i16* bitcast ([80 x i8]* @dst to i16*), align 16
  %13 = load i16, i16* bitcast ([80 x i8]* @src to i16*), align 16
  store i16 %13, i16* bitcast ([80 x i8]* @dst to i16*), align 16
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 2)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(3) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 3, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(3) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(3) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 3, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 3)
  store i32 0, i32* bitcast ([80 x i8]* @dst to i32*), align 16
  %14 = load i32, i32* bitcast ([80 x i8]* @src to i32*), align 16
  store i32 %14, i32* bitcast ([80 x i8]* @dst to i32*), align 16
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 4)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(5) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 5, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(5) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(5) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 5, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 5)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 6, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 6, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 6)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(7) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 7, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(7) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(7) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 7, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 7)
  store i64 0, i64* bitcast ([80 x i8]* @dst to i64*), align 16
  %15 = load i64, i64* bitcast ([80 x i8]* @src to i64*), align 16
  store i64 %15, i64* bitcast ([80 x i8]* @dst to i64*), align 16
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 8)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(9) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 9, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(9) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(9) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 9, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 9)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(10) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(10) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(10) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 10, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 10)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(11) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 11, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(11) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(11) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 11, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 11)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 12, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(12) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 12, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 12)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(13) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 13, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(13) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(13) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 13, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 13)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(14) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 14, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(14) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(14) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 14, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 14)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(15) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 15, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(15) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(15) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 15, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 15)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 16, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 16)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(17) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 17, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(17) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(17) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 17, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 17)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(18) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 18, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(18) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(18) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 18, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 18)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(19) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 19, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(19) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(19) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 19, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 19)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 20, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(20) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 20, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 20)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(21) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 21, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(21) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(21) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 21, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 21)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(22) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 22, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(22) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(22) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 22, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 22)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(23) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 23, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(23) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(23) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 23, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 23)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(24) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 24, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 24)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(25) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 25, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(25) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(25) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 25, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 25)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(26) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 26, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(26) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(26) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 26, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 26)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(27) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 27, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(27) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(27) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 27, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 27)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(28) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 28, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(28) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(28) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 28, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 28)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(29) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 29, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(29) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(29) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 29, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 29)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(30) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 30, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(30) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(30) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 30, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 30)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(31) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 31, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(31) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(31) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 31, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 31)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 32, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 32)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(33) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 33, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(33) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(33) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 33, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 33)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(34) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 34, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(34) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(34) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 34, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 34)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(35) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 35, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(35) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(35) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 35, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 35)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(36) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 36, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(36) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(36) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 36, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 36)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(37) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 37, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(37) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(37) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 37, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 37)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(38) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 38, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(38) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(38) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 38, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 38)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(39) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 39, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(39) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(39) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 39, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 39)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 40, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(40) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 40, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 40)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(41) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 41, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(41) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(41) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 41, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 41)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(42) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 42, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(42) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(42) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 42, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 42)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(43) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 43, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(43) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(43) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 43, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 43)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(44) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 44, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(44) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(44) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 44, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 44)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(45) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 45, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(45) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(45) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 45, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 45)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(46) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 46, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(46) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(46) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 46, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 46)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(47) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 47, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(47) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(47) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 47, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 47)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 48, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(48) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 48, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 48)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(49) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 49, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(49) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(49) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 49, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 49)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(50) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 50, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(50) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(50) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 50, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 50)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(51) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 51, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(51) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(51) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 51, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 51)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(52) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 52, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(52) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(52) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 52, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 52)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(53) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 53, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(53) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(53) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 53, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 53)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(54) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 54, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(54) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(54) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 54, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 54)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(55) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 55, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(55) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(55) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 55, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 55)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(56) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(56) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(56) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 56, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 56)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(57) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 57, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(57) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(57) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 57, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 57)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(58) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 58, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(58) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(58) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 58, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 58)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(59) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 59, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(59) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(59) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 59, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 59)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(60) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 60, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(60) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(60) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 60, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 60)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(61) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 61, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(61) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(61) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 61, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 61)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(62) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 62, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(62) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(62) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 62, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 62)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(63) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 63, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(63) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(63) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 63, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 63)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 64, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(64) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 64, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 64)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(65) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 65, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(65) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(65) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 65, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 65)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(66) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 66, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(66) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(66) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 66, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 66)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(67) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 67, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(67) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(67) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 67, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 67)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(68) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 68, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(68) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(68) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 68, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 68)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(69) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 69, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(69) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(69) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 69, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 69)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(70) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 70, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(70) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(70) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 70, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 70)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(71) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 71, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(71) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(71) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 71, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 71)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(72) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 72, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(72) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(72) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 72, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 72)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(73) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 73, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(73) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(73) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 73, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 73)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(74) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 74, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(74) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(74) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 74, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 74)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(75) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 75, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(75) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(75) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 75, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 75)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(76) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 76, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(76) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(76) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 76, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 76)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(77) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 77, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(77) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(77) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 77, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 77)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(78) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 78, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(78) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(78) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 78, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 78)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(79) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8 0, i64 79, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(79) getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef nonnull align 16 dereferenceable(79) getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i64 79, i1 false)
  call void @check(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @dst, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @src, i64 0, i64 0), i32 noundef 79)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
