; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tt.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.colstr = type { i8*, i8* }

@instead = external dso_local global [0 x i8*], align 8
@fullbot = external dso_local global [0 x i32], align 4
@stynum = external dso_local global [0 x i32], align 4
@style = external dso_local global [100 x [20 x i32]], align 16
@ncol = external dso_local global i32, align 4
@tabout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [7 x i8] c"\\h'|0'\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\\h'(|\\n(%du+|\\n(%du)/2u'\00", align 1
@table = external dso_local global [0 x %struct.colstr*], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ctype(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %31

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i64 0, i64 %25
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [20 x i32], [20 x i32]* %26, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %19, %18, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @min(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fspan(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @ncol, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ctype(i32 noundef %11, i32 noundef %12)
  %14 = icmp eq i32 %13, 115
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ false, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lspan(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @ctype(i32 noundef %7, i32 noundef %8)
  %10 = icmp ne i32 %9, 115
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ncol, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ctype(i32 noundef %19, i32 noundef %20)
  %22 = icmp eq i32 %21, 115
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %37

24:                                               ; preds = %18, %12
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %32, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %5, align 4
  %29 = call i32 @ctype(i32 noundef %26, i32 noundef %28)
  %30 = icmp eq i32 %29, 115
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %25, !llvm.loop !4

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %23, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ctspan(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %8

8:                                                ; preds = %22, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ncol, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ctype(i32 noundef %13, i32 noundef %14)
  %16 = icmp eq i32 %15, 115
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi i1 [ false, %8 ], [ %16, %12 ]
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %8, !llvm.loop !6

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tohcol(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %16

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, 40
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %12, 80
  %14 = sub nsw i32 %13, 1
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %11, i32 noundef %14)
  br label %16

16:                                               ; preds = %8, %5
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @allh(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %30, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ncol, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @thish(i32 noundef %19, i32 noundef %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %35

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %30

29:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %14, !llvm.loop !7

33:                                               ; preds = %14
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %24, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @thish(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.colstr*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %102

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %102

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ctype(i32 noundef %17, i32 noundef %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 95
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 45
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %16
  store i32 45, i32* %3, align 4
  br label %102

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 61
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 61, i32* %3, align 4
  br label %102

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 94
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %102

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  br label %102

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 115
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @thish(i32 noundef %49, i32 noundef %51)
  store i32 %52, i32* %3, align 4
  br label %102

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %102

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %59
  %61 = load %struct.colstr*, %struct.colstr** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.colstr, %struct.colstr* %61, i64 %63
  store %struct.colstr* %64, %struct.colstr** %8, align 8
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 97
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load %struct.colstr*, %struct.colstr** %8, align 8
  %69 = getelementptr inbounds %struct.colstr, %struct.colstr* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  br label %75

71:                                               ; preds = %57
  %72 = load %struct.colstr*, %struct.colstr** %8, align 8
  %73 = getelementptr inbounds %struct.colstr, %struct.colstr* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i8* [ %70, %67 ], [ %74, %71 ]
  store i8* %76, i8** %7, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %7, align 8
  %81 = ptrtoint i8* %80 to i32
  %82 = call i32 @point(i32 noundef %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i8*, i8** %7, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84, %75
  store i32 1, i32* %3, align 4
  br label %102

90:                                               ; preds = %84, %79
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @vspen(i8* noundef %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 1, i32* %3, align 4
  br label %102

95:                                               ; preds = %90
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @barent(i8* noundef %96)
  store i32 %97, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %102

101:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %99, %94, %89, %56, %48, %40, %33, %29, %25, %15, %11
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @point(i32 noundef) #1

declare dso_local i32 @vspen(i8* noundef) #1

declare dso_local i32 @barent(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
