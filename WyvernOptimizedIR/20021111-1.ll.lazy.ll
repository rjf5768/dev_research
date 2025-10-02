; ModuleID = './20021111-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021111-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aim_callhandler.i = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @aim_callhandler(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %5, label %6

5:                                                ; preds = %4
  br label %17

6:                                                ; preds = %4
  %7 = icmp eq i16 %3, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %17

9:                                                ; preds = %6
  %10 = load i32, i32* @aim_callhandler.i, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #3
  unreachable

13:                                               ; preds = %9
  %14 = load i32, i32* @aim_callhandler.i, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @aim_callhandler.i, align 4
  %16 = call i32 @aim_callhandler(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext -1)
  br label %17

17:                                               ; preds = %13, %8, %5
  %.0 = phi i32 [ 0, %8 ], [ %16, %13 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call i32 @aim_callhandler(i32 noundef 0, i32 noundef 1, i16 noundef zeroext 0, i16 noundef zeroext 0)
  call void @exit(i32 noundef 0) #3
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
