; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/pr60635_1.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/pr60635_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i16* }

@littleendian = internal global i8 1, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @bigendc16(i16* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %union.anon, align 8
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %union.anon, %union.anon* %3, i32 0, i32 0
  store i16* %0, i16** %5, align 8
  %6 = load i8, i8* @littleendian, align 1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = bitcast %union.anon* %3 to i16**
  %10 = load i16*, i16** %9, align 8
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %2, align 2
  br label %30

12:                                               ; preds = %1
  %13 = bitcast %union.anon* %3 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i16
  %18 = zext i16 %17 to i32
  %19 = shl i32 %18, 0
  %20 = bitcast %union.anon* %3 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i16
  %25 = zext i16 %24 to i32
  %26 = shl i32 %25, 8
  %27 = or i32 %19, %26
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %4, align 2
  %29 = load i16, i16* %4, align 2
  store i16 %29, i16* %2, align 2
  br label %30

30:                                               ; preds = %12, %8
  %31 = load i16, i16* %2, align 2
  ret i16 %31
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
