; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/c_ptr_tests_8_funcs.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_ptr_tests_8_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"SUCCESS (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"FAILED: Expected 444, received %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @create() #0 {
  %1 = alloca i32*, align 8
  %2 = call noalias i8* @malloc(i64 noundef 8) #4
  %3 = bitcast i8* %2 to i32*
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  store i32 444, i32* %4, align 4
  %5 = load i32*, i32** %1, align 8
  %6 = bitcast i32* %5 to i8*
  ret i8* %6
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @show(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 444
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef %8)
  br label %14

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 noundef %12)
  call void @abort() #5
  unreachable

14:                                               ; preds = %6
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
