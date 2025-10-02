; ModuleID = './20050107-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050107-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.S* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0
  %3 = load i8, i8* %2, align 1
  %.not = icmp eq i8 %3, 1
  br i1 %.not, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  %6 = load i8, i8* %5, align 1
  %.not1 = icmp eq i8 %6, 2
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %4, %1
  call void @abort() #2
  unreachable

8:                                                ; preds = %4
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.S, align 1
  %2 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0
  store i8 1, i8* %2, align 1
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 1
  store i8 2, i8* %3, align 1
  call void @foo(%struct.S* noundef nonnull %1)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
