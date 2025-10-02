; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021111-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021111-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aim_callhandler.i = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @aim_callhandler(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i16 %2, i16* %8, align 2
  store i16 %3, i16* %9, align 2
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %29

13:                                               ; preds = %4
  %14 = load i16, i16* %9, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp eq i32 %15, 65535
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %29

18:                                               ; preds = %13
  %19 = load i32, i32* @aim_callhandler.i, align 4
  %20 = icmp sge i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @abort() #2
  unreachable

22:                                               ; preds = %18
  %23 = load i32, i32* @aim_callhandler.i, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @aim_callhandler.i, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i16, i16* %8, align 2
  %28 = call i32 @aim_callhandler(i32 noundef %25, i32 noundef %26, i16 noundef zeroext %27, i16 noundef zeroext -1)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %22, %17, %12
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @aim_callhandler(i32 noundef 0, i32 noundef 1, i16 noundef zeroext 0, i16 noundef zeroext 0)
  call void @exit(i32 noundef 0) #2
  unreachable
}

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
