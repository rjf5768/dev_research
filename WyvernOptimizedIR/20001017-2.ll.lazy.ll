; ModuleID = './20001017-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001017-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn_4parms(i8 noundef zeroext %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2, i32* nocapture noundef readonly %3) #0 {
  %5 = load i64, i64* %1, align 8
  %.not = icmp eq i64 %5, 1
  br i1 %.not, label %6, label %10

6:                                                ; preds = %4
  %7 = load i64, i64* %2, align 8
  %.not1 = icmp eq i64 %7, 2
  br i1 %.not1, label %8, label %10

8:                                                ; preds = %6
  %9 = load i32, i32* %3, align 4
  %.not2 = icmp eq i32 %9, 3
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %8, %6, %4
  call void @abort() #2
  unreachable

11:                                               ; preds = %8
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 1, i64* %1, align 8
  store i64 2, i64* %2, align 8
  store i32 3, i32* %3, align 4
  call void @fn_4parms(i8 noundef zeroext 0, i64* noundef nonnull %1, i64* noundef nonnull %2, i32* noundef nonnull %3)
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
