; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071018-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071018-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i32, i8* }
%struct.mem = type { [4 x %struct.foo*] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.foo** noundef %0) #0 {
  %2 = alloca %struct.foo**, align 8
  store %struct.foo** %0, %struct.foo*** %2, align 8
  %3 = call i8* @malloc(i64 noundef 16) #3
  %4 = bitcast i8* %3 to %struct.foo*
  %5 = load %struct.foo**, %struct.foo*** %2, align 8
  store %struct.foo* %4, %struct.foo** %5, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.foo* @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mem*, align 8
  %5 = alloca %struct.foo**, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i8* @malloc(i64 noundef 32) #3
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.mem*
  store %struct.mem* %8, %struct.mem** %4, align 8
  %9 = load %struct.mem*, %struct.mem** %4, align 8
  %10 = getelementptr inbounds %struct.mem, %struct.mem* %9, i32 0, i32 0
  %11 = load i32, i32* %2, align 4
  %12 = mul nsw i32 %11, 8
  %13 = sub nsw i32 %12, 5
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x %struct.foo*], [4 x %struct.foo*]* %10, i64 0, i64 %14
  store %struct.foo** %15, %struct.foo*** %5, align 8
  %16 = load %struct.foo**, %struct.foo*** %5, align 8
  store %struct.foo* null, %struct.foo** %16, align 8
  %17 = load %struct.foo**, %struct.foo*** %5, align 8
  call void @bar(%struct.foo** noundef %17)
  %18 = load %struct.foo**, %struct.foo*** %5, align 8
  %19 = load %struct.foo*, %struct.foo** %18, align 8
  ret %struct.foo* %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call %struct.foo* @foo(i32 noundef 1)
  %3 = icmp eq %struct.foo* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #4
  unreachable

5:                                                ; preds = %0
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
