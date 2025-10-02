; ModuleID = './Xz.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Xz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CXzStream = type { i16, i64, i64, %struct.CXzBlockSizes*, i64 }
%struct.CXzBlockSizes = type { i64, i64 }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct.CXzCheck = type { i32, i32, i64, %struct.CSha256 }
%struct.CSha256 = type { [8 x i32], i64, [64 x i8] }

@XZ_SIG = dso_local global [6 x i8] c"\FD7zXZ\00", align 1
@XZ_FOOTER_SIG = dso_local global [2 x i8] c"YZ", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @Xz_WriteVarInt(i8* nocapture noundef %0, i64 noundef %1) #0 {
  br label %3

3:                                                ; preds = %9, %2
  %.01 = phi i64 [ %1, %2 ], [ %10, %9 ]
  %.0 = phi i32 [ 0, %2 ], [ %6, %9 ]
  %4 = trunc i64 %.01 to i8
  %5 = or i8 %4, -128
  %6 = add i32 %.0, 1
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i8, i8* %0, i64 %7
  store i8 %5, i8* %8, align 1
  br label %9

9:                                                ; preds = %3
  %10 = lshr i64 %.01, 7
  %.not = icmp ult i64 %.01, 128
  br i1 %.not, label %11, label %3, !llvm.loop !4

11:                                               ; preds = %9
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds i8, i8* %0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = and i8 %14, 127
  store i8 %15, i8* %13, align 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Xz_Construct(%struct.CXzStream* nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 2
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 1
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 3
  store %struct.CXzBlockSizes* null, %struct.CXzBlockSizes** %4, align 8
  %5 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 0
  store i16 0, i16* %5, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Xz_Free(%struct.CXzStream* nocapture noundef %0, %struct.ISzAlloc* noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %1, i64 0, i32 1
  %4 = load void (i8*, i8*)*, void (i8*, i8*)** %3, align 8
  %5 = bitcast %struct.ISzAlloc* %1 to i8*
  %6 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 3
  %7 = bitcast %struct.CXzBlockSizes** %6 to i8**
  %8 = load i8*, i8** %7, align 8
  call void %4(i8* noundef %5, i8* noundef %8) #5
  %9 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i64 0, i32 3
  store %struct.CXzBlockSizes* null, %struct.CXzBlockSizes** %11, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @XzFlags_GetCheckSize(i16 noundef zeroext %0) #3 {
  %2 = and i16 %0, 15
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %10

5:                                                ; preds = %1
  %6 = zext i16 %2 to i32
  %7 = add nsw i32 %6, -1
  %8 = sdiv i32 %7, 3
  %9 = shl i32 4, %8
  br label %10

10:                                               ; preds = %5, %4
  %11 = phi i32 [ 0, %4 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @XzCheck_Init(%struct.CXzCheck* noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %0, i64 0, i32 0
  store i32 %1, i32* %3, align 8
  switch i32 %1, label %10 [
    i32 1, label %4
    i32 4, label %6
    i32 10, label %8
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %0, i64 0, i32 1
  store i32 -1, i32* %5, align 4
  br label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %0, i64 0, i32 2
  store i64 -1, i64* %7, align 8
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %0, i64 0, i32 3
  call void @Sha256_Init(%struct.CSha256* noundef nonnull %9) #5
  br label %10

10:                                               ; preds = %8, %6, %4, %2
  ret void
}

declare dso_local void @Sha256_Init(%struct.CSha256* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @XzCheck_Update(%struct.CXzCheck* noundef %0, i8* noundef %1, i64 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %18 [
    i32 1, label %6
    i32 4, label %11
    i32 10, label %16
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @CrcUpdate(i32 noundef %8, i8* noundef %1, i64 noundef %2) #5
  %10 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %0, i64 0, i32 1
  store i32 %9, i32* %10, align 4
  br label %18

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %0, i64 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @Crc64Update(i64 noundef %13, i8* noundef %1, i64 noundef %2) #5
  %15 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %0, i64 0, i32 2
  store i64 %14, i64* %15, align 8
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %0, i64 0, i32 3
  call void @Sha256_Update(%struct.CSha256* noundef nonnull %17, i8* noundef %1, i64 noundef %2) #5
  br label %18

18:                                               ; preds = %16, %11, %6, %3
  ret void
}

declare dso_local i32 @CrcUpdate(i32 noundef, i8* noundef, i64 noundef) #4

declare dso_local i64 @Crc64Update(i64 noundef, i8* noundef, i64 noundef) #4

declare dso_local void @Sha256_Update(%struct.CSha256* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @XzCheck_Final(%struct.CXzCheck* noundef %0, i8* noundef %1) #2 {
  %3 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  switch i32 %4, label %26 [
    i32 1, label %5
    i32 4, label %10
    i32 10, label %24
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %0, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = xor i32 %7, -1
  %9 = bitcast i8* %1 to i32*
  store i32 %8, i32* %9, align 4
  br label %27

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %0, i64 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = xor i64 %12, -1
  br label %14

14:                                               ; preds = %20, %10
  %.02 = phi i32 [ 0, %10 ], [ %21, %20 ]
  %.01 = phi i64 [ %13, %10 ], [ %22, %20 ]
  %15 = icmp ult i32 %.02, 8
  br i1 %15, label %16, label %23

16:                                               ; preds = %14
  %17 = trunc i64 %.01 to i8
  %18 = zext i32 %.02 to i64
  %19 = getelementptr inbounds i8, i8* %1, i64 %18
  store i8 %17, i8* %19, align 1
  br label %20

20:                                               ; preds = %16
  %21 = add nuw nsw i32 %.02, 1
  %22 = lshr i64 %.01, 8
  br label %14, !llvm.loop !6

23:                                               ; preds = %14
  br label %27

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %0, i64 0, i32 3
  call void @Sha256_Final(%struct.CSha256* noundef nonnull %25, i8* noundef %1) #5
  br label %27

26:                                               ; preds = %2
  br label %28

27:                                               ; preds = %24, %23, %5
  br label %28

28:                                               ; preds = %27, %26
  %.0 = phi i32 [ 0, %26 ], [ 1, %27 ]
  ret i32 %.0
}

declare dso_local void @Sha256_Final(%struct.CSha256* noundef, i8* noundef) #4

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
