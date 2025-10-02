; ModuleID = './getbits.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/getbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }

@ld = external dso_local global %struct.layer_data*, align 8
@System_Stream_Flag = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initialize_Buffer() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i64 0, i32 6
  store i32 0, i32* %2, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i64 0, i32 1, i64 2048
  %4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i64 0, i32 2
  store i8* %3, i8** %4, align 8
  %5 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i64 0, i32 5
  store i8* %3, i8** %5, align 8
  %6 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %7 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %6, i64 0, i32 4
  store i32 0, i32* %7, align 8
  call void @Flush_Buffer(i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Flush_Buffer(i32 noundef %0) #0 {
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i64 0, i32 4
  %4 = load i32, i32* %3, align 8
  %5 = shl i32 %4, %0
  store i32 %5, i32* %3, align 8
  %6 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i64 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = sub nsw i32 %7, %0
  store i32 %8, i32* %6, align 8
  %9 = icmp slt i32 %8, 25
  br i1 %9, label %10, label %91

10:                                               ; preds = %1
  %11 = load i32, i32* @System_Stream_Flag, align 4
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %39, label %12

12:                                               ; preds = %10
  %13 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %14 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %13, i64 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %13, i64 0, i32 5
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 -4
  %.not4 = icmp ult i8* %15, %18
  br i1 %.not4, label %39, label %19

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %36, %19
  %.0 = phi i32 [ %8, %19 ], [ %35, %36 ]
  %21 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %22 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %21, i64 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %21, i64 0, i32 5
  %25 = load i8*, i8** %24, align 8
  %.not5 = icmp ult i8* %23, %25
  br i1 %.not5, label %27, label %26

26:                                               ; preds = %20
  call void @Next_Packet() #3
  br label %27

27:                                               ; preds = %26, %20
  %28 = call i32 @Get_Byte()
  %29 = sub nsw i32 24, %.0
  %30 = shl i32 %28, %29
  %31 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %32 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %31, i64 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = add nsw i32 %.0, 8
  br label %36

36:                                               ; preds = %27
  %37 = icmp slt i32 %.0, 17
  br i1 %37, label %20, label %38, !llvm.loop !4

38:                                               ; preds = %36
  br label %88

39:                                               ; preds = %12, %10
  %40 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %41 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %40, i64 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %40, i64 0, i32 1, i64 2044
  %44 = icmp ult i8* %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %60, %45
  %.1 = phi i32 [ %8, %45 ], [ %59, %60 ]
  %47 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %48 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %47, i64 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %48, align 8
  %51 = load i8, i8* %49, align 1
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 24, %.1
  %54 = shl i32 %52, %53
  %55 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %56 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %55, i64 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = add nsw i32 %.1, 8
  br label %60

60:                                               ; preds = %46
  %61 = icmp slt i32 %.1, 17
  br i1 %61, label %46, label %62, !llvm.loop !6

62:                                               ; preds = %60
  br label %87

63:                                               ; preds = %39
  br label %64

64:                                               ; preds = %84, %63
  %.2 = phi i32 [ %8, %63 ], [ %83, %84 ]
  %65 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %66 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %65, i64 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %65, i64 0, i32 1, i64 2048
  %.not3 = icmp ult i8* %67, %68
  br i1 %.not3, label %70, label %69

69:                                               ; preds = %64
  call void @Fill_Buffer()
  br label %70

70:                                               ; preds = %69, %64
  %71 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %72 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %71, i64 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8* %74, i8** %72, align 8
  %75 = load i8, i8* %73, align 1
  %76 = zext i8 %75 to i32
  %77 = sub nsw i32 24, %.2
  %78 = shl i32 %76, %77
  %79 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %80 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %79, i64 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = add nsw i32 %.2, 8
  br label %84

84:                                               ; preds = %70
  %85 = icmp slt i32 %.2, 17
  br i1 %85, label %64, label %86, !llvm.loop !7

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %86, %62
  %.3 = phi i32 [ %59, %62 ], [ %83, %86 ]
  br label %88

88:                                               ; preds = %87, %38
  %.4 = phi i32 [ %35, %38 ], [ %.3, %87 ]
  %89 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %90 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %89, i64 0, i32 6
  store i32 %.4, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fill_Buffer() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i64 0, i32 1, i64 0
  %5 = call i64 @read(i32 noundef %3, i8* noundef nonnull %4, i64 noundef 2048) #3
  %6 = trunc i64 %5 to i32
  %7 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %8 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i64 0, i32 1, i64 0
  %9 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i64 0, i32 2
  store i8* %8, i8** %9, align 8
  %10 = load i32, i32* @System_Stream_Flag, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %16, label %11

11:                                               ; preds = %0
  %12 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %13 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i64 0, i32 5
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 -2048
  store i8* %15, i8** %13, align 8
  br label %16

16:                                               ; preds = %11, %0
  %17 = icmp slt i32 %6, 2048
  br i1 %17, label %18, label %50

18:                                               ; preds = %16
  %19 = icmp slt i32 %6, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20, %18
  %.0 = phi i32 [ 0, %20 ], [ %6, %18 ]
  br label %22

22:                                               ; preds = %24, %21
  %.1 = phi i32 [ %.0, %21 ], [ %26, %24 ]
  %23 = and i32 %.1, 3
  %.not1 = icmp eq i32 %23, 0
  br i1 %.not1, label %29, label %24

24:                                               ; preds = %22
  %25 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %26 = add nsw i32 %.1, 1
  %27 = sext i32 %.1 to i64
  %28 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %25, i64 0, i32 1, i64 %27
  store i8 0, i8* %28, align 1
  br label %22, !llvm.loop !8

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %32, %29
  %.2 = phi i32 [ %.1, %29 ], [ %46, %32 ]
  %31 = icmp slt i32 %.2, 2048
  br i1 %31, label %32, label %49

32:                                               ; preds = %30
  %33 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %34 = add nsw i32 %.2, 1
  %35 = sext i32 %.2 to i64
  %36 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %33, i64 0, i32 1, i64 %35
  store i8 0, i8* %36, align 1
  %37 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %38 = add nsw i32 %.2, 2
  %39 = sext i32 %34 to i64
  %40 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %37, i64 0, i32 1, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %42 = add nsw i32 %.2, 3
  %43 = sext i32 %38 to i64
  %44 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %41, i64 0, i32 1, i64 %43
  store i8 1, i8* %44, align 1
  %45 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %46 = add nsw i32 %.2, 4
  %47 = sext i32 %42 to i64
  %48 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %45, i64 0, i32 1, i64 %47
  store i8 -73, i8* %48, align 1
  br label %30, !llvm.loop !9

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49, %16
  ret void
}

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Byte() #0 {
  br label %1

