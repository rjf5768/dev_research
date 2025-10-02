; ModuleID = './960312-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960312-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32*, i32, i32*, [2 x i32] }

@main.sc = internal global [3 x i32] [i32 2, i32 3, i32 4], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(%struct.S* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds i32, i32* %3, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds i32, i32* %3, i64 2
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 3, i64 0
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 3, i64 1
  %12 = load i32, i32* %11, align 4
  call void asm sideeffect "", "r,r,~{dirflag},~{fpsr},~{flags}"(i32 %6, i32 %8) #3, !srcloc !4
  %13 = getelementptr inbounds i32, i32* %3, i64 2
  store i32 %4, i32* %13, align 4
  store i32 %12, i32* %3, align 4
  %14 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 3, i64 1
  store i32 %10, i32* %14, align 4
  %15 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 3, i64 0
  store i32 %8, i32* %15, align 8
  %16 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  store i32 %6, i32* %16, align 8
  %17 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0
  store i32* %3, i32** %17, align 8
  ret i32 undef
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.S, align 8
  %2 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 2
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @main.sc, i64 0, i64 0), i32** %2, align 8
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3, i64 0
  store i32 10, i32* %3, align 8
  %4 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3, i64 1
  store i32 11, i32* %4, align 4
  %5 = call i32 @f(%struct.S* noundef nonnull %1)
  %6 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 2
  %9 = load i32, i32* %8, align 4
  %.not = icmp eq i32 %9, 2
  br i1 %.not, label %11, label %10

10:                                               ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %0
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %11, %10
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 176}
