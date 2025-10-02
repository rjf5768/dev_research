; ModuleID = './2002-05-03-NotTest.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2002-05-03-NotTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Bitwise Not: %d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Boolean Not: %d %d %d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testBitWiseNot(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = xor i32 %0, -1
  %6 = xor i32 %1, -1
  %7 = xor i32 %2, -1
  %8 = xor i32 %3, -1
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #2
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testBooleanNot(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp sgt i32 %0, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = icmp slt i32 %1, 1
  %phi.cast = zext i1 %7 to i32
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ 1, %4 ], [ %phi.cast, %6 ]
  %10 = icmp sgt i32 %0, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = icmp slt i32 %2, 1
  %phi.cast1 = zext i1 %12 to i32
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ 1, %8 ], [ %phi.cast1, %11 ]
  %15 = icmp sgt i32 %0, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = icmp slt i32 %3, 1
  %phi.cast2 = zext i1 %17 to i32
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ 1, %13 ], [ %phi.cast2, %16 ]
  %20 = icmp sgt i32 %1, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = icmp slt i32 %2, 1
  %phi.cast3 = zext i1 %22 to i32
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ 1, %18 ], [ %phi.cast3, %21 ]
  %25 = icmp sgt i32 %1, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = icmp slt i32 %3, 1
  %phi.cast4 = zext i1 %27 to i32
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i32 [ 1, %23 ], [ %phi.cast4, %26 ]
  %30 = icmp sgt i32 %2, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = icmp slt i32 %3, 1
  %phi.cast5 = zext i1 %32 to i32
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ 1, %28 ], [ %phi.cast5, %31 ]
  %35 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 noundef %9, i32 noundef %14, i32 noundef %19, i32 noundef %24, i32 noundef %29, i32 noundef %34) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @testBitWiseNot(i32 noundef 1, i32 noundef 2, i32 noundef -3, i32 noundef 5)
  call void @testBooleanNot(i32 noundef 1, i32 noundef 2, i32 noundef -3, i32 noundef 5)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
