; ModuleID = './2020-01-06-coverage-009.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-009.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i8 8, align 1
@e = dso_local constant i8* @d, align 8
@c = dso_local global i16 0, align 2
@g = dso_local global i16 0, align 2
@b = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@f = dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"a = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"b = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"c = %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"d = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"g = %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"h = %u\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @i() #0 {
  br label %1

1:                                                ; preds = %20, %0
  %2 = load i16, i16* @c, align 2
  %.not = icmp eq i16 %2, 0
  br i1 %.not, label %23, label %3

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %16, %3
  %storemerge = phi i16 [ 0, %3 ], [ %18, %16 ]
  store i16 %storemerge, i16* @g, align 2
  %5 = icmp slt i16 %storemerge, 9
  br i1 %5, label %6, label %19

6:                                                ; preds = %4
  %7 = load i32, i32* @a, align 4
  %8 = load i32, i32* @b, align 4
  %9 = xor i32 %7, %8
  %10 = icmp ult i32 %9, %8
  %11 = zext i1 %10 to i32
  store i32 %11, i32* @h, align 4
  %12 = load i8, i8* @d, align 1
  %13 = zext i1 %10 to i8
  %14 = xor i8 %12, %13
  store i8 %14, i8* @d, align 1
  %15 = load i32*, i32** @f, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %6
  %17 = load i16, i16* @g, align 2
  %18 = add i16 %17, 1
  br label %4, !llvm.loop !4

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19
  %21 = load i16, i16* @c, align 2
  %22 = add i16 %21, -1
  store i16 %22, i16* @c, align 2
  br label %1, !llvm.loop !6

23:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  store i32 -2130706432, i32* %1, align 4
  store i32* %1, i32** @f, align 8
  store i16 -32767, i16* @g, align 2
  store i16 -32767, i16* @c, align 2
  store i32 -1, i32* @h, align 4
  store i32 1, i32* @b, align 4
  store i32 0, i32* @a, align 4
  call void @i()
  %2 = load i32, i32* @a, align 4
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %2) #3
  %4 = load i32, i32* @b, align 4
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %4) #3
  %6 = load i16, i16* @c, align 2
  %7 = sext i16 %6 to i32
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef %7) #3
  %9 = load i8, i8* @d, align 1
  %10 = zext i8 %9 to i32
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %10) #3
  %12 = load i16, i16* @g, align 2
  %13 = sext i16 %12 to i32
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef %13) #3
  %15 = load i32, i32* @h, align 4
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef %15) #3
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
!6 = distinct !{!6, !5}
