; ModuleID = './991228-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991228-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }
%union.anon.0 = type { double }

@u = dso_local global %union.anon { double -2.500000e-01 }, align 8
@endianness_test = dso_local global i64 1, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @signbit(double noundef %0) #0 {
  %2 = alloca %union.anon.0, align 8
  %3 = getelementptr inbounds %union.anon.0, %union.anon.0* %2, i64 0, i32 0
  store double %0, double* %3, align 8
  %4 = bitcast %union.anon.0* %2 to [2 x i32]*
  %5 = load i32, i32* bitcast (i64* @endianness_test to i32*), align 8
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  %.lobit = lshr i32 %8, 31
  ret i32 %.lobit
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = load i32, i32* bitcast (i64* @endianness_test to i32*), align 8
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [2 x i32], [2 x i32]* bitcast (%union.anon* @u to [2 x i32]*), i64 0, i64 %2
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %0
  %8 = call i32 @signbit(double noundef -2.500000e-01)
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %9, label %10

9:                                                ; preds = %7
  call void @abort() #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %7
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %10, %9, %6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
