; ModuleID = './bind_c-3_1.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/bind_c-3_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myctype_t = type { i32, i16, i64, i64, i64, i8, i16, i32, i64, i8, i16, i32, i64, i8, i64, i64, i64, i64, i64 }

@myVar = external dso_local global %struct.myctype_t, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = call %struct.myctype_t* asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(%struct.myctype_t* nonnull @myVar) #3, !srcloc !4
  %4 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 0
  store i32 1, i32* %4, align 8
  call void @types_test1() #4
  %5 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %.not = icmp eq i32 %6, 2
  br i1 %.not, label %8, label %7

7:                                                ; preds = %2
  call void @abort() #5
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 1
  store i16 1, i16* %9, align 4
  call void @types_test2() #4
  %10 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 1
  %11 = load i16, i16* %10, align 4
  %.not1 = icmp eq i16 %11, 2
  br i1 %.not1, label %13, label %12

12:                                               ; preds = %8
  call void @abort() #5
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 2
  store i64 1, i64* %14, align 8
  call void @types_test3() #4
  %15 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 2
  %16 = load i64, i64* %15, align 8
  %.not2 = icmp eq i64 %16, 2
  br i1 %.not2, label %18, label %17

17:                                               ; preds = %13
  call void @abort() #5
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 3
  store i64 1, i64* %19, align 8
  call void @types_test4() #4
  %20 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 3
  %21 = load i64, i64* %20, align 8
  %.not3 = icmp eq i64 %21, 2
  br i1 %.not3, label %23, label %22

22:                                               ; preds = %18
  call void @abort() #5
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 4
  store i64 1, i64* %24, align 8
  call void @types_test5() #4
  %25 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 4
  %26 = load i64, i64* %25, align 8
  %.not4 = icmp eq i64 %26, 2
  br i1 %.not4, label %28, label %27

27:                                               ; preds = %23
  call void @abort() #5
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 5
  store i8 1, i8* %29, align 8
  call void @types_test6() #4
  %30 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 5
  %31 = load i8, i8* %30, align 8
  %.not5 = icmp eq i8 %31, 2
  br i1 %.not5, label %33, label %32

32:                                               ; preds = %28
  call void @abort() #5
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 6
  store i16 1, i16* %34, align 2
  call void @types_test7() #4
  %35 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 6
  %36 = load i16, i16* %35, align 2
  %.not6 = icmp eq i16 %36, 2
  br i1 %.not6, label %38, label %37

37:                                               ; preds = %33
  call void @abort() #5
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 7
  store i32 1, i32* %39, align 4
  call void @types_test8() #4
  %40 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 7
  %41 = load i32, i32* %40, align 4
  %.not7 = icmp eq i32 %41, 2
  br i1 %.not7, label %43, label %42

42:                                               ; preds = %38
  call void @abort() #5
  br label %UnifiedUnreachableBlock

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 8
  store i64 1, i64* %44, align 8
  call void @types_test9() #4
  %45 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 8
  %46 = load i64, i64* %45, align 8
  %.not8 = icmp eq i64 %46, 2
  br i1 %.not8, label %48, label %47

47:                                               ; preds = %43
  call void @abort() #5
  br label %UnifiedUnreachableBlock

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 9
  store i8 1, i8* %49, align 8
  call void @types_test10() #4
  %50 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 9
  %51 = load i8, i8* %50, align 8
  %.not9 = icmp eq i8 %51, 2
  br i1 %.not9, label %53, label %52

52:                                               ; preds = %48
  call void @abort() #5
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 10
  store i16 1, i16* %54, align 2
  call void @types_test11() #4
  %55 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 10
  %56 = load i16, i16* %55, align 2
  %.not10 = icmp eq i16 %56, 2
  br i1 %.not10, label %58, label %57

57:                                               ; preds = %53
  call void @abort() #5
  br label %UnifiedUnreachableBlock

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 11
  store i32 1, i32* %59, align 4
  call void @types_test12() #4
  %60 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 11
  %61 = load i32, i32* %60, align 4
  %.not11 = icmp eq i32 %61, 2
  br i1 %.not11, label %63, label %62

62:                                               ; preds = %58
  call void @abort() #5
  br label %UnifiedUnreachableBlock

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 12
  store i64 1, i64* %64, align 8
  call void @types_test13() #4
  %65 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 12
  %66 = load i64, i64* %65, align 8
  %.not12 = icmp eq i64 %66, 2
  br i1 %.not12, label %68, label %67

67:                                               ; preds = %63
  call void @abort() #5
  br label %UnifiedUnreachableBlock

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 13
  store i8 1, i8* %69, align 8
  call void @types_test14() #4
  %70 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 13
  %71 = load i8, i8* %70, align 8
  %.not13 = icmp eq i8 %71, 2
  br i1 %.not13, label %73, label %72

72:                                               ; preds = %68
  call void @abort() #5
  br label %UnifiedUnreachableBlock

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 14
  store i64 1, i64* %74, align 8
  call void @types_test15() #4
  %75 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 14
  %76 = load i64, i64* %75, align 8
  %.not14 = icmp eq i64 %76, 2
  br i1 %.not14, label %78, label %77

77:                                               ; preds = %73
  call void @abort() #5
  br label %UnifiedUnreachableBlock

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 15
  store i64 1, i64* %79, align 8
  call void @types_test16() #4
  %80 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 15
  %81 = load i64, i64* %80, align 8
  %.not15 = icmp eq i64 %81, 2
  br i1 %.not15, label %83, label %82

82:                                               ; preds = %78
  call void @abort() #5
  br label %UnifiedUnreachableBlock

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 16
  store i64 1, i64* %84, align 8
  call void @types_test17() #4
  %85 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 16
  %86 = load i64, i64* %85, align 8
  %.not16 = icmp eq i64 %86, 2
  br i1 %.not16, label %88, label %87

87:                                               ; preds = %83
  call void @abort() #5
  br label %UnifiedUnreachableBlock

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 17
  store i64 1, i64* %89, align 8
  call void @types_test18() #4
  %90 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 17
  %91 = load i64, i64* %90, align 8
  %.not17 = icmp eq i64 %91, 2
  br i1 %.not17, label %93, label %92

92:                                               ; preds = %88
  call void @abort() #5
  br label %UnifiedUnreachableBlock

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 18
  store i64 1, i64* %94, align 8
  call void @types_test19() #4
  %95 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 18
  %96 = load i64, i64* %95, align 8
  %.not18 = icmp eq i64 %96, 2
  br i1 %.not18, label %98, label %97

97:                                               ; preds = %93
  call void @abort() #5
  br label %UnifiedUnreachableBlock

98:                                               ; preds = %93
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %97, %92, %87, %82, %77, %72, %67, %62, %57, %52, %47, %42, %37, %32, %27, %22, %17, %12, %7
  unreachable
}

declare dso_local void @types_test1() #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

declare dso_local void @types_test2() #1

declare dso_local void @types_test3() #1

declare dso_local void @types_test4() #1

declare dso_local void @types_test5() #1

declare dso_local void @types_test6() #1

declare dso_local void @types_test7() #1

declare dso_local void @types_test8() #1

declare dso_local void @types_test9() #1

declare dso_local void @types_test10() #1

declare dso_local void @types_test11() #1

declare dso_local void @types_test12() #1

declare dso_local void @types_test13() #1

declare dso_local void @types_test14() #1

declare dso_local void @types_test15() #1

declare dso_local void @types_test16() #1

declare dso_local void @types_test17() #1

declare dso_local void @types_test18() #1

declare dso_local void @types_test19() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 1169}
