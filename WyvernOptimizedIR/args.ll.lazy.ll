; ModuleID = './args.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/voronoi/args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag = external dso_local global i32, align 4
@NumNodes = external dso_local global i32, align 4
@NDim = external dso_local global i32, align 4
@.str = private unnamed_addr constant [44 x i8] c"Voronoi with %d size on %d procs of dim %d\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @mylog(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %4, %1
  %.01 = phi i32 [ 0, %1 ], [ %6, %4 ]
  %.0 = phi i32 [ 1, %1 ], [ %5, %4 ]
  %3 = icmp slt i32 %.0, %0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = shl nsw i32 %.0, 1
  %6 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !4

7:                                                ; preds = %2
  ret i32 %.01
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dealwithargs(i32 noundef %0, i8** nocapture noundef readonly %1) #1 {
  %3 = icmp sgt i32 %0, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 3
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @atoi(i8* noundef %6) #4
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %storemerge = phi i32 [ 1, %8 ], [ %7, %4 ]
  store i32 %storemerge, i32* @flag, align 4
  %10 = icmp sgt i32 %0, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8*, i8** %1, i64 2
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @atoi(i8* noundef %13) #4
  br label %16

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %11
  %storemerge1 = phi i32 [ 1, %15 ], [ %14, %11 ]
  store i32 %storemerge1, i32* @NumNodes, align 4
  %17 = icmp sgt i32 %0, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8*, i8** %1, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @atoi(i8* noundef %20) #4
  br label %23

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %18
  %.0 = phi i32 [ %21, %18 ], [ 32, %22 ]
  %24 = load i32, i32* @NumNodes, align 4
  %25 = call i32 @mylog(i32 noundef %24)
  store i32 %25, i32* @NDim, align 4
  %26 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 noundef %.0, i32 noundef %24, i32 noundef %25) #5
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

attributes #0 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
