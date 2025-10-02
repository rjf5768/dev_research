; ModuleID = './2020-01-06-coverage-001.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-001.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i8 7, align 1
@c = internal global i32** @a, align 8
@p = dso_local global i8* null, align 8
@a = dso_local global i32* null, align 8
@x = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"b = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"x = %i\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @d() #0 {
  %1 = load i32**, i32*** @c, align 8
  %2 = load i32*, i32** %1, align 8
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 8
  store i32 %4, i32* %2, align 4
  store i8* @b, i8** @p, align 8
  %5 = load i8, i8* @b, align 1
  %6 = and i8 %5, 1
  store i8 %6, i8* @b, align 1
  %.not = icmp eq i8 %6, 0
  br i1 %.not, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32*, i32** @a, align 8
  %9 = load i32, i32* %8, align 4
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %7
  store i8 0, i8* @b, align 1
  br label %11

11:                                               ; preds = %10, %7, %0
  store i32 0, i32* @x, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i32 1149798655, i32* %2, align 4
  store i8 -125, i8* %1, align 1
  store i32 -67108864, i32* @x, align 4
  store i8* %1, i8** @p, align 8
  store i32* %2, i32** @a, align 8
  call void @d()
  %3 = load i8, i8* @b, align 1
  %4 = zext i8 %3 to i32
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %4) #3
  %6 = load i32, i32* @x, align 4
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %6) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
