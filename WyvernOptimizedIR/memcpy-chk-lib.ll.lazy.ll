; ModuleID = './memcpy-chk-lib.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/memcpy-chk-lib.c"
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
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @llvm.eh.sjlj.longjmp(i8* bitcast ([256 x i8*]* @chk_fail_buf to i8*))
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  call void @abort() #1
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %3, %2
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.eh.sjlj.longjmp(i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @memcpy(i8* noundef returned writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2) #3 {
  br label %4

4:                                                ; preds = %5, %3
  %.02 = phi i64 [ %2, %3 ], [ %6, %5 ]
  %.01 = phi i8* [ %1, %3 ], [ %7, %5 ]
  %.0 = phi i8* [ %0, %3 ], [ %9, %5 ]
  %.not = icmp eq i64 %.02, 0
  br i1 %.not, label %10, label %5

5:                                                ; preds = %4
  %6 = add i64 %.02, -1
  %7 = getelementptr inbounds i8, i8* %.01, i64 1
  %8 = load i8, i8* %.01, align 1
  %9 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 %8, i8* %.0, align 1
  br label %4, !llvm.loop !4

10:                                               ; preds = %4
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__memcpy_chk(i8* noundef returned writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) #4 {
  %5 = icmp eq i64 %3, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  call void @abort() #1
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = load volatile i32, i32* @chk_calls, align 4
  %9 = add nsw i32 %8, 1
  store volatile i32 %9, i32* @chk_calls, align 4
  %10 = icmp ugt i64 %2, %3
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  call void @__chk_fail() #10
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %1, i64 %2, i1 false)
  ret i8* %0

UnifiedUnreachableBlock:                          ; preds = %11, %6
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @mempcpy(i8* noundef writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2) #3 {
  br label %4

4:                                                ; preds = %5, %3
  %.02 = phi i64 [ %2, %3 ], [ %6, %5 ]
  %.01 = phi i8* [ %1, %3 ], [ %7, %5 ]
  %.0 = phi i8* [ %0, %3 ], [ %9, %5 ]
  %.not = icmp eq i64 %.02, 0
  br i1 %.not, label %10, label %5

5:                                                ; preds = %4
  %6 = add i64 %.02, -1
  %7 = getelementptr inbounds i8, i8* %.01, i64 1
  %8 = load i8, i8* %.01, align 1
  %9 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 %8, i8* %.0, align 1
  br label %4, !llvm.loop !6

10:                                               ; preds = %4
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__mempcpy_chk(i8* noundef writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) #4 {
  %5 = icmp eq i64 %3, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  call void @abort() #1
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = load volatile i32, i32* @chk_calls, align 4
  %9 = add nsw i32 %8, 1
  store volatile i32 %9, i32* @chk_calls, align 4
  %10 = icmp ugt i64 %2, %3
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  call void @__chk_fail() #10
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %1, i64 %2, i1 false)
  %13 = getelementptr inbounds i8, i8* %0, i64 %2
  ret i8* %13

UnifiedUnreachableBlock:                          ; preds = %11, %6
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @memmove(i8* noundef returned writeonly %0, i8* noundef readonly %1, i64 noundef %2) #3 {
  %4 = icmp ult i8* %1, %0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %8, %5
  %.02 = phi i64 [ %2, %5 ], [ %7, %8 ]
  %7 = add i64 %.02, -1
  %.not3 = icmp eq i64 %.02, 0
  br i1 %.not3, label %12, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds i8, i8* %1, i64 %7
  %10 = load i8, i8* %9, align 1
  %11 = getelementptr inbounds i8, i8* %0, i64 %7
  store i8 %10, i8* %11, align 1
  br label %6, !llvm.loop !7

12:                                               ; preds = %6
  br label %21

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %15, %13
  %.1 = phi i64 [ %2, %13 ], [ %16, %15 ]
  %.01 = phi i8* [ %1, %13 ], [ %17, %15 ]
  %.0 = phi i8* [ %0, %13 ], [ %19, %15 ]
  %.not = icmp eq i64 %.1, 0
  br i1 %.not, label %20, label %15

