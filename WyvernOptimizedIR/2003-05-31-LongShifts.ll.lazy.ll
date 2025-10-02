; ModuleID = './2003-05-31-LongShifts.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-05-31-LongShifts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"0x%llx op %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"  ashr: 0x%llx\0A  lshr: 0x%llx\0A  shl: 0x%llx\0A\00", align 1
@Vals = dso_local global [8 x %struct.anon] [%struct.anon { i64 123, i32 4 }, %struct.anon { i64 123, i32 34 }, %struct.anon { i64 -4, i32 4 }, %struct.anon { i64 -5, i32 34 }, %struct.anon { i64 -6000000000, i32 4 }, %struct.anon { i64 -6000000000, i32 34 }, %struct.anon { i64 6000000000, i32 4 }, %struct.anon { i64 6000000000, i32 34 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @Test(i64 noundef %0, i32 noundef %1) #0 {
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 noundef %0, i32 noundef %1) #2
  %4 = zext i32 %1 to i64
  %5 = ashr i64 %0, %4
  %6 = zext i32 %1 to i64
  %7 = lshr i64 %0, %6
  %8 = zext i32 %1 to i64
  %9 = shl i64 %0, %8
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 noundef %5, i64 noundef %7, i64 noundef %9) #2
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = add nsw i32 %0, -1
  br label %4

4:                                                ; preds = %13, %2
  %.0 = phi i32 [ %3, %2 ], [ %14, %13 ]
  %5 = icmp ult i32 %.0, 8
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @Vals, i64 0, i64 %7, i32 0
  %9 = load volatile i64, i64* %8, align 16
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @Vals, i64 0, i64 %10, i32 1
  %12 = load volatile i32, i32* %11, align 8
  call void @Test(i64 noundef %9, i32 noundef %12)
  br label %13

13:                                               ; preds = %6
  %14 = add nsw i32 %.0, 1
  br label %4, !llvm.loop !4

15:                                               ; preds = %4
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
