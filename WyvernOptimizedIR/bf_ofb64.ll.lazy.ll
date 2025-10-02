; ModuleID = './bf_ofb64.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-blowfish/bf_ofb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @BF_ofb64_encrypt(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i64 noundef %2, %struct.bf_key_st* noundef %3, i8* nocapture noundef %4, i32* nocapture noundef %5) #0 {
  %7 = alloca [8 x i8], align 1
  %8 = alloca [2 x i64], align 16
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds i8, i8* %4, i64 1
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 24
  %14 = getelementptr inbounds i8, i8* %4, i64 2
  %15 = load i8, i8* %10, align 1
  %16 = zext i8 %15 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = or i64 %13, %17
  %19 = getelementptr inbounds i8, i8* %4, i64 3
  %20 = load i8, i8* %14, align 1
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 8
  %23 = or i64 %18, %22
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = load i8, i8* %19, align 1
  %26 = zext i8 %25 to i64
  %27 = or i64 %23, %26
  %28 = getelementptr inbounds i8, i8* %4, i64 5
  %29 = load i8, i8* %24, align 1
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 24
  %32 = getelementptr inbounds i8, i8* %4, i64 6
  %33 = load i8, i8* %28, align 1
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 16
  %36 = or i64 %31, %35
  %37 = getelementptr inbounds i8, i8* %4, i64 7
  %38 = load i8, i8* %32, align 1
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 8
  %41 = or i64 %36, %40
  %42 = load i8, i8* %37, align 1
  %43 = zext i8 %42 to i64
  %44 = or i64 %41, %43
  %45 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 %27, i64* %45, align 16
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  store i64 %44, i64* %46, align 8
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 1
  store i8 %11, i8* %47, align 1
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 2
  store i8 %15, i8* %48, align 1
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 3
  store i8 %20, i8* %49, align 1
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 4
  store i8 %25, i8* %50, align 1
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 5
  store i8 %29, i8* %51, align 1
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 6
  store i8 %33, i8* %52, align 1
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 7
  store i8 %38, i8* %53, align 1
  store i8 %42, i8* %54, align 1
  br label %55

55:                                               ; preds = %88, %6
  %.04 = phi i32 [ %9, %6 ], [ %97, %88 ]
  %.03 = phi i64 [ %2, %6 ], [ %56, %88 ]
  %.02 = phi i32 [ 0, %6 ], [ %.1, %88 ]
  %.01 = phi i8* [ %1, %6 ], [ %95, %88 ]
  %.0 = phi i8* [ %0, %6 ], [ %89, %88 ]
  %56 = add nsw i64 %.03, -1
  %.not = icmp eq i64 %.03, 0
  br i1 %.not, label %98, label %57

57:                                               ; preds = %55
  %58 = icmp eq i32 %.04, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %57
  %60 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  call void @BF_encrypt(i64* noundef nonnull %60, %struct.bf_key_st* noundef %3, i32 noundef 1) #2
  %61 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %62 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %63 = load i64, i64* %62, align 16
  %64 = lshr i64 %63, 24
  %65 = trunc i64 %64 to i8
  %66 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 1
  store i8 %65, i8* %61, align 1
  %67 = lshr i64 %63, 16
  %68 = trunc i64 %67 to i8
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 2
  store i8 %68, i8* %66, align 1
  %70 = lshr i64 %63, 8
  %71 = trunc i64 %70 to i8
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 3
  store i8 %71, i8* %69, align 1
  %73 = trunc i64 %63 to i8
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 4
  store i8 %73, i8* %72, align 1
  %75 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = lshr i64 %76, 24
  %78 = trunc i64 %77 to i8
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 5
  store i8 %78, i8* %74, align 1
  %80 = lshr i64 %76, 16
  %81 = trunc i64 %80 to i8
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 6
  store i8 %81, i8* %79, align 1
  %83 = lshr i64 %76, 8
  %84 = trunc i64 %83 to i8
  %85 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 7
  store i8 %84, i8* %82, align 1
  %86 = trunc i64 %76 to i8
  store i8 %86, i8* %85, align 1
  %87 = add nsw i32 %.02, 1
  br label %88

88:                                               ; preds = %59, %57
  %.1 = phi i32 [ %87, %59 ], [ %.02, %57 ]
  %89 = getelementptr inbounds i8, i8* %.0, i64 1
  %90 = load i8, i8* %.0, align 1
  %91 = sext i32 %.04 to i64
  %92 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = xor i8 %90, %93
  %95 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %94, i8* %.01, align 1
  %96 = add nsw i32 %.04, 1
  %97 = and i32 %96, 7
  br label %55, !llvm.loop !4

98:                                               ; preds = %55
  %.not5 = icmp eq i32 %.02, 0
  br i1 %.not5, label %125, label %99

99:                                               ; preds = %98
  %100 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %101 = load i64, i64* %100, align 16
  %102 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %103 = load i64, i64* %102, align 8
  %104 = lshr i64 %101, 24
  %105 = trunc i64 %104 to i8
  %106 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 %105, i8* %4, align 1
  %107 = lshr i64 %101, 16
  %108 = trunc i64 %107 to i8
  %109 = getelementptr inbounds i8, i8* %4, i64 2
  store i8 %108, i8* %106, align 1
  %110 = lshr i64 %101, 8
  %111 = trunc i64 %110 to i8
  %112 = getelementptr inbounds i8, i8* %4, i64 3
  store i8 %111, i8* %109, align 1
  %113 = trunc i64 %101 to i8
  %114 = getelementptr inbounds i8, i8* %4, i64 4
  store i8 %113, i8* %112, align 1
  %115 = lshr i64 %103, 24
  %116 = trunc i64 %115 to i8
  %117 = getelementptr inbounds i8, i8* %4, i64 5
  store i8 %116, i8* %114, align 1
  %118 = lshr i64 %103, 16
  %119 = trunc i64 %118 to i8
  %120 = getelementptr inbounds i8, i8* %4, i64 6
  store i8 %119, i8* %117, align 1
  %121 = lshr i64 %103, 8
  %122 = trunc i64 %121 to i8
  %123 = getelementptr inbounds i8, i8* %4, i64 7
  store i8 %122, i8* %120, align 1
  %124 = trunc i64 %103 to i8
  store i8 %124, i8* %123, align 1
  br label %125

125:                                              ; preds = %99, %98
  %126 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  store i64 0, i64* %126, align 8
  %127 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 0, i64* %127, align 16
  store i32 %.04, i32* %5, align 4
  ret void
}

declare dso_local void @BF_encrypt(i64* noundef, %struct.bf_key_st* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