15:                                               ; preds = %14
  %16 = add i64 %.1, -1
  %17 = getelementptr inbounds i8, i8* %.01, i64 1
  %18 = load i8, i8* %.01, align 1
  %19 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 %18, i8* %.0, align 1
  br label %14, !llvm.loop !8

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %12
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__memmove_chk(i8* noundef returned writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) #4 {
  %5 = icmp eq i64 %3, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  call void @abort() #1
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = load volatile i32, i32* @chk_calls, align 4
  %9 = add nsw i32 %8, 1
  store volatile i32 %9, i32* @chk_calls, align 4
  %10 = icmp ugt i64 %2, %3
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  call void @__chk_fail() #10
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %1, i64 %2, i1 false)
  ret i8* %0

UnifiedUnreachableBlock:                          ; preds = %11, %6
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local i8* @memset(i8* noundef returned writeonly %0, i32 noundef %1, i64 noundef %2) #6 {
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi i64 [ %2, %3 ], [ %5, %6 ]
  %5 = add i64 %.0, -1
  %.not = icmp eq i64 %.0, 0
  br i1 %.not, label %9, label %6

6:                                                ; preds = %4
  %7 = trunc i32 %1 to i8
  %8 = getelementptr inbounds i8, i8* %0, i64 %5
  store i8 %7, i8* %8, align 1
  br label %4, !llvm.loop !9

9:                                                ; preds = %4
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__memset_chk(i8* noundef returned writeonly %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #4 {
  %5 = icmp eq i64 %3, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  call void @abort() #1
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = load volatile i32, i32* @chk_calls, align 4
  %9 = add nsw i32 %8, 1
  store volatile i32 %9, i32* @chk_calls, align 4
  %10 = icmp ugt i64 %2, %3
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  call void @__chk_fail() #10
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %7
  %13 = trunc i32 %1 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 %13, i64 %2, i1 false)
  ret i8* %0

UnifiedUnreachableBlock:                          ; preds = %11, %6
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @strcpy(i8* noundef returned writeonly %0, i8* nocapture noundef readonly %1) #3 {
  br label %3

3:                                                ; preds = %5, %2
  %.01 = phi i8* [ %1, %2 ], [ %7, %5 ]
  %.0 = phi i8* [ %0, %2 ], [ %6, %5 ]
  %4 = load i8, i8* %.01, align 1
  store i8 %4, i8* %.0, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds i8, i8* %.0, i64 1
  %7 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %3, !llvm.loop !10

8:                                                ; preds = %3
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__strcpy_chk(i8* noundef returned %0, i8* noundef %1, i64 noundef %2) #4 {
  %4 = icmp eq i64 %2, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  call void @abort() #1
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = load volatile i32, i32* @chk_calls, align 4
  %8 = add nsw i32 %7, 1
  store volatile i32 %8, i32* @chk_calls, align 4
  %9 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #11
  %.not = icmp ult i64 %9, %2
  br i1 %.not, label %11, label %10

10:                                               ; preds = %6
  call void @__chk_fail() #10
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %6
  %12 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %1)
  ret i8* %0

UnifiedUnreachableBlock:                          ; preds = %10, %5
  unreachable
}

declare dso_local i64 @strlen(i8* noundef) #8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @stpcpy(i8* noundef writeonly %0, i8* nocapture noundef readonly %1) #3 {
  br label %3

3:                                                ; preds = %5, %2
  %.01 = phi i8* [ %1, %2 ], [ %6, %5 ]
  %.0 = phi i8* [ %0, %2 ], [ %8, %5 ]
  %4 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds i8, i8* %.01, i64 1
  %7 = load i8, i8* %.01, align 1
  %8 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 %7, i8* %.0, align 1
  br label %3, !llvm.loop !11

