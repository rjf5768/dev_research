; ModuleID = './ptalloc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/ptalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptext = type { i32, i8*, [1314 x i8], i64, %struct.ptext*, %struct.ptext*, i32 }

@ptext_count = dso_local global i32 0, align 4
@ptext_max = dso_local global i32 0, align 4
@free1 = internal global %struct.ptext* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ptext* @ptalloc() #0 {
  %1 = load %struct.ptext*, %struct.ptext** @free1, align 8
  %.not = icmp eq %struct.ptext* %1, null
  br i1 %.not, label %6, label %2

2:                                                ; preds = %0
  %3 = load %struct.ptext*, %struct.ptext** @free1, align 8
  %4 = getelementptr inbounds %struct.ptext, %struct.ptext* %3, i64 0, i32 5
  %5 = load %struct.ptext*, %struct.ptext** %4, align 8
  store %struct.ptext* %5, %struct.ptext** @free1, align 8
  br label %13

6:                                                ; preds = %0
  %7 = call noalias dereferenceable_or_null(1368) i8* @malloc(i64 noundef 1368) #5
  %.not2 = icmp eq i8* %7, null
  br i1 %.not2, label %8, label %9

8:                                                ; preds = %6
  br label %19

9:                                                ; preds = %6
  %10 = bitcast i8* %7 to %struct.ptext*
  %11 = load i32, i32* @ptext_max, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @ptext_max, align 4
  br label %13

13:                                               ; preds = %9, %2
  %.01 = phi %struct.ptext* [ %3, %2 ], [ %10, %9 ]
  %14 = load i32, i32* @ptext_count, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @ptext_count, align 4
  %16 = bitcast %struct.ptext* %.01 to i8*
  call void @bzero(i8* noundef %16, i32 noundef 1368) #5
  %17 = getelementptr inbounds %struct.ptext, %struct.ptext* %.01, i64 0, i32 2, i64 32
  %18 = getelementptr inbounds %struct.ptext, %struct.ptext* %.01, i64 0, i32 1
  store i8* %17, i8** %18, align 8
  br label %19

19:                                               ; preds = %13, %8
  %.0 = phi %struct.ptext* [ %.01, %13 ], [ null, %8 ]
  ret %struct.ptext* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @bzero(i8* noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @ptfree(%struct.ptext* noundef %0) #3 {
  %2 = load %struct.ptext*, %struct.ptext** @free1, align 8
  %3 = getelementptr inbounds %struct.ptext, %struct.ptext* %0, i64 0, i32 5
  store %struct.ptext* %2, %struct.ptext** %3, align 8
  %4 = getelementptr inbounds %struct.ptext, %struct.ptext* %0, i64 0, i32 4
  store %struct.ptext* null, %struct.ptext** %4, align 8
  store %struct.ptext* %0, %struct.ptext** @free1, align 8
  %5 = load i32, i32* @ptext_count, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @ptext_count, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @ptlfree(%struct.ptext* noundef %0) #4 {
  br label %2

2:                                                ; preds = %3, %1
  %.0 = phi %struct.ptext* [ %0, %1 ], [ %5, %3 ]
  %.not = icmp eq %struct.ptext* %.0, null
  br i1 %.not, label %6, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.ptext, %struct.ptext* %.0, i64 0, i32 5
  %5 = load %struct.ptext*, %struct.ptext** %4, align 8
  call void @ptfree(%struct.ptext* noundef nonnull %.0)
  br label %2, !llvm.loop !4

6:                                                ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
