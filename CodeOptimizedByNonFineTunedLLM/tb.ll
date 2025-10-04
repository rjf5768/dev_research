; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tb.c'
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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %143, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @ncol, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %146

8:                                                ; preds = %4
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [0 x i32], [0 x i32]* @rused, i64 0, i64 %10
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i64 0, i64 %13
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [0 x i32], [0 x i32]* @used, i64 0, i64 %16
  store i32 0, i32* %17, align 4
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %139, %8
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @nlin, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %142

22:                                               ; preds = %18
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22
  br label %139

35:                                               ; preds = %28
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @ctype(i32 noundef %36, i32 noundef %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 61
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %35
  br label %139

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %46, 110
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 97
  br i1 %50, label %51, label %122

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %53
  %55 = load %struct.colstr*, %struct.colstr** %54, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.colstr, %struct.colstr* %55, i64 %57
  %59 = getelementptr inbounds %struct.colstr, %struct.colstr* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @real(i8* noundef %60)
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [0 x i32], [0 x i32]* @rused, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %68
  %70 = load %struct.colstr*, %struct.colstr** %69, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.colstr, %struct.colstr* %70, i64 %72
  %74 = getelementptr inbounds %struct.colstr, %struct.colstr* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @real(i8* noundef %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %51
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %80
  %82 = load %struct.colstr*, %struct.colstr** %81, align 8
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.colstr, %struct.colstr* %82, i64 %84
  %86 = getelementptr inbounds %struct.colstr, %struct.colstr* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @real(i8* noundef %87)
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [0 x i32], [0 x i32]* @used, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %88
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %78, %51
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %96
  %98 = load %struct.colstr*, %struct.colstr** %97, align 8
  %99 = load i32, i32* %2, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.colstr, %struct.colstr* %98, i64 %100
  %102 = getelementptr inbounds %struct.colstr, %struct.colstr* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %121

105:                                              ; preds = %94
  %106 = load i32, i32* %1, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %107
  %109 = load %struct.colstr*, %struct.colstr** %108, align 8
  %110 = load i32, i32* %2, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.colstr, %struct.colstr* %109, i64 %111
  %113 = getelementptr inbounds %struct.colstr, %struct.colstr* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @real(i8* noundef %114)
  %116 = load i32, i32* %2, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %115
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %105, %94
  br label %138

122:                                              ; preds = %48
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %124
  %126 = load %struct.colstr*, %struct.colstr** %125, align 8
  %127 = load i32, i32* %2, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.colstr, %struct.colstr* %126, i64 %128
  %130 = getelementptr inbounds %struct.colstr, %struct.colstr* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @real(i8* noundef %131)
  %133 = load i32, i32* %2, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [0 x i32], [0 x i32]* @used, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %122, %121
  br label %139

139:                                              ; preds = %138, %44, %34
  %140 = load i32, i32* %1, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %1, align 4
  br label %18, !llvm.loop !4

142:                                              ; preds = %18
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %2, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %2, align 4
  br label %4, !llvm.loop !6

146:                                              ; preds = %4
  ret void
}

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @real(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = ptrtoint i8* %8 to i32
  %10 = call i32 @point(i32 noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %20

13:                                               ; preds = %7
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %20

19:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18, %12, %6
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @point(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @chspace() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @spcount, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [20 x i8*], [20 x i8*]* @spvecs, i64 0, i64 %4
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i32, i32* @spcount, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @spcount, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [20 x i8*], [20 x i8*]* @spvecs, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %1, align 8
  br label %34

14:                                               ; preds = %0
  %15 = load i32, i32* @spcount, align 4
  %16 = icmp sge i32 %15, 20
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @error(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %17, %14
  %19 = call noalias i8* @calloc(i64 noundef 2200, i64 noundef 1) #3
  store i8* %19, i8** %2, align 8
  %20 = load i32, i32* @spcount, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @spcount, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds [20 x i8*], [20 x i8*]* @spvecs, i64 0, i64 %22
  store i8* %19, i8** %23, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = load i8*, i8** %2, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %18
  call void @error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i8*, i8** %2, align 8
  store i8* %33, i8** %1, align 8
  br label %34

34:                                               ; preds = %32, %8
  %35 = load i8*, i8** %1, align 8
  ret i8* %35
}

declare dso_local void @error(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @alocv(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @tpcount, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** @thisvec, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  %12 = load i32, i32* @tpcount, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [50 x i8*], [50 x i8*]* @tpvecs, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 2000
  %17 = icmp ugt i8* %11, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %7, %1
  %19 = load i32, i32* @tpcount, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @tpcount, align 4
  %21 = load i32, i32* @tpcount, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [50 x i8*], [50 x i8*]* @tpvecs, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = call noalias i8* @calloc(i64 noundef 2000, i64 noundef 1) #3
  %28 = load i32, i32* @tpcount, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [50 x i8*], [50 x i8*]* @tpvecs, i64 0, i64 %29
  store i8* %27, i8** %30, align 8
  br label %31

31:                                               ; preds = %26, %18
  %32 = load i32, i32* @tpcount, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [50 x i8*], [50 x i8*]* @tpvecs, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** @thisvec, align 8
  %36 = load i8*, i8** @thisvec, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  call void @error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %39, %31
  br label %41

41:                                               ; preds = %40, %7
  %42 = load i8*, i8** @thisvec, align 8
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %3, align 8
  %44 = load i32, i32* %2, align 4
  %45 = load i8*, i8** @thisvec, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** @thisvec, align 8
  %48 = load i32*, i32** %3, align 8
  store i32* %48, i32** %4, align 8
  br label %49

49:                                               ; preds = %56, %41
  %50 = load i32*, i32** %4, align 8
  %51 = load i8*, i8** @thisvec, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = icmp ult i32* %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32*, i32** %4, align 8
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %54
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %4, align 8
  br label %49, !llvm.loop !7

59:                                               ; preds = %49
  %60 = load i32*, i32** %3, align 8
  ret i32* %60
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @release() #0 {
  store i32 0, i32* @spcount, align 4
  store i32 -1, i32* @tpcount, align 4
  store i8* null, i8** @exstore, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