9:                                                ; preds = %3
  store i8 0, i8* %.0, align 1
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__stpcpy_chk(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 {
  %4 = icmp eq i64 %2, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  call void @abort() #1
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = load volatile i32, i32* @chk_calls, align 4
  %8 = add nsw i32 %7, 1
  store volatile i32 %8, i32* @chk_calls, align 4
  %9 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #11
  %.not = icmp ult i64 %9, %2
  br i1 %.not, label %11, label %10

10:                                               ; preds = %6
  call void @__chk_fail() #10
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %6
  %12 = call i8* @stpcpy(i8* noundef %0, i8* noundef %1)
  ret i8* %12

UnifiedUnreachableBlock:                          ; preds = %10, %5
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @stpncpy(i8* noundef writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2) #3 {
  br label %4

4:                                                ; preds = %12, %3
  %.02 = phi i64 [ %2, %3 ], [ %15, %12 ]
  %.01 = phi i8* [ %1, %3 ], [ %14, %12 ]
  %.0 = phi i8* [ %0, %3 ], [ %13, %12 ]
  %5 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %8, label %6

6:                                                ; preds = %4
  %7 = icmp ne i64 %.02, 0
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i1 [ false, %4 ], [ %7, %6 ]
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = load i8, i8* %.01, align 1
  store i8 %11, i8* %.0, align 1
  br label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, i8* %.0, i64 1
  %14 = getelementptr inbounds i8, i8* %.01, i64 1
  %15 = add i64 %.02, -1
  br label %4, !llvm.loop !12

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %18, %16
  %.13 = phi i64 [ %.02, %16 ], [ %19, %18 ]
  %.1 = phi i8* [ %.0, %16 ], [ %20, %18 ]
  %.not4 = icmp eq i64 %.13, 0
  br i1 %.not4, label %21, label %18

18:                                               ; preds = %17
  %19 = add i64 %.13, -1
  %20 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 0, i8* %.1, align 1
  br label %17, !llvm.loop !13

21:                                               ; preds = %17
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__stpncpy_chk(i8* noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) #4 {
  %5 = icmp eq i64 %3, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  call void @abort() #1
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = load volatile i32, i32* @chk_calls, align 4
  %9 = add nsw i32 %8, 1
  store volatile i32 %9, i32* @chk_calls, align 4
  %10 = icmp ugt i64 %2, %3
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  call void @__chk_fail() #10
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %7
  %13 = call i8* @stpncpy(i8* noundef %0, i8* noundef %1, i64 noundef %2)
  ret i8* %13

UnifiedUnreachableBlock:                          ; preds = %11, %6
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @strncpy(i8* noundef returned writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2) #3 {
  br label %4

4:                                                ; preds = %12, %3
  %.02 = phi i64 [ %2, %3 ], [ %15, %12 ]
  %.01 = phi i8* [ %1, %3 ], [ %14, %12 ]
  %.0 = phi i8* [ %0, %3 ], [ %13, %12 ]
  %5 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %8, label %6

6:                                                ; preds = %4
  %7 = icmp ne i64 %.02, 0
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i1 [ false, %4 ], [ %7, %6 ]
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = load i8, i8* %.01, align 1
  store i8 %11, i8* %.0, align 1
  br label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, i8* %.0, i64 1
  %14 = getelementptr inbounds i8, i8* %.01, i64 1
  %15 = add i64 %.02, -1
  br label %4, !llvm.loop !14

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %18, %16
  %.13 = phi i64 [ %.02, %16 ], [ %19, %18 ]
  %.1 = phi i8* [ %.0, %16 ], [ %20, %18 ]
  %.not4 = icmp eq i64 %.13, 0
  br i1 %.not4, label %21, label %18

18:                                               ; preds = %17
  %19 = add i64 %.13, -1
  %20 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 0, i8* %.1, align 1
  br label %17, !llvm.loop !15

21:                                               ; preds = %17
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__strncpy_chk(i8* noundef returned %0, i8* nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) #4 {
  %5 = icmp eq i64 %3, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  call void @abort() #1
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = load volatile i32, i32* @chk_calls, align 4
  %9 = add nsw i32 %8, 1
  store volatile i32 %9, i32* @chk_calls, align 4
  %10 = icmp ugt i64 %2, %3
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  call void @__chk_fail() #10
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %7
  %13 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef %1, i64 noundef %2)
  ret i8* %0

UnifiedUnreachableBlock:                          ; preds = %11, %6
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @strcat(i8* noundef returned %0, i8* nocapture noundef readonly %1) #3 {
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi i8* [ %0, %2 ], [ %6, %5 ]
  %4 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %7, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %3, !llvm.loop !16

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %10, %7
  %.01 = phi i8* [ %1, %7 ], [ %12, %10 ]
  %.1 = phi i8* [ %.0, %7 ], [ %11, %10 ]
  %9 = load i8, i8* %.01, align 1
  store i8 %9, i8* %.1, align 1
  %.not2 = icmp eq i8 %9, 0
  br i1 %.not2, label %13, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, i8* %.1, i64 1
  %12 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %8, !llvm.loop !17

13:                                               ; preds = %8
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__strcat_chk(i8* noundef returned %0, i8* noundef %1, i64 noundef %2) #4 {
  %4 = icmp eq i64 %2, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  call void @abort() #1
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = load volatile i32, i32* @chk_calls, align 4
  %8 = add nsw i32 %7, 1
  store volatile i32 %8, i32* @chk_calls, align 4
  %9 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #11
  %10 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #11
  %11 = add i64 %9, %10
  %.not = icmp ult i64 %11, %2
  br i1 %.not, label %13, label %12

12:                                               ; preds = %6
  call void @__chk_fail() #10
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %6
  %14 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %1)
  ret i8* %0

