; ModuleID = './pr42231.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42231.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @CallFunction(i32 (i32)* noundef nonnull @callback)
  %2 = load i32, i32* @max, align 4
  %.not = icmp eq i32 %2, 10
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #3
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @CallFunction(i32 (i32)* nocapture noundef readonly %0) #0 {
  %2 = call i32 @CallFunctionRec(i32 (i32)* noundef %0, i32 noundef 1)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = call i32 %0(i32 noundef 0) #4
  %.not1 = icmp eq i32 %4, 0
  %phi.cast = zext i1 %.not1 to i32
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi i32 [ 0, %1 ], [ %phi.cast, %3 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @callback(i32 noundef %0) #1 {
  call void @storemax(i32 noundef %0)
  %2 = icmp ne i32 %0, 0
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @CallFunctionRec(i32 (i32)* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = call i32 %0(i32 noundef %1) #4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  br label %11

5:                                                ; preds = %2
  %6 = icmp slt i32 %1, 10
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = add nsw i32 %1, 1
  %9 = call i32 @CallFunctionRec(i32 (i32)* noundef %0, i32 noundef %8)
  br label %10

10:                                               ; preds = %7, %5
  br label %11

11:                                               ; preds = %10, %4
  %.0 = phi i32 [ 1, %10 ], [ 0, %4 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @storemax(i32 noundef %0) #1 {
  %2 = load i32, i32* @max, align 4
  %3 = icmp slt i32 %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i32 %0, i32* @max, align 4
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
