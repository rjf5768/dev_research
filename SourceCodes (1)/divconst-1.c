; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/divconst-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/divconst-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t1 = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(%struct.t1* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.t1*, align 8
  store %struct.t1* %0, %struct.t1** %3, align 8
  %4 = load %struct.t1*, %struct.t1** %3, align 8
  %5 = getelementptr inbounds %struct.t1, %struct.t1* %4, i32 0, i32 0
  store i32 10000, i32* %5, align 4
  %6 = load %struct.t1*, %struct.t1** %3, align 8
  %7 = getelementptr inbounds %struct.t1, %struct.t1* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = udiv i32 %8, 3
  %10 = load %struct.t1*, %struct.t1** %3, align 8
  %11 = getelementptr inbounds %struct.t1, %struct.t1* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.t1*, %struct.t1** %3, align 8
  %13 = getelementptr inbounds %struct.t1, %struct.t1* %12, i32 0, i32 2
  store i32 10000, i32* %13, align 4
  %14 = load %struct.t1*, %struct.t1** %3, align 8
  %15 = getelementptr inbounds %struct.t1, %struct.t1* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = udiv i32 %16, 3
  %18 = load %struct.t1*, %struct.t1** %3, align 8
  %19 = getelementptr inbounds %struct.t1, %struct.t1* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.t1, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @f(%struct.t1* noundef %2)
  %4 = getelementptr inbounds %struct.t1, %struct.t1* %2, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 10000
  br i1 %6, label %19, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.t1, %struct.t1* %2, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 3333
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.t1, %struct.t1* %2, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 10000
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.t1, %struct.t1* %2, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 3333
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %11, %7, %0
  call void @abort() #2
  unreachable

20:                                               ; preds = %15
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
