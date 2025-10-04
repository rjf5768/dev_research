; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000412-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000412-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i8, [32 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @z() #0 {
  %1 = alloca %struct.X, align 8
  %2 = getelementptr inbounds %struct.X, %struct.X* %1, i32 0, i32 1
  %3 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 31
  store i8 48, i8* %3, align 1
  %4 = getelementptr inbounds %struct.X, %struct.X* %1, i32 0, i32 1
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  store i8 48, i8* %5, align 1
  %6 = getelementptr inbounds %struct.X, %struct.X* %1, i32 0, i32 0
  store i8 15, i8* %6, align 1
  %7 = call i32 @f(%struct.X* noundef byval(%struct.X) align 8 %1, %struct.X* noundef byval(%struct.X) align 8 %1)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @z()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 96
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #2
  unreachable

7:                                                ; preds = %0
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(%struct.X* noundef byval(%struct.X) align 8 %0, %struct.X* noundef byval(%struct.X) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.X, %struct.X* %0, i32 0, i32 0
  %5 = load i8, i8* %4, align 8
  %6 = sext i8 %5 to i32
  %7 = getelementptr inbounds %struct.X, %struct.X* %1, i32 0, i32 0
  %8 = load i8, i8* %7, align 8
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 70, i32* %3, align 4
  br label %22

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.X, %struct.X* %0, i32 0, i32 1
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = getelementptr inbounds %struct.X, %struct.X* %1, i32 0, i32 1
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = add nsw i32 %16, %20
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %12, %11
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
