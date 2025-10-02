; ModuleID = './bitlogic.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/bitlogic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fail\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@str.1 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@str.2 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@str.3 = private unnamed_addr constant [3 x i8] c"ok\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_test() #0 {
  br i1 false, label %2, label %1

1:                                                ; preds = %0
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @str, i64 0, i64 0))
  br label %3

2:                                                ; preds = %0
  br label %3

3:                                                ; preds = %2, %1
  br i1 false, label %4, label %5

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @str.1, i64 0, i64 0))
  br label %6

6:                                                ; preds = %5, %4
  br i1 false, label %7, label %8

7:                                                ; preds = %6
  br label %9

8:                                                ; preds = %6
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @str.2, i64 0, i64 0))
  br label %9

9:                                                ; preds = %8, %7
  br i1 true, label %10, label %11

10:                                               ; preds = %9
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @str.3, i64 0, i64 0))
  br label %12

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %11, %10
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @my_test()
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
