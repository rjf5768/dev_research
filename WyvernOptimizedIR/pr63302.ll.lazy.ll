; ModuleID = './pr63302.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr63302.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @foo(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i128, align 16
  %4 = bitcast i128* %3 to { i64, i64 }*
  %5 = bitcast i128* %3 to i64*
  store i64 %0, i64* %5, align 16
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i64 0, i32 1
  store i64 %1, i64* %6, align 8
  %7 = load i128, i128* %3, align 16
  %8 = and i128 %7, -9223372036854773761
  %9 = icmp eq i128 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = icmp eq i128 %8, -9223372036854775808
  %phi.cast = zext i1 %11 to i32
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ 1, %2 ], [ %phi.cast, %10 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @bar(i64 noundef %0) #0 {
  %2 = and i64 %0, -2147481601
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = icmp eq i64 %2, -2147483648
  %phi.cast = zext i1 %5 to i32
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 1, %1 ], [ %phi.cast, %4 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i128, align 16
  %2 = alloca i128, align 16
  %3 = alloca i128, align 16
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i128, align 16
  %8 = alloca i128, align 16
  %9 = alloca i128, align 16
  store i128 0, i128* %1, align 16
  %10 = bitcast i128* %1 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i64 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @foo(i64 noundef 0, i64 noundef %12)
  %.not = icmp eq i32 %13, 1
  br i1 %.not, label %14, label %70

14:                                               ; preds = %0
  store i128 1, i128* %2, align 16
  %15 = bitcast i128* %2 to { i64, i64 }*
  %16 = bitcast i128* %2 to i64*
  %17 = load i64, i64* %16, align 16
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i64 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @foo(i64 noundef %17, i64 noundef %19)
  %.not1 = icmp eq i32 %20, 0
  br i1 %.not1, label %21, label %70

21:                                               ; preds = %14
  store i128 2048, i128* %3, align 16
  %22 = bitcast i128* %3 to { i64, i64 }*
  %23 = bitcast i128* %3 to i64*
  %24 = load i64, i64* %23, align 16
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i64 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @foo(i64 noundef %24, i64 noundef %26)
  %.not2 = icmp eq i32 %27, 1
  br i1 %.not2, label %28, label %70

28:                                               ; preds = %21
  store i128 2049, i128* %4, align 16
  %29 = bitcast i128* %4 to { i64, i64 }*
  %30 = bitcast i128* %4 to i64*
  %31 = load i64, i64* %30, align 16
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i64 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @foo(i64 noundef %31, i64 noundef %33)
  %.not3 = icmp eq i32 %34, 0
  br i1 %.not3, label %35, label %70

35:                                               ; preds = %28
  store i128 9223372036854775808, i128* %5, align 16
  %36 = bitcast i128* %5 to { i64, i64 }*
  %37 = bitcast i128* %5 to i64*
  %38 = load i64, i64* %37, align 16
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i64 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @foo(i64 noundef %38, i64 noundef %40)
  %.not4 = icmp eq i32 %41, 0
  br i1 %.not4, label %42, label %70

42:                                               ; preds = %35
  store i128 -9223372036854775808, i128* %6, align 16
  %43 = bitcast i128* %6 to { i64, i64 }*
  %44 = bitcast i128* %6 to i64*
  %45 = load i64, i64* %44, align 16
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i64 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @foo(i64 noundef %45, i64 noundef %47)
  %.not5 = icmp eq i32 %48, 1
  br i1 %.not5, label %49, label %70

49:                                               ; preds = %42
  store i128 -9223372036854775807, i128* %7, align 16
  %50 = bitcast i128* %7 to { i64, i64 }*
  %51 = bitcast i128* %7 to i64*
  %52 = load i64, i64* %51, align 16
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i64 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @foo(i64 noundef %52, i64 noundef %54)
  %.not6 = icmp eq i32 %55, 0
  br i1 %.not6, label %56, label %70

56:                                               ; preds = %49
  store i128 -9223372036854773760, i128* %8, align 16
  %57 = bitcast i128* %8 to { i64, i64 }*
  %58 = bitcast i128* %8 to i64*
  %59 = load i64, i64* %58, align 16
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i64 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @foo(i64 noundef %59, i64 noundef %61)
  %.not7 = icmp eq i32 %62, 1
  br i1 %.not7, label %63, label %70

63:                                               ; preds = %56
  store i128 -9223372036854773759, i128* %9, align 16
  %64 = bitcast i128* %9 to { i64, i64 }*
  %65 = bitcast i128* %9 to i64*
  %66 = load i64, i64* %65, align 16
  %67 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %64, i64 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @foo(i64 noundef %66, i64 noundef %68)
  %.not8 = icmp eq i32 %69, 0
  br i1 %.not8, label %71, label %70

70:                                               ; preds = %63, %56, %49, %42, %35, %28, %21, %14, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

71:                                               ; preds = %63
  %72 = call i32 @bar(i64 noundef 0)
  %.not9 = icmp eq i32 %72, 1
  br i1 %.not9, label %73, label %89

73:                                               ; preds = %71
  %74 = call i32 @bar(i64 noundef 1)
  %.not10 = icmp eq i32 %74, 0
  br i1 %.not10, label %75, label %89

75:                                               ; preds = %73
  %76 = call i32 @bar(i64 noundef 2048)
  %.not11 = icmp eq i32 %76, 1
  br i1 %.not11, label %77, label %89

77:                                               ; preds = %75
  %78 = call i32 @bar(i64 noundef 2049)
  %.not12 = icmp eq i32 %78, 0
  br i1 %.not12, label %79, label %89

79:                                               ; preds = %77
  %80 = call i32 @bar(i64 noundef 2147483648)
  %.not13 = icmp eq i32 %80, 0
  br i1 %.not13, label %81, label %89

81:                                               ; preds = %79
  %82 = call i32 @bar(i64 noundef -2147483648)
  %.not14 = icmp eq i32 %82, 1
  br i1 %.not14, label %83, label %89

83:                                               ; preds = %81
  %84 = call i32 @bar(i64 noundef -2147483647)
  %.not15 = icmp eq i32 %84, 0
  br i1 %.not15, label %85, label %89

85:                                               ; preds = %83
  %86 = call i32 @bar(i64 noundef -2147481600)
  %.not16 = icmp eq i32 %86, 1
  br i1 %.not16, label %87, label %89

87:                                               ; preds = %85
  %88 = call i32 @bar(i64 noundef -2147481599)
  %.not17 = icmp eq i32 %88, 0
  br i1 %.not17, label %90, label %89

89:                                               ; preds = %87, %85, %83, %81, %79, %77, %75, %73, %71
  call void @abort() #3
  br label %UnifiedUnreachableBlock

90:                                               ; preds = %87
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %89, %70
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
