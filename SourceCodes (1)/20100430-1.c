; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20100430-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20100430-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info_t = type { i32, %struct.packed_struct }
%struct.packed_struct = type { %struct.packed_struct1, [4 x %struct.packed_struct2] }
%struct.packed_struct1 = type { i8, i8 }
%struct.packed_struct2 = type <{ i8, i8, [104 x i16], [13 x i8] }>

@g = internal global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.info_t, align 4
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.info_t, %struct.info_t* %2, i32 0, i32 1
  %4 = getelementptr inbounds %struct.packed_struct, %struct.packed_struct* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.packed_struct1, %struct.packed_struct1* %4, i32 0, i32 0
  store i8 2, i8* %5, align 4
  %6 = getelementptr inbounds %struct.info_t, %struct.info_t* %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.packed_struct, %struct.packed_struct* %6, i32 0, i32 1
  %8 = getelementptr inbounds [4 x %struct.packed_struct2], [4 x %struct.packed_struct2]* %7, i64 0, i64 1
  %9 = getelementptr inbounds %struct.packed_struct2, %struct.packed_struct2* %8, i32 0, i32 1
  store i8 8, i8* %9, align 1
  %10 = getelementptr inbounds %struct.info_t, %struct.info_t* %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.packed_struct, %struct.packed_struct* %10, i32 0, i32 1
  %12 = getelementptr inbounds [4 x %struct.packed_struct2], [4 x %struct.packed_struct2]* %11, i64 0, i64 0
  %13 = getelementptr inbounds %struct.packed_struct2, %struct.packed_struct2* %12, i32 0, i32 1
  store i8 8, i8* %13, align 1
  %14 = call i32 @foo(%struct.info_t* noundef %2)
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(%struct.info_t* noundef %0) #0 {
  %2 = alloca %struct.info_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.info_t* %0, %struct.info_t** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %43, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.info_t*, %struct.info_t** %2, align 8
  %8 = getelementptr inbounds %struct.info_t, %struct.info_t* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.packed_struct, %struct.packed_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.packed_struct1, %struct.packed_struct1* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 4
  %12 = zext i8 %11 to i32
  %13 = icmp slt i32 %6, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %39, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.info_t*, %struct.info_t** %2, align 8
  %18 = getelementptr inbounds %struct.info_t, %struct.info_t* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.packed_struct, %struct.packed_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x %struct.packed_struct2], [4 x %struct.packed_struct2]* %19, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.packed_struct2, %struct.packed_struct2* %22, i32 0, i32 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp slt i32 %16, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %15
  %28 = load %struct.info_t*, %struct.info_t** %2, align 8
  %29 = getelementptr inbounds %struct.info_t, %struct.info_t* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.packed_struct, %struct.packed_struct* %29, i32 0, i32 1
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x %struct.packed_struct2], [4 x %struct.packed_struct2]* %30, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.packed_struct2, %struct.packed_struct2* %33, i32 0, i32 2
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [104 x i16], [104 x i16]* %34, i64 0, i64 %36
  %38 = load i16, i16* %37, align 1
  call void @dummy(i16 noundef zeroext %38)
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %15, !llvm.loop !4

42:                                               ; preds = %15
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %5, !llvm.loop !6

46:                                               ; preds = %5
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @dummy(i16 noundef zeroext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  store i16 %3, i16* @g, align 2
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
