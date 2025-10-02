; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/bind_c-2b_1.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/bind_c-2b_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myctype_t = type { i8, i8 }

@myVar = external dso_local global %struct.myctype_t, align 1

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
  store i8 1, i8* %9, align 1
  %10 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %11 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %10, i32 0, i32 1
  store i8 2, i8* %11, align 1
  call void @types_test()
  %12 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %13 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  call void @abort() #4
  unreachable

18:                                               ; preds = %2
  %19 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %20 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %19, i32 0, i32 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  call void @abort() #4
  unreachable

25:                                               ; preds = %18
  store i8 3, i8* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myVar, i32 0, i32 1), align 1
  call void @types_test()
  %26 = load i8, i8* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myVar, i32 0, i32 0), align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @abort() #4
  unreachable

30:                                               ; preds = %25
  %31 = load i8, i8* getelementptr inbounds (%struct.myctype_t, %struct.myctype_t* @myVar, i32 0, i32 1), align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void @abort() #4
  unreachable

35:                                               ; preds = %30
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
!4 = !{i64 297}