UnifiedUnreachableBlock:                          ; preds = %12, %5
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @strncat(i8* noundef returned %0, i8* nocapture noundef readonly %1, i64 noundef %2) #3 {
  br label %4

4:                                                ; preds = %6, %3
  %.01 = phi i8* [ %0, %3 ], [ %7, %6 ]
  %5 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %8, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %4, !llvm.loop !18

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %14, %8
  %.not8 = phi i1 [ false, %14 ], [ true, %8 ]
  %.03 = phi i64 [ %17, %14 ], [ %2, %8 ]
  %.02 = phi i8* [ %16, %14 ], [ %1, %8 ]
  %.1 = phi i8* [ %15, %14 ], [ %.01, %8 ]
  %.not7 = icmp eq i64 %.03, 0
  br i1 %.not7, label %18, label %10

10:                                               ; preds = %9
  %11 = load i8, i8* %.02, align 1
  store i8 %11, i8* %.1, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %21

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, i8* %.1, i64 1
  %16 = getelementptr inbounds i8, i8* %.02, i64 1
  %17 = add i64 %.03, -1
  br label %9, !llvm.loop !19

18:                                               ; preds = %9
  br i1 %.not8, label %20, label %19

19:                                               ; preds = %18
  store i8 0, i8* %.1, align 1
  br label %20

20:                                               ; preds = %19, %18
  br label %21

21:                                               ; preds = %20, %13
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @__strncat_chk(i8* noundef returned %0, i8* nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) #4 {
  %5 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #11
  %6 = icmp eq i64 %3, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  call void @abort() #1
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  %9 = load volatile i32, i32* @chk_calls, align 4
  %10 = add nsw i32 %9, 1
  store volatile i32 %10, i32* @chk_calls, align 4
  br label %11

11:                                               ; preds = %21, %8
  %.02 = phi i64 [ %5, %8 ], [ %23, %21 ]
  %.01 = phi i64 [ %2, %8 ], [ %24, %21 ]
  %.0 = phi i8* [ %1, %8 ], [ %22, %21 ]
  %12 = icmp ult i64 %.02, %3
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = icmp ne i64 %.01, 0
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i1 [ false, %11 ], [ %14, %13 ]
  br i1 %16, label %17, label %.loopexit

