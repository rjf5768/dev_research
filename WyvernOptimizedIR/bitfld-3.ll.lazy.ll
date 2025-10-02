; ModuleID = './bitfld-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bitfld-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 0, i8 0, i8 16, i8 0, i8 0, [3 x i8] undef, i8 0, i8 0, i8 16, i8 0, i8 0, [3 x i8] undef, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, [2 x i8] undef }, align 8
@b = dso_local global { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 0, i8 0, i8 0, i8 0, i8 1, [3 x i8] undef, i8 0, i8 0, i8 0, i8 0, i8 1, [3 x i8] undef, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, [2 x i8] undef }, align 8
@c = dso_local global { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 -1, i8 -1, i8 -1, i8 -1, i8 1, [3 x i8] undef, i8 0, i8 0, i8 0, i8 0, i8 0, [3 x i8] undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x i8] undef }, align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %2 = and i64 %1, 8589934591
  %3 = and i64 %1, 8589934591
  %4 = mul i64 %2, %3
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %5, label %22

5:                                                ; preds = %0
  %6 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %7 = and i64 %6, 8589934591
  %8 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a, i64 0, i32 6) to i64*), align 8
  %9 = and i64 %8, 1099511627775
  %10 = mul i64 %7, %9
  %.not1 = icmp eq i64 %10, 0
  br i1 %.not1, label %11, label %22

11:                                               ; preds = %5
  %12 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a, i64 0, i32 6) to i64*), align 8
  %13 = and i64 %12, 1099511627775
  %14 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %15 = and i64 %14, 8589934591
  %16 = mul i64 %13, %15
  %.not2 = icmp eq i64 %16, 0
  br i1 %.not2, label %17, label %22

17:                                               ; preds = %11
  %18 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a, i64 0, i32 6) to i64*), align 8
  %19 = and i64 %18, 1099511627775
  %20 = and i64 %18, 1099511627775
  %21 = mul i64 %19, %20
  %.not3 = icmp eq i64 %21, 0
  br i1 %.not3, label %23, label %22

22:                                               ; preds = %17, %11, %5, %0
  call void @abort() #2
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %17
  %24 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %25 = and i64 %24, 8589934591
  %26 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a, i64 0, i32 12) to i64*), align 8
  %27 = and i64 %26, 2199023255551
  %28 = mul i64 %25, %27
  %.not4 = icmp eq i64 %28, 1099511627776
  br i1 %.not4, label %29, label %52

29:                                               ; preds = %23
  %30 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a, i64 0, i32 6) to i64*), align 8
  %31 = and i64 %30, 1099511627775
  %32 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a, i64 0, i32 12) to i64*), align 8
  %33 = and i64 %32, 2199023255551
  %34 = mul i64 %31, %33
  %.not5 = icmp eq i64 %34, 1099511627776
  br i1 %.not5, label %35, label %52

35:                                               ; preds = %29
  %36 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a, i64 0, i32 12) to i64*), align 8
  %37 = and i64 %36, 2199023255551
  %38 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %39 = and i64 %38, 8589934591
  %40 = mul i64 %37, %39
  %.not6 = icmp eq i64 %40, 1099511627776
  br i1 %.not6, label %41, label %52

41:                                               ; preds = %35
  %42 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a, i64 0, i32 12) to i64*), align 8
  %43 = and i64 %42, 2199023255551
  %44 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a, i64 0, i32 6) to i64*), align 8
  %45 = and i64 %44, 1099511627775
  %46 = mul i64 %43, %45
  %.not7 = icmp eq i64 %46, 1099511627776
  br i1 %.not7, label %47, label %52

47:                                               ; preds = %41
  %48 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a, i64 0, i32 12) to i64*), align 8
  %49 = and i64 %48, 2199023255551
  %50 = and i64 %48, 2199023255551
  %51 = mul i64 %49, %50
  %.not8 = icmp eq i64 %51, 1099511627776
  br i1 %.not8, label %53, label %52

52:                                               ; preds = %47, %41, %35, %29, %23
  call void @abort() #2
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %47
  %54 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %55 = and i64 %54, 8589934591
  %56 = and i64 %54, 8589934591
  %57 = sub nsw i64 0, %56
  %.not9 = icmp eq i64 %55, %57
  br i1 %.not9, label %59, label %58

