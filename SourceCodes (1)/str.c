; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/str.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @strncmpic(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %9, align 8
  br label %12

12:                                               ; preds = %76, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i8*, i8** %9, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %79

22:                                               ; preds = %20
  %23 = call i16** @__ctype_b_loc() #2
  %24 = load i16*, i16** %23, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %24, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 256
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %22
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = sub nsw i32 %37, 65
  %39 = add nsw i32 %38, 97
  br label %44

40:                                               ; preds = %22
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  br label %44

44:                                               ; preds = %40, %34
  %45 = phi i32 [ %39, %34 ], [ %43, %40 ]
  %46 = call i16** @__ctype_b_loc() #2
  %47 = load i16*, i16** %46, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %47, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = and i32 %54, 256
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load i8*, i8** %9, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = sub nsw i32 %60, 65
  %62 = add nsw i32 %61, 97
  br label %67

63:                                               ; preds = %44
  %64 = load i8*, i8** %9, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  br label %67

67:                                               ; preds = %63, %57
  %68 = phi i32 [ %62, %57 ], [ %66, %63 ]
  %69 = icmp eq i32 %45, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %9, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %8, align 8
  br label %76

75:                                               ; preds = %67
  br label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %7, align 4
  br label %12, !llvm.loop !4

79:                                               ; preds = %75, %20
  %80 = load i32, i32* %7, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %130

82:                                               ; preds = %79
  %83 = call i16** @__ctype_b_loc() #2
  %84 = load i16*, i16** %83, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i16, i16* %84, i64 %88
  %90 = load i16, i16* %89, align 2
  %91 = zext i16 %90 to i32
  %92 = and i32 %91, 256
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %82
  %95 = load i8*, i8** %8, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = sub nsw i32 %97, 65
  %99 = add nsw i32 %98, 97
  br label %104

100:                                              ; preds = %82
  %101 = load i8*, i8** %8, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  br label %104

104:                                              ; preds = %100, %94
  %105 = phi i32 [ %99, %94 ], [ %103, %100 ]
  %106 = call i16** @__ctype_b_loc() #2
  %107 = load i16*, i16** %106, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i16, i16* %107, i64 %111
  %113 = load i16, i16* %112, align 2
  %114 = zext i16 %113 to i32
  %115 = and i32 %114, 256
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %104
  %118 = load i8*, i8** %9, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = sub nsw i32 %120, 65
  %122 = add nsw i32 %121, 97
  br label %127

123:                                              ; preds = %104
  %124 = load i8*, i8** %9, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  br label %127

127:                                              ; preds = %123, %117
  %128 = phi i32 [ %122, %117 ], [ %126, %123 ]
  %129 = sub nsw i32 %105, %128
  store i32 %129, i32* %4, align 4
  br label %131

130:                                              ; preds = %79
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %127
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @strcmpic(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %6, align 8
  br label %9

9:                                                ; preds = %68, %2
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %69

14:                                               ; preds = %9
  %15 = call i16** @__ctype_b_loc() #2
  %16 = load i16*, i16** %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %16, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 256
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %14
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = sub nsw i32 %29, 65
  %31 = add nsw i32 %30, 97
  br label %36

32:                                               ; preds = %14
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  br label %36

36:                                               ; preds = %32, %26
  %37 = phi i32 [ %31, %26 ], [ %35, %32 ]
  %38 = call i16** @__ctype_b_loc() #2
  %39 = load i16*, i16** %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i16, i16* %39, i64 %43
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 256
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %36
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = sub nsw i32 %52, 65
  %54 = add nsw i32 %53, 97
  br label %59

55:                                               ; preds = %36
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi i32 [ %54, %49 ], [ %58, %55 ]
  %61 = icmp eq i32 %37, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  br label %68

67:                                               ; preds = %59
  br label %69

68:                                               ; preds = %62
  br label %9, !llvm.loop !6

69:                                               ; preds = %67, %9
  %70 = call i16** @__ctype_b_loc() #2
  %71 = load i16*, i16** %70, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %71, i64 %75
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = and i32 %78, 256
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %69
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = sub nsw i32 %84, 65
  %86 = add nsw i32 %85, 97
  br label %91

87:                                               ; preds = %69
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  br label %91

91:                                               ; preds = %87, %81
  %92 = phi i32 [ %86, %81 ], [ %90, %87 ]
  %93 = call i16** @__ctype_b_loc() #2
  %94 = load i16*, i16** %93, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i16, i16* %94, i64 %98
  %100 = load i16, i16* %99, align 2
  %101 = zext i16 %100 to i32
  %102 = and i32 %101, 256
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %91
  %105 = load i8*, i8** %6, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = sub nsw i32 %107, 65
  %109 = add nsw i32 %108, 97
  br label %114

110:                                              ; preds = %91
  %111 = load i8*, i8** %6, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  br label %114

114:                                              ; preds = %110, %104
  %115 = phi i32 [ %109, %104 ], [ %113, %110 ]
  %116 = sub nsw i32 %92, %115
  ret i32 %116
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
