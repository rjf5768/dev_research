; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/bind_c-1_1.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/bind_c-1_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myctype_t = type { float*, i32* }

@myVar = external dso_local global %struct.myctype_t, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.myctype_t*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call %struct.myctype_t* asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(%struct.myctype_t* @myVar) #3, !srcloc !4
  store %struct.myctype_t* %7, %struct.myctype_t** %6, align 8
  %8 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %9 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %8, i32 0, i32 0
  store float* inttoptr (i64 1 to float*), float** %9, align 8
  %10 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %11 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %10, i32 0, i32 1
  store i32* inttoptr (i64 2 to i32*), i32** %11, align 8
  call void @types_test()
  %12 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %13 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %12, i32 0, i32 0
  %14 = load float*, float** %13, align 8
  %15 = icmp ne float* %14, inttoptr (i64 2 to float*)
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  call void @abort() #4
  unreachable

17:                                               ; preds = %2
  %18 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %19 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, inttoptr (i64 2 to i32*)
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @abort() #4
  unreachable

23:                                               ; preds = %17
  store i32* inttoptr (i64 3 to i32*), i32** getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myVar, i32 0, i32 1), align 8
  call void @types_test()
  %24 = load float*, float** getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myVar, i32 0, i32 0), align 8
  %25 = icmp ne float* %24, inttoptr (i64 3 to float*)
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void @abort() #4
  unreachable

27:                                               ; preds = %23
  %28 = load i32*, i32** getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myVar, i32 0, i32 1), align 8
  %29 = icmp ne i32* %28, inttoptr (i64 3 to i32*)
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @abort() #4
  unreachable

31:                                               ; preds = %27
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
!4 = !{i64 285}
