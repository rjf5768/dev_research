; ModuleID = './pr70566.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70566.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mystruct = type { i8, [3 x i8] }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @myfunc(i32 noundef %0, i8* nocapture noundef %1) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @myfunc2(i8* nocapture noundef readnone %0) #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i8* nocapture noundef readonly %0) #1 {
  %2 = load i8, i8* %0, align 4
  %3 = and i8 %2, 2
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %4, label %6

4:                                                ; preds = %1
  %5 = bitcast i8* %0 to %struct.mystruct*
  call void @set_f2(%struct.mystruct* noundef nonnull %5, i32 noundef 1)
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @set_f2(%struct.mystruct* nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr %struct.mystruct, %struct.mystruct* %0, i64 0, i32 0
  %4 = load i8, i8* %3, align 4
  %5 = lshr i8 %4, 1
  %6 = and i8 %5, 1
  %7 = zext i8 %6 to i32
  %.not = icmp eq i32 %7, %1
  br i1 %.not, label %9, label %8

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  call void @abort() #3
  unreachable

10:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.mystruct, align 4
  %2 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %1, i64 0, i32 0
  %3 = load i8, i8* %2, align 4
  %4 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %1, i64 0, i32 0
  %5 = and i8 %3, -4
  %6 = or i8 %5, 1
  store i8 %6, i8* %4, align 4
  %7 = getelementptr inbounds %struct.mystruct, %struct.mystruct* %1, i64 0, i32 0
  call void @foo(i8* noundef nonnull %7)
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