17:                                               ; preds = %15
  %18 = load i8, i8* %.0, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, i8* %.0, i64 1
  %23 = add i64 %.02, 1
  %24 = add i64 %.01, -1
  br label %11, !llvm.loop !20

.loopexit:                                        ; preds = %15
  br label %25

25:                                               ; preds = %.loopexit, %20
  %.not = icmp ult i64 %.02, %3
  br i1 %.not, label %27, label %26

26:                                               ; preds = %25
  call void @__chk_fail() #10
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %25
  %28 = call i8* @strncat(i8* noundef nonnull dereferenceable(1) %0, i8* noundef %1, i64 noundef %2)
  ret i8* %0

UnifiedUnreachableBlock:                          ; preds = %26, %7
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__sprintf_chk(i8* nocapture noundef writeonly %0, i32 noundef %1, i64 noundef %2, i8* noundef %3, ...) #4 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = icmp eq i64 %2, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  call void @abort() #1
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %7, %4
  %11 = load volatile i32, i32* @chk_calls, align 4
  %12 = add nsw i32 %11, 1
  store volatile i32 %12, i32* @chk_calls, align 4
  %13 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.va_start(i8* nonnull %13)
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %15 = call i32 @vsprintf(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i8* noundef %3, %struct.__va_list_tag* noundef nonnull %14) #11
  %16 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.va_end(i8* %16)
  %17 = icmp sgt i32 %15, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = sext i32 %15 to i64
  %.not = icmp ult i64 %19, %2
  br i1 %.not, label %21, label %20

20:                                               ; preds = %18
  call void @__chk_fail() #10
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %18
  %22 = add nsw i32 %15, 1
  %23 = sext i32 %22 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %23, i1 false)
  br label %24

24:                                               ; preds = %21, %10
  ret i32 %15

UnifiedUnreachableBlock:                          ; preds = %20, %9
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

declare dso_local i32 @vsprintf(i8* noundef, i8* noundef, %struct.__va_list_tag* noundef) #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__vsprintf_chk(i8* nocapture noundef writeonly %0, i32 noundef %1, i64 noundef %2, i8* noundef %3, %struct.__va_list_tag* noundef %4) #4 {
  %6 = icmp eq i64 %2, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  call void @abort() #1
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %7, %5
  %11 = load volatile i32, i32* @chk_calls, align 4
  %12 = add nsw i32 %11, 1
  store volatile i32 %12, i32* @chk_calls, align 4
  %13 = call i32 @vsprintf(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i8* noundef %3, %struct.__va_list_tag* noundef %4) #11
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = sext i32 %13 to i64
  %.not = icmp ult i64 %16, %2
  br i1 %.not, label %18, label %17

17:                                               ; preds = %15
  call void @__chk_fail() #10
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  %19 = add nsw i32 %13, 1
  %20 = sext i32 %19 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %20, i1 false)
  br label %21

21:                                               ; preds = %18, %10
  ret i32 %13

UnifiedUnreachableBlock:                          ; preds = %17, %9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__snprintf_chk(i8* nocapture noundef writeonly %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i8* noundef %4, ...) #4 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = icmp eq i64 %3, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @abort() #1
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8, %5
  %12 = load volatile i32, i32* @chk_calls, align 4
  %13 = add nsw i32 %12, 1
  store volatile i32 %13, i32* @chk_calls, align 4
  %14 = icmp ult i64 %3, %1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  call void @__chk_fail() #10
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %11
  %17 = bitcast [1 x %struct.__va_list_tag]* %6 to i8*
  call void @llvm.va_start(i8* nonnull %17)
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %19 = call i32 @vsprintf(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i8* noundef %4, %struct.__va_list_tag* noundef nonnull %18) #11
  %20 = bitcast [1 x %struct.__va_list_tag]* %6 to i8*
  call void @llvm.va_end(i8* %20)
  %21 = icmp sgt i32 %19, -1
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = sext i32 %19 to i64
  %24 = icmp ult i64 %23, %1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = add nsw i32 %19, 1
  %27 = sext i32 %26 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %27, i1 false)
  br label %32

