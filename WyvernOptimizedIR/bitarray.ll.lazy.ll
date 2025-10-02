; ModuleID = './bitarray.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-bitcount/bitarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @alloc_bit_array(i64 noundef %0) #0 {
  %2 = add i64 %0, 7
  %3 = lshr i64 %2, 3
  %4 = call noalias i8* @calloc(i64 noundef %3, i64 noundef 1) #4
  ret i8* %4
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @getbit(i8* nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = sdiv i32 %1, 8
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i8, i8* %0, i64 %4
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = and i32 %1, 7
  %9 = lshr i32 %7, %8
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @setbit(i8* nocapture noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = sdiv i32 %1, 8
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %13, label %7

7:                                                ; preds = %3
  %8 = and i32 %1, 7
  %9 = shl i32 1, %8
  %10 = load i8, i8* %6, align 1
  %11 = trunc i32 %9 to i8
  %12 = or i8 %10, %11
  br label %20

13:                                               ; preds = %3
  %14 = and i32 %1, 7
  %15 = shl i32 1, %14
  %16 = load i8, i8* %6, align 1
  %17 = trunc i32 %15 to i8
  %18 = xor i8 %17, -1
  %19 = and i8 %16, %18
  br label %20

20:                                               ; preds = %13, %7
  %storemerge = phi i8 [ %19, %13 ], [ %12, %7 ]
  store i8 %storemerge, i8* %6, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @flipbit(i8* nocapture noundef %0, i32 noundef %1) #3 {
  %3 = sdiv i32 %1, 8
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i8, i8* %0, i64 %4
  %6 = and i32 %1, 7
  %7 = shl i32 1, %6
  %8 = load i8, i8* %5, align 1
  %9 = trunc i32 %7 to i8
  %10 = xor i8 %8, %9
  store i8 %10, i8* %5, align 1
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
