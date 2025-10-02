; ModuleID = './2020-01-06-coverage-004.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-004.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.u = type { i16 }

@a = dso_local global i32 0, align 4
@x = dso_local global i64 0, align 8
@d = dso_local global %union.u zeroinitializer, align 2
@g = internal global i64** @f, align 8
@e = internal global i32* @b, align 8
@y = dso_local global i64 0, align 8
@h_call_argument_1 = dso_local global i32 0, align 4
@f = dso_local global i64* null, align 8
@b = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"a = %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"b = %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"d.c = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"y = %li\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"h_call_argument_1 = %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"x = %li\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i64 @h(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %7, label %2

2:                                                ; preds = %1
  %3 = load i32, i32* @a, align 4
  %4 = sext i32 %3 to i64
  %5 = sdiv i64 2036854775807, %4
  %.not2 = icmp eq i64 %5, 0
  br i1 %.not2, label %7, label %6

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %2, %1
  %8 = phi i64 [ 0, %2 ], [ 0, %1 ], [ 1, %6 ]
  store i64 %8, i64* @x, align 8
  ret i64 %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @j() #1 {
  br label %1

1:                                                ; preds = %11, %0
  %2 = load i16, i16* getelementptr inbounds (%union.u, %union.u* @d, i64 0, i32 0), align 2
  %.not = icmp eq i16 %2, 0
  br i1 %.not, label %14, label %3

3:                                                ; preds = %1
  %4 = load i64**, i64*** @g, align 8
  %5 = load i64*, i64** %4, align 8
  %6 = load i64, i64* %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = call i64 @h(i32 noundef %7)
  %9 = trunc i64 %8 to i32
  %10 = load i32*, i32** @e, align 8
  store i32 %9, i32* %10, align 4
  br label %11

11:                                               ; preds = %3
  %12 = load i16, i16* getelementptr inbounds (%union.u, %union.u* @d, i64 0, i32 0), align 2
  %13 = add i16 %12, 1
  store i16 %13, i16* getelementptr inbounds (%union.u, %union.u* @d, i64 0, i32 0), align 2
  br label %1, !llvm.loop !4

14:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  store i64 2089739496336261183, i64* @y, align 8
  store i32 -7, i32* @h_call_argument_1, align 4
  store i64 70651297207679744, i64* @x, align 8
  store i64* %1, i64** @f, align 8
  store i16 12027, i16* getelementptr inbounds (%union.u, %union.u* @d, i64 0, i32 0), align 2
  store i32 -2113601536, i32* @b, align 4
  store i32 251, i32* @a, align 4
  call void @j()
  %2 = load i32, i32* @h_call_argument_1, align 4
  %3 = call i64 @h(i32 noundef %2)
  store i64 %3, i64* @y, align 8
  %4 = load i32, i32* @a, align 4
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %4) #4
  %6 = load i32, i32* @b, align 4
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %6) #4
  %8 = load i16, i16* getelementptr inbounds (%union.u, %union.u* @d, i64 0, i32 0), align 2
  %9 = zext i16 %8 to i32
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef %9) #4
  %11 = load i64, i64* @y, align 8
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 noundef %11) #4
  %13 = load i32, i32* @h_call_argument_1, align 4
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef %13) #4
  %15 = load i64, i64* @x, align 8
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 noundef %15) #4
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
