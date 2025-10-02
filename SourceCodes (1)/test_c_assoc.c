; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/test_c_assoc.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/test_c_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 @test_c_assoc_0(i8* noundef null)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @abort() #3
  unreachable

11:                                               ; preds = %2
  %12 = bitcast i32* %6 to i8*
  %13 = call i32 @test_c_assoc_0(i8* noundef %12)
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  call void @abort() #3
  unreachable

16:                                               ; preds = %11
  %17 = call i32 @test_c_assoc_1(i8* noundef null, i8* noundef null)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @abort() #3
  unreachable

20:                                               ; preds = %16
  %21 = bitcast i32* %6 to i8*
  %22 = call i32 @test_c_assoc_1(i8* noundef null, i8* noundef %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  call void @abort() #3
  unreachable

25:                                               ; preds = %20
  %26 = bitcast i32* %6 to i8*
  %27 = bitcast i32* %6 to i8*
  %28 = call i32 @test_c_assoc_1(i8* noundef %26, i8* noundef %27)
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call void @abort() #3
  unreachable

31:                                               ; preds = %25
  %32 = bitcast i32* %6 to i8*
  %33 = call i32 @test_c_assoc_1(i8* noundef %32, i8* noundef null)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  call void @abort() #3
  unreachable

36:                                               ; preds = %31
  %37 = bitcast i32* %6 to i8*
  %38 = bitcast i32* %7 to i8*
  %39 = call i32 @test_c_assoc_1(i8* noundef %37, i8* noundef %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  call void @abort() #3
  unreachable

42:                                               ; preds = %36
  %43 = bitcast i32* %6 to i8*
  %44 = call i32 @test_c_assoc_2(i8* noundef %43, i8* noundef null, i32 noundef 1)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  call void @abort() #3
  unreachable

47:                                               ; preds = %42
  %48 = bitcast i32* %6 to i8*
  %49 = bitcast i32* %6 to i8*
  %50 = call i32 @test_c_assoc_2(i8* noundef %48, i8* noundef %49, i32 noundef 2)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  call void @abort() #3
  unreachable

53:                                               ; preds = %47
  %54 = bitcast i32* %6 to i8*
  %55 = bitcast i32* %7 to i8*
  %56 = call i32 @test_c_assoc_2(i8* noundef %54, i8* noundef %55, i32 noundef 2)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  call void @abort() #3
  unreachable

59:                                               ; preds = %53
  %60 = bitcast i32* %6 to i8*
  %61 = bitcast i32* %7 to i8*
  %62 = call i32 @test_c_assoc_2(i8* noundef %60, i8* noundef %61, i32 noundef 1)
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  call void @abort() #3
  unreachable

65:                                               ; preds = %59
  %66 = bitcast i32* %6 to i8*
  %67 = bitcast i32* %6 to i8*
  call void @verify_assoc(i8* noundef %66, i8* noundef %67)
  ret i32 0
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
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
