; ModuleID = './ary3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @atoi(i8* noundef %6) #4
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 1500000, %8 ]
  %11 = sext i32 %10 to i64
  %12 = call noalias i8* @calloc(i64 noundef %11, i64 noundef 4) #5
  %13 = bitcast i8* %12 to i32*
  %14 = sext i32 %10 to i64
  %15 = call noalias i8* @calloc(i64 noundef %14, i64 noundef 4) #5
  %16 = bitcast i8* %15 to i32*
  br label %17

17:                                               ; preds = %23, %9
  %.01 = phi i32 [ 0, %9 ], [ %24, %23 ]
  %18 = icmp slt i32 %.01, %10
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = add nuw nsw i32 %.01, 1
  %21 = zext i32 %.01 to i64
  %22 = getelementptr inbounds i32, i32* %13, i64 %21
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %19
  %24 = add nuw nsw i32 %.01, 1
  br label %17, !llvm.loop !4

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %41, %25
  %.0 = phi i32 [ 0, %25 ], [ %42, %41 ]
  %27 = icmp ult i32 %.0, 1000
  br i1 %27, label %28, label %43

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %39, %28
  %.1.in = phi i32 [ %10, %28 ], [ %.1, %39 ]
  %.1 = add nsw i32 %.1.in, -1
  %30 = icmp sgt i32 %.1.in, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %29
  %32 = sext i32 %.1 to i64
  %33 = getelementptr inbounds i32, i32* %13, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %.1 to i64
  %36 = getelementptr inbounds i32, i32* %16, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %31
  br label %29, !llvm.loop !6

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %.0, 1
  br label %26, !llvm.loop !7

43:                                               ; preds = %26
  %44 = load i32, i32* %16, align 4
  %45 = add nsw i32 %10, -1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %16, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef %44, i32 noundef %48) #5
  call void @free(i8* noundef %12) #5
  call void @free(i8* noundef %15) #5
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
