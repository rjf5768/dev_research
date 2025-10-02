; ModuleID = './20021024-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021024-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp = dso_local global i64* null, align 8
@m = dso_local global i64 0, align 8
@main.r = internal global [64 x i64] zeroinitializer, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @foo() #0 {
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @bar(i32 noundef %0, i64* nocapture noundef %1) #1 {
  br label %3

3:                                                ; preds = %17, %2
  %4 = lshr i32 %0, 23
  %5 = lshr i32 %0, 9
  %6 = and i32 %5, 511
  %7 = and i32 %0, 511
  %8 = load i64*, i64** @cp, align 8
  store i64 1, i64* %8, align 8
  %9 = zext i32 %6 to i64
  %10 = getelementptr inbounds i64, i64* %1, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = zext i32 %4 to i64
  %13 = getelementptr inbounds i64, i64* %1, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %11, %14
  store i64 %15, i64* @m, align 8
  %16 = load i64*, i64** @cp, align 8
  store i64 2, i64* %16, align 8
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %17, label %18

17:                                               ; preds = %3
  br label %3

18:                                               ; preds = %3
  %19 = zext i32 %7 to i64
  %20 = getelementptr inbounds i64, i64* %1, i64 %19
  store i64 1, i64* %20, align 8
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i64, align 8
  store i64* %1, i64** @cp, align 8
  store i64 47, i64* getelementptr inbounds ([64 x i64], [64 x i64]* @main.r, i64 0, i64 4), align 16
  store i64 11, i64* getelementptr inbounds ([64 x i64], [64 x i64]* @main.r, i64 0, i64 8), align 16
  call void @bar(i32 noundef 67110927, i64* noundef getelementptr inbounds ([64 x i64], [64 x i64]* @main.r, i64 0, i64 0))
  %2 = load i64, i64* @m, align 8
  %.not = icmp eq i64 %2, 58
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %4, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
