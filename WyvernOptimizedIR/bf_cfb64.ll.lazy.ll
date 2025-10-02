; ModuleID = './bf_cfb64.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-blowfish/bf_cfb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @BF_cfb64_encrypt(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i64 noundef %2, %struct.bf_key_st* noundef %3, i8* nocapture noundef %4, i32* nocapture noundef %5, i32 noundef %6) #0 {
  %8 = alloca [2 x i64], align 16
  %9 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %92, label %10

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %79, %10
  %.07 = phi i32 [ %9, %10 ], [ %90, %79 ]
  %.05 = phi i64 [ %2, %10 ], [ %12, %79 ]
  %.01 = phi i8* [ %1, %10 ], [ %86, %79 ]
  %.0 = phi i8* [ %0, %10 ], [ %80, %79 ]
  %12 = add nsw i64 %.05, -1
  %.not11 = icmp eq i64 %.05, 0
  br i1 %.not11, label %91, label %13

13:                                               ; preds = %11
  %14 = icmp eq i32 %.07, 0
  br i1 %14, label %15, label %79

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %4, i64 1
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = getelementptr inbounds i8, i8* %4, i64 2
  %21 = load i8, i8* %16, align 1
  %22 = zext i8 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = or i64 %19, %23
  %25 = getelementptr inbounds i8, i8* %4, i64 3
  %26 = load i8, i8* %20, align 1
  %27 = zext i8 %26 to i64
  %28 = shl nuw nsw i64 %27, 8
  %29 = or i64 %24, %28
  %30 = getelementptr inbounds i8, i8* %4, i64 4
  %31 = load i8, i8* %25, align 1
  %32 = zext i8 %31 to i64
  %33 = or i64 %29, %32
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 %33, i64* %34, align 16
  %35 = getelementptr inbounds i8, i8* %4, i64 5
  %36 = load i8, i8* %30, align 1
  %37 = zext i8 %36 to i64
  %38 = shl nuw nsw i64 %37, 24
  %39 = getelementptr inbounds i8, i8* %4, i64 6
  %40 = load i8, i8* %35, align 1
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 16
  %43 = or i64 %38, %42
  %44 = getelementptr inbounds i8, i8* %4, i64 7
  %45 = load i8, i8* %39, align 1
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %46, 8
  %48 = or i64 %43, %47
  %49 = load i8, i8* %44, align 1
  %50 = zext i8 %49 to i64
  %51 = or i64 %48, %50
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  store i64 %51, i64* %52, align 8
  %53 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  call void @BF_encrypt(i64* noundef nonnull %53, %struct.bf_key_st* noundef %3, i32 noundef 1) #2
  %54 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %55 = load i64, i64* %54, align 16
  %56 = lshr i64 %55, 24
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 %57, i8* %4, align 1
  %59 = lshr i64 %55, 16
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds i8, i8* %4, i64 2
  store i8 %60, i8* %58, align 1
  %62 = lshr i64 %55, 8
  %63 = trunc i64 %62 to i8
  %64 = getelementptr inbounds i8, i8* %4, i64 3
  store i8 %63, i8* %61, align 1
  %65 = trunc i64 %55 to i8
  %66 = getelementptr inbounds i8, i8* %4, i64 4
  store i8 %65, i8* %64, align 1
  %67 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = lshr i64 %68, 24
  %70 = trunc i64 %69 to i8
  %71 = getelementptr inbounds i8, i8* %4, i64 5
  store i8 %70, i8* %66, align 1
  %72 = lshr i64 %68, 16
  %73 = trunc i64 %72 to i8
  %74 = getelementptr inbounds i8, i8* %4, i64 6
  store i8 %73, i8* %71, align 1
  %75 = lshr i64 %68, 8
  %76 = trunc i64 %75 to i8
  %77 = getelementptr inbounds i8, i8* %4, i64 7
  store i8 %76, i8* %74, align 1
  %78 = trunc i64 %68 to i8
  store i8 %78, i8* %77, align 1
  br label %79

79:                                               ; preds = %15, %13
  %80 = getelementptr inbounds i8, i8* %.0, i64 1
  %81 = load i8, i8* %.0, align 1
  %82 = sext i32 %.07 to i64
  %83 = getelementptr inbounds i8, i8* %4, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = xor i8 %81, %84
  %86 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %85, i8* %.01, align 1
  %87 = sext i32 %.07 to i64
  %88 = getelementptr inbounds i8, i8* %4, i64 %87
  store i8 %85, i8* %88, align 1
  %89 = add nsw i32 %.07, 1
  %90 = and i32 %89, 7
  br label %11, !llvm.loop !4

91:                                               ; preds = %11
  br label %174

92:                                               ; preds = %7
  br label %93

93:                                               ; preds = %161, %92
  %.18 = phi i32 [ %9, %92 ], [ %172, %161 ]
  %.16 = phi i64 [ %2, %92 ], [ %94, %161 ]
  %.12 = phi i8* [ %1, %92 ], [ %170, %161 ]
  %.1 = phi i8* [ %0, %92 ], [ %162, %161 ]
  %94 = add nsw i64 %.16, -1
  %.not10 = icmp eq i64 %.16, 0
  br i1 %.not10, label %173, label %95

