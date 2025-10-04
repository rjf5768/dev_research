; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/930529-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/930529-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.anon, align 8
  store i32 0, i32* %1, align 4
  %3 = bitcast %union.anon* %2 to double*
  store double 0x3FC2492492492492, double* %3, align 8
  %4 = bitcast %union.anon* %2 to [8 x i8]*
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %6 = load i8, i8* %5, align 8
  %7 = zext i8 %6 to i32
  %8 = icmp eq i32 %7, 146
  br i1 %8, label %9, label %52

9:                                                ; preds = %0
  %10 = bitcast %union.anon* %2 to [8 x i8]*
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 36
  br i1 %14, label %15, label %52

15:                                               ; preds = %9
  %16 = bitcast %union.anon* %2 to [8 x i8]*
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 2
  %18 = load i8, i8* %17, align 2
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 73
  br i1 %20, label %21, label %52

21:                                               ; preds = %15
  %22 = bitcast %union.anon* %2 to [8 x i8]*
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 3
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 146
  br i1 %26, label %27, label %52

27:                                               ; preds = %21
  %28 = bitcast %union.anon* %2 to [8 x i8]*
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %28, i64 0, i64 4
  %30 = load i8, i8* %29, align 4
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 36
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = bitcast %union.anon* %2 to [8 x i8]*
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %34, i64 0, i64 5
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 73
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = bitcast %union.anon* %2 to [8 x i8]*
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %40, i64 0, i64 6
  %42 = load i8, i8* %41, align 2
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 194
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = bitcast %union.anon* %2 to [8 x i8]*
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %46, i64 0, i64 7
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 63
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  call void @exit(i32 noundef 0) #2
  unreachable

52:                                               ; preds = %45, %39, %33, %27, %21, %15, %9, %0
  %53 = bitcast %union.anon* %2 to [8 x i8]*
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %53, i64 0, i64 7
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 146
  br i1 %57, label %58, label %101

58:                                               ; preds = %52
  %59 = bitcast %union.anon* %2 to [8 x i8]*
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %59, i64 0, i64 6
  %61 = load i8, i8* %60, align 2
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 36
  br i1 %63, label %64, label %101

64:                                               ; preds = %58
  %65 = bitcast %union.anon* %2 to [8 x i8]*
  %66 = getelementptr inbounds [8 x i8], [8 x i8]* %65, i64 0, i64 5
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 73
  br i1 %69, label %70, label %101

70:                                               ; preds = %64
  %71 = bitcast %union.anon* %2 to [8 x i8]*
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %71, i64 0, i64 4
  %73 = load i8, i8* %72, align 4
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 146
  br i1 %75, label %76, label %101

76:                                               ; preds = %70
  %77 = bitcast %union.anon* %2 to [8 x i8]*
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %77, i64 0, i64 3
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 36
  br i1 %81, label %82, label %101

82:                                               ; preds = %76
  %83 = bitcast %union.anon* %2 to [8 x i8]*
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %83, i64 0, i64 2
  %85 = load i8, i8* %84, align 2
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 73
  br i1 %87, label %88, label %101

88:                                               ; preds = %82
  %89 = bitcast %union.anon* %2 to [8 x i8]*
  %90 = getelementptr inbounds [8 x i8], [8 x i8]* %89, i64 0, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 194
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = bitcast %union.anon* %2 to [8 x i8]*
  %96 = getelementptr inbounds [8 x i8], [8 x i8]* %95, i64 0, i64 0
  %97 = load i8, i8* %96, align 8
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 63
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  call void @exit(i32 noundef 0) #2
  unreachable

101:                                              ; preds = %94, %88, %82, %76, %70, %64, %58, %52
  call void @abort() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

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
