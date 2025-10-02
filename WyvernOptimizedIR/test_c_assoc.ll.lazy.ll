; ModuleID = './test_c_assoc.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/test_c_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @test_c_assoc_0(i8* noundef null) #3
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %2
  call void @abort() #4
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %2
  %8 = bitcast i32* %3 to i8*
  %9 = call i32 @test_c_assoc_0(i8* noundef nonnull %8) #3
  %.not1 = icmp eq i32 %9, 1
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %7
  call void @abort() #4
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %7
  %12 = call i32 @test_c_assoc_1(i8* noundef null, i8* noundef null) #3
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %14, label %13

13:                                               ; preds = %11
  call void @abort() #4
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  %15 = bitcast i32* %3 to i8*
  %16 = call i32 @test_c_assoc_1(i8* noundef null, i8* noundef nonnull %15) #3
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %18, label %17

17:                                               ; preds = %14
  call void @abort() #4
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %14
  %19 = bitcast i32* %3 to i8*
  %20 = bitcast i32* %3 to i8*
  %21 = call i32 @test_c_assoc_1(i8* noundef nonnull %19, i8* noundef nonnull %20) #3
  %.not4 = icmp eq i32 %21, 1
  br i1 %.not4, label %23, label %22

22:                                               ; preds = %18
  call void @abort() #4
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %18
  %24 = bitcast i32* %3 to i8*
  %25 = call i32 @test_c_assoc_1(i8* noundef nonnull %24, i8* noundef null) #3
  %.not5 = icmp eq i32 %25, 0
  br i1 %.not5, label %27, label %26

26:                                               ; preds = %23
  call void @abort() #4
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %23
  %28 = bitcast i32* %3 to i8*
  %29 = bitcast i32* %4 to i8*
  %30 = call i32 @test_c_assoc_1(i8* noundef nonnull %28, i8* noundef nonnull %29) #3
  %.not6 = icmp eq i32 %30, 0
  br i1 %.not6, label %32, label %31

31:                                               ; preds = %27
  call void @abort() #4
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %27
  %33 = bitcast i32* %3 to i8*
  %34 = call i32 @test_c_assoc_2(i8* noundef nonnull %33, i8* noundef null, i32 noundef 1) #3
  %.not7 = icmp eq i32 %34, 1
  br i1 %.not7, label %36, label %35

35:                                               ; preds = %32
  call void @abort() #4
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %32
  %37 = bitcast i32* %3 to i8*
  %38 = bitcast i32* %3 to i8*
  %39 = call i32 @test_c_assoc_2(i8* noundef nonnull %37, i8* noundef nonnull %38, i32 noundef 2) #3
  %.not8 = icmp eq i32 %39, 1
  br i1 %.not8, label %41, label %40

40:                                               ; preds = %36
  call void @abort() #4
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %36
  %42 = bitcast i32* %3 to i8*
  %43 = bitcast i32* %4 to i8*
  %44 = call i32 @test_c_assoc_2(i8* noundef nonnull %42, i8* noundef nonnull %43, i32 noundef 2) #3
  %.not9 = icmp eq i32 %44, 0
  br i1 %.not9, label %46, label %45

45:                                               ; preds = %41
  call void @abort() #4
  br label %UnifiedUnreachableBlock

46:                                               ; preds = %41
  %47 = bitcast i32* %3 to i8*
  %48 = bitcast i32* %4 to i8*
  %49 = call i32 @test_c_assoc_2(i8* noundef nonnull %47, i8* noundef nonnull %48, i32 noundef 1) #3
  %.not10 = icmp eq i32 %49, 1
  br i1 %.not10, label %51, label %50

50:                                               ; preds = %46
  call void @abort() #4
  br label %UnifiedUnreachableBlock

51:                                               ; preds = %46
  %52 = bitcast i32* %3 to i8*
  %53 = bitcast i32* %3 to i8*
  call void @verify_assoc(i8* noundef nonnull %52, i8* noundef nonnull %53) #3
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %50, %45, %40, %35, %31, %26, %22, %17, %13, %10, %6
  unreachable
}

declare dso_local i32 @test_c_assoc_0(i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

declare dso_local i32 @test_c_assoc_1(i8* noundef, i8* noundef) #1

declare dso_local i32 @test_c_assoc_2(i8* noundef, i8* noundef, i32 noundef) #1

declare dso_local void @verify_assoc(i8* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
