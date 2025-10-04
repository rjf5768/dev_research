; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/spiff/visual.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/spiff/visual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"visual mode is not available on this machine\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @V_visual(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* %2, align 4
  %4 = sub nsw i32 0, %3
  ret i32 %4
}

declare dso_local void @Z_fatal(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @V_cleanup() #0 {
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
