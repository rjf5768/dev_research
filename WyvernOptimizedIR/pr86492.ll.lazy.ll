; ModuleID = './pr86492.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr86492.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U = type { i32 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = shl i32 %0, 16
  %3 = or i32 %2, 57344
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %union.U, align 4
  %2 = call i32 @foo(i32 noundef 114)
  %3 = getelementptr inbounds %union.U, %union.U* %1, i64 0, i32 0
  store i32 %2, i32* %3, align 4
  %4 = and i32 %2, 4095
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %12

5:                                                ; preds = %0
  %6 = getelementptr inbounds %union.U, %union.U* %1, i64 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 61440
  %.not1 = icmp eq i32 %8, 57344
  br i1 %.not1, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %union.U, %union.U* %1, i64 0, i32 0
  %11 = load i32, i32* %10, align 4
  %.mask = and i32 %11, -65536
  %.not2 = icmp eq i32 %.mask, 7471104
  br i1 %.not2, label %13, label %12

12:                                               ; preds = %9, %5, %0
  call void @abort() #3
  unreachable

13:                                               ; preds = %9
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
