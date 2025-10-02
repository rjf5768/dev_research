; ModuleID = './961122-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/961122-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acc = dso_local global i64 0, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @addhi(i16 noundef signext %0) #0 {
  %2 = sext i16 %0 to i64
  %3 = shl nsw i64 %2, 32
  %4 = load i64, i64* @acc, align 8
  %5 = add nsw i64 %4, %3
  store i64 %5, i64* @acc, align 8
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @subhi(i16 noundef signext %0) #0 {
  %2 = sext i16 %0 to i64
  %.neg = mul nsw i64 %2, -4294967296
  %3 = load i64, i64* @acc, align 8
  %4 = add i64 %.neg, %3
  store i64 %4, i64* @acc, align 8
  ret i32 undef
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  store i64 281470681743360, i64* @acc, align 8
  %1 = call i32 @addhi(i16 noundef signext 1)
  %2 = load i64, i64* @acc, align 8
  %.not = icmp eq i64 %2, 281474976710656
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = call i32 @subhi(i16 noundef signext 1)
  %6 = load i64, i64* @acc, align 8
  %.not1 = icmp eq i64 %6, 281470681743360
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %4
  call void @abort() #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %8, %7, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
