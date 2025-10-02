; ModuleID = './t9.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colstr = type { i8*, i8* }

@useln = internal global i32 0, align 4
@table = external dso_local global [0 x %struct.colstr*], align 8
@.str = private unnamed_addr constant [26 x i8] c"Wierd.  No data in table.\00", align 1
@nlin = external dso_local global i32, align 4
@fullbot = external dso_local global [0 x i32], align 4
@instead = external dso_local global [0 x i8*], align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Wierd.  No real lines in table.\00", align 1
@leftover = external dso_local global i32, align 4
@cspace = external dso_local global i8*, align 8
@cstore = external dso_local global i8*, align 8
@last = external dso_local global i8*, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c".TE\00", align 1
@ncol = external dso_local global i32, align 4
@tab = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @yetmore() #0 {
  br label %1

1:                                                ; preds = %12, %0
  %storemerge = phi i32 [ 0, %0 ], [ %14, %12 ]
  store i32 %storemerge, i32* @useln, align 4
  %2 = icmp slt i32 %storemerge, 200
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = load i32, i32* @useln, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %5
  %7 = load %struct.colstr*, %struct.colstr** %6, align 8
  %8 = icmp eq %struct.colstr* %7, null
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i1 [ false, %1 ], [ %8, %3 ]
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %11
  %13 = load i32, i32* @useln, align 4
  %14 = add nsw i32 %13, 1
  br label %1, !llvm.loop !4

15:                                               ; preds = %9
  %16 = load i32, i32* @useln, align 4
  %17 = icmp sgt i32 %16, 199
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #3
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* @useln, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %21
  %23 = load %struct.colstr*, %struct.colstr** %22, align 8
  store %struct.colstr* %23, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  br label %24

24:                                               ; preds = %42, %19
  %storemerge1.in.in = phi i32* [ @nlin, %19 ], [ @useln, %42 ]
  %storemerge1.in = load i32, i32* %storemerge1.in.in, align 4
  %storemerge1 = add nsw i32 %storemerge1.in, -1
  store i32 %storemerge1, i32* @useln, align 4
  %25 = icmp sgt i32 %storemerge1.in, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %24
  %27 = load i32, i32* @useln, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %.not2 = icmp eq i32 %30, 0
  br i1 %.not2, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @useln, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br label %37

37:                                               ; preds = %31, %26
  %38 = phi i1 [ true, %26 ], [ %36, %31 ]
  br label %39

39:                                               ; preds = %37, %24
  %40 = phi i1 [ false, %24 ], [ %38, %37 ]
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  br label %24, !llvm.loop !6

43:                                               ; preds = %39
  %44 = load i32, i32* @useln, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void @error(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)) #3
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* @leftover, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @domore(i8* noundef %50)
  br label %52

52:                                               ; preds = %61, %47
  %53 = load i8*, i8** @cspace, align 8
  store i8* %53, i8** @cstore, align 8
  %54 = call i8* @gets1(i8* noundef %53) #3
  %.not = icmp eq i8* %54, null
  br i1 %.not, label %59, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** @cstore, align 8
  %57 = call i32 @domore(i8* noundef %56)
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i1 [ false, %52 ], [ %58, %55 ]
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  br label %52, !llvm.loop !7

62:                                               ; preds = %59
  %63 = load i8*, i8** @cstore, align 8
  store i8* %63, i8** @last, align 8
  ret void
}

declare dso_local void @error(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @domore(i8* noundef %0) #0 {
  %2 = call i32 @prefix(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %0) #3
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  br label %105

4:                                                ; preds = %1
  %5 = load i8, i8* %0, align 1
  %6 = icmp eq i8 %5, 46
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = call i16** @__ctype_b_loc() #4
  %9 = load i16*, i16** %8, align 8
  %10 = getelementptr inbounds i8, i8* %0, i64 1
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i64
  %13 = getelementptr inbounds i16, i16* %9, i64 %12
  %14 = load i16, i16* %13, align 2
  %15 = and i16 %14, 2048
  %.not6 = icmp eq i16 %15, 0
  br i1 %.not6, label %16, label %18

16:                                               ; preds = %7
  %17 = call i32 @puts(i8* noundef nonnull %0) #3
  br label %105

18:                                               ; preds = %7, %4
  store i8* null, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @instead, i64 0, i64 0), align 8
  store i32 0, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @fullbot, i64 0, i64 0), align 4
  %19 = getelementptr inbounds i8, i8* %0, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i8, i8* %0, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %29 [
    i32 95, label %25
    i32 61, label %27
  ]

25:                                               ; preds = %22
  store i32 45, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @fullbot, i64 0, i64 0), align 4
  %26 = load i32, i32* @useln, align 4
  call void @putline(i32 noundef %26, i32 noundef 0) #3
  br label %105

27:                                               ; preds = %22
  store i32 61, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @fullbot, i64 0, i64 0), align 4
  %28 = load i32, i32* @useln, align 4
  call void @putline(i32 noundef %28, i32 noundef 0) #3
  br label %105

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %18
  br label %31

