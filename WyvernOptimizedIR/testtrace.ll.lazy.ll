; ModuleID = './testtrace.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/testtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DummyStruct = type { %struct.DummyStruct*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"&S1 = %p\09&S2 = %p\09&S3 = %p\0A\00", align 1
@testAllocaOrder.count = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sum = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AddCounts(%struct.DummyStruct* noundef %0, %struct.DummyStruct* noundef %1, %struct.DummyStruct* noundef %2, i32 noundef %3) #0 {
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %7

5:                                                ; preds = %4
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.DummyStruct* noundef %0, %struct.DummyStruct* noundef %1, %struct.DummyStruct* noundef %2) #3
  br label %7

7:                                                ; preds = %5, %4
  %8 = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %0, i64 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %1, i64 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %9, %11
  %13 = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %2, i64 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %12, %14
  ret i32 %15
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testAllocaOrder(i32 noundef %0) #0 {
  %2 = alloca %struct.DummyStruct, align 8
  %3 = alloca %struct.DummyStruct, align 8
  %4 = alloca %struct.DummyStruct, align 8
  %5 = load i32, i32* @testAllocaOrder.count, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @testAllocaOrder.count, align 4
  %7 = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %2, i64 0, i32 1
  store i32 %6, i32* %7, align 8
  %8 = add nsw i32 %5, 2
  store i32 %8, i32* @testAllocaOrder.count, align 4
  %9 = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %3, i64 0, i32 1
  store i32 %8, i32* %9, align 8
  %10 = add nsw i32 %5, 3
  store i32 %10, i32* @testAllocaOrder.count, align 4
  %11 = getelementptr inbounds %struct.DummyStruct, %struct.DummyStruct* %4, i64 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = call i32 @AddCounts(%struct.DummyStruct* noundef nonnull %2, %struct.DummyStruct* noundef nonnull %3, %struct.DummyStruct* noundef nonnull %4, i32 noundef %0)
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef %12) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8, %4, %2
  %.0 = phi i32 [ 1, %4 ], [ 0, %8 ], [ 1, %2 ]
  br label %10

10:                                               ; preds = %13, %9
  %.01 = phi i32 [ 0, %9 ], [ %14, %13 ]
  %11 = icmp ult i32 %.01, 10
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  call void @testAllocaOrder(i32 noundef %.0)
  br label %13

13:                                               ; preds = %12
  %14 = add i32 %.01, 1
  br label %10, !llvm.loop !4

15:                                               ; preds = %10
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