58:                                               ; preds = %53
  call void @abort() #2
  br label %UnifiedUnreachableBlock

59:                                               ; preds = %53
  %60 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %61 = and i64 %60, 8589934591
  %62 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b, i64 0, i32 6) to i64*), align 8
  %63 = and i64 %62, 1099511627775
  %64 = add nuw nsw i64 %61, %63
  %.not10 = icmp eq i64 %64, 8589934592
  br i1 %.not10, label %65, label %105

65:                                               ; preds = %59
  %66 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %67 = and i64 %66, 8589934591
  %68 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b, i64 0, i32 12) to i64*), align 8
  %69 = and i64 %68, 2199023255551
  %70 = add nuw nsw i64 %67, %69
  %.not11 = icmp eq i64 %70, 8589934592
  br i1 %.not11, label %71, label %105

71:                                               ; preds = %65
  %72 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b, i64 0, i32 6) to i64*), align 8
  %73 = and i64 %72, 1099511627775
  %74 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %75 = and i64 %74, 8589934591
  %76 = add nuw nsw i64 %73, %75
  %.not12 = icmp eq i64 %76, 8589934592
  br i1 %.not12, label %77, label %105

77:                                               ; preds = %71
  %78 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b, i64 0, i32 6) to i64*), align 8
  %79 = and i64 %78, 1099511627775
  %80 = and i64 %78, 1099511627775
  %81 = add nuw nsw i64 %79, %80
  %.not13 = icmp eq i64 %81, 8589934592
  br i1 %.not13, label %82, label %105

82:                                               ; preds = %77
  %83 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b, i64 0, i32 6) to i64*), align 8
  %84 = and i64 %83, 1099511627775
  %85 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b, i64 0, i32 12) to i64*), align 8
  %86 = and i64 %85, 2199023255551
  %87 = add nuw nsw i64 %84, %86
  %.not14 = icmp eq i64 %87, 8589934592
  br i1 %.not14, label %88, label %105

88:                                               ; preds = %82
  %89 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b, i64 0, i32 12) to i64*), align 8
  %90 = and i64 %89, 2199023255551
  %91 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %92 = and i64 %91, 8589934591
  %93 = add nuw nsw i64 %90, %92
  %.not15 = icmp eq i64 %93, 8589934592
  br i1 %.not15, label %94, label %105

94:                                               ; preds = %88
  %95 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b, i64 0, i32 12) to i64*), align 8
  %96 = and i64 %95, 2199023255551
  %97 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b, i64 0, i32 6) to i64*), align 8
  %98 = and i64 %97, 1099511627775
  %99 = add nuw nsw i64 %96, %98
  %.not16 = icmp eq i64 %99, 8589934592
  br i1 %.not16, label %100, label %105

100:                                              ; preds = %94
  %101 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b, i64 0, i32 12) to i64*), align 8
  %102 = and i64 %101, 2199023255551
  %103 = and i64 %101, 2199023255551
  %104 = add nuw nsw i64 %102, %103
  %.not17 = icmp eq i64 %104, 8589934592
  br i1 %.not17, label %106, label %105

105:                                              ; preds = %100, %94, %88, %82, %77, %71, %65, %59
  call void @abort() #2
  br label %UnifiedUnreachableBlock

106:                                              ; preds = %100
  %107 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %108 = and i64 %107, 8589934591
  %109 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %110 = and i64 %109, 8589934591
  %111 = sub nsw i64 %108, %110
  %.not18 = icmp eq i64 %111, 4296015872
  br i1 %.not18, label %112, label %160

112:                                              ; preds = %106
  %113 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %114 = and i64 %113, 8589934591
  %115 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b, i64 0, i32 6) to i64*), align 8
  %116 = and i64 %115, 1099511627775
  %117 = sub nsw i64 %114, %116
  %.not19 = icmp eq i64 %117, 1095217709056
  br i1 %.not19, label %118, label %160

118:                                              ; preds = %112
  %119 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a to i64*), align 8
  %120 = and i64 %119, 8589934591
  %121 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b, i64 0, i32 12) to i64*), align 8
  %122 = and i64 %121, 2199023255551
  %123 = sub nsw i64 %120, %122
  %.not20 = icmp eq i64 %123, 2194729336832
  br i1 %.not20, label %124, label %160

