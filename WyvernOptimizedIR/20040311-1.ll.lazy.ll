; ModuleID = './20040311-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040311-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test1(i32 noundef %0) #0 {
  %.neg = lshr i32 %0, 31
  ret i32 %.neg
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test2(i32 noundef %0) #0 {
  %.neg = ashr i32 %0, 31
  ret i32 %.neg
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test3(i32 noundef %0) #0 {
  %.neg = lshr i32 %0, 31
  ret i32 %.neg
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test4(i32 noundef %0) #0 {
  %.neg = ashr i32 %0, 31
  ret i32 %.neg
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @test1(i32 noundef 0)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = call i32 @test1(i32 noundef 1)
  %.not1 = icmp eq i32 %4, 0
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = call i32 @test1(i32 noundef -1)
  %.not2 = icmp eq i32 %7, 1
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  %10 = call i32 @test2(i32 noundef 0)
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  %13 = call i32 @test2(i32 noundef 1)
  %.not4 = icmp eq i32 %13, 0
  br i1 %.not4, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  %16 = call i32 @test2(i32 noundef -1)
  %.not5 = icmp eq i32 %16, -1
  br i1 %.not5, label %18, label %17

17:                                               ; preds = %15
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  %19 = call i32 @test3(i32 noundef 0)
  %.not6 = icmp eq i32 %19, 0
  br i1 %.not6, label %21, label %20

20:                                               ; preds = %18
  call void @abort() #3
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %18
  %22 = call i32 @test3(i32 noundef 1)
  %.not7 = icmp eq i32 %22, 0
  br i1 %.not7, label %24, label %23

23:                                               ; preds = %21
  call void @abort() #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %21
  %25 = call i32 @test3(i32 noundef -1)
  %.not8 = icmp eq i32 %25, 1
  br i1 %.not8, label %27, label %26

26:                                               ; preds = %24
  call void @abort() #3
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %24
  %28 = call i32 @test4(i32 noundef 0)
  %.not9 = icmp eq i32 %28, 0
  br i1 %.not9, label %30, label %29

29:                                               ; preds = %27
  call void @abort() #3
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %27
  %31 = call i32 @test4(i32 noundef 1)
  %.not10 = icmp eq i32 %31, 0
  br i1 %.not10, label %33, label %32

32:                                               ; preds = %30
  call void @abort() #3
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %30
  %34 = call i32 @test4(i32 noundef -1)
  %.not11 = icmp eq i32 %34, -1
  br i1 %.not11, label %36, label %35

35:                                               ; preds = %33
  call void @abort() #3
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %33
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5, %2
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
