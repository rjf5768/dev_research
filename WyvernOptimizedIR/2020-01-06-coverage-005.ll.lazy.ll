; ModuleID = './2020-01-06-coverage-005.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-005.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i64 0, align 8
@r = dso_local global i64* null, align 8
@s = dso_local global i64* null, align 8
@p = dso_local global i64* null, align 8
@e = dso_local global i16 0, align 2
@t = dso_local global i16* null, align 8
@q = dso_local global i16* null, align 8
@c = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"a = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"b = %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"c = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"d = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"e = %i\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @h() #0 {
  store i64* @b, i64** @r, align 8
  store i64 6, i64* @b, align 8
  call void @g()
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @g() #0 {
  br label %1

1:                                                ; preds = %12, %0
  store i64* @b, i64** @s, align 8
  store i64* @b, i64** @p, align 8
  store i16* @e, i16** @t, align 8
  store i16* @e, i16** @q, align 8
  %2 = load i16, i16* @e, align 2
  %3 = add i16 %2, -1
  store i16 %3, i16* @e, align 2
  %4 = load i32, i32* @c, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* @b, align 8
  %7 = and i64 %6, %5
  store i64 %7, i64* @b, align 8
  br label %8

8:                                                ; preds = %14, %1
  %9 = load i32, i32* @d, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %16, label %10

10:                                               ; preds = %8
  %11 = load i16, i16* @e, align 2
  %.not1 = icmp eq i16 %11, 0
  br i1 %.not1, label %13, label %12

12:                                               ; preds = %10
  br label %1

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13
  %15 = load i32, i32* @d, align 4
  store i32 %15, i32* @a, align 4
  br label %8, !llvm.loop !4

16:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i16, align 2
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  store i64 -9223372032559808512, i64* %5, align 8
  store i16 0, i16* %4, align 2
  store i64 -72318388763361280, i64* %3, align 8
  store i64 0, i64* %2, align 8
  store i16 0, i16* %1, align 2
  store i16* %1, i16** @t, align 8
  store i64* %2, i64** @s, align 8
  store i64* %3, i64** @r, align 8
  store i16* %4, i16** @q, align 8
  store i64* %5, i64** @p, align 8
  store i16 -7, i16* @e, align 2
  store i64 256, i64* @b, align 8
  store i32 0, i32* @d, align 4
  store i32 -6, i32* @c, align 4
  store i32 16777101, i32* @a, align 4
  call void @h()
  call void @g()
  %6 = load i32, i32* @a, align 4
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %6) #3
  %8 = load i64, i64* @b, align 8
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 noundef %8) #3
  %10 = load i32, i32* @c, align 4
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef %10) #3
  %12 = load i32, i32* @d, align 4
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %12) #3
  %14 = load i16, i16* @e, align 2
  %15 = sext i16 %14 to i32
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef %15) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

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
