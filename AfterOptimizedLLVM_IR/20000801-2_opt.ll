; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000801-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000801-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { %struct.foo* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.foo* @test(%struct.foo* noundef %0) #0 {
  %2 = alloca %struct.foo*, align 8
  store %struct.foo* %0, %struct.foo** %2, align 8
  br label %3

3:                                                ; preds = %13, %1
  %4 = load %struct.foo*, %struct.foo** %2, align 8
  %5 = icmp ne %struct.foo* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = call i32 @bar()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = call i32 @baz()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  br label %17

13:                                               ; preds = %9, %6
  %14 = load %struct.foo*, %struct.foo** %2, align 8
  %15 = getelementptr inbounds %struct.foo, %struct.foo* %14, i32 0, i32 0
  %16 = load %struct.foo*, %struct.foo** %15, align 8
  store %struct.foo* %16, %struct.foo** %2, align 8
  br label %3, !llvm.loop !4

17:                                               ; preds = %12, %3
  %18 = load %struct.foo*, %struct.foo** %2, align 8
  ret %struct.foo* %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.foo, align 8
  %3 = alloca %struct.foo, align 8
  %4 = alloca %struct.foo*, align 8
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds %struct.foo, %struct.foo* %2, i32 0, i32 0
  store %struct.foo* %3, %struct.foo** %5, align 8
  %6 = getelementptr inbounds %struct.foo, %struct.foo* %3, i32 0, i32 0
  store %struct.foo* null, %struct.foo** %6, align 8
  %7 = call %struct.foo* @test(%struct.foo* noundef %2)
  store %struct.foo* %7, %struct.foo** %4, align 8
  %8 = load %struct.foo*, %struct.foo** %4, align 8
  %9 = icmp ne %struct.foo* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  call void @abort() #2
  unreachable

11:                                               ; preds = %0
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
