; ModuleID = './20041019-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041019-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test_store_ccp(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = icmp slt i32 %0, 5
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %12

7:                                                ; preds = %1
  %8 = icmp sgt i32 %0, 8
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %11

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %9
  %.0 = phi i32* [ %3, %9 ], [ %4, %10 ]
  br label %12

12:                                               ; preds = %11, %6
  %.1 = phi i32* [ %2, %6 ], [ %.0, %11 ]
  store i32 10, i32* %.1, align 4
  store i32 3, i32* %3, align 4
  %13 = load i32, i32* %.1, align 4
  %14 = add nsw i32 %13, 2
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test_store_copy_prop(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = icmp slt i32 %0, 5
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %12

7:                                                ; preds = %1
  %8 = icmp sgt i32 %0, 8
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %11

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %9
  %.0 = phi i32* [ %3, %9 ], [ %4, %10 ]
  br label %12

12:                                               ; preds = %11, %6
  %.1 = phi i32* [ %2, %6 ], [ %.0, %11 ]
  store i32 %0, i32* %.1, align 4
  %13 = add nsw i32 %0, 1
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %.1, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @test_store_ccp(i32 noundef 10)
  %2 = icmp eq i32 %1, 12
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = call i32 @test_store_copy_prop(i32 noundef 9)
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  call void @abort() #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %7, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
