; ModuleID = './991216-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991216-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1(i32 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %4, label %6

4:                                                ; preds = %3
  %.not1 = icmp eq i64 %1, 81985529216486895
  br i1 %.not1, label %5, label %6

5:                                                ; preds = %4
  %.not2 = icmp eq i32 %2, 85
  br i1 %.not2, label %7, label %6

6:                                                ; preds = %5, %4, %3
  call void @abort() #3
  unreachable

7:                                                ; preds = %5
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2(i32 noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %5, label %8

5:                                                ; preds = %4
  %.not1 = icmp eq i32 %1, 2
  br i1 %.not1, label %6, label %8

6:                                                ; preds = %5
  %.not2 = icmp eq i64 %2, 81985529216486895
  br i1 %.not2, label %7, label %8

7:                                                ; preds = %6
  %.not3 = icmp eq i32 %3, 85
  br i1 %.not3, label %9, label %8

8:                                                ; preds = %7, %6, %5, %4
  call void @abort() #3
  unreachable

9:                                                ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) #0 {
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %6, label %10

6:                                                ; preds = %5
  %.not1 = icmp eq i32 %1, 2
  br i1 %.not1, label %7, label %10

7:                                                ; preds = %6
  %.not2 = icmp eq i32 %2, 3
  br i1 %.not2, label %8, label %10

8:                                                ; preds = %7
  %.not3 = icmp eq i64 %3, 81985529216486895
  br i1 %.not3, label %9, label %10

9:                                                ; preds = %8
  %.not4 = icmp eq i32 %4, 85
  br i1 %.not4, label %11, label %10

10:                                               ; preds = %9, %8, %7, %6, %5
  call void @abort() #3
  unreachable

11:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %7, label %12

7:                                                ; preds = %6
  %.not1 = icmp eq i32 %1, 2
  br i1 %.not1, label %8, label %12

8:                                                ; preds = %7
  %.not2 = icmp eq i32 %2, 3
  br i1 %.not2, label %9, label %12

9:                                                ; preds = %8
  %.not3 = icmp eq i32 %3, 4
  br i1 %.not3, label %10, label %12

10:                                               ; preds = %9
  %.not4 = icmp eq i64 %4, 81985529216486895
  br i1 %.not4, label %11, label %12

11:                                               ; preds = %10
  %.not5 = icmp eq i32 %5, 85
  br i1 %.not5, label %13, label %12

12:                                               ; preds = %11, %10, %9, %8, %7, %6
  call void @abort() #3
  unreachable

13:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test5(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6) #0 {
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %8, label %14

8:                                                ; preds = %7
  %.not1 = icmp eq i32 %1, 2
  br i1 %.not1, label %9, label %14

9:                                                ; preds = %8
  %.not2 = icmp eq i32 %2, 3
  br i1 %.not2, label %10, label %14

10:                                               ; preds = %9
  %.not3 = icmp eq i32 %3, 4
  br i1 %.not3, label %11, label %14

11:                                               ; preds = %10
  %.not4 = icmp eq i32 %4, 5
  br i1 %.not4, label %12, label %14

12:                                               ; preds = %11
  %.not5 = icmp eq i64 %5, 81985529216486895
  br i1 %.not5, label %13, label %14

13:                                               ; preds = %12
  %.not6 = icmp eq i32 %6, 85
  br i1 %.not6, label %15, label %14

14:                                               ; preds = %13, %12, %11, %10, %9, %8, %7
  call void @abort() #3
  unreachable

15:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test6(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i32 noundef %7) #0 {
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %9, label %16

9:                                                ; preds = %8
  %.not1 = icmp eq i32 %1, 2
  br i1 %.not1, label %10, label %16

10:                                               ; preds = %9
  %.not2 = icmp eq i32 %2, 3
  br i1 %.not2, label %11, label %16

11:                                               ; preds = %10
  %.not3 = icmp eq i32 %3, 4
  br i1 %.not3, label %12, label %16

