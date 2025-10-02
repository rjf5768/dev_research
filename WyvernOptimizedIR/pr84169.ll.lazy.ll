; ModuleID = './pr84169.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr84169.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i128 0, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i128, align 16
  %2 = alloca i128, align 16
  %3 = alloca i128, align 16
  %4 = alloca i128, align 16
  store i128 0, i128* %1, align 16
  %5 = bitcast i128* %1 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i64 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i128 0, i128* %2, align 16
  %8 = bitcast i128* %2 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i64 0, i32 1
  %10 = load i64, i64* %9, align 8
  store i128 0, i128* %3, align 16
  %11 = bitcast i128* %3 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i64 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call { i64, i64 } @foo(i64 noundef 0, i64 noundef %7, i64 noundef 0, i64 noundef %10, i64 noundef 0, i64 noundef %13, i128 noundef 0, i128 noundef 0, i128 noundef 4)
  %15 = bitcast i128* %4 to { i64, i64 }*
  %16 = bitcast i128* %4 to i64*
  %17 = extractvalue { i64, i64 } %14, 0
  store i64 %17, i64* %16, align 16
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i64 0, i32 1
  %19 = extractvalue { i64, i64 } %14, 1
  store i64 %19, i64* %18, align 8
  %20 = load i128, i128* %4, align 16
  %.not = icmp eq i128 %20, -64
  br i1 %.not, label %22, label %21

21:                                               ; preds = %0
  call void @abort() #4
  unreachable

22:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define internal { i64, i64 } @foo(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i128 noundef %6, i128 noundef %7, i128 noundef %8) #1 {
  %10 = alloca i128, align 16
  %.mask = and i128 %8, 255
  %11 = mul nsw i128 %.mask, -16
  %12 = load i128, i128* @b, align 16
  %13 = add i128 %12, %11
  store i128 %13, i128* %10, align 16
  %14 = bitcast i128* %10 to { i64, i64 }*
  %.elt = bitcast i128* %10 to i64*
  %.unpack = load i64, i64* %.elt, align 16
  %15 = insertvalue { i64, i64 } undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i64 0, i32 1
  %.unpack2 = load i64, i64* %.elt1, align 8
  %16 = insertvalue { i64, i64 } %15, i64 %.unpack2, 1
  ret { i64, i64 } %16
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i129, i1 } @llvm.smul.with.overflow.i129(i129, i129) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
