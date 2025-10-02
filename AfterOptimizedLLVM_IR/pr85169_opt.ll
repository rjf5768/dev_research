; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85169.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85169.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca <64 x i8>, align 64
  %3 = alloca <64 x i8>, align 64
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store <64 x i8> zeroinitializer, <64 x i8>* %3, align 64
  %5 = load <64 x i8>, <64 x i8>* %3, align 64
  store <64 x i8> %5, <64 x i8>* %2, align 64
  call void @foo(<64 x i8>* noundef %2)
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %20, %0
  %7 = load i32, i32* %4, align 4
  %8 = icmp ult i32 %7, 64
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load <64 x i8>, <64 x i8>* %2, align 64
  %11 = load i32, i32* %4, align 4
  %12 = extractelement <64 x i8> %10, i32 %11
  %13 = sext i8 %12 to i32
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 63
  %16 = zext i1 %15 to i32
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  call void @abort() #2
  unreachable

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %4, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %6, !llvm.loop !4

23:                                               ; preds = %6
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo(<64 x i8>* noundef %0) #0 {
  %2 = alloca <64 x i8>*, align 8
  %3 = alloca <64 x i8>, align 64
  store <64 x i8>* %0, <64 x i8>** %2, align 8
  %4 = load <64 x i8>*, <64 x i8>** %2, align 8
  %5 = load <64 x i8>, <64 x i8>* %4, align 64
  store <64 x i8> %5, <64 x i8>* %3, align 64
  %6 = load <64 x i8>, <64 x i8>* %3, align 64
  %7 = insertelement <64 x i8> %6, i8 1, i32 63
  store <64 x i8> %7, <64 x i8>* %3, align 64
  %8 = load <64 x i8>, <64 x i8>* %3, align 64
  %9 = load <64 x i8>*, <64 x i8>** %2, align 8
  store <64 x i8> %8, <64 x i8>* %9, align 64
  ret void
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
