; ModuleID = './tb.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colstr = type { i8*, i8* }

@ncol = external dso_local global i32, align 4
@rused = external dso_local global [0 x i32], align 4
@lused = external dso_local global [0 x i32], align 4
@used = external dso_local global [0 x i32], align 4
@nlin = external dso_local global i32, align 4
@instead = external dso_local global [0 x i8*], align 8
@fullbot = external dso_local global [0 x i32], align 4
@table = external dso_local global [0 x %struct.colstr*], align 8
@spcount = dso_local global i32 0, align 4
@spvecs = dso_local global [20 x i8*] zeroinitializer, align 16
@.str = private unnamed_addr constant [29 x i8] c"Too many characters in table\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"no space for characters\00", align 1
@tpcount = dso_local global i32 -1, align 4
@thisvec = dso_local global i8* null, align 8
@tpvecs = dso_local global [50 x i8*] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"no space for vectors\00", align 1
@exstore = external dso_local global i8*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @checkuse() #0 {
  br label %1

1:                                                ; preds = %100, %0
  %.01 = phi i32 [ 0, %0 ], [ %101, %100 ]
  %2 = load i32, i32* @ncol, align 4
  %3 = icmp slt i32 %.01, %2
  br i1 %3, label %4, label %102

4:                                                ; preds = %1
  %5 = zext i32 %.01 to i64
  %6 = getelementptr inbounds [0 x i32], [0 x i32]* @rused, i64 0, i64 %5
  store i32 0, i32* %6, align 4
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i64 0, i64 %7
  store i32 0, i32* %8, align 4
  %9 = zext i32 %.01 to i64
  %10 = getelementptr inbounds [0 x i32], [0 x i32]* @used, i64 0, i64 %9
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %97, %4
  %.0 = phi i32 [ 0, %4 ], [ %98, %97 ]
  %12 = load i32, i32* @nlin, align 4
  %13 = icmp slt i32 %.0, %12
  br i1 %13, label %14, label %99

14:                                               ; preds = %11
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  %.not = icmp eq i8* %17, null
  br i1 %.not, label %18, label %22

18:                                               ; preds = %14
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %23, label %22

22:                                               ; preds = %18, %14
  br label %97

23:                                               ; preds = %18
  %24 = call i32 @ctype(i32 noundef %.0, i32 noundef %.01) #4
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = icmp eq i32 %24, 61
  br i1 %27, label %28, label %29

28:                                               ; preds = %26, %23
  br label %97

29:                                               ; preds = %26
  %30 = icmp eq i32 %24, 110
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  %32 = icmp eq i32 %24, 97
  br i1 %32, label %33, label %84

33:                                               ; preds = %31, %29
  %34 = zext i32 %.0 to i64
  %35 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %34
  %36 = load %struct.colstr*, %struct.colstr** %35, align 8
  %37 = zext i32 %.01 to i64
  %38 = getelementptr inbounds %struct.colstr, %struct.colstr* %36, i64 %37, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @real(i8* noundef %39)
  %41 = zext i32 %.01 to i64
  %42 = getelementptr inbounds [0 x i32], [0 x i32]* @rused, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = zext i32 %.0 to i64
  %46 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %45
  %47 = load %struct.colstr*, %struct.colstr** %46, align 8
  %48 = zext i32 %.01 to i64
  %49 = getelementptr inbounds %struct.colstr, %struct.colstr* %47, i64 %48, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @real(i8* noundef %50)
  %.not3 = icmp eq i32 %51, 0
  br i1 %.not3, label %52, label %64

52:                                               ; preds = %33
  %53 = zext i32 %.0 to i64
  %54 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %53
  %55 = load %struct.colstr*, %struct.colstr** %54, align 8
  %56 = zext i32 %.01 to i64
  %57 = getelementptr inbounds %struct.colstr, %struct.colstr* %55, i64 %56, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @real(i8* noundef %58)
  %60 = zext i32 %.01 to i64
  %61 = getelementptr inbounds [0 x i32], [0 x i32]* @used, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %52, %33
  %65 = zext i32 %.0 to i64
  %66 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %65
  %67 = load %struct.colstr*, %struct.colstr** %66, align 8
  %68 = zext i32 %.01 to i64
  %69 = getelementptr inbounds %struct.colstr, %struct.colstr* %67, i64 %68, i32 1
  %70 = load i8*, i8** %69, align 8
  %.not4 = icmp eq i8* %70, null
  br i1 %.not4, label %83, label %71

71:                                               ; preds = %64
  %72 = zext i32 %.0 to i64
  %73 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %72
  %74 = load %struct.colstr*, %struct.colstr** %73, align 8
  %75 = zext i32 %.01 to i64
  %76 = getelementptr inbounds %struct.colstr, %struct.colstr* %74, i64 %75, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @real(i8* noundef %77)
  %79 = zext i32 %.01 to i64
  %80 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %71, %64
  br label %96

