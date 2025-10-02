; ModuleID = './960311-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960311-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@count = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @a1() #0 {
  %1 = load i32, i32* @count, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @count, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @b(i8 noundef zeroext %0) #0 {
  %.not = icmp sgt i8 %0, -1
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  call void @a1()
  br label %3

3:                                                ; preds = %2, %1
  %.mask3 = and i8 %0, 64
  %.not1 = icmp eq i8 %.mask3, 0
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %3
  call void @a1()
  br label %5

5:                                                ; preds = %4, %3
  %.mask = and i8 %0, 32
  %.not2 = icmp eq i8 %.mask, 0
  br i1 %.not2, label %7, label %6

6:                                                ; preds = %5
  call void @a1()
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  store i32 0, i32* @count, align 4
  call void @b(i8 noundef zeroext 0)
  %1 = load i32, i32* @count, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  store i32 0, i32* @count, align 4
  call void @b(i8 noundef zeroext -128)
  %4 = load i32, i32* @count, align 4
  %.not1 = icmp eq i32 %4, 1
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  store i32 0, i32* @count, align 4
  call void @b(i8 noundef zeroext 64)
  %7 = load i32, i32* @count, align 4
  %.not2 = icmp eq i32 %7, 1
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  store i32 0, i32* @count, align 4
  call void @b(i8 noundef zeroext 32)
  %10 = load i32, i32* @count, align 4
  %.not3 = icmp eq i32 %10, 1
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  store i32 0, i32* @count, align 4
  call void @b(i8 noundef zeroext -64)
  %13 = load i32, i32* @count, align 4
  %.not4 = icmp eq i32 %13, 2
  br i1 %.not4, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  store i32 0, i32* @count, align 4
  call void @b(i8 noundef zeroext -96)
  %16 = load i32, i32* @count, align 4
  %.not5 = icmp eq i32 %16, 2
  br i1 %.not5, label %18, label %17

17:                                               ; preds = %15
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  store i32 0, i32* @count, align 4
  call void @b(i8 noundef zeroext 96)
  %19 = load i32, i32* @count, align 4
  %.not6 = icmp eq i32 %19, 2
  br i1 %.not6, label %21, label %20

20:                                               ; preds = %18
  call void @abort() #3
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %18
  store i32 0, i32* @count, align 4
  call void @b(i8 noundef zeroext -32)
  %22 = load i32, i32* @count, align 4
  %.not7 = icmp eq i32 %22, 3
  br i1 %.not7, label %24, label %23

23:                                               ; preds = %21
  call void @abort() #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %21
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %24, %23, %20, %17, %14, %11, %8, %5, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
