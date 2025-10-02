; ModuleID = './20000403-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000403-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = dso_local global [1 x i64] [i64 9223372036854771713], align 8
@bb = dso_local global [1 x i64] [i64 9223372036854771713], align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @aa, i64 0, i64 0), align 8
  %2 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @bb, i64 0, i64 0), align 8
  %3 = call i32 @seqgt(i64 noundef %1, i16 noundef zeroext 4096, i64 noundef %2)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %8, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @aa, i64 0, i64 0), align 8
  %6 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @bb, i64 0, i64 0), align 8
  %7 = call i32 @seqgt2(i64 noundef %5, i16 noundef zeroext 4096, i64 noundef %6)
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %8, label %9

8:                                                ; preds = %4, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %4
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %9, %8
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @seqgt(i64 noundef %0, i16 noundef zeroext %1, i64 noundef %2) #1 {
  %4 = zext i16 %1 to i64
  %5 = add i64 %4, %0
  %6 = sub i64 %5, %2
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @seqgt2(i64 noundef %0, i16 noundef zeroext %1, i64 noundef %2) #1 {
  %4 = zext i16 %1 to i64
  %5 = add i64 %4, %0
  %6 = sub i64 %5, %2
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
