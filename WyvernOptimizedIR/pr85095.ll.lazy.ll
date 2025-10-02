; ModuleID = './pr85095.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85095.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i64 @f1(i64 noundef %0, i64 noundef %1) #0 {
  %3 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1)
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = extractvalue { i64, i1 } %3, 0
  %6 = zext i1 %4 to i64
  %7 = add i64 %5, %6
  ret i64 %7
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i64 @f2(i64 noundef %0, i64 noundef %1) #0 {
  %3 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1)
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = extractvalue { i64, i1 } %3, 0
  %.neg = sext i1 %4 to i64
  %6 = add i64 %5, %.neg
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i64 @f3(i32 noundef %0, i32 noundef %1) #0 {
  %3 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %0, i32 %1)
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %6 = zext i1 %4 to i32
  %7 = add i32 %5, %6
  %8 = zext i32 %7 to i64
  ret i64 %8
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i64 @f4(i32 noundef %0, i32 noundef %1) #0 {
  %3 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %0, i32 %1)
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %.neg = sext i1 %4 to i32
  %6 = add i32 %5, %.neg
  %7 = zext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call i64 @f1(i64 noundef 16, i64 noundef -18)
  %.not = icmp eq i64 %1, -2
  br i1 %.not, label %2, label %32

2:                                                ; preds = %0
  %3 = call i64 @f1(i64 noundef 16, i64 noundef -17)
  %.not1 = icmp eq i64 %3, -1
  br i1 %.not1, label %4, label %32

4:                                                ; preds = %2
  %5 = call i64 @f1(i64 noundef 16, i64 noundef -16)
  %.not2 = icmp eq i64 %5, 1
  br i1 %.not2, label %6, label %32

6:                                                ; preds = %4
  %7 = call i64 @f1(i64 noundef 16, i64 noundef -15)
  %.not3 = icmp eq i64 %7, 2
  br i1 %.not3, label %8, label %32

8:                                                ; preds = %6
  %9 = call i64 @f2(i64 noundef 24, i64 noundef -26)
  %.not4 = icmp eq i64 %9, -2
  br i1 %.not4, label %10, label %32

10:                                               ; preds = %8
  %11 = call i64 @f2(i64 noundef 24, i64 noundef -25)
  %.not5 = icmp eq i64 %11, -1
  br i1 %.not5, label %12, label %32

12:                                               ; preds = %10
  %13 = call i64 @f2(i64 noundef 24, i64 noundef -24)
  %.not6 = icmp eq i64 %13, -1
  br i1 %.not6, label %14, label %32

14:                                               ; preds = %12
  %15 = call i64 @f2(i64 noundef 24, i64 noundef -23)
  %.not7 = icmp eq i64 %15, 0
  br i1 %.not7, label %16, label %32

16:                                               ; preds = %14
  %17 = call i64 @f3(i32 noundef 32, i32 noundef -34)
  %.not8 = icmp eq i64 %17, 4294967294
  br i1 %.not8, label %18, label %32

18:                                               ; preds = %16
  %19 = call i64 @f3(i32 noundef 32, i32 noundef -33)
  %.not9 = icmp eq i64 %19, 4294967295
  br i1 %.not9, label %20, label %32

20:                                               ; preds = %18
  %21 = call i64 @f3(i32 noundef 32, i32 noundef -32)
  %.not10 = icmp eq i64 %21, 1
  br i1 %.not10, label %22, label %32

22:                                               ; preds = %20
  %23 = call i64 @f3(i32 noundef 32, i32 noundef -31)
  %.not11 = icmp eq i64 %23, 2
  br i1 %.not11, label %24, label %32

24:                                               ; preds = %22
  %25 = call i64 @f4(i32 noundef 35, i32 noundef -37)
  %.not12 = icmp eq i64 %25, 4294967294
  br i1 %.not12, label %26, label %32

26:                                               ; preds = %24
  %27 = call i64 @f4(i32 noundef 35, i32 noundef -36)
  %.not13 = icmp eq i64 %27, 4294967295
  br i1 %.not13, label %28, label %32

28:                                               ; preds = %26
  %29 = call i64 @f4(i32 noundef 35, i32 noundef -35)
  %.not14 = icmp eq i64 %29, 4294967295
  br i1 %.not14, label %30, label %32

30:                                               ; preds = %28
  %31 = call i64 @f4(i32 noundef 35, i32 noundef -34)
  %.not15 = icmp eq i64 %31, 0
  br i1 %.not15, label %33, label %32

32:                                               ; preds = %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %4, %2, %0
  call void @abort() #4
  unreachable

33:                                               ; preds = %30
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
