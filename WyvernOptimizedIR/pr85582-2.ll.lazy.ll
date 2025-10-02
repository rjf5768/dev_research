; ModuleID = './pr85582-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85582-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { i64, i64 } @f1(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = bitcast i128* %5 to { i64, i64 }*
  %7 = bitcast i128* %5 to i64*
  store i64 %0, i64* %7, align 16
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  store i64 %1, i64* %8, align 8
  %9 = load i128, i128* %5, align 16
  %10 = and i32 %2, 5
  %11 = zext i32 %10 to i128
  %12 = shl i128 %9, %11
  %13 = sext i32 %2 to i128
  %14 = add nsw i128 %12, %13
  store i128 %14, i128* %4, align 16
  %15 = bitcast i128* %4 to { i64, i64 }*
  %.elt = bitcast i128* %4 to i64*
  %.unpack = load i64, i64* %.elt, align 16
  %16 = insertvalue { i64, i64 } undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i64 0, i32 1
  %.unpack2 = load i64, i64* %.elt1, align 8
  %17 = insertvalue { i64, i64 } %16, i64 %.unpack2, 1
  ret { i64, i64 } %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { i64, i64 } @f2(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = bitcast i128* %5 to { i64, i64 }*
  %7 = bitcast i128* %5 to i64*
  store i64 %0, i64* %7, align 16
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  store i64 %1, i64* %8, align 8
  %9 = load i128, i128* %5, align 16
  %10 = and i32 %2, 5
  %11 = zext i32 %10 to i128
  %12 = ashr i128 %9, %11
  %13 = sext i32 %2 to i128
  %14 = add nsw i128 %12, %13
  store i128 %14, i128* %4, align 16
  %15 = bitcast i128* %4 to { i64, i64 }*
  %.elt = bitcast i128* %4 to i64*
  %.unpack = load i64, i64* %.elt, align 16
  %16 = insertvalue { i64, i64 } undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i64 0, i32 1
  %.unpack2 = load i64, i64* %.elt1, align 8
  %17 = insertvalue { i64, i64 } %16, i64 %.unpack2, 1
  ret { i64, i64 } %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { i64, i64 } @f3(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = bitcast i128* %5 to { i64, i64 }*
  %7 = bitcast i128* %5 to i64*
  store i64 %0, i64* %7, align 16
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  store i64 %1, i64* %8, align 8
  %9 = load i128, i128* %5, align 16
  %10 = and i32 %2, 5
  %11 = zext i32 %10 to i128
  %12 = lshr i128 %9, %11
  %13 = sext i32 %2 to i128
  %14 = add i128 %12, %13
  store i128 %14, i128* %4, align 16
  %15 = bitcast i128* %4 to { i64, i64 }*
  %.elt = bitcast i128* %4 to i64*
  %.unpack = load i64, i64* %.elt, align 16
  %16 = insertvalue { i64, i64 } undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i64 0, i32 1
  %.unpack2 = load i64, i64* %.elt1, align 8
  %17 = insertvalue { i64, i64 } %16, i64 %.unpack2, 1
  ret { i64, i64 } %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i128, align 16
  %2 = alloca i128, align 16
  %3 = alloca i128, align 16
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  store i128 2658455991569831745807614120560689152, i128* %1, align 16
  %7 = bitcast i128* %1 to { i64, i64 }*
  %8 = bitcast i128* %1 to i64*
  %9 = load i64, i64* %8, align 16
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call { i64, i64 } @f1(i64 noundef %9, i64 noundef %11, i32 noundef 12)
  %13 = bitcast i128* %2 to { i64, i64 }*
  %14 = bitcast i128* %2 to i64*
  %15 = extractvalue { i64, i64 } %12, 0
  store i64 %15, i64* %14, align 16
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i64 0, i32 1
  %17 = extractvalue { i64, i64 } %12, 1
  store i64 %17, i64* %16, align 8
  %18 = load i128, i128* %2, align 16
  %.not = icmp eq i128 %18, 42535295865117307932921825928971026444
  br i1 %.not, label %20, label %19

19:                                               ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %0
  store i128 -170141183460469231731687303715884105728, i128* %3, align 16
  %21 = bitcast i128* %3 to { i64, i64 }*
  %22 = bitcast i128* %3 to i64*
  %23 = load i64, i64* %22, align 16
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i64 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call { i64, i64 } @f2(i64 noundef %23, i64 noundef %25, i32 noundef 12)
  %27 = bitcast i128* %4 to { i64, i64 }*
  %28 = bitcast i128* %4 to i64*
  %29 = extractvalue { i64, i64 } %26, 0
  store i64 %29, i64* %28, align 16
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i64 0, i32 1
  %31 = extractvalue { i64, i64 } %26, 1
  store i64 %31, i64* %30, align 8
  %32 = load i128, i128* %4, align 16
  %.not1 = icmp eq i128 %32, -10633823966279326983230456482242756596
  br i1 %.not1, label %34, label %33

33:                                               ; preds = %20
  call void @abort() #3
  br label %UnifiedUnreachableBlock

34:                                               ; preds = %20
  store i128 -170141183460469231731687303715884105728, i128* %5, align 16
  %35 = bitcast i128* %5 to { i64, i64 }*
  %36 = bitcast i128* %5 to i64*
  %37 = load i64, i64* %36, align 16
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i64 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call { i64, i64 } @f3(i64 noundef %37, i64 noundef %39, i32 noundef 12)
  %41 = bitcast i128* %6 to { i64, i64 }*
  %42 = bitcast i128* %6 to i64*
  %43 = extractvalue { i64, i64 } %40, 0
  store i64 %43, i64* %42, align 16
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i64 0, i32 1
  %45 = extractvalue { i64, i64 } %40, 1
  store i64 %45, i64* %44, align 8
  %46 = load i128, i128* %6, align 16
  %.not2 = icmp eq i128 %46, 10633823966279326983230456482242756620
  br i1 %.not2, label %48, label %47

47:                                               ; preds = %34
  call void @abort() #3
  br label %UnifiedUnreachableBlock

48:                                               ; preds = %34
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %47, %33, %19
  unreachable
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