84:                                               ; preds = %31
  %85 = zext i32 %.0 to i64
  %86 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %85
  %87 = load %struct.colstr*, %struct.colstr** %86, align 8
  %88 = zext i32 %.01 to i64
  %89 = getelementptr inbounds %struct.colstr, %struct.colstr* %87, i64 %88, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @real(i8* noundef %90)
  %92 = zext i32 %.01 to i64
  %93 = getelementptr inbounds [0 x i32], [0 x i32]* @used, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %84, %83
  br label %97

97:                                               ; preds = %96, %28, %22
  %98 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !4

99:                                               ; preds = %11
  br label %100

100:                                              ; preds = %99
  %101 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !6

102:                                              ; preds = %1
  ret void
}

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @real(i8* noundef %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %14

4:                                                ; preds = %1
  %5 = ptrtoint i8* %0 to i64
  %6 = trunc i64 %5 to i32
  %7 = call i32 @point(i32 noundef %6) #4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %4
  br label %14

9:                                                ; preds = %4
  %10 = load i8, i8* %0, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %14

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %12, %8, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %12 ], [ 1, %13 ], [ 1, %8 ]
  ret i32 %.0
}

declare dso_local i32 @point(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @chspace() #0 {
  %1 = load i32, i32* @spcount, align 4
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [20 x i8*], [20 x i8*]* @spvecs, i64 0, i64 %2
  %4 = load i8*, i8** %3, align 8
  %.not = icmp eq i8* %4, null
  br i1 %.not, label %11, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @spcount, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @spcount, align 4
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds [20 x i8*], [20 x i8*]* @spvecs, i64 0, i64 %8
  %10 = load i8*, i8** %9, align 8
  br label %30

11:                                               ; preds = %0
  %12 = load i32, i32* @spcount, align 4
  %13 = icmp sgt i32 %12, 19
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @error(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0)) #4
  br label %15

15:                                               ; preds = %14, %11
  %16 = call noalias dereferenceable_or_null(2200) i8* @calloc(i64 noundef 2200, i64 noundef 1) #4
  %17 = load i32, i32* @spcount, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @spcount, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [20 x i8*], [20 x i8*]* @spvecs, i64 0, i64 %19
  store i8* %16, i8** %20, align 8
  %21 = ptrtoint i8* %16 to i64
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = ptrtoint i8* %16 to i64
  %26 = trunc i64 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %15
  call void @error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %29

29:                                               ; preds = %28, %24
  br label %30

30:                                               ; preds = %29, %5
  %.0 = phi i8* [ %10, %5 ], [ %16, %29 ]
  ret i8* %.0
}

declare dso_local void @error(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @alocv(i32 noundef %0) #0 {
  %2 = load i32, i32* @tpcount, align 4
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @thisvec, align 8
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds i8, i8* %5, i64 %6
  %8 = load i32, i32* @tpcount, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [50 x i8*], [50 x i8*]* @tpvecs, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 2000
  %13 = icmp ugt i8* %7, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %4, %1
  %15 = load i32, i32* @tpcount, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @tpcount, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [50 x i8*], [50 x i8*]* @tpvecs, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = call noalias dereferenceable_or_null(2000) i8* @calloc(i64 noundef 2000, i64 noundef 1) #4
  %23 = load i32, i32* @tpcount, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [50 x i8*], [50 x i8*]* @tpvecs, i64 0, i64 %24
  store i8* %22, i8** %25, align 8
  br label %26

26:                                               ; preds = %21, %14
  %27 = load i32, i32* @tpcount, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [50 x i8*], [50 x i8*]* @tpvecs, i64 0, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** @thisvec, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  call void @error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #4
  br label %35

35:                                               ; preds = %34, %26
  br label %36

36:                                               ; preds = %35, %4
  %37 = load i32*, i32** bitcast (i8** @thisvec to i32**), align 8
  %.cast = bitcast i32* %37 to i8*
  %38 = sext i32 %0 to i64
  %39 = getelementptr inbounds i8, i8* %.cast, i64 %38
  store i8* %39, i8** @thisvec, align 8
  br label %40

40:                                               ; preds = %44, %36
  %.0 = phi i32* [ %37, %36 ], [ %45, %44 ]
  %41 = load i32*, i32** bitcast (i8** @thisvec to i32**), align 8
  %42 = icmp ult i32* %.0, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  store i32 0, i32* %.0, align 4
  br label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds i32, i32* %.0, i64 1
  br label %40, !llvm.loop !7

46:                                               ; preds = %40
  ret i32* %37
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @release() #3 {
  store i32 0, i32* @spcount, align 4
  store i32 -1, i32* @tpcount, align 4
  store i8* null, i8** @exstore, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
