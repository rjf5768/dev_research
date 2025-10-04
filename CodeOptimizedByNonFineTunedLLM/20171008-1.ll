; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20171008-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20171008-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, i8, i8, i8 }

@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @foo()
  %4 = bitcast %struct.S* %2 to i32*
  store i32 %3, i32* %4, align 4
  %5 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 0
  %6 = load i8, i8* %5, align 4
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #2
  unreachable

10:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo() #0 {
  %1 = alloca %struct.S, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i8* %2, i8** %6, align 8
  %7 = call signext i8 @bar(i8** noundef %6)
  store i8 %7, i8* %3, align 1
  %8 = load i8, i8* %3, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %5, align 1
  br label %13

13:                                               ; preds = %10, %0
  store i8 0, i8* %4, align 1
  %14 = load i8, i8* %4, align 1
  %15 = getelementptr inbounds %struct.S, %struct.S* %1, i32 0, i32 0
  store i8 %14, i8* %15, align 4
  %16 = load i8, i8* %5, align 1
  %17 = getelementptr inbounds %struct.S, %struct.S* %1, i32 0, i32 1
  store i8 %16, i8* %17, align 1
  %18 = bitcast %struct.S* %1 to i32*
  %19 = load i32, i32* %18, align 4
  ret i32 %19
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define internal signext i8 @bar(i8** noundef %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  store i32 1, i32* @i, align 4
  ret i8 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
