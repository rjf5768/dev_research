; ModuleID = './pr61375.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr61375.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @uint128_central_bitsi_ior(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i128, align 16
  %5 = bitcast i128* %4 to { i64, i64 }*
  %6 = bitcast i128* %4 to i64*
  store i64 %0, i64* %6, align 16
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i64 0, i32 1
  store i64 %1, i64* %7, align 8
  %8 = load i128, i128* %4, align 16
  %9 = lshr i128 %8, 56
  %10 = trunc i128 %9 to i64
  %11 = and i64 %10, 65535
  %12 = or i64 %11, %2
  ret i64 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #1 {
  %3 = alloca i128, align 16
  store i128 18446744073709551616, i128* %3, align 16
  %4 = bitcast i128* %3 to { i64, i64 }*
  %5 = bitcast i128* %3 to i64*
  %6 = load i64, i64* %5, align 16
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i64 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = call i64 @uint128_central_bitsi_ior(i64 noundef %6, i64 noundef %8, i64 noundef 2)
  %.not = icmp eq i64 %9, 258
  br i1 %.not, label %11, label %10

10:                                               ; preds = %2
  call void @abort() #3
  unreachable

11:                                               ; preds = %2
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
