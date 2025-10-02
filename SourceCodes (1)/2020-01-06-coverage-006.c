; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-006.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-006.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { [9 x i8] }

@b = dso_local global %struct.s zeroinitializer, align 1
@c = dso_local global i32 0, align 4
@x = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"b.a = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"c = %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"x = %i\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @d() #0 {
  %1 = load i72, i72* bitcast (%struct.s* @b to i72*), align 1
  %2 = lshr i72 %1, 45
  %3 = and i72 %2, 33554431
  %4 = trunc i72 %3 to i32
  %5 = icmp slt i32 8, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load volatile i32, i32* @c, align 4
  store i32 %7, i32* @x, align 4
  br label %8

8:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 2097152, i32* %4, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* @x, align 4
  %6 = load i32, i32* %3, align 4
  store volatile i32 %6, i32* @c, align 4
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i72
  %9 = load i72, i72* bitcast (%struct.s* @b to i72*), align 1
  %10 = and i72 %8, 33554431
  %11 = shl i72 %10, 45
  %12 = and i72 %9, -1180591585533039214593
  %13 = or i72 %12, %11
  store i72 %13, i72* bitcast (%struct.s* @b to i72*), align 1
  %14 = trunc i72 %10 to i32
  call void @d()
  %15 = load i72, i72* bitcast (%struct.s* @b to i72*), align 1
  %16 = lshr i72 %15, 45
  %17 = and i72 %16, 33554431
  %18 = trunc i72 %17 to i32
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef %18)
  %20 = load volatile i32, i32* @c, align 4
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %20)
  %22 = load i32, i32* @x, align 4
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef %22)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
