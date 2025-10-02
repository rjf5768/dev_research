; ModuleID = './pr65648.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65648.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i32* null, align 8
@c = dso_local global i32 0, align 4
@e = dso_local global i16 1, align 2
@f = internal global i64 0, align 8
@i = dso_local global i64* @f, align 8
@j = dso_local global i8 0, align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i32* noundef %1) #0 {
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %1) #2, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0, i64* nonnull %3) #2, !srcloc !5
  %4 = load i64, i64* %3, align 8
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %2
  call void @abort() #3
  unreachable

6:                                                ; preds = %2
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32* %1, i32** @b, align 8
  %2 = load i32, i32* @a, align 4
  %.not = icmp eq i32 %2, 0
  %3 = zext i1 %.not to i8
  %4 = load i32, i32* @c, align 4
  %5 = load i16, i16* @e, align 2
  %6 = sext i16 %5 to i32
  %7 = icmp sle i32 %4, %6
  %.neg = sext i1 %7 to i8
  %8 = add nsw i8 %.neg, %3
  store i8 %8, i8* @j, align 1
  %9 = zext i8 %8 to i64
  %10 = load i64*, i64** @i, align 8
  store i64 %9, i64* %10, align 8
  %11 = load i32, i32* @a, align 4
  call void @foo(i32 noundef %11, i32* noundef nonnull %1)
  %12 = load i64, i64* @f, align 8
  call void @bar(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef %12)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 225}
!5 = !{i64 356}
