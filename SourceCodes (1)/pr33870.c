; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr33870.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr33870.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { i32, %struct.PgHdr*, %struct.PgHdr*, %struct.PgHdr*, %struct.PgHdr*, %struct.PgHdr*, i8, i16, %struct.PgHdr*, %struct.PgHdr*, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.PgHdr* @sort_pagelist(%struct.PgHdr* noundef %0) #0 {
  %2 = alloca %struct.PgHdr*, align 8
  %3 = alloca [25 x %struct.PgHdr*], align 16
  %4 = alloca %struct.PgHdr*, align 8
  %5 = alloca i32, align 4
  store %struct.PgHdr* %0, %struct.PgHdr** %2, align 8
  %6 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 0
  %7 = bitcast %struct.PgHdr** %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 200, i1 false)
  br label %8

8:                                                ; preds = %59, %1
  %9 = load %struct.PgHdr*, %struct.PgHdr** %2, align 8
  %10 = icmp ne %struct.PgHdr* %9, null
  br i1 %10, label %11, label %60

11:                                               ; preds = %8
  %12 = load %struct.PgHdr*, %struct.PgHdr** %2, align 8
  store %struct.PgHdr* %12, %struct.PgHdr** %4, align 8
  %13 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %14 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %13, i32 0, i32 8
  %15 = load %struct.PgHdr*, %struct.PgHdr** %14, align 8
  store %struct.PgHdr* %15, %struct.PgHdr** %2, align 8
  %16 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %17 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %16, i32 0, i32 8
  store %struct.PgHdr* null, %struct.PgHdr** %17, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %43, %11
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 24
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 %23
  %25 = load %struct.PgHdr*, %struct.PgHdr** %24, align 8
  %26 = icmp eq %struct.PgHdr* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 %30
  store %struct.PgHdr* %28, %struct.PgHdr** %31, align 8
  br label %46

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 %34
  %36 = load %struct.PgHdr*, %struct.PgHdr** %35, align 8
  %37 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %38 = call %struct.PgHdr* @merge_pagelist(%struct.PgHdr* noundef %36, %struct.PgHdr* noundef %37)
  store %struct.PgHdr* %38, %struct.PgHdr** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 %40
  store %struct.PgHdr* null, %struct.PgHdr** %41, align 8
  br label %42

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %18, !llvm.loop !4

46:                                               ; preds = %27, %18
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 24
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 %51
  %53 = load %struct.PgHdr*, %struct.PgHdr** %52, align 8
  %54 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %55 = call %struct.PgHdr* @merge_pagelist(%struct.PgHdr* noundef %53, %struct.PgHdr* noundef %54)
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 %57
  store %struct.PgHdr* %55, %struct.PgHdr** %58, align 8
  br label %59

59:                                               ; preds = %49, %46
  br label %8, !llvm.loop !6

60:                                               ; preds = %8
  %61 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 0
  %62 = load %struct.PgHdr*, %struct.PgHdr** %61, align 16
  store %struct.PgHdr* %62, %struct.PgHdr** %4, align 8
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %73, %60
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 25
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 %69
  %71 = load %struct.PgHdr*, %struct.PgHdr** %70, align 8
  %72 = call %struct.PgHdr* @merge_pagelist(%struct.PgHdr* noundef %67, %struct.PgHdr* noundef %71)
  store %struct.PgHdr* %72, %struct.PgHdr** %4, align 8
  br label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %63, !llvm.loop !7

76:                                               ; preds = %63
  %77 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  ret %struct.PgHdr* %77
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.PgHdr* @merge_pagelist(%struct.PgHdr* noundef %0, %struct.PgHdr* noundef %1) #0 {
  %3 = alloca %struct.PgHdr*, align 8
  %4 = alloca %struct.PgHdr*, align 8
  %5 = alloca %struct.PgHdr, align 8
  %6 = alloca %struct.PgHdr*, align 8
  store %struct.PgHdr* %0, %struct.PgHdr** %3, align 8
  store %struct.PgHdr* %1, %struct.PgHdr** %4, align 8
  store %struct.PgHdr* %5, %struct.PgHdr** %6, align 8
  br label %7

