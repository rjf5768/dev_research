; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65427.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65427.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global <8 x i32> zeroinitializer, align 32
@c = dso_local global <8 x i32> zeroinitializer, align 32
@d = dso_local global <8 x i32> zeroinitializer, align 32
@b = dso_local global <8 x i32> zeroinitializer, align 32
@e = dso_local global <8 x i32> zeroinitializer, align 32
@f = dso_local global <8 x i32> zeroinitializer, align 32

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %17, %2
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load <8 x i32>, <8 x i32>* @a, align 32
  %10 = load <8 x i32>, <8 x i32>* @c, align 32
  %11 = xor <8 x i32> %9, %10
  store <8 x i32> %11, <8 x i32>* @d, align 32
  br label %16

12:                                               ; preds = %5
  %13 = load <8 x i32>, <8 x i32>* @a, align 32
  %14 = load <8 x i32>, <8 x i32>* @b, align 32
  %15 = xor <8 x i32> %13, %14
  store <8 x i32> %15, <8 x i32>* @d, align 32
  br label %16

16:                                               ; preds = %12, %8
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %5, label %20, !llvm.loop !4

20:                                               ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca <8 x i32>, align 32
  %3 = alloca <8 x i32>, align 32
  %4 = alloca <8 x i32>, align 32
  %5 = alloca <8 x i32>, align 32
  %6 = alloca <8 x i32>, align 32
  store i32 0, i32* %1, align 4
  store <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, <8 x i32>* %2, align 32
  %7 = load <8 x i32>, <8 x i32>* %2, align 32
  store <8 x i32> %7, <8 x i32>* @a, align 32
  store <8 x i32> <i32 64, i32 128, i32 64, i32 128, i32 64, i32 128, i32 64, i32 128>, <8 x i32>* %3, align 32
  %8 = load <8 x i32>, <8 x i32>* %3, align 32
  store <8 x i32> %8, <8 x i32>* @b, align 32
  store <8 x i32> <i32 65, i32 130, i32 67, i32 132, i32 69, i32 134, i32 71, i32 136>, <8 x i32>* %4, align 32
  %9 = load <8 x i32>, <8 x i32>* %4, align 32
  store <8 x i32> %9, <8 x i32>* @e, align 32
  call void @foo(i32 noundef 0, i32 noundef 0)
  %10 = call i32 @memcmp(i8* noundef bitcast (<8 x i32>* @d to i8*), i8* noundef bitcast (<8 x i32>* @e to i8*), i64 noundef 32) #3
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  call void @abort() #4
  unreachable

13:                                               ; preds = %0
  store <8 x i32> <i32 128, i32 64, i32 128, i32 64, i32 128, i32 64, i32 128, i32 64>, <8 x i32>* %5, align 32
  %14 = load <8 x i32>, <8 x i32>* %5, align 32
  store <8 x i32> %14, <8 x i32>* @c, align 32
  store <8 x i32> <i32 129, i32 66, i32 131, i32 68, i32 133, i32 70, i32 135, i32 72>, <8 x i32>* %6, align 32
  %15 = load <8 x i32>, <8 x i32>* %6, align 32
  store <8 x i32> %15, <8 x i32>* @f, align 32
  call void @foo(i32 noundef 1, i32 noundef 0)
  %16 = call i32 @memcmp(i8* noundef bitcast (<8 x i32>* @d to i8*), i8* noundef bitcast (<8 x i32>* @f to i8*), i64 noundef 32) #3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  call void @abort() #4
  unreachable

19:                                               ; preds = %13
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
