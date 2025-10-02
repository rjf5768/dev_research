; ModuleID = './920721-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920721-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ru(i32 noundef %0) #0 {
  %2 = trunc i32 %0 to i16
  %3 = call i32 @fu(i16 noundef zeroext %2)
  %.not = icmp eq i32 %3, 5
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  call void @abort() #4
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %1
  %6 = trunc i32 %0 to i16
  %7 = add i16 %6, 2
  %8 = call i32 @fu(i16 noundef zeroext %7)
  %.not1 = icmp eq i32 %8, 7
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %5
  call void @abort() #4
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %5
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %9, %4
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @fu(i16 noundef zeroext %0) #1 {
  %2 = zext i16 %0 to i32
  ret i32 %2
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rs(i32 noundef %0) #0 {
  %2 = trunc i32 %0 to i16
  %3 = call i32 @fs(i16 noundef signext %2)
  %.not = icmp eq i32 %3, 5
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  call void @abort() #4
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %1
  %6 = trunc i32 %0 to i16
  %7 = add i16 %6, 2
  %8 = call i32 @fs(i16 noundef signext %7)
  %.not1 = icmp eq i32 %8, 7
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %5
  call void @abort() #4
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %5
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %9, %4
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @fs(i16 noundef signext %0) #1 {
  %2 = sext i16 %0 to i32
  ret i32 %2
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = call i32 @ru(i32 noundef 5)
  %2 = call i32 @rs(i32 noundef 5)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
