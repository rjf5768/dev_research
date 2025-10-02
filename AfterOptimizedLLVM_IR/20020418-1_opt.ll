; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020418-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020418-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @gcc_crash(%struct.foo* noundef %0) #0 {
  %2 = alloca %struct.foo*, align 8
  store %struct.foo* %0, %struct.foo** %2, align 8
  %3 = load %struct.foo*, %struct.foo** %2, align 8
  %4 = getelementptr inbounds %struct.foo, %struct.foo* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 52
  %7 = zext i1 %6 to i32
  %8 = sext i32 %7 to i64
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void @llvm.trap()
  br label %11

11:                                               ; preds = %10, %1
  br label %12

12:                                               ; preds = %21, %11
  %13 = load %struct.foo*, %struct.foo** %2, align 8
  %14 = getelementptr inbounds %struct.foo, %struct.foo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.foo*, %struct.foo** %2, align 8
  %18 = getelementptr inbounds %struct.foo, %struct.foo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 62
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %12

22:                                               ; preds = %12
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.foo, align 4
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.foo, %struct.foo* %2, i32 0, i32 0
  store i32 53, i32* %3, align 4
  call void @gcc_crash(%struct.foo* noundef %2)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
