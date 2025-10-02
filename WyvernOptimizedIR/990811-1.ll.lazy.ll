; ModuleID = './990811-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990811-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i64, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0, i8* nocapture noundef readonly %1) #0 {
  switch i32 %0, label %14 [
    i32 0, label %3
    i32 1, label %7
    i32 2, label %10
  ]

3:                                                ; preds = %2
  %4 = bitcast i8* %1 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  br label %15

7:                                                ; preds = %2
  %8 = load i8, i8* %1, align 1
  %9 = sext i8 %8 to i32
  br label %15

10:                                               ; preds = %2
  %11 = bitcast i8* %1 to i16*
  %12 = load i16, i16* %11, align 2
  %13 = sext i16 %12 to i32
  br label %15

14:                                               ; preds = %2
  call void @abort() #3
  unreachable

15:                                               ; preds = %10, %7, %3
  %.0 = phi i32 [ %13, %10 ], [ %9, %7 ], [ %6, %3 ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.s, align 8
  %2 = alloca [10 x i16], align 16
  %3 = alloca [10 x i8], align 1
  %4 = getelementptr inbounds %struct.s, %struct.s* %1, i64 0, i32 0
  store i64 1, i64* %4, align 8
  %5 = getelementptr inbounds %struct.s, %struct.s* %1, i64 0, i32 1
  store i32 2, i32* %5, align 8
  br label %6

6:                                                ; preds = %15, %0
  %.0 = phi i32 [ 0, %0 ], [ %16, %15 ]
  %7 = icmp ult i32 %.0, 10
  br i1 %7, label %8, label %17

8:                                                ; preds = %6
  %9 = trunc i32 %.0 to i16
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [10 x i16], [10 x i16]* %2, i64 0, i64 %10
  store i16 %9, i16* %11, align 2
  %12 = trunc i32 %.0 to i8
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 %13
  store i8 %12, i8* %14, align 1
  br label %15

15:                                               ; preds = %8
  %16 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !4

17:                                               ; preds = %6
  %18 = bitcast %struct.s* %1 to i8*
  %19 = call i32 @foo(i32 noundef 0, i8* noundef nonnull %18)
  %.not = icmp eq i32 %19, 1
  br i1 %.not, label %21, label %20

20:                                               ; preds = %17
  call void @abort() #3
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %17
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 3
  %23 = call i32 @foo(i32 noundef 1, i8* noundef nonnull %22)
  %.not1 = icmp eq i32 %23, 3
  br i1 %.not1, label %25, label %24

24:                                               ; preds = %21
  call void @abort() #3
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %21
  %26 = getelementptr inbounds [10 x i16], [10 x i16]* %2, i64 0, i64 3
  %27 = bitcast i16* %26 to i8*
  %28 = call i32 @foo(i32 noundef 2, i8* noundef nonnull %27)
  %.not2 = icmp eq i32 %28, 3
  br i1 %.not2, label %30, label %29

29:                                               ; preds = %25
  call void @abort() #3
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %25
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %30, %29, %24, %20
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
