; ModuleID = './divcmp-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/divcmp-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test1(i32 noundef %0) #0 {
  %.off = add i32 %0, -20
  %2 = icmp ult i32 %.off, 10
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test2(i32 noundef %0) #0 {
  %.off = add i32 %0, 9
  %2 = icmp ult i32 %.off, 19
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test3(i32 noundef %0) #0 {
  %.off = add i32 %0, 29
  %2 = icmp ult i32 %.off, 10
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test4(i32 noundef %0) #0 {
  %.off = add i32 %0, 29
  %2 = icmp ult i32 %.off, 10
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test5(i32 noundef %0) #0 {
  %.off = add i32 %0, 9
  %2 = icmp ult i32 %.off, 19
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test6(i32 noundef %0) #0 {
  %.off = add i32 %0, -20
  %2 = icmp ult i32 %.off, 10
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @test1(i32 noundef 19)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = call i32 @test1(i32 noundef 20)
  %.not1 = icmp eq i32 %4, 1
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = call i32 @test1(i32 noundef 29)
  %.not2 = icmp eq i32 %7, 1
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  %10 = call i32 @test1(i32 noundef 30)
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  %13 = call i32 @test2(i32 noundef -10)
  %.not4 = icmp eq i32 %13, 0
  br i1 %.not4, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  %16 = call i32 @test2(i32 noundef -9)
  %.not5 = icmp eq i32 %16, 1
  br i1 %.not5, label %18, label %17

17:                                               ; preds = %15
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  %19 = call i32 @test2(i32 noundef 9)
  %.not6 = icmp eq i32 %19, 1
  br i1 %.not6, label %21, label %20

20:                                               ; preds = %18
  call void @abort() #3
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %18
  %22 = call i32 @test2(i32 noundef 10)
  %.not7 = icmp eq i32 %22, 0
  br i1 %.not7, label %24, label %23

23:                                               ; preds = %21
  call void @abort() #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %21
  %25 = call i32 @test3(i32 noundef -30)
  %.not8 = icmp eq i32 %25, 0
  br i1 %.not8, label %27, label %26

26:                                               ; preds = %24
  call void @abort() #3
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %24
  %28 = call i32 @test3(i32 noundef -29)
  %.not9 = icmp eq i32 %28, 1
  br i1 %.not9, label %30, label %29

29:                                               ; preds = %27
  call void @abort() #3
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %27
  %31 = call i32 @test3(i32 noundef -20)
  %.not10 = icmp eq i32 %31, 1
  br i1 %.not10, label %33, label %32

32:                                               ; preds = %30
  call void @abort() #3
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %30
  %34 = call i32 @test3(i32 noundef -19)
  %.not11 = icmp eq i32 %34, 0
  br i1 %.not11, label %36, label %35

35:                                               ; preds = %33
  call void @abort() #3
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %33
  %37 = call i32 @test4(i32 noundef -30)
  %.not12 = icmp eq i32 %37, 0
  br i1 %.not12, label %39, label %38

38:                                               ; preds = %36
  call void @abort() #3
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %36
  %40 = call i32 @test4(i32 noundef -29)
  %.not13 = icmp eq i32 %40, 1
  br i1 %.not13, label %42, label %41

41:                                               ; preds = %39
  call void @abort() #3
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %39
  %43 = call i32 @test4(i32 noundef -20)
  %.not14 = icmp eq i32 %43, 1
  br i1 %.not14, label %45, label %44

44:                                               ; preds = %42
  call void @abort() #3
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %42
  %46 = call i32 @test4(i32 noundef -19)
  %.not15 = icmp eq i32 %46, 0
  br i1 %.not15, label %48, label %47

47:                                               ; preds = %45
  call void @abort() #3
  br label %UnifiedUnreachableBlock

48:                                               ; preds = %45
  %49 = call i32 @test5(i32 noundef -10)
  %.not16 = icmp eq i32 %49, 0
  br i1 %.not16, label %51, label %50

50:                                               ; preds = %48
  call void @abort() #3
  br label %UnifiedUnreachableBlock

51:                                               ; preds = %48
  %52 = call i32 @test5(i32 noundef -9)
  %.not17 = icmp eq i32 %52, 1
  br i1 %.not17, label %54, label %53

53:                                               ; preds = %51
  call void @abort() #3
  br label %UnifiedUnreachableBlock

54:                                               ; preds = %51
  %55 = call i32 @test5(i32 noundef 9)
  %.not18 = icmp eq i32 %55, 1
  br i1 %.not18, label %57, label %56

56:                                               ; preds = %54
  call void @abort() #3
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %54
  %58 = call i32 @test5(i32 noundef 10)
  %.not19 = icmp eq i32 %58, 0
  br i1 %.not19, label %60, label %59

59:                                               ; preds = %57
  call void @abort() #3
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %57
  %61 = call i32 @test6(i32 noundef 19)
  %.not20 = icmp eq i32 %61, 0
  br i1 %.not20, label %63, label %62

62:                                               ; preds = %60
  call void @abort() #3
  br label %UnifiedUnreachableBlock

63:                                               ; preds = %60
  %64 = call i32 @test6(i32 noundef 20)
  %.not21 = icmp eq i32 %64, 1
  br i1 %.not21, label %66, label %65

65:                                               ; preds = %63
  call void @abort() #3
  br label %UnifiedUnreachableBlock

66:                                               ; preds = %63
  %67 = call i32 @test6(i32 noundef 29)
  %.not22 = icmp eq i32 %67, 1
  br i1 %.not22, label %69, label %68

68:                                               ; preds = %66
  call void @abort() #3
  br label %UnifiedUnreachableBlock

69:                                               ; preds = %66
  %70 = call i32 @test6(i32 noundef 30)
  %.not23 = icmp eq i32 %70, 0
  br i1 %.not23, label %72, label %71

71:                                               ; preds = %69
  call void @abort() #3
  br label %UnifiedUnreachableBlock

72:                                               ; preds = %69
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5, %2
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
