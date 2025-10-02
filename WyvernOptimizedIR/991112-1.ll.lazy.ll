; ModuleID = './991112-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991112-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @rl_show_char(i32 noundef %0) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define dso_local i32 @rl_character_len(i32 noundef %0, i32 noundef %1) #1 {
  %3 = call i32 @isprint(i32 noundef %0) #5
  %.not = icmp eq i32 %3, 0
  %4 = select i1 %.not, i32 2, i32 1
  ret i32 %4
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @isprint(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = call i32 @rl_character_len(i32 noundef 97, i32 noundef 1)
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #6
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = call i32 @rl_character_len(i32 noundef 2, i32 noundef 1)
  %.not1 = icmp eq i32 %4, 2
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #6
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %5, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
