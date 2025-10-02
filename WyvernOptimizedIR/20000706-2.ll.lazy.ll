; ModuleID = './20000706-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000706-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baz = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.baz* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.baz, %struct.baz* %0, i64 0, i32 0
  %8 = load i32, i32* %7, align 4
  %.not = icmp eq i32 %8, 1
  br i1 %.not, label %9, label %26

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.baz, %struct.baz* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 4
  %.not1 = icmp eq i32 %11, 2
  br i1 %.not1, label %12, label %26

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.baz, %struct.baz* %0, i64 0, i32 2
  %14 = load i32, i32* %13, align 4
  %.not2 = icmp eq i32 %14, 3
  br i1 %.not2, label %15, label %26

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.baz, %struct.baz* %0, i64 0, i32 3
  %17 = load i32, i32* %16, align 4
  %.not3 = icmp eq i32 %17, 4
  br i1 %.not3, label %18, label %26

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.baz, %struct.baz* %0, i64 0, i32 4
  %20 = load i32, i32* %19, align 4
  %.not4 = icmp eq i32 %20, 5
  br i1 %.not4, label %21, label %26

21:                                               ; preds = %18
  %.not5 = icmp eq i32 %1, 6
  br i1 %.not5, label %22, label %26

22:                                               ; preds = %21
  %.not6 = icmp eq i32 %2, 7
  br i1 %.not6, label %23, label %26

23:                                               ; preds = %22
  %.not7 = icmp eq i32 %3, 8
  br i1 %.not7, label %24, label %26

24:                                               ; preds = %23
  %.not8 = icmp eq i32 %4, 9
  br i1 %.not8, label %25, label %26

25:                                               ; preds = %24
  %.not9 = icmp eq i32 %5, 10
  br i1 %.not9, label %27, label %26

26:                                               ; preds = %25, %24, %23, %22, %21, %18, %15, %12, %9, %6
  call void @abort() #3
  unreachable

27:                                               ; preds = %25
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i8* nocapture noundef readnone %0, %struct.baz* nocapture noundef readonly byval(%struct.baz) align 8 %1, i8* nocapture noundef readnone %2) #0 {
  call void @bar(%struct.baz* noundef nonnull %1, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10)
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.baz, align 8
  %2 = getelementptr inbounds %struct.baz, %struct.baz* %1, i64 0, i32 0
  store i32 1, i32* %2, align 8
  %3 = getelementptr inbounds %struct.baz, %struct.baz* %1, i64 0, i32 1
  store i32 2, i32* %3, align 4
  %4 = getelementptr inbounds %struct.baz, %struct.baz* %1, i64 0, i32 2
  store i32 3, i32* %4, align 8
  %5 = getelementptr inbounds %struct.baz, %struct.baz* %1, i64 0, i32 3
  store i32 4, i32* %5, align 4
  %6 = getelementptr inbounds %struct.baz, %struct.baz* %1, i64 0, i32 4
  store i32 5, i32* %6, align 8
  call void @foo(i8* noundef null, %struct.baz* noundef nonnull byval(%struct.baz) align 8 %1, i8* noundef null)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
