; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr33870-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr33870-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { i32, %struct.anon }
%struct.anon = type { i32, %struct.PgHdr*, %struct.PgHdr*, %struct.PgHdr*, %struct.PgHdr*, %struct.PgHdr*, i8, i16, %struct.PgHdr*, %struct.PgHdr*, i32 }

@xx = dso_local global %struct.PgHdr** null, align 8
@vx = dso_local global i32 0, align 4

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

8:                                                ; preds = %64, %1
  %9 = load %struct.PgHdr*, %struct.PgHdr** %2, align 8
  %10 = icmp ne %struct.PgHdr* %9, null
  br i1 %10, label %11, label %65

11:                                               ; preds = %8
  %12 = load %struct.PgHdr*, %struct.PgHdr** %2, align 8
  store %struct.PgHdr* %12, %struct.PgHdr** %4, align 8
  %13 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %14 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 8
  %16 = load %struct.PgHdr*, %struct.PgHdr** %15, align 8
  store %struct.PgHdr* %16, %struct.PgHdr** %2, align 8
  %17 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %18 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 8
  store %struct.PgHdr* null, %struct.PgHdr** %19, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %48, %11
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 24
  br i1 %22, label %23, label %51

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 %25
  %27 = load %struct.PgHdr*, %struct.PgHdr** %26, align 8
  %28 = icmp eq %struct.PgHdr* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 %32
  store %struct.PgHdr* %30, %struct.PgHdr** %33, align 8
  br label %51

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 %36
  %38 = load %struct.PgHdr*, %struct.PgHdr** %37, align 8
  %39 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %40 = call %struct.PgHdr* @merge_pagelist(%struct.PgHdr* noundef %38, %struct.PgHdr* noundef %39)
  store %struct.PgHdr* %40, %struct.PgHdr** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 %42
  store %struct.PgHdr* null, %struct.PgHdr** %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 %45
  store %struct.PgHdr* null, %struct.PgHdr** %46, align 8
  br label %47

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %20, !llvm.loop !4

51:                                               ; preds = %29, %20
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 24
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 %56
  %58 = load %struct.PgHdr*, %struct.PgHdr** %57, align 8
  %59 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %60 = call %struct.PgHdr* @merge_pagelist(%struct.PgHdr* noundef %58, %struct.PgHdr* noundef %59)
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 %62
  store %struct.PgHdr* %60, %struct.PgHdr** %63, align 8
  br label %64

64:                                               ; preds = %54, %51
  br label %8, !llvm.loop !6

65:                                               ; preds = %8
  %66 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 0
  %67 = load %struct.PgHdr*, %struct.PgHdr** %66, align 16
  store %struct.PgHdr* %67, %struct.PgHdr** %4, align 8
  store i32 1, i32* %5, align 4
  br label %68

68:                                               ; preds = %78, %65
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 25
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %3, i64 0, i64 %74
  %76 = load %struct.PgHdr*, %struct.PgHdr** %75, align 8
  %77 = call %struct.PgHdr* @merge_pagelist(%struct.PgHdr* noundef %72, %struct.PgHdr* noundef %76)
  store %struct.PgHdr* %77, %struct.PgHdr** %4, align 8
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %68, !llvm.loop !7

81:                                               ; preds = %68
  %82 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  ret %struct.PgHdr* %82
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
  %7 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %5, i32 0, i32 1
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 8
  store %struct.PgHdr** %8, %struct.PgHdr*** @xx, align 8
  store %struct.PgHdr* %5, %struct.PgHdr** %6, align 8
  br label %9

9:                                                ; preds = %47, %2
  %10 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  %11 = icmp ne %struct.PgHdr* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %14 = icmp ne %struct.PgHdr* %13, null
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i1 [ false, %9 ], [ %14, %12 ]
  br i1 %16, label %17, label %52

