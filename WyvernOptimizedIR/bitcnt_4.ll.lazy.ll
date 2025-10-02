; ModuleID = './bitcnt_4.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-bitcount/bitcnt_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bits = internal global [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i32 @ntbl_bitcnt(i64 noundef %0) #0 {
  %2 = and i64 %0, 15
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %2
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %.not = icmp ult i64 %0, 16
  br i1 %.not, label %10, label %6

6:                                                ; preds = %1
  %7 = ashr i64 %0, 4
  %8 = call i32 @ntbl_bitcnt(i64 noundef %7)
  %9 = add nsw i32 %8, %5
  br label %10

10:                                               ; preds = %6, %1
  %.0 = phi i32 [ %9, %6 ], [ %5, %1 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i32 @btbl_bitcnt(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = bitcast i64* %2 to i8*
  %4 = load i8, i8* %3, align 8
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %5
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = load i64, i64* %2, align 8
  %10 = ashr i64 %9, 8
  store i64 %10, i64* %2, align 8
  %.not = icmp ult i64 %9, 256
  br i1 %.not, label %15, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @btbl_bitcnt(i64 noundef %12)
  %14 = add nsw i32 %13, %8
  br label %15

15:                                               ; preds = %11, %1
  %.0 = phi i32 [ %14, %11 ], [ %8, %1 ]
  ret i32 %.0
}

attributes #0 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
