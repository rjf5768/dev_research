; ModuleID = './pr69447.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69447.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @foo(i8 noundef zeroext %0, i16 noundef zeroext %1, i64 noundef %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i64 noundef %5, i64 noundef %6, i8 noundef zeroext %7, i64 noundef %8) #0 {
  %10 = mul i64 %5, 30512
  %11 = mul i64 %8, %8
  %12 = trunc i64 %11 to i16
  %13 = or i16 %12, %4
  %14 = add i64 %11, -2
  %15 = zext i8 %7 to i64
  %16 = udiv i64 %15, %6
  %17 = or i8 %0, 3
  %18 = zext i8 %17 to i64
  %19 = urem i64 %14, %18
  %20 = add nsw i8 %17, -1
  %21 = zext i8 %20 to i64
  %22 = zext i16 %1 to i64
  %23 = add nuw nsw i64 %21, %22
  %24 = add i64 %23, %2
  %25 = zext i8 %3 to i64
  %26 = add i64 %24, %25
  %27 = zext i16 %13 to i64
  %28 = add i64 %26, %27
  %29 = add i64 %28, %10
  %30 = add i64 %29, %16
  %31 = add i64 %30, %19
  ret i64 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i64 @foo(i8 noundef zeroext 1, i16 noundef zeroext 1, i64 noundef 1, i8 noundef zeroext 1, i16 noundef zeroext 1, i64 noundef 1, i64 noundef 1, i8 noundef zeroext 1, i64 noundef 1)
  %2 = trunc i64 %1 to i32
  %.not = icmp eq i32 %2, 30519
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #3
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
