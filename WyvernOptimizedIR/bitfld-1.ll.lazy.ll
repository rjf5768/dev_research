; ModuleID = './bitfld-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bitfld-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x = type { i16, [2 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.x, align 4
  %4 = getelementptr inbounds %struct.x, %struct.x* %3, i64 0, i32 0
  %5 = load i16, i16* %4, align 4
  %6 = getelementptr inbounds %struct.x, %struct.x* %3, i64 0, i32 0
  %7 = and i16 %5, -16384
  %8 = or i16 %7, 7923
  store i16 %8, i16* %6, align 4
  br i1 false, label %9, label %10

9:                                                ; preds = %2
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %2
  br i1 false, label %11, label %12

11:                                               ; preds = %10
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.x, %struct.x* %3, i64 0, i32 0
  %14 = load i16, i16* %13, align 4
  %15 = lshr i16 %14, 7
  %16 = and i16 %15, 127
  %17 = zext i16 %16 to i32
  %18 = srem i32 -13, %17
  %.not = icmp eq i32 %18, -13
  br i1 %.not, label %20, label %19

19:                                               ; preds = %12
  call void @abort() #2
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.x, %struct.x* %3, i64 0, i32 0
  %22 = load i16, i16* %21, align 4
  %23 = shl i16 %22, 9
  %24 = ashr exact i16 %23, 9
  %25 = sext i16 %24 to i32
  %26 = lshr i16 %22, 7
  %27 = and i16 %26, 127
  %28 = zext i16 %27 to i32
  %29 = srem i32 %25, %28
  %.not1 = icmp eq i32 %29, -13
  br i1 %.not1, label %31, label %30

30:                                               ; preds = %20
  call void @abort() #2
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.x, %struct.x* %3, i64 0, i32 0
  %33 = load i16, i16* %32, align 4
  %34 = lshr i16 %33, 7
  %35 = and i16 %34, 127
  %36 = zext i16 %35 to i32
  %37 = urem i32 -13, %36
  %.not2 = icmp eq i32 %37, 44
  br i1 %.not2, label %39, label %38

38:                                               ; preds = %31
  call void @abort() #2
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.x, %struct.x* %3, i64 0, i32 0
  %41 = load i16, i16* %40, align 4
  %42 = shl i16 %41, 9
  %43 = ashr exact i16 %42, 9
  %44 = sext i16 %43 to i32
  %45 = lshr i16 %41, 7
  %46 = and i16 %45, 127
  %47 = zext i16 %46 to i32
  %48 = urem i32 %44, %47
  %.not3 = icmp eq i32 %48, 44
  br i1 %.not3, label %50, label %49

49:                                               ; preds = %39
  call void @abort() #2
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %39
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %49, %38, %30, %19, %11, %9
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
