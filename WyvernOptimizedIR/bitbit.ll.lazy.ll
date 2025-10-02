; ModuleID = './bitbit.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/bitbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"i_result = %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fail\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@str.1 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@str.2 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@str.3 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@str.4 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@str.5 = private unnamed_addr constant [3 x i8] c"ok\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_test() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef -2097152) #3
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1048576) #3
  br i1 true, label %3, label %4

3:                                                ; preds = %0
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @str, i64 0, i64 0))
  br label %5

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %4, %3
  br i1 true, label %6, label %7

6:                                                ; preds = %5
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @str.1, i64 0, i64 0))
  br label %8

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7, %6
  br i1 true, label %9, label %10

9:                                                ; preds = %8
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @str.2, i64 0, i64 0))
  br label %11

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %9
  br i1 true, label %12, label %13

12:                                               ; preds = %11
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @str.3, i64 0, i64 0))
  br label %14

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %12
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1) #3
  br i1 false, label %16, label %17

16:                                               ; preds = %14
  br label %18

17:                                               ; preds = %14
  %puts4 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @str.4, i64 0, i64 0))
  br label %18

18:                                               ; preds = %17, %16
  br i1 false, label %19, label %20

19:                                               ; preds = %18
  br label %21

20:                                               ; preds = %18
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @str.5, i64 0, i64 0))
  br label %21

21:                                               ; preds = %20, %19
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
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
