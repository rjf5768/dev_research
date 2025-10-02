; ModuleID = './bind_c-6_1.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/bind_c-6_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@myVar = external dso_local global i64, align 8
@myVar2 = external dso_local global i64, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = call i64* asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64* nonnull @myVar) #3, !srcloc !4
  %4 = call i64* asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64* nonnull @myVar2) #3, !srcloc !5
  store i64 1, i64* %3, align 8
  store i64 2, i64* %4, align 8
  call void @types_test() #4
  %5 = load i64, i64* %3, align 8
  %.not = icmp eq i64 %5, 2
  br i1 %.not, label %7, label %6

6:                                                ; preds = %2
  call void @abort() #5
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %.not1 = icmp eq i64 %8, 2
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %7
  call void @abort() #5
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %7
  store i64 3, i64* %4, align 8
  call void @types_test() #4
  %11 = load i64, i64* %3, align 8
  %.not2 = icmp eq i64 %11, 3
  br i1 %.not2, label %13, label %12

12:                                               ; preds = %10
  call void @abort() #5
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %10
  %14 = load i64, i64* %4, align 8
  %.not3 = icmp eq i64 %14, 3
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %13
  call void @abort() #5
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %13
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %15, %12, %9, %6
  unreachable
}

declare dso_local void @types_test() #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

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
!4 = !{i64 207}
!5 = !{i64 243}
