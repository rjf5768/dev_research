; ModuleID = './folding.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/folding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@myConst = dso_local constant i32 1, align 4
@myConst2 = dso_local constant i32 32767, align 4
@.str = private unnamed_addr constant [24 x i8] c"error1: x = %d, y = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"error2: x = %d, y = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"error3: x = %d, y = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"error4: x = %d, y = %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br i1 false, label %1, label %2

1:                                                ; preds = %0
  br label %2

2:                                                ; preds = %1, %0
  br i1 true, label %3, label %5

3:                                                ; preds = %2
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 128, i32 noundef 9) #2
  br label %5

5:                                                ; preds = %3, %2
  br i1 false, label %6, label %7

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %6, %5
  br i1 true, label %8, label %10

8:                                                ; preds = %7
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 noundef 128, i32 noundef 9) #2
  br label %10

10:                                               ; preds = %8, %7
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
