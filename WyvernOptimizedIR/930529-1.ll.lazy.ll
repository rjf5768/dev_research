; ModuleID = './930529-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/930529-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %union.anon, align 8
  %2 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0
  store double 0x3FC2492492492492, double* %2, align 8
  br i1 true, label %3, label %39

3:                                                ; preds = %0
  %4 = bitcast %union.anon* %1 to [8 x i8]*
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 1
  %6 = load i8, i8* %5, align 1
  %7 = icmp eq i8 %6, 36
  br i1 %7, label %8, label %39

8:                                                ; preds = %3
  %9 = bitcast %union.anon* %1 to [8 x i8]*
  %10 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 2
  %11 = load i8, i8* %10, align 2
  %12 = icmp eq i8 %11, 73
  br i1 %12, label %13, label %39

13:                                               ; preds = %8
  %14 = bitcast %union.anon* %1 to [8 x i8]*
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 3
  %16 = load i8, i8* %15, align 1
  %17 = icmp eq i8 %16, -110
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = bitcast %union.anon* %1 to [8 x i8]*
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 4
  %21 = load i8, i8* %20, align 4
  %22 = icmp eq i8 %21, 36
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = bitcast %union.anon* %1 to [8 x i8]*
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %24, i64 0, i64 5
  %26 = load i8, i8* %25, align 1
  %27 = icmp eq i8 %26, 73
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = bitcast %union.anon* %1 to [8 x i8]*
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %29, i64 0, i64 6
  %31 = load i8, i8* %30, align 2
  %32 = icmp eq i8 %31, -62
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = bitcast %union.anon* %1 to [8 x i8]*
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %34, i64 0, i64 7
  %36 = load i8, i8* %35, align 1
  %37 = icmp eq i8 %36, 63
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %33, %28, %23, %18, %13, %8, %3, %0
  %40 = bitcast %union.anon* %1 to [8 x i8]*
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %40, i64 0, i64 7
  %42 = load i8, i8* %41, align 1
  %43 = icmp eq i8 %42, -110
  br i1 %43, label %44, label %79

44:                                               ; preds = %39
  %45 = bitcast %union.anon* %1 to [8 x i8]*
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %45, i64 0, i64 6
  %47 = load i8, i8* %46, align 2
  %48 = icmp eq i8 %47, 36
  br i1 %48, label %49, label %79

49:                                               ; preds = %44
  %50 = bitcast %union.anon* %1 to [8 x i8]*
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %50, i64 0, i64 5
  %52 = load i8, i8* %51, align 1
  %53 = icmp eq i8 %52, 73
  br i1 %53, label %54, label %79

54:                                               ; preds = %49
  %55 = bitcast %union.anon* %1 to [8 x i8]*
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %55, i64 0, i64 4
  %57 = load i8, i8* %56, align 4
  %58 = icmp eq i8 %57, -110
  br i1 %58, label %59, label %79

59:                                               ; preds = %54
  %60 = bitcast %union.anon* %1 to [8 x i8]*
  %61 = getelementptr inbounds [8 x i8], [8 x i8]* %60, i64 0, i64 3
  %62 = load i8, i8* %61, align 1
  %63 = icmp eq i8 %62, 36
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = bitcast %union.anon* %1 to [8 x i8]*
  %66 = getelementptr inbounds [8 x i8], [8 x i8]* %65, i64 0, i64 2
  %67 = load i8, i8* %66, align 2
  %68 = icmp eq i8 %67, 73
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = bitcast %union.anon* %1 to [8 x i8]*
  %71 = getelementptr inbounds [8 x i8], [8 x i8]* %70, i64 0, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = icmp eq i8 %72, -62
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = bitcast %union.anon* %1 to i8*
  %76 = load i8, i8* %75, align 8
  %77 = icmp eq i8 %76, 63
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

79:                                               ; preds = %74, %69, %64, %59, %54, %49, %44, %39
  call void @abort() #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %79, %78, %38
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
