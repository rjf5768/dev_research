; ModuleID = './20000818-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000818-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@temporary_obstack = dso_local global i8* null, align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @yylex()
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @yylex() #1 {
  br label %1

1:                                                ; preds = %8, %0
  %2 = call i32 @input()
  %3 = call i32 @ISALNUM(i32 noundef %2)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  br label %8

5:                                                ; preds = %1
  %.not1 = icmp eq i32 %2, 95
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %5
  br label %9

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7, %4
  br label %1

9:                                                ; preds = %6
  ret i32 %2
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @input() #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ISALNUM(i32 noundef %0) #3 {
  %2 = icmp sgt i32 %0, 64
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 91
  br i1 %4, label %15, label %5

5:                                                ; preds = %3, %1
  %6 = icmp sgt i32 %0, 96
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = icmp slt i32 %0, 123
  br i1 %8, label %15, label %9

9:                                                ; preds = %7, %5
  %10 = icmp sgt i32 %0, 47
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = icmp eq i32 %0, 48
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i1 [ false, %9 ], [ %12, %11 ]
  br label %15

15:                                               ; preds = %13, %7, %3
  %16 = phi i1 [ true, %7 ], [ true, %3 ], [ %14, %13 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @obstack_1grow(i8** nocapture noundef %0, i32 noundef %1) #3 {
  ret void
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