12:                                               ; preds = %11
  %.not4 = icmp eq i32 %4, 5
  br i1 %.not4, label %13, label %16

13:                                               ; preds = %12
  %.not5 = icmp eq i32 %5, 6
  br i1 %.not5, label %14, label %16

14:                                               ; preds = %13
  %.not6 = icmp eq i64 %6, 81985529216486895
  br i1 %.not6, label %15, label %16

15:                                               ; preds = %14
  %.not7 = icmp eq i32 %7, 85
  br i1 %.not7, label %17, label %16

16:                                               ; preds = %15, %14, %13, %12, %11, %10, %9, %8
  call void @abort() #3
  unreachable

17:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test7(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 noundef %7, i32 noundef %8) #0 {
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %10, label %18

10:                                               ; preds = %9
  %.not1 = icmp eq i32 %1, 2
  br i1 %.not1, label %11, label %18

11:                                               ; preds = %10
  %.not2 = icmp eq i32 %2, 3
  br i1 %.not2, label %12, label %18

12:                                               ; preds = %11
  %.not3 = icmp eq i32 %3, 4
  br i1 %.not3, label %13, label %18

13:                                               ; preds = %12
  %.not4 = icmp eq i32 %4, 5
  br i1 %.not4, label %14, label %18

14:                                               ; preds = %13
  %.not5 = icmp eq i32 %5, 6
  br i1 %.not5, label %15, label %18

15:                                               ; preds = %14
  %.not6 = icmp eq i32 %6, 7
  br i1 %.not6, label %16, label %18

16:                                               ; preds = %15
  %.not7 = icmp eq i64 %7, 81985529216486895
  br i1 %.not7, label %17, label %18

17:                                               ; preds = %16
  %.not8 = icmp eq i32 %8, 85
  br i1 %.not8, label %19, label %18

18:                                               ; preds = %17, %16, %15, %14, %13, %12, %11, %10, %9
  call void @abort() #3
  unreachable

19:                                               ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8, i32 noundef %9) #0 {
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %11, label %20

11:                                               ; preds = %10
  %.not1 = icmp eq i32 %1, 2
  br i1 %.not1, label %12, label %20

12:                                               ; preds = %11
  %.not2 = icmp eq i32 %2, 3
  br i1 %.not2, label %13, label %20

13:                                               ; preds = %12
  %.not3 = icmp eq i32 %3, 4
  br i1 %.not3, label %14, label %20

14:                                               ; preds = %13
  %.not4 = icmp eq i32 %4, 5
  br i1 %.not4, label %15, label %20

15:                                               ; preds = %14
  %.not5 = icmp eq i32 %5, 6
  br i1 %.not5, label %16, label %20

16:                                               ; preds = %15
  %.not6 = icmp eq i32 %6, 7
  br i1 %.not6, label %17, label %20

17:                                               ; preds = %16
  %.not7 = icmp eq i32 %7, 8
  br i1 %.not7, label %18, label %20

18:                                               ; preds = %17
  %.not8 = icmp eq i64 %8, 81985529216486895
  br i1 %.not8, label %19, label %20

19:                                               ; preds = %18
  %.not9 = icmp eq i32 %9, 85
  br i1 %.not9, label %21, label %20

20:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  call void @abort() #3
  unreachable

21:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  call void @test1(i32 noundef 1, i64 noundef 81985529216486895, i32 noundef 85)
  call void @test2(i32 noundef 1, i32 noundef 2, i64 noundef 81985529216486895, i32 noundef 85)
  call void @test3(i32 noundef 1, i32 noundef 2, i32 noundef 3, i64 noundef 81985529216486895, i32 noundef 85)
  call void @test4(i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i64 noundef 81985529216486895, i32 noundef 85)
  call void @test5(i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i64 noundef 81985529216486895, i32 noundef 85)
  call void @test6(i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i64 noundef 81985529216486895, i32 noundef 85)
  call void @test7(i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i64 noundef 81985529216486895, i32 noundef 85)
  call void @test8(i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i64 noundef 81985529216486895, i32 noundef 85)
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
