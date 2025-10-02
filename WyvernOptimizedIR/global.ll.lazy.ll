; ModuleID = './global.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array = dso_local global [4 x i32] [i32 127, i32 -1, i32 100, i32 -28], align 16
@array2 = dso_local global [4 x [4 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [32 x i8] c"error: i=%d, j=%d, result = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"a=%d b=%d a*a=%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #0 {
  br label %1

1:                                                ; preds = %32, %0
  %.0 = phi i32 [ 0, %0 ], [ %33, %32 ]
  %2 = icmp ult i32 %.0, 4
  br i1 %2, label %3, label %34

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %29, %3
  %.01 = phi i32 [ 0, %3 ], [ %30, %29 ]
  %5 = icmp ult i32 %.01, 4
  br i1 %5, label %6, label %31

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* @array, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* @array, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = zext i32 %.0 to i64
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* @array2, i64 0, i64 %14, i64 %15
  store i32 %13, i32* %16, align 4
  %17 = zext i32 %.0 to i64
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* @array2, i64 0, i64 %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = zext i32 %.0 to i64
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* @array2, i64 0, i64 %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef %.0, i32 noundef %.01, i32 noundef %26) #2
  br label %28

28:                                               ; preds = %22, %6
  br label %29

29:                                               ; preds = %28
  %30 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !4

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %31
  %33 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

34:                                               ; preds = %1
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 127, i32 noundef 100, i32 noundef 16129) #2
  call void @test()
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
