; ModuleID = './20101025-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20101025-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_3 = dso_local global i32 0, align 4
@g_6 = internal global i32* @g_7, align 8
@g_7 = internal global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @f2(i32 noundef %0) #0 {
  store i32 %0, i32* @g_3, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define dso_local i32 @f3() #1 {
  %1 = load volatile i32*, i32** @g_6, align 8
  store i32 1, i32* %1, align 4
  %2 = call i32 @f1(i32* noundef nonnull @g_7)
  call void @f2(i32 noundef %2)
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @f1(i32* nocapture noundef readonly %0) #2 {
  %2 = load i32, i32* %0, align 4
  ret i32 %2
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = call i32 @f3()
  %2 = load i32, i32* @g_3, align 4
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %4, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