7:                                                ; preds = %39, %2
  %8 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  %9 = icmp ne %struct.PgHdr* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %12 = icmp ne %struct.PgHdr* %11, null
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i1 [ false, %7 ], [ %12, %10 ]
  br i1 %14, label %15, label %40

15:                                               ; preds = %13
  %16 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  %17 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %20 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  %25 = load %struct.PgHdr*, %struct.PgHdr** %6, align 8
  %26 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %25, i32 0, i32 8
  store %struct.PgHdr* %24, %struct.PgHdr** %26, align 8
  %27 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  store %struct.PgHdr* %27, %struct.PgHdr** %6, align 8
  %28 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  %29 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %28, i32 0, i32 8
  %30 = load %struct.PgHdr*, %struct.PgHdr** %29, align 8
  store %struct.PgHdr* %30, %struct.PgHdr** %3, align 8
  br label %39

31:                                               ; preds = %15
  %32 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %33 = load %struct.PgHdr*, %struct.PgHdr** %6, align 8
  %34 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %33, i32 0, i32 8
  store %struct.PgHdr* %32, %struct.PgHdr** %34, align 8
  %35 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  store %struct.PgHdr* %35, %struct.PgHdr** %6, align 8
  %36 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %37 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %36, i32 0, i32 8
  %38 = load %struct.PgHdr*, %struct.PgHdr** %37, align 8
  store %struct.PgHdr* %38, %struct.PgHdr** %4, align 8
  br label %39

39:                                               ; preds = %31, %23
  br label %7, !llvm.loop !8

40:                                               ; preds = %13
  %41 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  %42 = icmp ne %struct.PgHdr* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  %45 = load %struct.PgHdr*, %struct.PgHdr** %6, align 8
  %46 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %45, i32 0, i32 8
  store %struct.PgHdr* %44, %struct.PgHdr** %46, align 8
  br label %58

47:                                               ; preds = %40
  %48 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %49 = icmp ne %struct.PgHdr* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %52 = load %struct.PgHdr*, %struct.PgHdr** %6, align 8
  %53 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %52, i32 0, i32 8
  store %struct.PgHdr* %51, %struct.PgHdr** %53, align 8
  br label %57

54:                                               ; preds = %47
  %55 = load %struct.PgHdr*, %struct.PgHdr** %6, align 8
  %56 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %55, i32 0, i32 8
  store %struct.PgHdr* null, %struct.PgHdr** %56, align 8
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57, %43
  %59 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %5, i32 0, i32 8
  %60 = load %struct.PgHdr*, %struct.PgHdr** %59, align 8
  ret %struct.PgHdr* %60
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x %struct.PgHdr], align 16
  %3 = alloca %struct.PgHdr*, align 8
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 0
  %5 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %4, i32 0, i32 0
  store i32 5, i32* %5, align 16
  %6 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 1
  %7 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 0
  %8 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %7, i32 0, i32 8
  store %struct.PgHdr* %6, %struct.PgHdr** %8, align 8
  %9 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 1
  %10 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %9, i32 0, i32 0
  store i32 4, i32* %10, align 16
  %11 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 2
  %12 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 1
  %13 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %12, i32 0, i32 8
  store %struct.PgHdr* %11, %struct.PgHdr** %13, align 8
  %14 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 2
  %15 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %14, i32 0, i32 0
  store i32 1, i32* %15, align 16
  %16 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 3
  %17 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 2
  %18 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %17, i32 0, i32 8
  store %struct.PgHdr* %16, %struct.PgHdr** %18, align 8
  %19 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 3
  %20 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %19, i32 0, i32 0
  store i32 3, i32* %20, align 16
  %21 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 3
  %22 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %21, i32 0, i32 8
  store %struct.PgHdr* null, %struct.PgHdr** %22, align 8
  %23 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 0
  %24 = call %struct.PgHdr* @sort_pagelist(%struct.PgHdr* noundef %23)
  store %struct.PgHdr* %24, %struct.PgHdr** %3, align 8
  %25 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  %26 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %25, i32 0, i32 8
  %27 = load %struct.PgHdr*, %struct.PgHdr** %26, align 8
  %28 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  %29 = icmp eq %struct.PgHdr* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %0
  call void @abort() #3
  unreachable

31:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

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
!8 = distinct !{!8, !5}
