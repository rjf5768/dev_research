; ModuleID = './20030408-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030408-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__const.test1.X = private unnamed_addr constant [8 x i8] c"ABCDEFGH", align 1
@__const.test2.X = private unnamed_addr constant [10 x i8] c"ABCDE\00\00\00\00\00", align 1
@__const.test3.X = private unnamed_addr constant %struct.foo { i8 65, i8 0, i8 67, i8 0, i8 69, i8 0, i8 71, i8 0, i8 73, i8 0 }, align 1
@__const.test4.X = private unnamed_addr constant %struct.foo { i8 0, i8 66, i8 0, i8 68, i8 0, i8 70, i8 0, i8 72, i8 0, i8 74 }, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1() #0 {
  br i1 false, label %8, label %1

1:                                                ; preds = %0
  br i1 false, label %8, label %2

2:                                                ; preds = %1
  br i1 false, label %8, label %3

3:                                                ; preds = %2
  br i1 false, label %8, label %4

4:                                                ; preds = %3
  br i1 false, label %8, label %5

5:                                                ; preds = %4
  br i1 false, label %8, label %6

6:                                                ; preds = %5
  br i1 false, label %8, label %7

7:                                                ; preds = %6
  br i1 false, label %8, label %9

8:                                                ; preds = %7, %6, %5, %4, %3, %2, %1, %0
  unreachable

9:                                                ; preds = %7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2() #0 {
  br i1 false, label %10, label %1

1:                                                ; preds = %0
  br i1 false, label %10, label %2

2:                                                ; preds = %1
  br i1 false, label %10, label %3

3:                                                ; preds = %2
  br i1 false, label %10, label %4

4:                                                ; preds = %3
  br i1 false, label %10, label %5

5:                                                ; preds = %4
  br i1 false, label %10, label %6

6:                                                ; preds = %5
  br i1 false, label %10, label %7

7:                                                ; preds = %6
  br i1 false, label %10, label %8

8:                                                ; preds = %7
  br i1 false, label %10, label %9

9:                                                ; preds = %8
  br i1 false, label %10, label %11

10:                                               ; preds = %9, %8, %7, %6, %5, %4, %3, %2, %1, %0
  unreachable

11:                                               ; preds = %9
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test3() #0 {
  br i1 false, label %10, label %1

1:                                                ; preds = %0
  br i1 false, label %10, label %2

2:                                                ; preds = %1
  br i1 false, label %10, label %3

3:                                                ; preds = %2
  br i1 false, label %10, label %4

4:                                                ; preds = %3
  br i1 false, label %10, label %5

5:                                                ; preds = %4
  br i1 false, label %10, label %6

6:                                                ; preds = %5
  br i1 false, label %10, label %7

7:                                                ; preds = %6
  br i1 false, label %10, label %8

8:                                                ; preds = %7
  br i1 false, label %10, label %9

9:                                                ; preds = %8
  br i1 false, label %10, label %11

10:                                               ; preds = %9, %8, %7, %6, %5, %4, %3, %2, %1, %0
  unreachable

11:                                               ; preds = %9
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test4() #0 {
  br i1 false, label %10, label %1

1:                                                ; preds = %0
  br i1 false, label %10, label %2

2:                                                ; preds = %1
  br i1 false, label %10, label %3

3:                                                ; preds = %2
  br i1 false, label %10, label %4

4:                                                ; preds = %3
  br i1 false, label %10, label %5

5:                                                ; preds = %4
  br i1 false, label %10, label %6

6:                                                ; preds = %5
  br i1 false, label %10, label %7

7:                                                ; preds = %6
  br i1 false, label %10, label %8

8:                                                ; preds = %7
  br i1 false, label %10, label %9

9:                                                ; preds = %8
  br i1 false, label %10, label %11

10:                                               ; preds = %9, %8, %7, %6, %5, %4, %3, %2, %1, %0
  unreachable

11:                                               ; preds = %9
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @test1()
  %2 = call i32 @test2()
  %3 = call i32 @test3()
  %4 = call i32 @test4()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
