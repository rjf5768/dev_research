; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Xz.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Xz_WriteVarInt(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i64, i64* %4, align 8
  %8 = and i64 %7, 127
  %9 = or i64 %8, 128
  %10 = trunc i64 %9 to i8
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %5, align 4
  %14 = zext i32 %12 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  store i8 %10, i8* %15, align 1
  %16 = load i64, i64* %4, align 8
  %17 = lshr i64 %16, 7
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %6
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %6, label %21, !llvm.loop !4

21:                                               ; preds = %18
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sub i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 127
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %26, align 1
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Xz_Construct(%struct.CXzStream* noundef %0) #0 {
  %2 = alloca %struct.CXzStream*, align 8
  store %struct.CXzStream* %0, %struct.CXzStream** %2, align 8
  %3 = load %struct.CXzStream*, %struct.CXzStream** %2, align 8
  %4 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load %struct.CXzStream*, %struct.CXzStream** %2, align 8
  %6 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load %struct.CXzStream*, %struct.CXzStream** %2, align 8
  %8 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %7, i32 0, i32 3
  store %struct.CXzBlockSizes* null, %struct.CXzBlockSizes** %8, align 8
  %9 = load %struct.CXzStream*, %struct.CXzStream** %2, align 8
  %10 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %9, i32 0, i32 0
  store i16 0, i16* %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Xz_Free(%struct.CXzStream* noundef %0, %struct.ISzAlloc* noundef %1) #0 {
  %3 = alloca %struct.CXzStream*, align 8
  %4 = alloca %struct.ISzAlloc*, align 8
  store %struct.CXzStream* %0, %struct.CXzStream** %3, align 8
  store %struct.ISzAlloc* %1, %struct.ISzAlloc** %4, align 8
  %5 = load %struct.ISzAlloc*, %struct.ISzAlloc** %4, align 8
  %6 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %5, i32 0, i32 1
  %7 = load void (i8*, i8*)*, void (i8*, i8*)** %6, align 8
  %8 = load %struct.ISzAlloc*, %struct.ISzAlloc** %4, align 8
  %9 = bitcast %struct.ISzAlloc* %8 to i8*
  %10 = load %struct.CXzStream*, %struct.CXzStream** %3, align 8
  %11 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %10, i32 0, i32 3
  %12 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %11, align 8
  %13 = bitcast %struct.CXzBlockSizes* %12 to i8*
  call void %7(i8* noundef %9, i8* noundef %13)
  %14 = load %struct.CXzStream*, %struct.CXzStream** %3, align 8
  %15 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.CXzStream*, %struct.CXzStream** %3, align 8
  %17 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.CXzStream*, %struct.CXzStream** %3, align 8
  %19 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %18, i32 0, i32 3
  store %struct.CXzBlockSizes* null, %struct.CXzBlockSizes** %19, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @XzFlags_GetCheckSize(i16 noundef zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i16 %0, i16* %2, align 2
  %4 = load i16, i16* %2, align 2
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, 15
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %15

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sdiv i32 %12, 3
  %14 = shl i32 4, %13
  br label %15

15:                                               ; preds = %10, %9
  %16 = phi i32 [ 0, %9 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @XzCheck_Init(%struct.CXzCheck* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.CXzCheck*, align 8
  %4 = alloca i32, align 4
  store %struct.CXzCheck* %0, %struct.CXzCheck** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.CXzCheck*, %struct.CXzCheck** %3, align 8
  %7 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %18 [
    i32 1, label %9
    i32 4, label %12
    i32 10, label %15
  ]

9:                                                ; preds = %2
  %10 = load %struct.CXzCheck*, %struct.CXzCheck** %3, align 8
  %11 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %10, i32 0, i32 1
  store i32 -1, i32* %11, align 4
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.CXzCheck*, %struct.CXzCheck** %3, align 8
  %14 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %13, i32 0, i32 2
  store i64 -1, i64* %14, align 8
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.CXzCheck*, %struct.CXzCheck** %3, align 8
  %17 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %16, i32 0, i32 3
  call void @Sha256_Init(%struct.CSha256* noundef %17)
  br label %18

18:                                               ; preds = %2, %15, %12, %9
  ret void
}

declare dso_local void @Sha256_Init(%struct.CSha256* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @XzCheck_Update(%struct.CXzCheck* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.CXzCheck*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.CXzCheck* %0, %struct.CXzCheck** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.CXzCheck*, %struct.CXzCheck** %4, align 8
  %8 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %33 [
    i32 1, label %10
    i32 4, label %19
    i32 10, label %28
  ]

10:                                               ; preds = %3
  %11 = load %struct.CXzCheck*, %struct.CXzCheck** %4, align 8
  %12 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @CrcUpdate(i32 noundef %13, i8* noundef %14, i64 noundef %15)
  %17 = load %struct.CXzCheck*, %struct.CXzCheck** %4, align 8
  %18 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %33

19:                                               ; preds = %3
  %20 = load %struct.CXzCheck*, %struct.CXzCheck** %4, align 8
  %21 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @Crc64Update(i64 noundef %22, i8* noundef %23, i64 noundef %24)
  %26 = load %struct.CXzCheck*, %struct.CXzCheck** %4, align 8
  %27 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  br label %33

28:                                               ; preds = %3
  %29 = load %struct.CXzCheck*, %struct.CXzCheck** %4, align 8
  %30 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %29, i32 0, i32 3
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %6, align 8
  call void @Sha256_Update(%struct.CSha256* noundef %30, i8* noundef %31, i64 noundef %32)
  br label %33

33:                                               ; preds = %3, %28, %19, %10
  ret void
}

declare dso_local i32 @CrcUpdate(i32 noundef, i8* noundef, i64 noundef) #1

declare dso_local i64 @Crc64Update(i64 noundef, i8* noundef, i64 noundef) #1

declare dso_local void @Sha256_Update(%struct.CSha256* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @XzCheck_Final(%struct.CXzCheck* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.CXzCheck*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.CXzCheck* %0, %struct.CXzCheck** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.CXzCheck*, %struct.CXzCheck** %4, align 8
  %9 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %44 [
    i32 1, label %11
    i32 4, label %18
    i32 10, label %40
  ]

11:                                               ; preds = %2
  %12 = load %struct.CXzCheck*, %struct.CXzCheck** %4, align 8
  %13 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %14, -1
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.CXzCheck*, %struct.CXzCheck** %4, align 8
  %20 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = xor i64 %21, -1
  store i64 %22, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %34, %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = and i64 %27, 255
  %29 = trunc i64 %28 to i8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 %29, i8* %33, align 1
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load i64, i64* %7, align 8
  %38 = lshr i64 %37, 8
  store i64 %38, i64* %7, align 8
  br label %23, !llvm.loop !6

39:                                               ; preds = %23
  br label %45

40:                                               ; preds = %2
  %41 = load %struct.CXzCheck*, %struct.CXzCheck** %4, align 8
  %42 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %41, i32 0, i32 3
  %43 = load i8*, i8** %5, align 8
  call void @Sha256_Final(%struct.CSha256* noundef %42, i8* noundef %43)
  br label %45

44:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

45:                                               ; preds = %40, %39, %11
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local void @Sha256_Final(%struct.CSha256* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
