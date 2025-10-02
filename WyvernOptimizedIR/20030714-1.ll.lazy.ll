; ModuleID = './20030714-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030714-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RenderBox = type { [6 x i32], i16, i16, i1 (%struct.RenderBox*)* }
%struct.RenderStyle = type { %struct.NonInheritedFlags }
%struct.NonInheritedFlags = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32 }

@false = dso_local constant i8 0, align 1
@true = dso_local constant i8 1, align 1
@g_this = dso_local global %struct.RenderBox zeroinitializer, align 8
@g__style = dso_local global %struct.RenderStyle zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @RenderBox_setStyle(%struct.RenderBox* noundef %0, %struct.RenderStyle* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.RenderStyle, %struct.RenderStyle* %1, i64 0, i32 0, i32 0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = lshr i32 %4, 17
  %6 = and i32 %5, 3
  switch i32 %6, label %11 [
    i32 2, label %7
    i32 3, label %7
  ]

7:                                                ; preds = %2, %2
  %8 = getelementptr inbounds %struct.RenderBox, %struct.RenderBox* %0, i64 0, i32 2
  %9 = load i16, i16* %8, align 2
  %10 = or i16 %9, 16
  store i16 %10, i16* %8, align 2
  br label %46

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.RenderBox, %struct.RenderBox* %0, i64 0, i32 2
  %13 = load i16, i16* %12, align 2
  %14 = and i16 %13, 16
  %.not = icmp eq i16 %14, 0
  br i1 %.not, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.RenderBox, %struct.RenderBox* %0, i64 0, i32 2
  %17 = load i16, i16* %16, align 2
  %18 = or i16 %17, 16
  store i16 %18, i16* %16, align 2
  br label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.RenderBox, %struct.RenderBox* %0, i64 0, i32 2
  %21 = load i16, i16* %20, align 2
  %22 = and i16 %21, -17
  store i16 %22, i16* %20, align 2
  %23 = getelementptr inbounds %struct.RenderStyle, %struct.RenderStyle* %1, i64 0, i32 0, i32 0, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.RenderBox, %struct.RenderBox* %0, i64 0, i32 3
  %26 = load i1 (%struct.RenderBox*)*, i1 (%struct.RenderBox*)** %25, align 8
  %27 = call zeroext i1 %26(%struct.RenderBox* noundef %0) #4
  br i1 %27, label %35, label %28

28:                                               ; preds = %19
  %29 = and i32 %24, 1572864
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.RenderBox, %struct.RenderBox* %0, i64 0, i32 2
  %33 = load i16, i16* %32, align 2
  %34 = or i16 %33, 8
  store i16 %34, i16* %32, align 2
  br label %45

35:                                               ; preds = %28, %19
  %36 = getelementptr inbounds %struct.RenderStyle, %struct.RenderStyle* %1, i64 0, i32 0, i32 0, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 393216
  %39 = icmp eq i32 %38, 131072
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.RenderBox, %struct.RenderBox* %0, i64 0, i32 2
  %42 = load i16, i16* %41, align 2
  %43 = or i16 %42, 64
  store i16 %43, i16* %41, align 2
  br label %44

44:                                               ; preds = %40, %35
  br label %45

45:                                               ; preds = %44, %31
  br label %46

46:                                               ; preds = %45, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @RenderObject_setStyle(%struct.RenderBox* nocapture noundef %0, %struct.RenderStyle* nocapture noundef %1) #1 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @removeFromSpecialObjects(%struct.RenderBox* nocapture noundef %0) #1 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i1 @RenderBox_isTableCell(%struct.RenderBox* nocapture noundef readnone %0) #1 {
  ret i1 false
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = load i16, i16* getelementptr inbounds (%struct.RenderBox, %struct.RenderBox* @g_this, i64 0, i32 2), align 2
  %2 = and i16 %1, -89
  store i16 %2, i16* getelementptr inbounds (%struct.RenderBox, %struct.RenderBox* @g_this, i64 0, i32 2), align 2
  store i1 (%struct.RenderBox*)* @RenderBox_isTableCell, i1 (%struct.RenderBox*)** getelementptr inbounds (%struct.RenderBox, %struct.RenderBox* @g_this, i64 0, i32 3), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.RenderStyle, %struct.RenderStyle* @g__style, i64 0, i32 0, i32 0, i32 0, i32 0), align 4
  %4 = and i32 %3, -1966081
  %5 = or i32 %4, 393216
  store i32 %5, i32* getelementptr inbounds (%struct.RenderStyle, %struct.RenderStyle* @g__style, i64 0, i32 0, i32 0, i32 0, i32 0), align 4
  call void @RenderBox_setStyle(%struct.RenderBox* noundef nonnull @g_this, %struct.RenderStyle* noundef nonnull @g__style)
  %6 = load i16, i16* getelementptr inbounds (%struct.RenderBox, %struct.RenderBox* @g_this, i64 0, i32 2), align 2
  %7 = and i16 %6, 16
  %.not.not = icmp eq i16 %7, 0
  br i1 %.not.not, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %0
  %10 = load i16, i16* getelementptr inbounds (%struct.RenderBox, %struct.RenderBox* @g_this, i64 0, i32 2), align 2
  %11 = and i16 %10, 64
  %.not = icmp eq i16 %11, 0
  br i1 %.not, label %13, label %12

12:                                               ; preds = %9
  call void @abort() #5
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %9
  %14 = load i16, i16* getelementptr inbounds (%struct.RenderBox, %struct.RenderBox* @g_this, i64 0, i32 2), align 2
  %15 = and i16 %14, 8
  %.not1 = icmp eq i16 %15, 0
  br i1 %.not1, label %17, label %16

16:                                               ; preds = %13
  call void @abort() #5
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %13
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %17, %16, %12, %8
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