95:                                               ; preds = %93
  %96 = icmp eq i32 %.18, 0
  br i1 %96, label %97, label %161

97:                                               ; preds = %95
  %98 = getelementptr inbounds i8, i8* %4, i64 1
  %99 = load i8, i8* %4, align 1
  %100 = zext i8 %99 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = getelementptr inbounds i8, i8* %4, i64 2
  %103 = load i8, i8* %98, align 1
  %104 = zext i8 %103 to i64
  %105 = shl nuw nsw i64 %104, 16
  %106 = or i64 %101, %105
  %107 = getelementptr inbounds i8, i8* %4, i64 3
  %108 = load i8, i8* %102, align 1
  %109 = zext i8 %108 to i64
  %110 = shl nuw nsw i64 %109, 8
  %111 = or i64 %106, %110
  %112 = getelementptr inbounds i8, i8* %4, i64 4
  %113 = load i8, i8* %107, align 1
  %114 = zext i8 %113 to i64
  %115 = or i64 %111, %114
  %116 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 %115, i64* %116, align 16
  %117 = getelementptr inbounds i8, i8* %4, i64 5
  %118 = load i8, i8* %112, align 1
  %119 = zext i8 %118 to i64
  %120 = shl nuw nsw i64 %119, 24
  %121 = getelementptr inbounds i8, i8* %4, i64 6
  %122 = load i8, i8* %117, align 1
  %123 = zext i8 %122 to i64
  %124 = shl nuw nsw i64 %123, 16
  %125 = or i64 %120, %124
  %126 = getelementptr inbounds i8, i8* %4, i64 7
  %127 = load i8, i8* %121, align 1
  %128 = zext i8 %127 to i64
  %129 = shl nuw nsw i64 %128, 8
  %130 = or i64 %125, %129
  %131 = load i8, i8* %126, align 1
  %132 = zext i8 %131 to i64
  %133 = or i64 %130, %132
  %134 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  store i64 %133, i64* %134, align 8
  %135 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  call void @BF_encrypt(i64* noundef nonnull %135, %struct.bf_key_st* noundef %3, i32 noundef 1) #2
  %136 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %137 = load i64, i64* %136, align 16
  %138 = lshr i64 %137, 24
  %139 = trunc i64 %138 to i8
  %140 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 %139, i8* %4, align 1
  %141 = lshr i64 %137, 16
  %142 = trunc i64 %141 to i8
  %143 = getelementptr inbounds i8, i8* %4, i64 2
  store i8 %142, i8* %140, align 1
  %144 = lshr i64 %137, 8
  %145 = trunc i64 %144 to i8
  %146 = getelementptr inbounds i8, i8* %4, i64 3
  store i8 %145, i8* %143, align 1
  %147 = trunc i64 %137 to i8
  %148 = getelementptr inbounds i8, i8* %4, i64 4
  store i8 %147, i8* %146, align 1
  %149 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %150 = load i64, i64* %149, align 8
  %151 = lshr i64 %150, 24
  %152 = trunc i64 %151 to i8
  %153 = getelementptr inbounds i8, i8* %4, i64 5
  store i8 %152, i8* %148, align 1
  %154 = lshr i64 %150, 16
  %155 = trunc i64 %154 to i8
  %156 = getelementptr inbounds i8, i8* %4, i64 6
  store i8 %155, i8* %153, align 1
  %157 = lshr i64 %150, 8
  %158 = trunc i64 %157 to i8
  %159 = getelementptr inbounds i8, i8* %4, i64 7
  store i8 %158, i8* %156, align 1
  %160 = trunc i64 %150 to i8
  store i8 %160, i8* %159, align 1
  br label %161

161:                                              ; preds = %97, %95
  %162 = getelementptr inbounds i8, i8* %.1, i64 1
  %163 = load i8, i8* %.1, align 1
  %164 = sext i32 %.18 to i64
  %165 = getelementptr inbounds i8, i8* %4, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = sext i32 %.18 to i64
  %168 = getelementptr inbounds i8, i8* %4, i64 %167
  store i8 %163, i8* %168, align 1
  %169 = xor i8 %166, %163
  %170 = getelementptr inbounds i8, i8* %.12, i64 1
  store i8 %169, i8* %.12, align 1
  %171 = add nsw i32 %.18, 1
  %172 = and i32 %171, 7
  br label %93, !llvm.loop !6

173:                                              ; preds = %93
  br label %174

174:                                              ; preds = %173, %91
  %.29 = phi i32 [ %.07, %91 ], [ %.18, %173 ]
  %175 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  store i64 0, i64* %175, align 8
  %176 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 0, i64* %176, align 16
  store i32 %.29, i32* %5, align 4
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
!6 = distinct !{!6, !5}
