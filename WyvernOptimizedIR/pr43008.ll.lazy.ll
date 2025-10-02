; ModuleID = './pr43008.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43008.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i32* }

@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.X* @my_alloc() #0 {
  %1 = call dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #3
  %2 = bitcast i8* %1 to %struct.X*
  %3 = getelementptr inbounds %struct.X, %struct.X* %2, i64 0, i32 0
  store i32* @i, i32** %3, align 8
  ret %struct.X* %2
}

; Function Attrs: nounwind
declare dso_local i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call noalias %struct.X* @my_alloc()
  %2 = call noalias %struct.X* @my_alloc()
  %3 = getelementptr inbounds %struct.X, %struct.X* %1, i64 0, i32 0
  %4 = load i32*, i32** %3, align 8
  store i32 1, i32* %4, align 4
  %5 = getelementptr inbounds %struct.X, %struct.X* %2, i64 0, i32 0
  %6 = load i32*, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %0
  call void @abort() #4
  unreachable

9:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
