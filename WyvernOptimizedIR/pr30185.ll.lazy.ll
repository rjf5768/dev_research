; ModuleID = './pr30185.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr30185.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, i64 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { i8, i64 } @foo(i8 %0, i64 %1, i8 %2, i64 %3) #0 {
  %5 = alloca %struct.S, align 8
  %6 = sdiv i64 %1, %3
  %7 = getelementptr inbounds %struct.S, %struct.S* %5, i64 0, i32 1
  store i64 %6, i64* %7, align 8
  %8 = bitcast %struct.S* %5 to { i8, i64 }*
  %9 = load { i8, i64 }, { i8, i64 }* %8, align 8
  ret { i8, i64 } %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.S, align 8
  %2 = alloca %struct.S, align 8
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 1
  store i64 32, i64* %3, align 8
  %4 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 1
  store i64 4, i64* %4, align 8
  %5 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0
  %6 = load i8, i8* %5, align 8
  %7 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0
  %8 = load i8, i8* %7, align 8
  %9 = call { i8, i64 } @foo(i8 %6, i64 32, i8 %8, i64 4)
  %10 = extractvalue { i8, i64 } %9, 1
  %.not = icmp eq i64 %10, 8
  br i1 %.not, label %12, label %11

11:                                               ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 1
  store i64 -8, i64* %13, align 8
  %14 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 1
  store i64 -2, i64* %14, align 8
  %15 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0
  %16 = load i8, i8* %15, align 8
  %17 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0
  %18 = load i8, i8* %17, align 8
  %19 = call { i8, i64 } @foo(i8 %16, i64 -8, i8 %18, i64 -2)
  %20 = extractvalue { i8, i64 } %19, 1
  %.not1 = icmp eq i64 %20, 4
  br i1 %.not1, label %22, label %21

21:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %12
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %21, %11
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