31:                                               ; preds = %92, %30
  %.02 = phi i32 [ 0, %30 ], [ %93, %92 ]
  %.01 = phi i8* [ %0, %30 ], [ %53, %92 ]
  %32 = load i32, i32* @ncol, align 4
  %33 = icmp slt i32 %.02, %32
  br i1 %33, label %34, label %.loopexit

34:                                               ; preds = %31
  %35 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %36 = sext i32 %.02 to i64
  %37 = getelementptr inbounds %struct.colstr, %struct.colstr* %35, i64 %36, i32 0
  store i8* %.01, i8** %37, align 8
  %38 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %39 = sext i32 %.02 to i64
  %40 = getelementptr inbounds %struct.colstr, %struct.colstr* %38, i64 %39, i32 1
  store i8* null, i8** %40, align 8
  br label %41

41:                                               ; preds = %50, %34
  %.1 = phi i8* [ %.01, %34 ], [ %51, %50 ]
  %42 = load i8, i8* %.1, align 1
  %.not5 = icmp eq i8 %42, 0
  br i1 %.not5, label %47, label %43

43:                                               ; preds = %41
  %44 = sext i8 %42 to i32
  %45 = load i32, i32* @tab, align 4
  %46 = icmp ne i32 %45, %44
  br label %47

47:                                               ; preds = %43, %41
  %48 = phi i1 [ false, %41 ], [ %46, %43 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds i8, i8* %.1, i64 1
  br label %41, !llvm.loop !8

52:                                               ; preds = %47
  %53 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 0, i8* %.1, align 1
  %54 = load i32, i32* @useln, align 4
  %55 = call i32 @ctype(i32 noundef %54, i32 noundef %.02) #3
  switch i32 %55, label %77 [
    i32 110, label %56
    i32 97, label %67
  ]

56:                                               ; preds = %52
  %57 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %58 = sext i32 %.02 to i64
  %59 = getelementptr inbounds %struct.colstr, %struct.colstr* %57, i64 %58, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @maknew(i8* noundef %60) #3
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %65 = sext i32 %.02 to i64
  %66 = getelementptr inbounds %struct.colstr, %struct.colstr* %64, i64 %65, i32 1
  store i8* %63, i8** %66, align 8
  br label %77

67:                                               ; preds = %52
  %68 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %69 = sext i32 %.02 to i64
  %70 = getelementptr inbounds %struct.colstr, %struct.colstr* %68, i64 %69, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = sext i32 %.02 to i64
  %73 = getelementptr inbounds %struct.colstr, %struct.colstr* %68, i64 %72, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %75 = sext i32 %.02 to i64
  %76 = getelementptr inbounds %struct.colstr, %struct.colstr* %74, i64 %75, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %76, align 8
  br label %77

77:                                               ; preds = %67, %56, %52
  br label %78

78:                                               ; preds = %83, %77
  %.13 = phi i32 [ %.02, %77 ], [ %85, %83 ]
  %79 = load i32, i32* @useln, align 4
  %80 = add nsw i32 %.13, 1
  %81 = call i32 @ctype(i32 noundef %79, i32 noundef %80) #3
  %82 = icmp eq i32 %81, 115
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %85 = add nsw i32 %.13, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.colstr, %struct.colstr* %84, i64 %86, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %87, align 8
  br label %78, !llvm.loop !9

88:                                               ; preds = %78
  %89 = icmp eq i8 %42, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %88
  br label %94

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %91
  %93 = add nsw i32 %.13, 1
  br label %31, !llvm.loop !10

.loopexit:                                        ; preds = %31
  br label %94

94:                                               ; preds = %.loopexit, %90
  %.2 = phi i32 [ %.13, %90 ], [ %.02, %.loopexit ]
  br label %95

95:                                               ; preds = %99, %94
  %.3 = phi i32 [ %.2, %94 ], [ %96, %99 ]
  %96 = add nsw i32 %.3, 1
  %97 = load i32, i32* @ncol, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %101 = sext i32 %96 to i64
  %102 = getelementptr inbounds %struct.colstr, %struct.colstr* %100, i64 %101, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %102, align 8
  br label %95, !llvm.loop !11

103:                                              ; preds = %95
  %104 = load i32, i32* @useln, align 4
  call void @putline(i32 noundef %104, i32 noundef 0) #3
  br label %105

105:                                              ; preds = %103, %27, %25, %16, %3
  %.0 = phi i32 [ 0, %3 ], [ 1, %103 ], [ 1, %27 ], [ 1, %25 ], [ 1, %16 ]
  ret i32 %.0
}

declare dso_local i8* @gets1(i8* noundef) #1

declare dso_local i32 @prefix(i8* noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

declare dso_local i32 @puts(i8* noundef) #1

declare dso_local void @putline(i32 noundef, i32 noundef) #1

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

declare dso_local i32 @maknew(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone willreturn }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
