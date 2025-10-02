; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/ptalloc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/ptalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptext = type { i32, i8*, [1314 x i8], i64, %struct.ptext*, %struct.ptext*, i32 }

@ptext_count = dso_local global i32 0, align 4
@ptext_max = dso_local global i32 0, align 4
@free1 = internal global %struct.ptext* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ptext* @ptalloc() #0 {
  %1 = alloca %struct.ptext*, align 8
  %2 = alloca %struct.ptext*, align 8
  %3 = load %struct.ptext*, %struct.ptext** @free1, align 8
  %4 = icmp ne %struct.ptext* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load %struct.ptext*, %struct.ptext** @free1, align 8
  store %struct.ptext* %6, %struct.ptext** %2, align 8
  %7 = load %struct.ptext*, %struct.ptext** @free1, align 8
  %8 = getelementptr inbounds %struct.ptext, %struct.ptext* %7, i32 0, i32 5
  %9 = load %struct.ptext*, %struct.ptext** %8, align 8
  store %struct.ptext* %9, %struct.ptext** @free1, align 8
  br label %19

10:                                               ; preds = %0
  %11 = call noalias i8* @malloc(i64 noundef 1368) #3
  %12 = bitcast i8* %11 to %struct.ptext*
  store %struct.ptext* %12, %struct.ptext** %2, align 8
  %13 = load %struct.ptext*, %struct.ptext** %2, align 8
  %14 = icmp ne %struct.ptext* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.ptext* null, %struct.ptext** %1, align 8
  br label %31

16:                                               ; preds = %10
  %17 = load i32, i32* @ptext_max, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @ptext_max, align 4
  br label %19

19:                                               ; preds = %16, %5
  %20 = load i32, i32* @ptext_count, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @ptext_count, align 4
  %22 = load %struct.ptext*, %struct.ptext** %2, align 8
  %23 = bitcast %struct.ptext* %22 to i8*
  call void @bzero(i8* noundef %23, i32 noundef 1368)
  %24 = load %struct.ptext*, %struct.ptext** %2, align 8
  %25 = getelementptr inbounds %struct.ptext, %struct.ptext* %24, i32 0, i32 2
  %26 = getelementptr inbounds [1314 x i8], [1314 x i8]* %25, i64 0, i64 0
  %27 = getelementptr inbounds i8, i8* %26, i64 32
  %28 = load %struct.ptext*, %struct.ptext** %2, align 8
  %29 = getelementptr inbounds %struct.ptext, %struct.ptext* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ptext*, %struct.ptext** %2, align 8
  store %struct.ptext* %30, %struct.ptext** %1, align 8
  br label %31

31:                                               ; preds = %19, %15
  %32 = load %struct.ptext*, %struct.ptext** %1, align 8
  ret %struct.ptext* %32
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @bzero(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ptfree(%struct.ptext* noundef %0) #0 {
  %2 = alloca %struct.ptext*, align 8
  store %struct.ptext* %0, %struct.ptext** %2, align 8
  %3 = load %struct.ptext*, %struct.ptext** @free1, align 8
  %4 = load %struct.ptext*, %struct.ptext** %2, align 8
  %5 = getelementptr inbounds %struct.ptext, %struct.ptext* %4, i32 0, i32 5
  store %struct.ptext* %3, %struct.ptext** %5, align 8
  %6 = load %struct.ptext*, %struct.ptext** %2, align 8
  %7 = getelementptr inbounds %struct.ptext, %struct.ptext* %6, i32 0, i32 4
  store %struct.ptext* null, %struct.ptext** %7, align 8
  %8 = load %struct.ptext*, %struct.ptext** %2, align 8
  store %struct.ptext* %8, %struct.ptext** @free1, align 8
  %9 = load i32, i32* @ptext_count, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* @ptext_count, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ptlfree(%struct.ptext* noundef %0) #0 {
  %2 = alloca %struct.ptext*, align 8
  %3 = alloca %struct.ptext*, align 8
  store %struct.ptext* %0, %struct.ptext** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.ptext*, %struct.ptext** %2, align 8
  %6 = icmp ne %struct.ptext* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load %struct.ptext*, %struct.ptext** %2, align 8
  %9 = getelementptr inbounds %struct.ptext, %struct.ptext* %8, i32 0, i32 5
  %10 = load %struct.ptext*, %struct.ptext** %9, align 8
  store %struct.ptext* %10, %struct.ptext** %3, align 8
  %11 = load %struct.ptext*, %struct.ptext** %2, align 8
  call void @ptfree(%struct.ptext* noundef %11)
  %12 = load %struct.ptext*, %struct.ptext** %3, align 8
  store %struct.ptext* %12, %struct.ptext** %2, align 8
  br label %4, !llvm.loop !4

13:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
