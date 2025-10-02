; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2003-05-31-LongShifts.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-05-31-LongShifts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"0x%llx op %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"  ashr: 0x%llx\0A  lshr: 0x%llx\0A  shl: 0x%llx\0A\00", align 1
@Vals = dso_local global [8 x %struct.anon] [%struct.anon { i64 123, i32 4 }, %struct.anon { i64 123, i32 34 }, %struct.anon { i64 -4, i32 4 }, %struct.anon { i64 -5, i32 34 }, %struct.anon { i64 -6000000000, i32 4 }, %struct.anon { i64 -6000000000, i32 34 }, %struct.anon { i64 6000000000, i32 4 }, %struct.anon { i64 6000000000, i32 34 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @Test(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 noundef %5, i32 noundef %6)
  %8 = load i64, i64* %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = ashr i64 %8, %10
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = lshr i64 %12, %14
  %16 = load i64, i64* %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = shl i64 %16, %18
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 noundef %11, i64 noundef %15, i64 noundef %19)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %23, %2
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 8
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @Vals, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 0
  %17 = load volatile i64, i64* %16, align 16
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @Vals, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1
  %22 = load volatile i32, i32* %21, align 8
  call void @Test(i64 noundef %17, i32 noundef %22)
  br label %23

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %8, !llvm.loop !4

26:                                               ; preds = %8
  ret i32 0
}

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
