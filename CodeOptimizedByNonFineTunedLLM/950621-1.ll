; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950621-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950621-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32, i32, %struct.s* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(%struct.s* noundef %0) #0 {
  %2 = alloca %struct.s*, align 8
  store %struct.s* %0, %struct.s** %2, align 8
  %3 = load %struct.s*, %struct.s** %2, align 8
  %4 = icmp ne %struct.s* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load %struct.s*, %struct.s** %2, align 8
  %7 = getelementptr inbounds %struct.s, %struct.s* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.s*, %struct.s** %2, align 8
  %12 = getelementptr inbounds %struct.s, %struct.s* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, -1
  br label %15

15:                                               ; preds = %10, %5, %1
  %16 = phi i1 [ false, %5 ], [ false, %1 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.s, align 8
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 1
  store i32 -1, i32* %3, align 4
  %4 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 0
  store i32 -1, i32* %4, align 8
  %5 = call i32 @f(%struct.s* noundef %2)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #2
  unreachable

8:                                                ; preds = %0
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
