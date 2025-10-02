; ModuleID = './pr31448-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr31448-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._st = type { i48 }

@g.constreg = internal constant [1 x i32] zeroinitializer, align 4
@f.constreg = internal constant [1 x i64] [i64 4278124286], align 8
@next = dso_local global %struct._st* null, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @g() #0 {
  store i64 poison, i64* null, align 4294967296
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @f() #0 {
  %1 = load i64*, i64** bitcast (%struct._st** @next to i64**), align 8
  %2 = load i64, i64* %1, align 8
  %3 = and i64 %2, -16777216
  %4 = or i64 %3, 16711422
  store i64 %4, i64* %1, align 8
  %5 = load i64*, i64** bitcast (%struct._st** @next to i64**), align 8
  %6 = load i64, i64* %5, align 8
  %7 = and i64 %6, -281474959933441
  %8 = or i64 %7, 280371136561152
  store i64 %8, i64* %5, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct._st, align 8
  store %struct._st* %1, %struct._st** @next, align 8
  call void @f()
  %2 = load i64*, i64** bitcast (%struct._st** @next to i64**), align 8
  %3 = load i64, i64* %2, align 8
  %4 = shl i64 %3, 40
  %5 = ashr exact i64 %4, 40
  %6 = trunc i64 %5 to i32
  %.not = icmp eq i32 %6, -65794
  br i1 %.not, label %8, label %7

7:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %0
  %9 = load i64*, i64** bitcast (%struct._st** @next to i64**), align 8
  %10 = load i64, i64* %9, align 8
  %11 = shl i64 %10, 16
  %12 = ashr i64 %11, 40
  %13 = trunc i64 %12 to i32
  %.not1 = icmp eq i32 %13, -65794
  br i1 %.not1, label %15, label %14

14:                                               ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %8
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %14, %7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
