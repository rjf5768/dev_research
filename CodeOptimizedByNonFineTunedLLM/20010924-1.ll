; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010924-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010924-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8, i8* }
%struct.anon.0 = type { i8, [2 x i8] }
%struct.anon.1 = type { i8, [0 x i8] }
%struct.anon.2 = type { i8, [0 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"62\00", align 1
@a1 = dso_local global %struct.anon { i8 52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0) }, align 8
@a2 = dso_local global %struct.anon.0 { i8 118, [2 x i8] c"cq" }, align 1
@a3 = dso_local global { i8, [3 x i8] } { i8 111, [3 x i8] c"wx\00" }, align 1
@a4 = dso_local global { i8, [2 x i8] } { i8 57, [2 x i8] c"eb" }, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @a1, i32 0, i32 0), align 8
  %3 = sext i8 %2 to i32
  %4 = icmp ne i32 %3, 52
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #2
  unreachable

6:                                                ; preds = %0
  %7 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @a1, i32 0, i32 1), align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 54
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  call void @abort() #2
  unreachable

13:                                               ; preds = %6
  %14 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @a1, i32 0, i32 1), align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 50
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  call void @abort() #2
  unreachable

20:                                               ; preds = %13
  %21 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @a1, i32 0, i32 1), align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  call void @abort() #2
  unreachable

27:                                               ; preds = %20
  %28 = load i8, i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @a2, i32 0, i32 0), align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 118
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  call void @abort() #2
  unreachable

32:                                               ; preds = %27
  %33 = load i8, i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @a2, i32 0, i32 1, i64 0), align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 99
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  call void @abort() #2
  unreachable

37:                                               ; preds = %32
  %38 = load i8, i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @a2, i32 0, i32 1, i64 1), align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 113
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call void @abort() #2
  unreachable

42:                                               ; preds = %37
  %43 = load i8, i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* bitcast ({ i8, [3 x i8] }* @a3 to %struct.anon.1*), i32 0, i32 0), align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 111
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  call void @abort() #2
  unreachable

47:                                               ; preds = %42
  %48 = load i8, i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* bitcast ({ i8, [3 x i8] }* @a3 to %struct.anon.1*), i32 0, i32 1, i64 0), align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 119
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  call void @abort() #2
  unreachable

52:                                               ; preds = %47
  %53 = load i8, i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* bitcast ({ i8, [3 x i8] }* @a3 to %struct.anon.1*), i32 0, i32 1, i64 1), align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 120
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  call void @abort() #2
  unreachable

57:                                               ; preds = %52
  %58 = load i8, i8* getelementptr inbounds (%struct.anon.2, %struct.anon.2* bitcast ({ i8, [2 x i8] }* @a4 to %struct.anon.2*), i32 0, i32 0), align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 57
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  call void @abort() #2
  unreachable

62:                                               ; preds = %57
  %63 = load i8, i8* getelementptr inbounds (%struct.anon.2, %struct.anon.2* bitcast ({ i8, [2 x i8] }* @a4 to %struct.anon.2*), i32 0, i32 1, i64 0), align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 101
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  call void @abort() #2
  unreachable

67:                                               ; preds = %62
  %68 = load i8, i8* getelementptr inbounds (%struct.anon.2, %struct.anon.2* bitcast ({ i8, [2 x i8] }* @a4 to %struct.anon.2*), i32 0, i32 1, i64 1), align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 98
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  call void @abort() #2
  unreachable

72:                                               ; preds = %67
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
