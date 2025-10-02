; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t9.c'
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
  store i32 0, i32* @useln, align 4
  br label %1

1:                                                ; preds = %13, %0
  %2 = load i32, i32* @useln, align 4
  %3 = icmp slt i32 %2, 200
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = load i32, i32* @useln, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %6
  %8 = load %struct.colstr*, %struct.colstr** %7, align 8
  %9 = icmp eq %struct.colstr* %8, null
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i1 [ false, %1 ], [ %9, %4 ]
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12
  %14 = load i32, i32* @useln, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @useln, align 4
  br label %1, !llvm.loop !4

16:                                               ; preds = %10
  %17 = load i32, i32* @useln, align 4
  %18 = icmp sge i32 %17, 200
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* @useln, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %22
  %24 = load %struct.colstr*, %struct.colstr** %23, align 8
  store %struct.colstr* %24, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %25 = load i32, i32* @nlin, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* @useln, align 4
  br label %27

27:                                               ; preds = %47, %20
  %28 = load i32, i32* @useln, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i32, i32* @useln, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @useln, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i1 [ true, %30 ], [ %41, %36 ]
  br label %44

44:                                               ; preds = %42, %27
  %45 = phi i1 [ false, %27 ], [ %43, %42 ]
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* @useln, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* @useln, align 4
  br label %27, !llvm.loop !6

50:                                               ; preds = %44
  %51 = load i32, i32* @useln, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  call void @error(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* @leftover, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @domore(i8* noundef %57)
  br label %59

59:                                               ; preds = %69, %54
  %60 = load i8*, i8** @cspace, align 8
  store i8* %60, i8** @cstore, align 8
  %61 = call i8* @gets1(i8* noundef %60)
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8*, i8** @cstore, align 8
  %65 = call i32 @domore(i8* noundef %64)
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  br label %59, !llvm.loop !7

70:                                               ; preds = %67
  %71 = load i8*, i8** @cstore, align 8
  store i8* %71, i8** @last, align 8
  ret void
}

declare dso_local void @error(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @domore(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @prefix(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %154

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 46
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = call i16** @__ctype_b_loc() #3
  %18 = load i16*, i16** %17, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %18, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 2048
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %16
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @puts(i8* noundef %30)
  store i32 1, i32* %2, align 4
  br label %154

32:                                               ; preds = %16, %10
  store i8* null, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @instead, i64 0, i64 0), align 8
  store i32 0, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @fullbot, i64 0, i64 0), align 4
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  switch i32 %42, label %47 [
    i32 95, label %43
    i32 61, label %45
  ]

43:                                               ; preds = %38
  store i32 45, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @fullbot, i64 0, i64 0), align 4
  %44 = load i32, i32* @useln, align 4
  call void @putline(i32 noundef %44, i32 noundef 0)
  store i32 1, i32* %2, align 4
  br label %154

45:                                               ; preds = %38
  store i32 61, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @fullbot, i64 0, i64 0), align 4
  %46 = load i32, i32* @useln, align 4
  call void @putline(i32 noundef %46, i32 noundef 0)
  store i32 1, i32* %2, align 4
  br label %154

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %32
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %137, %48
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @ncol, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %140

53:                                               ; preds = %49
  %54 = load i8*, i8** %3, align 8
  %55 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.colstr, %struct.colstr* %55, i64 %57
  %59 = getelementptr inbounds %struct.colstr, %struct.colstr* %58, i32 0, i32 0
  store i8* %54, i8** %59, align 8
  %60 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.colstr, %struct.colstr* %60, i64 %62
  %64 = getelementptr inbounds %struct.colstr, %struct.colstr* %63, i32 0, i32 1
  store i8* null, i8** %64, align 8
  br label %65

65:                                               ; preds = %77, %53
  %66 = load i8*, i8** %3, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  store i32 %68, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @tab, align 4
  %73 = icmp ne i32 %71, %72
  br label %74

74:                                               ; preds = %70, %65
  %75 = phi i1 [ false, %65 ], [ %73, %70 ]
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %3, align 8
  br label %65, !llvm.loop !8

80:                                               ; preds = %74
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %3, align 8
  store i8 0, i8* %81, align 1
  %83 = load i32, i32* @useln, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @ctype(i32 noundef %83, i32 noundef %84)
  switch i32 %85, label %118 [
    i32 110, label %86
    i32 97, label %101
  ]

86:                                               ; preds = %80
  %87 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.colstr, %struct.colstr* %87, i64 %89
  %91 = getelementptr inbounds %struct.colstr, %struct.colstr* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @maknew(i8* noundef %92)
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.colstr, %struct.colstr* %96, i64 %98
  %100 = getelementptr inbounds %struct.colstr, %struct.colstr* %99, i32 0, i32 1
  store i8* %95, i8** %100, align 8
  br label %118

101:                                              ; preds = %80
  %102 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.colstr, %struct.colstr* %102, i64 %104
  %106 = getelementptr inbounds %struct.colstr, %struct.colstr* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.colstr, %struct.colstr* %108, i64 %110
  %112 = getelementptr inbounds %struct.colstr, %struct.colstr* %111, i32 0, i32 1
  store i8* %107, i8** %112, align 8
  %113 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.colstr, %struct.colstr* %113, i64 %115
  %117 = getelementptr inbounds %struct.colstr, %struct.colstr* %116, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %117, align 8
  br label %118

118:                                              ; preds = %80, %101, %86
  br label %119

119:                                              ; preds = %125, %118
  %120 = load i32, i32* @useln, align 4
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  %123 = call i32 @ctype(i32 noundef %120, i32 noundef %122)
  %124 = icmp eq i32 %123, 115
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.colstr, %struct.colstr* %126, i64 %129
  %131 = getelementptr inbounds %struct.colstr, %struct.colstr* %130, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %131, align 8
  br label %119, !llvm.loop !9

132:                                              ; preds = %119
  %133 = load i32, i32* %5, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %140

136:                                              ; preds = %132
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %49, !llvm.loop !10

140:                                              ; preds = %135, %49
  br label %141

141:                                              ; preds = %146, %140
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* @ncol, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 0), align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.colstr, %struct.colstr* %147, i64 %149
  %151 = getelementptr inbounds %struct.colstr, %struct.colstr* %150, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %151, align 8
  br label %141, !llvm.loop !11

152:                                              ; preds = %141
  %153 = load i32, i32* @useln, align 4
  call void @putline(i32 noundef %153, i32 noundef 0)
  store i32 1, i32* %2, align 4
  br label %154

154:                                              ; preds = %152, %45, %43, %29, %9
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i8* @gets1(i8* noundef) #1

declare dso_local i32 @prefix(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

declare dso_local i32 @puts(i8* noundef) #1

declare dso_local void @putline(i32 noundef, i32 noundef) #1

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

declare dso_local i32 @maknew(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn }

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
