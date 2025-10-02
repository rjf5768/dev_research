; ModuleID = './20000715-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000715-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 0, align 4
@y = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  br i1 false, label %1, label %2

1:                                                ; preds = %0
  br label %3

2:                                                ; preds = %0
  br label %3

3:                                                ; preds = %2, %1
  br i1 true, label %5, label %4

4:                                                ; preds = %3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  br i1 false, label %6, label %7

6:                                                ; preds = %5
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  br i1 true, label %9, label %8

8:                                                ; preds = %7
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  ret void

UnifiedUnreachableBlock:                          ; preds = %8, %6, %4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  br i1 false, label %1, label %2

1:                                                ; preds = %0
  br label %3

2:                                                ; preds = %0
  br label %3

3:                                                ; preds = %2, %1
  br i1 true, label %5, label %4

4:                                                ; preds = %3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  br i1 false, label %6, label %7

6:                                                ; preds = %5
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  br i1 true, label %9, label %8

8:                                                ; preds = %7
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  ret void

UnifiedUnreachableBlock:                          ; preds = %8, %6, %4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
  br i1 false, label %1, label %2

1:                                                ; preds = %0
  br label %3

2:                                                ; preds = %0
  br label %3

3:                                                ; preds = %2, %1
  br i1 true, label %5, label %4

4:                                                ; preds = %3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  br i1 false, label %6, label %7

6:                                                ; preds = %5
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  br i1 true, label %9, label %8

8:                                                ; preds = %7
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  ret void

UnifiedUnreachableBlock:                          ; preds = %8, %6, %4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test4() #0 {
  call void @init_xy()
  %1 = load i32, i32* @x, align 4
  %2 = load i32, i32* @y, align 4
  %3 = icmp slt i32 %1, %2
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @x, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @x, align 4
  br label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @y, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @y, align 4
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi i32 [ %5, %4 ], [ %8, %7 ]
  %.not = icmp eq i32 %11, 2
  br i1 %.not, label %13, label %12

12:                                               ; preds = %10
  call void @abort() #4
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %10
  %14 = load i32, i32* @x, align 4
  %.not1 = icmp eq i32 %14, 3
  br i1 %.not1, label %16, label %15

15:                                               ; preds = %13
  call void @abort() #4
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %13
  %17 = load i32, i32* @y, align 4
  %.not2 = icmp eq i32 %17, 3
  br i1 %.not2, label %19, label %18

18:                                               ; preds = %16
  call void @abort() #4
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %16
  ret void

UnifiedUnreachableBlock:                          ; preds = %18, %15, %12
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @init_xy() #2 {
  store i32 3, i32* @x, align 4
  store i32 2, i32* @y, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test5() #0 {
  call void @init_xy()
  %1 = load i32, i32* @x, align 4
  %2 = load i32, i32* @y, align 4
  %3 = icmp slt i32 %1, %2
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @x, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @x, align 4
  br label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @y, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @y, align 4
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi i32 [ %5, %4 ], [ %8, %7 ]
  %.not = icmp eq i32 %11, 2
  br i1 %.not, label %13, label %12

12:                                               ; preds = %10
  call void @abort() #4
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %10
  %14 = load i32, i32* @x, align 4
  %.not1 = icmp eq i32 %14, 3
  br i1 %.not1, label %16, label %15

15:                                               ; preds = %13
  call void @abort() #4
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %13
  %17 = load i32, i32* @y, align 4
  %.not2 = icmp eq i32 %17, 3
  br i1 %.not2, label %19, label %18

18:                                               ; preds = %16
  call void @abort() #4
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %16
  ret void

UnifiedUnreachableBlock:                          ; preds = %18, %15, %12
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test6() #0 {
  call void @init_xy()
  %1 = load i32, i32* @y, align 4
  %2 = icmp sgt i32 %1, 3
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @x, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @x, align 4
  br label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @y, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @y, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ %4, %3 ], [ %7, %6 ]
  %.not = icmp eq i32 %10, 2
  br i1 %.not, label %12, label %11

11:                                               ; preds = %9
  call void @abort() #4
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  %13 = load i32, i32* @x, align 4
  %.not1 = icmp eq i32 %13, 3
  br i1 %.not1, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #4
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  %16 = load i32, i32* @y, align 4
  %.not2 = icmp eq i32 %16, 3
  br i1 %.not2, label %18, label %17

17:                                               ; preds = %15
  call void @abort() #4
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  ret void

UnifiedUnreachableBlock:                          ; preds = %17, %14, %11
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  call void @test1()
  call void @test2()
  call void @test3()
  call void @test4()
  call void @test5()
  call void @test6()
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
