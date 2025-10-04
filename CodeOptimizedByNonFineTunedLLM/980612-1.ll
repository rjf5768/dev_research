; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/980612-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/980612-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i8, i8 }

@f = dso_local global %struct.fd { i8 5, i8 0 }, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.fd* @g() #0 {
  ret %struct.fd* @f
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h() #0 {
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.fd*, align 8
  store i32 0, i32* %1, align 4
  %3 = call %struct.fd* @g()
  store %struct.fd* %3, %struct.fd** %2, align 8
  %4 = call i32 @h()
  %5 = trunc i32 %4 to i8
  %6 = load %struct.fd*, %struct.fd** %2, align 8
  %7 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 1
  store i8 %5, i8* %7, align 1
  %8 = load %struct.fd*, %struct.fd** %2, align 8
  %9 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 127
  %13 = and i32 %12, -17
  %14 = icmp sle i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  call void @abort() #2
  unreachable

16:                                               ; preds = %0
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