28:                                               ; preds = %22
  %29 = add i64 %1, -1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %29, i1 false)
  %30 = add i64 %1, -1
  %31 = getelementptr inbounds i8, i8* %0, i64 %30
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %32, %16
  ret i32 %19

UnifiedUnreachableBlock:                          ; preds = %15, %10
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__vsnprintf_chk(i8* nocapture noundef writeonly %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i8* noundef %4, %struct.__va_list_tag* noundef %5) #4 {
  %7 = icmp eq i64 %3, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %6
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @abort() #1
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8, %6
  %12 = load volatile i32, i32* @chk_calls, align 4
  %13 = add nsw i32 %12, 1
  store volatile i32 %13, i32* @chk_calls, align 4
  %14 = icmp ult i64 %3, %1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  call void @__chk_fail() #10
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %11
  %17 = call i32 @vsprintf(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i8* noundef %4, %struct.__va_list_tag* noundef %5) #11
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = sext i32 %17 to i64
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = add nsw i32 %17, 1
  %24 = sext i32 %23 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %24, i1 false)
  br label %29

25:                                               ; preds = %19
  %26 = add i64 %1, -1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %26, i1 false)
  %27 = add i64 %1, -1
  %28 = getelementptr inbounds i8, i8* %0, i64 %27
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %25, %22
  br label %30

30:                                               ; preds = %29, %16
  ret i32 %17

UnifiedUnreachableBlock:                          ; preds = %15, %10
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @snprintf(i8* nocapture noundef writeonly %0, i64 noundef %1, i8* noundef %2, ...) #4 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_start(i8* nonnull %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %7 = call i32 @vsprintf(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i8* noundef %2, %struct.__va_list_tag* noundef nonnull %6) #11
  %8 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_end(i8* %8)
  %9 = icmp sgt i32 %7, -1
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = sext i32 %7 to i64
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = add nsw i32 %7, 1
  %15 = sext i32 %14 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %15, i1 false)
  br label %22

16:                                               ; preds = %10
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %21, label %17

17:                                               ; preds = %16
  %18 = add i64 %1, -1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %18, i1 false)
  %19 = add i64 %1, -1
  %20 = getelementptr inbounds i8, i8* %0, i64 %19
  store i8 0, i8* %20, align 1
  br label %21

21:                                               ; preds = %17, %16
  br label %22

22:                                               ; preds = %21, %13
  br label %23

23:                                               ; preds = %22, %3
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vsnprintf(i8* nocapture noundef writeonly %0, i64 noundef %1, i8* noundef %2, %struct.__va_list_tag* noundef %3) #4 {
  %5 = call i32 @vsprintf(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i8* noundef %2, %struct.__va_list_tag* noundef %3) #11
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = add nsw i32 %5, 1
  %12 = sext i32 %11 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %12, i1 false)
  br label %19

13:                                               ; preds = %7
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %18, label %14

14:                                               ; preds = %13
  %15 = add i64 %1, -1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 16 getelementptr inbounds ([4096 x i8], [4096 x i8]* @chk_sprintf_buf, i64 0, i64 0), i64 %15, i1 false)
  %16 = add i64 %1, -1
  %17 = getelementptr inbounds i8, i8* %0, i64 %16
  store i8 0, i8* %17, align 1
  br label %18

18:                                               ; preds = %14, %13
  br label %19

19:                                               ; preds = %18, %10
  br label %20

20:                                               ; preds = %19, %4
  ret i32 %5
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn }
attributes #10 = { noreturn }
attributes #11 = { nounwind }

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
