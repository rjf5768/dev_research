; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-007.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-007.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local constant i32 -1, align 4
@a = dso_local global i32 0, align 4
@c = dso_local constant i32 0, align 4
@d = dso_local global i16 0, align 2
@.str = private unnamed_addr constant [8 x i8] c"a = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"b = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"c = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"d = %i\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @e() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @a, align 4
  %4 = udiv i32 -1, %3
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @c, align 4
  %8 = icmp ult i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* @d, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 3, i32* %3, align 4
  store i16 -32767, i16* %2, align 2
  %4 = load i16, i16* %2, align 2
  store i16 %4, i16* @d, align 2
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* @a, align 4
  call void @e()
  %6 = load i32, i32* @a, align 4
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %6)
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef -1)
  %9 = load i32, i32* @c, align 4
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef %9)
  %11 = load i16, i16* @d, align 2
  %12 = sext i16 %11 to i32
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %12)
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
