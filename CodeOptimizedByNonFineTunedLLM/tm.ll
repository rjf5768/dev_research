; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tm.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exstore = external dso_local global i8*, align 8
@exlim = external dso_local global i8*, align 8
@delim1 = external dso_local global i32, align 4
@delim2 = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @maknew(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %6, align 8
  store i8* null, i8** %8, align 8
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 92
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 38
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %24, %18, %15
  br label %27

27:                                               ; preds = %26
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %3, align 8
  br label %10, !llvm.loop !4

30:                                               ; preds = %10
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %3, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %116

34:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %71, %34
  %36 = load i8*, i8** %3, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %35
  %40 = load i8*, i8** %3, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 46
  br i1 %43, label %44, label %70

44:                                               ; preds = %39
  %45 = load i8*, i8** %3, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @ineqn(i8* noundef %45, i8* noundef %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %3, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ugt i8* %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 -1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = call i32 @digit(i32 noundef %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %53, %49
  %61 = load i8*, i8** %3, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = call i32 @digit(i32 noundef %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60, %53
  %68 = load i8*, i8** %3, align 8
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %60, %44, %39
  br label %71

71:                                               ; preds = %70
  %72 = load i8*, i8** %3, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %3, align 8
  br label %35, !llvm.loop !6

74:                                               ; preds = %35
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %96, %77
  %79 = load i8*, i8** %3, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = icmp ugt i8* %79, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = load i8*, i8** %3, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 -1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = call i32 @digit(i32 noundef %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load i8*, i8** %3, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @ineqn(i8* noundef %90, i8* noundef %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  br label %99

95:                                               ; preds = %89, %82
  br label %96

96:                                               ; preds = %95
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 -1
  store i8* %98, i8** %3, align 8
  br label %78, !llvm.loop !7

99:                                               ; preds = %94, %78
  br label %100

100:                                              ; preds = %99, %74
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load i8*, i8** %6, align 8
  %105 = load i8*, i8** %3, align 8
  %106 = icmp eq i8* %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %144

108:                                              ; preds = %103, %100
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  store i8* %114, i8** %3, align 8
  br label %115

115:                                              ; preds = %111, %108
  br label %118

116:                                              ; preds = %30
  %117 = load i8*, i8** %8, align 8
  store i8* %117, i8** %3, align 8
  br label %118

118:                                              ; preds = %116, %115
  %119 = load i8*, i8** %3, align 8
  store i8* %119, i8** %6, align 8
  %120 = load i8*, i8** @exstore, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i8*, i8** @exstore, align 8
  %124 = load i8*, i8** @exlim, align 8
  %125 = icmp ugt i8* %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122, %118
  %127 = call i8* (...) @chspace()
  store i8* %127, i8** @exstore, align 8
  %128 = load i8*, i8** @exstore, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2000
  store i8* %129, i8** @exlim, align 8
  br label %130

130:                                              ; preds = %126, %122
  %131 = load i8*, i8** @exstore, align 8
  store i8* %131, i8** %7, align 8
  br label %132

132:                                              ; preds = %139, %130
  %133 = load i8*, i8** %3, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %3, align 8
  %135 = load i8, i8* %133, align 1
  %136 = load i8*, i8** @exstore, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** @exstore, align 8
  store i8 %135, i8* %136, align 1
  %138 = icmp ne i8 %135, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %132, !llvm.loop !8

140:                                              ; preds = %132
  %141 = load i8*, i8** %6, align 8
  store i8 0, i8* %141, align 1
  %142 = load i8*, i8** %7, align 8
  %143 = ptrtoint i8* %142 to i32
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %140, %107
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ineqn(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %38, %2
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @delim1, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %38

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @delim2, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %32, %29
  br label %38

38:                                               ; preds = %37, %28
  br label %8, !llvm.loop !9

39:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @digit(i32 noundef) #1

declare dso_local i8* @chspace(...) #1

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
