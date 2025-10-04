; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/bind_c-5_1.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/bind_c-5_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@myVar = external dso_local global i32 (i32)*, align 8
@myVar2 = external dso_local global float (float)*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32 (i32)**, align 8
  %7 = alloca float (float)**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 (i32)** asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 (i32)** @myVar) #3, !srcloc !4
  store i32 (i32)** %8, i32 (i32)*** %6, align 8
  %9 = call float (float)** asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(float (float)** @myVar2) #3, !srcloc !5
  store float (float)** %9, float (float)*** %7, align 8
  %10 = load i32 (i32)**, i32 (i32)*** %6, align 8
  store i32 (i32)* inttoptr (i64 1 to i32 (i32)*), i32 (i32)** %10, align 8
  %11 = load float (float)**, float (float)*** %7, align 8
  store float (float)* inttoptr (i64 2 to float (float)*), float (float)** %11, align 8
  call void @types_test()
  %12 = load i32 (i32)**, i32 (i32)*** %6, align 8
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = icmp ne i32 (i32)* %13, inttoptr (i64 2 to i32 (i32)*)
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  call void @abort() #4
  unreachable

16:                                               ; preds = %2
  %17 = load float (float)**, float (float)*** %7, align 8
  %18 = load float (float)*, float (float)** %17, align 8
  %19 = icmp ne float (float)* %18, inttoptr (i64 2 to float (float)*)
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @abort() #4
  unreachable

21:                                               ; preds = %16
  %22 = load float (float)**, float (float)*** %7, align 8
  store float (float)* inttoptr (i64 3 to float (float)*), float (float)** %22, align 8
  call void @types_test()
  %23 = load i32 (i32)**, i32 (i32)*** %6, align 8
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = icmp ne i32 (i32)* %24, inttoptr (i64 3 to i32 (i32)*)
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @abort() #4
  unreachable

27:                                               ; preds = %21
  %28 = load float (float)**, float (float)*** %7, align 8
  %29 = load float (float)*, float (float)** %28, align 8
  %30 = icmp ne float (float)* %29, inttoptr (i64 3 to float (float)*)
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  call void @abort() #4
  unreachable

32:                                               ; preds = %27
  ret i32 0
}

declare dso_local void @types_test() #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 263}
!5 = !{i64 299}
