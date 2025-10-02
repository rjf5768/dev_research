; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43008.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43008.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i32* }

@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.X* @my_alloc() #0 {
  %1 = alloca %struct.X*, align 8
  %2 = call i8* @malloc(i64 noundef 8) #3
  %3 = bitcast i8* %2 to %struct.X*
  store %struct.X* %3, %struct.X** %1, align 8
  %4 = load %struct.X*, %struct.X** %1, align 8
  %5 = getelementptr inbounds %struct.X, %struct.X* %4, i32 0, i32 0
  store i32* @i, i32** %5, align 8
  %6 = load %struct.X*, %struct.X** %1, align 8
  ret %struct.X* %6
}

; Function Attrs: nounwind
declare dso_local i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.X*, align 8
  %3 = alloca %struct.X*, align 8
  store i32 0, i32* %1, align 4
  %4 = call noalias %struct.X* @my_alloc()
  store %struct.X* %4, %struct.X** %2, align 8
  %5 = call noalias %struct.X* @my_alloc()
  store %struct.X* %5, %struct.X** %3, align 8
  %6 = load %struct.X*, %struct.X** %2, align 8
  %7 = getelementptr inbounds %struct.X, %struct.X* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32 1, i32* %8, align 4
  %9 = load %struct.X*, %struct.X** %3, align 8
  %10 = getelementptr inbounds %struct.X, %struct.X* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.X*, %struct.X** %2, align 8
  %13 = getelementptr inbounds %struct.X, %struct.X* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  call void @abort() #4
  unreachable

18:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
