; ModuleID = './20001031-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001031-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @t1(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 4100
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  call void @abort() #3
  unreachable

3:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @t2() #0 {
  call void @t1(i32 noundef 4100)
  ret i32 4096
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @t3(i64 noundef %0) #0 {
  %.not = icmp eq i64 %0, 2147487743
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  call void @abort() #3
  unreachable

3:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @t4() #0 {
  call void @t3(i64 noundef 2147487743)
  ret i64 4096
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call i32 @t2()
  %.not = icmp eq i32 %1, 4096
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = call i64 @t4()
  %.not1 = icmp eq i64 %4, 4096
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %6, %5, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
