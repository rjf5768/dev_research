; ModuleID = './20000726-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000726-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adjust_template = type { i16, i16, i16, i16 }

@adjust = internal global %struct.adjust_template { i16 0, i16 0, i16 1, i16 1 }, align 2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 1, i16* %1, align 2
  store i16 1, i16* %2, align 2
  call void @adjust_xy(i16* noundef nonnull %1, i16* noundef nonnull %2)
  %3 = load i16, i16* %1, align 2
  %.not = icmp eq i16 %3, 1
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %5, %4
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @adjust_xy(i16* nocapture noundef %0, i16* nocapture noundef readonly %1) #1 {
  %3 = load i16, i16* getelementptr inbounds (%struct.adjust_template, %struct.adjust_template* @adjust, i64 0, i32 0), align 2
  %4 = load i16, i16* %0, align 2
  %5 = mul i16 %3, %4
  %6 = load i16, i16* getelementptr inbounds (%struct.adjust_template, %struct.adjust_template* @adjust, i64 0, i32 1), align 2
  %7 = load i16, i16* %1, align 2
  %8 = mul i16 %6, %7
  %9 = add i16 %5, %8
  %10 = load i16, i16* getelementptr inbounds (%struct.adjust_template, %struct.adjust_template* @adjust, i64 0, i32 2), align 2
  %11 = add i16 %9, %10
  store i16 %11, i16* %0, align 2
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