1:                                                ; preds = %6, %0
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i64 0, i32 2
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i64 0, i32 1, i64 2048
  %.not = icmp ult i8* %4, %5
  br i1 %.not, label %19, label %6

6:                                                ; preds = %1
  %7 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %8 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i64 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i64 0, i32 1, i64 0
  %11 = call i64 @read(i32 noundef %9, i8* noundef nonnull %10, i64 noundef 2048) #3
  %12 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %13 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i64 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 -2048
  store i8* %15, i8** %13, align 8
  %16 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i64 0, i32 5
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 -2048
  store i8* %18, i8** %16, align 8
  br label %1, !llvm.loop !10

19:                                               ; preds = %1
  %20 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %21 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %20, i64 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %21, align 8
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Word() #0 {
  %1 = call i32 @Get_Byte()
  %2 = shl i32 %1, 8
  %3 = call i32 @Get_Byte()
  %4 = or i32 %2, %3
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @Show_Bits(i32 noundef %0) #2 {
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i64 0, i32 4
  %4 = load i32, i32* %3, align 8
  %5 = sub nsw i32 32, %0
  %6 = lshr i32 %4, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Bits1() #0 {
  %1 = call i32 @Get_Bits(i32 noundef 1)
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Bits(i32 noundef %0) #0 {
  %2 = call i32 @Show_Bits(i32 noundef %0)
  call void @Flush_Buffer(i32 noundef %0)
  ret i32 %2
}

declare dso_local void @Next_Packet() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
