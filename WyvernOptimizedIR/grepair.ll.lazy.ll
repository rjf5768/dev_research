; ModuleID = './grepair.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/grepair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }

@numnodes = external dso_local global i32, align 4
@maxpnode = external dso_local global i32, align 4
@gnodeArray = external dso_local global %struct.gnode**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @grepair() #0 {
  br label %1

1:                                                ; preds = %66, %0
  %.01 = phi i32 [ 1, %0 ], [ %67, %66 ]
  %2 = load i32, i32* @numnodes, align 4
  %3 = load i32, i32* @maxpnode, align 4
  %4 = add nsw i32 %2, %3
  %.not = icmp sgt i32 %.01, %4
  br i1 %.not, label %68, label %5

5:                                                ; preds = %1
  %6 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds %struct.gnode*, %struct.gnode** %6, i64 %7
  %9 = load %struct.gnode*, %struct.gnode** %8, align 8
  %10 = icmp eq %struct.gnode* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br label %66

12:                                               ; preds = %5
  %13 = load i32, i32* @numnodes, align 4
  %.not3 = icmp sgt i32 %.01, %13
  br i1 %.not3, label %55, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.gnode, %struct.gnode* %9, i64 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @numnodes, align 4
  %.not5 = icmp sgt i32 %16, %17
  br i1 %.not5, label %19, label %18

18:                                               ; preds = %14
  br label %66

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %39, %19
  %.0 = phi %struct.gnode* [ %9, %19 ], [ %23, %39 ]
  %.not6 = icmp eq %struct.gnode* %.0, null
  br i1 %.not6, label %35, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.gnode, %struct.gnode* %.0, i64 0, i32 7
  %23 = load %struct.gnode*, %struct.gnode** %22, align 8
  %24 = getelementptr inbounds %struct.gnode, %struct.gnode* %.0, i64 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @numnodes, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = bitcast %struct.gnode* %.0 to i8*
  call void @free(i8* noundef %29) #2
  br label %34

30:                                               ; preds = %21
  %31 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %32 = zext i32 %.01 to i64
  %33 = getelementptr inbounds %struct.gnode*, %struct.gnode** %31, i64 %32
  store %struct.gnode* %.0, %struct.gnode** %33, align 8
  br label %40

34:                                               ; preds = %28
  br label %39

35:                                               ; preds = %20
  %36 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %37 = zext i32 %.01 to i64
  %38 = getelementptr inbounds %struct.gnode*, %struct.gnode** %36, i64 %37
  store %struct.gnode* null, %struct.gnode** %38, align 8
  br label %40

39:                                               ; preds = %34
  br label %20

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %43 = zext i32 %.01 to i64
  %44 = getelementptr inbounds %struct.gnode*, %struct.gnode** %42, i64 %43
  br label %45

45:                                               ; preds = %48, %41
  %.1.in = phi %struct.gnode** [ %44, %41 ], [ %53, %48 ]
  %.1 = load %struct.gnode*, %struct.gnode** %.1.in, align 8
  %46 = icmp eq %struct.gnode* %.1, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  br label %54

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.gnode, %struct.gnode* %.1, i64 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.gnode, %struct.gnode* %.1, i64 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.gnode, %struct.gnode* %.1, i64 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds %struct.gnode, %struct.gnode* %.1, i64 0, i32 7
  br label %45

54:                                               ; preds = %47
  br label %65

55:                                               ; preds = %12
  br label %56

56:                                               ; preds = %57, %55
  %.2 = phi %struct.gnode* [ %9, %55 ], [ %59, %57 ]
  %.not4 = icmp eq %struct.gnode* %.2, null
  br i1 %.not4, label %61, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.gnode, %struct.gnode* %.2, i64 0, i32 7
  %59 = load %struct.gnode*, %struct.gnode** %58, align 8
  %60 = bitcast %struct.gnode* %.2 to i8*
  call void @free(i8* noundef %60) #2
  br label %56, !llvm.loop !4

61:                                               ; preds = %56
  %62 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %63 = zext i32 %.01 to i64
  %64 = getelementptr inbounds %struct.gnode*, %struct.gnode** %62, i64 %63
  store %struct.gnode* null, %struct.gnode** %64, align 8
  br label %65

65:                                               ; preds = %61, %54
  br label %66

66:                                               ; preds = %65, %18, %11
  %67 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !6

68:                                               ; preds = %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
