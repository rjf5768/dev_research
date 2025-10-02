; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/SSE/packssdw-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/SSE/packssdw-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"packssdw-1 passed\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"packssdw-1 failed\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local <4 x float> @foo(<4 x i32> noundef %0, <4 x i32> noundef %1) #0 {
  %3 = alloca <4 x i32>, align 16
  %4 = alloca <4 x i32>, align 16
  store <4 x i32> %0, <4 x i32>* %3, align 16
  store <4 x i32> %1, <4 x i32>* %4, align 16
  %5 = load <4 x i32>, <4 x i32>* %3, align 16
  %6 = load <4 x i32>, <4 x i32>* %4, align 16
  %7 = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %5, <4 x i32> %6)
  %8 = bitcast <8 x i16> %7 to <4 x float>
  ret <4 x float> %8
}

; Function Attrs: nounwind readnone
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca <4 x i32>, align 16
  %3 = alloca <4 x i32>, align 16
  %4 = alloca <16 x i8>, align 16
  store i32 0, i32* %1, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %2, align 16
  store <4 x i32> zeroinitializer, <4 x i32>* %3, align 16
  %5 = load <4 x i32>, <4 x i32>* %2, align 16
  %6 = load <4 x i32>, <4 x i32>* %3, align 16
  %7 = call <4 x float> @foo(<4 x i32> noundef %5, <4 x i32> noundef %6)
  %8 = bitcast <4 x float> %7 to <16 x i8>
  store <16 x i8> %8, <16 x i8>* %4, align 16
  %9 = load <16 x i8>, <16 x i8>* %4, align 16
  %10 = bitcast <16 x i8> %9 to <4 x i32>
  %11 = extractelement <4 x i32> %10, i64 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %17

15:                                               ; preds = %0
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %13
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