124:                                              ; preds = %118
  %125 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a, i64 0, i32 6) to i64*), align 8
  %126 = and i64 %125, 1099511627775
  %127 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %128 = and i64 %127, 8589934591
  %129 = sub nsw i64 %126, %128
  %.not21 = icmp eq i64 %129, 1095217709056
  br i1 %.not21, label %130, label %160

130:                                              ; preds = %124
  %131 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a, i64 0, i32 6) to i64*), align 8
  %132 = and i64 %131, 1099511627775
  %133 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b, i64 0, i32 6) to i64*), align 8
  %134 = and i64 %133, 1099511627775
  %135 = sub nsw i64 %132, %134
  %.not22 = icmp eq i64 %135, 1095217709056
  br i1 %.not22, label %136, label %160

136:                                              ; preds = %130
  %137 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a, i64 0, i32 6) to i64*), align 8
  %138 = and i64 %137, 1099511627775
  %139 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b, i64 0, i32 12) to i64*), align 8
  %140 = and i64 %139, 2199023255551
  %141 = sub nsw i64 %138, %140
  %.not23 = icmp eq i64 %141, 2194729336832
  br i1 %.not23, label %142, label %160

142:                                              ; preds = %136
  %143 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a, i64 0, i32 12) to i64*), align 8
  %144 = and i64 %143, 2199023255551
  %145 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b to i64*), align 8
  %146 = and i64 %145, 8589934591
  %147 = sub nsw i64 %144, %146
  %.not24 = icmp eq i64 %147, 2194729336832
  br i1 %.not24, label %148, label %160

148:                                              ; preds = %142
  %149 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a, i64 0, i32 12) to i64*), align 8
  %150 = and i64 %149, 2199023255551
  %151 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b, i64 0, i32 6) to i64*), align 8
  %152 = and i64 %151, 1099511627775
  %153 = sub nsw i64 %150, %152
  %.not25 = icmp eq i64 %153, 2194729336832
  br i1 %.not25, label %154, label %160

154:                                              ; preds = %148
  %155 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @a, i64 0, i32 12) to i64*), align 8
  %156 = and i64 %155, 2199023255551
  %157 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @b, i64 0, i32 12) to i64*), align 8
  %158 = and i64 %157, 2199023255551
  %159 = sub nsw i64 %156, %158
  %.not26 = icmp eq i64 %159, 2194729336832
  br i1 %.not26, label %161, label %160

160:                                              ; preds = %154, %148, %142, %136, %130, %124, %118, %112, %106
  call void @abort() #2
  br label %UnifiedUnreachableBlock

161:                                              ; preds = %154
  %162 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @c to i64*), align 8
  %163 = add i64 %162, 1
  %164 = and i64 %163, 8589934591
  %165 = and i64 %162, -8589934592
  %166 = or i64 %165, %164
  store i64 %166, i64* bitcast ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @c to i64*), align 8
  %.not27 = icmp eq i64 %164, 0
  br i1 %.not27, label %167, label %180

167:                                              ; preds = %161
  %168 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @c, i64 0, i32 6) to i64*), align 8
  %169 = add i64 %168, 1099511627775
  %170 = and i64 %169, 1099511627775
  %171 = and i64 %168, -1099511627776
  %172 = or i64 %171, %170
  store i64 %172, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @c, i64 0, i32 6) to i64*), align 8
  %.not28 = icmp eq i64 %170, 1099511627775
  br i1 %.not28, label %173, label %180

173:                                              ; preds = %167
  %174 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @c, i64 0, i32 12) to i64*), align 8
  %175 = and i64 %174, 2199023255551
  %176 = add i64 %174, 2199023255551
  %177 = and i64 %176, 2199023255551
  %178 = and i64 %174, -2199023255552
  %179 = or i64 %178, %177
  store i64 %179, i64* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }* @c, i64 0, i32 12) to i64*), align 8
  %.not29 = icmp eq i64 %175, 0
  br i1 %.not29, label %181, label %180

180:                                              ; preds = %173, %167, %161
  call void @abort() #2
  br label %UnifiedUnreachableBlock

181:                                              ; preds = %173
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %181, %180, %160, %105, %58, %52, %22
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
