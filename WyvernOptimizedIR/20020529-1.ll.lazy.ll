; ModuleID = './20020529-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020529-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xx = type { i32, %struct.xx*, i16 }

@f1.beenhere = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(%struct.xx* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  br label %.outer

.outer:                                           ; preds = %30, %4
  %.0.ph = phi i32 [ %21, %30 ], [ %3, %4 ]
  br label %5

5:                                                ; preds = %.outer, %9
  %6 = call i32 @f1(%struct.xx* noundef %0)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %5
  ret i32 0

8:                                                ; preds = %5
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %10, label %9

9:                                                ; preds = %8
  br label %5

10:                                               ; preds = %8
  %11 = trunc i32 %.0.ph to i16
  %12 = getelementptr inbounds %struct.xx, %struct.xx* %0, i64 0, i32 2
  store i16 %11, i16* %12, align 8
  %13 = getelementptr inbounds %struct.xx, %struct.xx* %0, i64 0, i32 0
  %14 = load i32, i32* %13, align 8
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %10
  call void @f2()
  br label %16

16:                                               ; preds = %15, %10
  %.not4 = icmp eq i32 %2, 0
  br i1 %.not4, label %18, label %17

17:                                               ; preds = %16
  call void @f2()
  br label %18

18:                                               ; preds = %17, %16
  %19 = getelementptr inbounds %struct.xx, %struct.xx* %0, i64 0, i32 2
  %20 = load i16, i16* %19, align 8
  %21 = sext i16 %20 to i32
  switch i32 %6, label %29 [
    i32 1, label %22
  ]

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.xx, %struct.xx* %0, i64 0, i32 1
  %24 = load %struct.xx*, %struct.xx** %23, align 8
  %.not5 = icmp eq %struct.xx* %24, null
  br i1 %.not5, label %26, label %25

25:                                               ; preds = %22
  call void @f2()
  br label %26

26:                                               ; preds = %25, %22
  %.not6 = icmp eq i32 %2, 0
  br i1 %.not6, label %28, label %27

27:                                               ; preds = %26
  call void @f2()
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %18
  br label %30

30:                                               ; preds = %29
  br label %.outer
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1(%struct.xx* nocapture noundef readnone %0) #0 {
  %2 = load i32, i32* @f1.beenhere, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @f1.beenhere, align 4
  %4 = icmp sgt i32 %2, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @abort() #3
  unreachable

6:                                                ; preds = %1
  %7 = load i32, i32* @f1.beenhere, align 4
  %8 = icmp sgt i32 %7, 1
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @f2() #1 {
  call void @abort() #3
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.xx, align 8
  %2 = getelementptr inbounds %struct.xx, %struct.xx* %1, i64 0, i32 0
  store i32 0, i32* %2, align 8
  %3 = getelementptr inbounds %struct.xx, %struct.xx* %1, i64 0, i32 1
  store %struct.xx* %1, %struct.xx** %3, align 8
  %4 = getelementptr inbounds %struct.xx, %struct.xx* %1, i64 0, i32 2
  store i16 23, i16* %4, align 8
  %5 = call i32 @foo(%struct.xx* noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %6, label %15

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.xx, %struct.xx* %1, i64 0, i32 0
  %8 = load i32, i32* %7, align 8
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %9, label %15

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.xx, %struct.xx* %1, i64 0, i32 1
  %11 = load %struct.xx*, %struct.xx** %10, align 8
  %.not2 = icmp eq %struct.xx* %11, %1
  br i1 %.not2, label %12, label %15

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.xx, %struct.xx* %1, i64 0, i32 2
  %14 = load i16, i16* %13, align 8
  %.not3 = icmp eq i16 %14, 0
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %12, %9, %6, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %16, %15
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
