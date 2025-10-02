; ModuleID = './Lzma86Dec.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/LzmaUtil/Lzma86Dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }

@g_Alloc = internal global %struct.ISzAlloc { i8* (i8*, i64)* @SzAlloc, void (i8*, i8*)* @SzFree }, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @Lzma86_GetUnpackSize(i8* nocapture noundef readonly %0, i64 noundef %1, i64* nocapture noundef %2) #0 {
  %4 = icmp ult i64 %1, 14
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %23

6:                                                ; preds = %3
  store i64 0, i64* %2, align 8
  br label %7

7:                                                ; preds = %20, %6
  %.01 = phi i32 [ 0, %6 ], [ %21, %20 ]
  %8 = icmp ult i32 %.01, 8
  br i1 %8, label %9, label %22

9:                                                ; preds = %7
  %10 = add i32 %.01, 6
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i64
  %15 = shl i32 %.01, 3
  %16 = zext i32 %15 to i64
  %17 = shl i64 %14, %16
  %18 = load i64, i64* %2, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %9
  %21 = add i32 %.01, 1
  br label %7, !llvm.loop !4

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %22, %5
  %.0 = phi i32 [ 6, %5 ], [ 0, %22 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Lzma86_Decode(i8* noundef %0, i64* noundef %1, i8* noundef %2, i64* nocapture noundef %3) #1 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i64, i64* %3, align 8
  %9 = icmp ult i64 %8, 14
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  br label %30

11:                                               ; preds = %4
  %12 = load i8, i8* %2, align 1
  %13 = icmp ugt i8 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i64 0, i64* %1, align 8
  br label %30

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, -14
  store i64 %17, i64* %5, align 8
  %18 = getelementptr inbounds i8, i8* %2, i64 14
  %19 = getelementptr inbounds i8, i8* %2, i64 1
  %20 = call i32 @LzmaDecode(i8* noundef %0, i64* noundef %1, i8* noundef nonnull %18, i64* noundef nonnull %5, i8* noundef nonnull %19, i32 noundef 5, i32 noundef 0, i32* noundef nonnull %6, %struct.ISzAlloc* noundef nonnull @g_Alloc) #3
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, 14
  store i64 %22, i64* %3, align 8
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %24, label %23

23:                                               ; preds = %15
  br label %30

24:                                               ; preds = %15
  %25 = icmp eq i8 %12, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  %27 = load i64, i64* %1, align 8
  %28 = call i64 @x86_Convert(i8* noundef %0, i64 noundef %27, i32 noundef 0, i32* noundef nonnull %7, i32 noundef 0) #3
  br label %29

29:                                               ; preds = %26, %24
  br label %30

30:                                               ; preds = %29, %23, %14, %10
  %.0 = phi i32 [ 6, %10 ], [ 4, %14 ], [ %20, %23 ], [ 0, %29 ]
  ret i32 %.0
}

declare dso_local i32 @LzmaDecode(i8* noundef, i64* noundef, i8* noundef, i64* noundef, i8* noundef, i32 noundef, i32 noundef, i32* noundef, %struct.ISzAlloc* noundef) #2

declare dso_local i64 @x86_Convert(i8* noundef, i64 noundef, i32 noundef, i32* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @SzAlloc(i8* nocapture noundef readnone %0, i64 noundef %1) #1 {
  %3 = call i8* @MyAlloc(i64 noundef %1) #3
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define internal void @SzFree(i8* nocapture noundef readnone %0, i8* noundef %1) #1 {
  call void @MyFree(i8* noundef %1) #3
  ret void
}

declare dso_local i8* @MyAlloc(i64 noundef) #2

declare dso_local void @MyFree(i8* noundef) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
