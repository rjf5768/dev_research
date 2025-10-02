; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20061031-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20061031-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nunmap = dso_local constant [3 x i8] c"\11\FF\01", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ff(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i16 noundef signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  store i16 2, i16* %3, align 2
  store i16 0, i16* %4, align 2
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i16, i16* %4, align 2
  %7 = sext i16 %6 to i32
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = load i16, i16* %2, align 2
  %11 = sext i16 %10 to i32
  %12 = load i16, i16* %3, align 2
  %13 = sext i16 %12 to i32
  %14 = add nsw i32 %13, %11
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %3, align 2
  %16 = load i16, i16* %4, align 2
  %17 = sext i16 %16 to i32
  call void @ff(i32 noundef %17)
  %18 = load i16, i16* %3, align 2
  %19 = sext i16 %18 to i64
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* @nunmap, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 17
  br i1 %23, label %24, label %25

24:                                               ; preds = %9
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !5
  br label %25

25:                                               ; preds = %24, %9
  br label %26

26:                                               ; preds = %25
  %27 = load i16, i16* %4, align 2
  %28 = add i16 %27, 1
  store i16 %28, i16* %4, align 2
  br label %5, !llvm.loop !6

29:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @f(i16 noundef signext -1)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 186}
!5 = !{i64 388}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
