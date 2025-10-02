; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/getbits.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/getbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }

@ld = external dso_local global %struct.layer_data*, align 8
@System_Stream_Flag = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initialize_Buffer() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i32 0, i32 6
  store i32 0, i32* %2, align 8
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 1
  %5 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %6 = getelementptr inbounds i8, i8* %5, i64 2048
  %7 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %8 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i32 0, i32 2
  store i8* %6, i8** %8, align 8
  %9 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %10 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %13 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i32 0, i32 5
  store i8* %11, i8** %13, align 8
  %14 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %15 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %14, i32 0, i32 4
  store i32 0, i32* %15, align 8
  call void @Flush_Buffer(i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Flush_Buffer(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %6 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = shl i32 %7, %4
  store i32 %8, i32* %6, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %11 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, %9
  store i32 %13, i32* %11, align 8
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp sle i32 %14, 24
  br i1 %15, label %16, label %119

16:                                               ; preds = %1
  %17 = load i32, i32* @System_Stream_Flag, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %16
  %20 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %21 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %24 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %23, i32 0, i32 5
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 -4
  %27 = icmp uge i8* %22, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %49, %28
  %30 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %31 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %34 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %33, i32 0, i32 5
  %35 = load i8*, i8** %34, align 8
  %36 = icmp uge i8* %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  call void @Next_Packet()
  br label %38

38:                                               ; preds = %37, %29
  %39 = call i32 @Get_Byte()
  %40 = load i32, i32* %3, align 4
  %41 = sub nsw i32 24, %40
  %42 = shl i32 %39, %41
  %43 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %44 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 8
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %3, align 4
  %51 = icmp sle i32 %50, 24
  br i1 %51, label %29, label %52, !llvm.loop !4

52:                                               ; preds = %49
  br label %115

53:                                               ; preds = %19, %16
  %54 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %55 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %58 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds [2048 x i8], [2048 x i8]* %58, i64 0, i64 0
  %60 = getelementptr inbounds i8, i8* %59, i64 2044
  %61 = icmp ult i8* %56, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %79, %62
  %64 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %65 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %65, align 8
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32, i32* %3, align 4
  %71 = sub nsw i32 24, %70
  %72 = shl i32 %69, %71
  %73 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %74 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 8
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %63
  %80 = load i32, i32* %3, align 4
  %81 = icmp sle i32 %80, 24
  br i1 %81, label %63, label %82, !llvm.loop !6

82:                                               ; preds = %79
  br label %114

83:                                               ; preds = %53
  br label %84

84:                                               ; preds = %110, %83
  %85 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %86 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %89 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %88, i32 0, i32 1
  %90 = getelementptr inbounds [2048 x i8], [2048 x i8]* %89, i64 0, i64 0
  %91 = getelementptr inbounds i8, i8* %90, i64 2048
  %92 = icmp uge i8* %87, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  call void @Fill_Buffer()
  br label %94

94:                                               ; preds = %93, %84
  %95 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %96 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %96, align 8
  %99 = load i8, i8* %97, align 1
  %100 = zext i8 %99 to i32
  %101 = load i32, i32* %3, align 4
  %102 = sub nsw i32 24, %101
  %103 = shl i32 %100, %102
  %104 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %105 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 8
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %94
  %111 = load i32, i32* %3, align 4
  %112 = icmp sle i32 %111, 24
  br i1 %112, label %84, label %113, !llvm.loop !7

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %113, %82
  br label %115

115:                                              ; preds = %114, %52
  %116 = load i32, i32* %3, align 4
  %117 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %118 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %115, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fill_Buffer() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %6 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 1
  %7 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %8 = call i64 @read(i32 noundef %4, i8* noundef %7, i64 noundef 2048)
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %1, align 4
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %11 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %13 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %14 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @System_Stream_Flag, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %19 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %18, i32 0, i32 5
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 -2048
  store i8* %21, i8** %19, align 8
  br label %22

22:                                               ; preds = %17, %0
  %23 = load i32, i32* %1, align 4
  %24 = icmp slt i32 %23, 2048
  br i1 %24, label %25, label %71

25:                                               ; preds = %22
  %26 = load i32, i32* %1, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %34, %29
  %31 = load i32, i32* %1, align 4
  %32 = and i32 %31, 3
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %36 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %35, i32 0, i32 1
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [2048 x i8], [2048 x i8]* %36, i64 0, i64 %39
  store i8 0, i8* %40, align 1
  br label %30, !llvm.loop !8

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %45, %41
  %43 = load i32, i32* %1, align 4
  %44 = icmp slt i32 %43, 2048
  br i1 %44, label %45, label %70

45:                                               ; preds = %42
  %46 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %47 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %46, i32 0, i32 1
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds [2048 x i8], [2048 x i8]* %47, i64 0, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %53 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %52, i32 0, i32 1
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %1, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %59 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %58, i32 0, i32 1
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds [2048 x i8], [2048 x i8]* %59, i64 0, i64 %62
  store i8 1, i8* %63, align 1
  %64 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %65 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %64, i32 0, i32 1
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds [2048 x i8], [2048 x i8]* %65, i64 0, i64 %68
  store i8 -73, i8* %69, align 1
  br label %42, !llvm.loop !9

70:                                               ; preds = %42
  br label %71

71:                                               ; preds = %70, %22
  ret void
}

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Byte() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 2
  %4 = load i8*, i8** %3, align 8
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %6 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 1
  %7 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %8 = getelementptr inbounds i8, i8* %7, i64 2048
  %9 = icmp uge i8* %4, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %12 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %15 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %17 = call i64 @read(i32 noundef %13, i8* noundef %16, i64 noundef 2048)
  %18 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %19 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 -2048
  store i8* %21, i8** %19, align 8
  %22 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %23 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %22, i32 0, i32 5
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 -2048
  store i8* %25, i8** %23, align 8
  br label %1, !llvm.loop !10

26:                                               ; preds = %1
  %27 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %28 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Word() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @Get_Byte()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = shl i32 %3, 8
  %5 = call i32 @Get_Byte()
  %6 = or i32 %4, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Show_Bits(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sub nsw i32 32, %6
  %8 = lshr i32 %5, %7
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Bits1() #0 {
  %1 = call i32 @Get_Bits(i32 noundef 1)
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Bits(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @Show_Bits(i32 noundef %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  call void @Flush_Buffer(i32 noundef %6)
  %7 = load i32, i32* %3, align 4
  ret i32 %7
}

declare dso_local void @Next_Packet() #1

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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
