; ModuleID = './20101013-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20101013-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i8* @build_ref_for_offset(i8* noundef null, i64 noundef 32)
  br i1 false, label %2, label %3

2:                                                ; preds = %0
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @build_ref_for_offset(i8* noundef returned %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = call i8* @get_addr_base_and_unit_offset(i8* noundef %0, i64* noundef nonnull %3)
  %5 = load i64, i64* %3, align 8
  %6 = sdiv i64 %1, 8
  %7 = add nsw i64 %5, %6
  %8 = call i8* @build_int_cst(i8* noundef %0, i64 noundef %7)
  ret i8* %0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i8* @get_addr_base_and_unit_offset(i8* noundef readnone returned %0, i64* nocapture noundef writeonly %1) #2 {
  store i64 0, i64* %1, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @build_int_cst(i8* noundef readnone returned %0, i64 noundef %1) #0 {
  %.not = icmp eq i64 %1, 4
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  call void @abort() #3
  unreachable

4:                                                ; preds = %2
  ret i8* %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
