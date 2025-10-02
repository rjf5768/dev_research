; ModuleID = './pr60635_1.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/pr60635_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i16* }

@littleendian = internal global i8 1, align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i16 @bigendc16(i16* %0) #0 {
  %2 = alloca %union.anon, align 8
  %3 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  store i16* %0, i16** %3, align 8
  %4 = load i8, i8* @littleendian, align 1
  %5 = and i8 %4, 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  %8 = load i16*, i16** %7, align 8
  %9 = load i16, i16* %8, align 2
  br label %20

10:                                               ; preds = %1
  %11 = bitcast %union.anon* %2 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i16
  %16 = load i8, i8* %12, align 1
  %17 = zext i8 %16 to i16
  %18 = shl nuw i16 %17, 8
  %19 = or i16 %18, %15
  br label %20

20:                                               ; preds = %10, %6
  %.0 = phi i16 [ %19, %10 ], [ %9, %6 ]
  ret i16 %.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
