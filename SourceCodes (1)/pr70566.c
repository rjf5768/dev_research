; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70566.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70566.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mystruct = type { i8, [3 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @myfunc(i32 noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @myfunc2(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mystruct*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.mystruct*
  store %struct.mystruct* %5, %struct.mystruct** %3, align 8
  %6 = load %struct.mystruct*, %struct.mystruct** %3, align 8
  %7 = bitcast %struct.mystruct* %6 to i8*
  %8 = load i8, i8* %7, align 4
  %9 = lshr i8 %8, 1
  %10 = and i8 %9, 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load %struct.mystruct*, %struct.mystruct** %3, align 8
  call void @set_f2(%struct.mystruct* noundef %14, i32 noundef 1)
  br label %15

15:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @set_f2(%struct.mystruct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.mystruct*, align 8
  %4 = alloca i32, align 4
  store %struct.mystruct* %0, %struct.mystruct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mystruct*, %struct.mystruct** %3, align 8
  %6 = bitcast %struct.mystruct* %5 to i8*
  %7 = load i8, i8* %6, align 4
  %8 = lshr i8 %7, 1
  %9 = and i8 %8, 1
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @myfunc2(i8* noundef null)
  call void @myfunc(i32 noundef %14, i8* noundef null)
  br label %16

15:                                               ; preds = %2
  call void @abort() #2
  unreachable

16:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mystruct, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.mystruct* %2 to i8*
  %4 = load i8, i8* %3, align 4
  %5 = and i8 %4, -2
  %6 = or i8 %5, 1
  store i8 %6, i8* %3, align 4
  %7 = bitcast %struct.mystruct* %2 to i8*
  %8 = load i8, i8* %7, align 4
  %9 = and i8 %8, -3
  %10 = or i8 %9, 0
  store i8 %10, i8* %7, align 4
  %11 = bitcast %struct.mystruct* %2 to i8*
  call void @foo(i8* noundef %11)
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
