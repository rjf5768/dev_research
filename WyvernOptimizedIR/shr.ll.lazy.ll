; ModuleID = './shr.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/SignlessTypes/shr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"ShrTest1(-1, 11, 0xFF000000) = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ShrTest2(-73, 11, 1) = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ShrTest3(-73) = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"ShrTest4(-73) = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"ShrTest5(7773, 11) = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"ShrTest6(-73, 11) = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ShrTest7(-737) = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"ShrTest8(73) = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"ShrTest9(13, 7773, 11) = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"ShrTest10(13, 7773, 11) = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"ShrTest11(13, 7773, 11) = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"ShrTest12(7773, -73, 11, 3773) = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"ShrTest13(7773, -73, 11, 3773) = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"ShrTest14(7773, -73, 11, 3773) = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"ShrTest15(7773, 13, 11) = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"ShrTest16(-73, 11, 13) = %d\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ShrTest1(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = lshr i32 %0, %1
  %5 = and i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ShrTest2(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = ashr i32 %0, %1
  %5 = and i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ShrTest3(i32 noundef %0) #0 {
  %.neg = ashr i32 %0, 31
  ret i32 %.neg
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ShrTest4(i32 noundef %0) #0 {
  %.neg = lshr i32 %0, 31
  ret i32 %.neg
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ShrTest5(i32 noundef %0, i32 noundef %1) #0 {
  %3 = lshr i32 %0, %1
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ShrTest6(i32 noundef %0, i32 noundef %1) #0 {
  %3 = lshr i32 -1, %1
  %4 = ashr i32 %0, %1
  %5 = and i32 %4, %3
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ShrTest7(i32 noundef %0) #0 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ShrTest8(i32 noundef %0) #0 {
  ret i32 -1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ShrTest9(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = ashr i32 %1, %2
  %5 = add nsw i32 %4, %0
  %6 = shl i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ShrTest10(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = ashr i32 %1, %2
  %5 = and i32 %4, %0
  %6 = shl i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ShrTest11(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = ashr i32 %1, %2
  %5 = or i32 %4, %0
  %6 = shl i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ShrTest12(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = ashr i32 %1, %2
  %6 = and i32 %5, %3
  %7 = add nsw i32 %6, %0
  %8 = shl i32 %7, %2
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ShrTest13(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = ashr i32 %1, %2
  %6 = and i32 %5, %3
  %7 = and i32 %6, %0
  %8 = shl i32 %7, %2
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ShrTest14(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = ashr i32 %1, %2
  %6 = and i32 %5, %3
  %7 = or i32 %6, %0
  %8 = shl i32 %7, %2
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ShrTest15(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = shl i32 %0, %1
  %5 = lshr i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ShrTest16(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = ashr i32 %0, %1
  %5 = shl i32 %4, %2
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #1 {
  %3 = call i32 @ShrTest1(i32 noundef -1, i32 noundef 11, i32 noundef -16777216)
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef %3) #3
  %5 = call i32 @ShrTest2(i32 noundef -73, i32 noundef 11, i32 noundef 1)
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef %5) #3
  %7 = call i32 @ShrTest3(i32 noundef -73)
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef %7) #3
  %9 = call i32 @ShrTest4(i32 noundef -73)
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef %9) #3
  %11 = call i32 @ShrTest5(i32 noundef 7773, i32 noundef 11)
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 noundef %11) #3
  %13 = call i32 @ShrTest6(i32 noundef -73, i32 noundef 11)
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 noundef %13) #3
  %15 = call i32 @ShrTest7(i32 noundef -737)
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef %15) #3
  %17 = call i32 @ShrTest8(i32 noundef 73)
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 noundef %17) #3
  %19 = call i32 @ShrTest9(i32 noundef 13, i32 noundef 7773, i32 noundef 11)
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 noundef %19) #3
  %21 = call i32 @ShrTest10(i32 noundef 13, i32 noundef 7773, i32 noundef 11)
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 noundef %21) #3
  %23 = call i32 @ShrTest11(i32 noundef 13, i32 noundef 7773, i32 noundef 11)
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 noundef %23) #3
  %25 = call i32 @ShrTest12(i32 noundef 7773, i32 noundef -73, i32 noundef 11, i32 noundef 3773)
  %26 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 noundef %25) #3
  %27 = call i32 @ShrTest13(i32 noundef 7773, i32 noundef -73, i32 noundef 11, i32 noundef 3773)
  %28 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 noundef %27) #3
  %29 = call i32 @ShrTest14(i32 noundef 7773, i32 noundef -73, i32 noundef 11, i32 noundef 3773)
  %30 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 noundef %29) #3
  %31 = call i32 @ShrTest15(i32 noundef 7773, i32 noundef 13, i32 noundef 11)
  %32 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef %31) #3
  %33 = call i32 @ShrTest16(i32 noundef -73, i32 noundef 11, i32 noundef 13)
  %34 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 noundef %33) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
