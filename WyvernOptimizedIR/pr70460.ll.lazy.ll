; ModuleID = './pr70460.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70460.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@foo.b = internal global [2 x i32] [i32 trunc (i64 sub (i64 ptrtoint (i8* blockaddress(@foo, %2) to i64), i64 ptrtoint (i8* blockaddress(@foo, %8) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (i8* blockaddress(@foo, %5) to i64), i64 ptrtoint (i8* blockaddress(@foo, %8) to i64)) to i32)], align 4
@c = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @foo(i32 noundef %0) #0 {
  br label %9

2:                                                ; preds = %9
  %3 = load i32, i32* @c, align 4
  %4 = add nsw i32 %3, 2
  store i32 %4, i32* @c, align 4
  br label %5

5:                                                ; preds = %9, %2
  %6 = load i32, i32* @c, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @c, align 4
  br label %8

8:                                                ; preds = %9, %9, %9, %5
  ret void

9:                                                ; preds = %1
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* @foo.b, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr i8, i8* blockaddress(@foo, %8), i64 %13
  indirectbr i8* %14, [label %2, label %8, label %5, label %8, label %8]
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @foo(i32 noundef 0)
  %1 = load i32, i32* @c, align 4
  %.not = icmp eq i32 %1, 3
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  call void @foo(i32 noundef 1)
  %4 = load i32, i32* @c, align 4
  %.not1 = icmp eq i32 %4, 4
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %5, %2
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
