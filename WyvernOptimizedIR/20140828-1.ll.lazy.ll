; ModuleID = './20140828-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20140828-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local nonnull i16* @f(i16* noundef readonly %0, i32 noundef %1, i32* nocapture noundef writeonly %2) #0 {
  %4 = load i16, i16* %0, align 2
  %5 = getelementptr inbounds i16, i16* %0, i64 1
  %6 = zext i16 %4 to i32
  %7 = shl i32 %1, %6
  %sext = shl i32 %7, 16
  %8 = ashr exact i32 %sext, 16
  store i32 %8, i32* %2, align 4
  ret i16* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i16], align 2
  %3 = getelementptr inbounds [2 x i16], [2 x i16]* %2, i64 0, i64 0
  store i16 0, i16* %3, align 2
  %4 = getelementptr inbounds [2 x i16], [2 x i16]* %2, i64 0, i64 0
  %5 = call i16* @f(i16* noundef nonnull %4, i32 noundef 1, i32* noundef nonnull %1)
  %6 = getelementptr inbounds [2 x i16], [2 x i16]* %2, i64 0, i64 1
  %.not = icmp eq i16* %5, %6
  br i1 %.not, label %8, label %7

7:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %.not1 = icmp eq i32 %9, 1
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %10, %7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
