; ModuleID = './array.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"i=%u: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_test() #0 {
  %1 = alloca [8 x i32], align 16
  br label %2

2:                                                ; preds = %5, %0
  %.0 = phi i32 [ 0, %0 ], [ %14, %5 ]
  %3 = icmp ult i32 %.0, 8
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  br label %15

5:                                                ; preds = %2
  %6 = xor i32 %.0, -1
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 %7
  store i32 %6, i32* %8, align 4
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef %.0, i64 noundef %12) #2
  %14 = add i32 %.0, 1
  br label %2

15:                                               ; preds = %4
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 7
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %20 = load i32, i32* %19, align 16
  %21 = srem i32 %18, %20
  store i32 %21, i32* %16, align 4
  %22 = sext i32 %21 to i64
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 noundef %22) #2
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @my_test()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