17:                                               ; preds = %15
  %18 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  %19 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %23 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %21, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  %29 = load %struct.PgHdr*, %struct.PgHdr** %6, align 8
  %30 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 8
  store %struct.PgHdr* %28, %struct.PgHdr** %31, align 8
  %32 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  store %struct.PgHdr* %32, %struct.PgHdr** %6, align 8
  %33 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  %34 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 8
  %36 = load %struct.PgHdr*, %struct.PgHdr** %35, align 8
  store %struct.PgHdr* %36, %struct.PgHdr** %3, align 8
  br label %47

37:                                               ; preds = %17
  %38 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %39 = load %struct.PgHdr*, %struct.PgHdr** %6, align 8
  %40 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 8
  store %struct.PgHdr* %38, %struct.PgHdr** %41, align 8
  %42 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  store %struct.PgHdr* %42, %struct.PgHdr** %6, align 8
  %43 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %44 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 8
  %46 = load %struct.PgHdr*, %struct.PgHdr** %45, align 8
  store %struct.PgHdr* %46, %struct.PgHdr** %4, align 8
  br label %47

47:                                               ; preds = %37, %27
  %48 = load %struct.PgHdr**, %struct.PgHdr*** @xx, align 8
  %49 = load %struct.PgHdr*, %struct.PgHdr** %48, align 8
  %50 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store volatile i32 %51, i32* @vx, align 4
  br label %9, !llvm.loop !8

52:                                               ; preds = %15
  %53 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  %54 = icmp ne %struct.PgHdr* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  %57 = load %struct.PgHdr*, %struct.PgHdr** %6, align 8
  %58 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 8
  store %struct.PgHdr* %56, %struct.PgHdr** %59, align 8
  br label %73

60:                                               ; preds = %52
  %61 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %62 = icmp ne %struct.PgHdr* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.PgHdr*, %struct.PgHdr** %4, align 8
  %65 = load %struct.PgHdr*, %struct.PgHdr** %6, align 8
  %66 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 8
  store %struct.PgHdr* %64, %struct.PgHdr** %67, align 8
  br label %72

68:                                               ; preds = %60
  %69 = load %struct.PgHdr*, %struct.PgHdr** %6, align 8
  %70 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %70, i32 0, i32 8
  store %struct.PgHdr* null, %struct.PgHdr** %71, align 8
  br label %72

72:                                               ; preds = %68, %63
  br label %73

73:                                               ; preds = %72, %55
  %74 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %5, i32 0, i32 1
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %74, i32 0, i32 8
  %76 = load %struct.PgHdr*, %struct.PgHdr** %75, align 8
  ret %struct.PgHdr* %76
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x %struct.PgHdr], align 16
  %3 = alloca %struct.PgHdr*, align 8
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 0
  %5 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  store i32 5, i32* %6, align 8
  %7 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 1
  %8 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 0
  %9 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 8
  store %struct.PgHdr* %7, %struct.PgHdr** %10, align 8
  %11 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 1
  %12 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  store i32 4, i32* %13, align 8
  %14 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 2
  %15 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 1
  %16 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 8
  store %struct.PgHdr* %14, %struct.PgHdr** %17, align 8
  %18 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 2
  %19 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 3
  %22 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 2
  %23 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 8
  store %struct.PgHdr* %21, %struct.PgHdr** %24, align 8
  %25 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 3
  %26 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 0
  store i32 3, i32* %27, align 8
  %28 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 3
  %29 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 8
  store %struct.PgHdr* null, %struct.PgHdr** %30, align 8
  %31 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %2, i64 0, i64 0
  %32 = call %struct.PgHdr* @sort_pagelist(%struct.PgHdr* noundef %31)
  store %struct.PgHdr* %32, %struct.PgHdr** %3, align 8
  %33 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  %34 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 8
  %36 = load %struct.PgHdr*, %struct.PgHdr** %35, align 8
  %37 = load %struct.PgHdr*, %struct.PgHdr** %3, align 8
  %38 = icmp eq %struct.PgHdr* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %0
  call void @abort() #3
  unreachable

40:                                               ; preds = %0
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
