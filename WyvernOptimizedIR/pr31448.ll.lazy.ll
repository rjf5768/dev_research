; ModuleID = './pr31448.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr31448.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._st = type { i24, i24 }

@g.constreg = internal constant [1 x i32] zeroinitializer, align 4
@f.constreg = internal constant [1 x i32] [i32 -16843010], align 4
@next = dso_local global %struct._st* null, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @g() #0 {
  store i32 poison, i32* null, align 4294967296
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @f() #0 {
  %1 = load i32*, i32** bitcast (%struct._st** @next to i32**), align 8
  %2 = load i32, i32* %1, align 4
  %3 = and i32 %2, -16777216
  %4 = or i32 %3, 16711422
  store i32 %4, i32* %1, align 4
  %5 = load %struct._st*, %struct._st** @next, align 8
  %6 = getelementptr inbounds %struct._st, %struct._st* %5, i64 0, i32 1
  %7 = bitcast i24* %6 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, -16777216
  %10 = or i32 %9, 16711422
  store i32 %10, i32* %7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct._st, align 4
  store %struct._st* %1, %struct._st** @next, align 8
  call void @f()
  %2 = load i32*, i32** bitcast (%struct._st** @next to i32**), align 8
  %3 = load i32, i32* %2, align 4
  %.mask = and i32 %3, 16777215
  %.not = icmp eq i32 %.mask, 16711422
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  %6 = load %struct._st*, %struct._st** @next, align 8
  %7 = getelementptr inbounds %struct._st, %struct._st* %6, i64 0, i32 1
  %8 = bitcast i24* %7 to i32*
  %9 = load i32, i32* %8, align 4
  %.mask2 = and i32 %9, 16777215
  %.not1 = icmp eq i32 %.mask2, 16711422
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %5
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %10, %4
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
