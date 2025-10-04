; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050826-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050826-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtattr = type { i16, i16 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @inet_check_attr(i8* noundef %0, %struct.rtattr** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rtattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtattr*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %5, align 8
  store i32 1, i32* %6, align 4
  br label %8

8:                                                ; preds = %44, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 14
  br i1 %10, label %11, label %47

11:                                               ; preds = %8
  %12 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %12, i64 %15
  %17 = load %struct.rtattr*, %struct.rtattr** %16, align 8
  store %struct.rtattr* %17, %struct.rtattr** %7, align 8
  %18 = load %struct.rtattr*, %struct.rtattr** %7, align 8
  %19 = icmp ne %struct.rtattr* %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %11
  %21 = load %struct.rtattr*, %struct.rtattr** %7, align 8
  %22 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %21, i32 0, i32 0
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i64
  %25 = sub i64 %24, 4
  %26 = icmp ult i64 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 -22, i32* %3, align 4
  br label %48

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 9
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 8
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.rtattr*, %struct.rtattr** %7, align 8
  %36 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %35, i64 1
  %37 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %37, i64 %40
  store %struct.rtattr* %36, %struct.rtattr** %41, align 8
  br label %42

42:                                               ; preds = %34, %31, %28
  br label %43

43:                                               ; preds = %42, %11
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %8, !llvm.loop !4

47:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %27
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x %struct.rtattr], align 2
  %3 = alloca [14 x %struct.rtattr*], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %2, i64 0, i64 0
  %6 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %5, i32 0, i32 0
  store i16 12, i16* %6, align 2
  %7 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %2, i64 0, i64 0
  %8 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %7, i32 0, i32 1
  store i16 0, i16* %8, align 2
  %9 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %2, i64 0, i64 1
  %10 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %2, i64 0, i64 0
  %11 = bitcast %struct.rtattr* %9 to i8*
  %12 = bitcast %struct.rtattr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %11, i8* align 2 %12, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %21, %0
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 14
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %2, i64 0, i64 0
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %3, i64 0, i64 %19
  store %struct.rtattr* %17, %struct.rtattr** %20, align 8
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %13, !llvm.loop !6

24:                                               ; preds = %13
  %25 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %3, i64 0, i64 0
  %26 = call i32 @inet_check_attr(i8* noundef null, %struct.rtattr** noundef %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void @abort() #3
  unreachable

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 14
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %3, i64 0, i64 %35
  %37 = load %struct.rtattr*, %struct.rtattr** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 7
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 8
  br label %43

43:                                               ; preds = %40, %33
  %44 = phi i1 [ false, %33 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %2, i64 0, i64 %46
  %48 = icmp ne %struct.rtattr* %37, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  call void @abort() #3
  unreachable

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %30, !llvm.loop !7

54:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %63, %54
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 14
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %2, i64 0, i64 0
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %3, i64 0, i64 %61
  store %struct.rtattr* %59, %struct.rtattr** %62, align 8
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %55, !llvm.loop !8

66:                                               ; preds = %55
  %67 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %3, i64 0, i64 1
  store %struct.rtattr* null, %struct.rtattr** %67, align 8
  %68 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %2, i64 0, i64 1
  %69 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %68, i32 0, i32 0
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = sub nsw i32 %71, 8
  %73 = trunc i32 %72 to i16
  store i16 %73, i16* %69, align 2
  %74 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %2, i64 0, i64 1
  %75 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %3, i64 0, i64 5
  store %struct.rtattr* %74, %struct.rtattr** %75, align 8
  %76 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %3, i64 0, i64 0
  %77 = call i32 @inet_check_attr(i8* noundef null, %struct.rtattr** noundef %76)
  %78 = icmp ne i32 %77, -22
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  call void @abort() #3
  unreachable

80:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %122, %80
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %82, 14
  br i1 %83, label %84, label %125

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %3, i64 0, i64 %89
  %91 = load %struct.rtattr*, %struct.rtattr** %90, align 8
  %92 = icmp ne %struct.rtattr* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  call void @abort() #3
  unreachable

94:                                               ; preds = %87, %84
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  %99 = icmp sle i32 %98, 5
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %3, i64 0, i64 %102
  %104 = load %struct.rtattr*, %struct.rtattr** %103, align 8
  %105 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %2, i64 0, i64 1
  %106 = icmp ne %struct.rtattr* %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  call void @abort() #3
  unreachable

108:                                              ; preds = %100, %97, %94
  %109 = load i32, i32* %4, align 4
  %110 = icmp sgt i32 %109, 5
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [14 x %struct.rtattr*], [14 x %struct.rtattr*]* %3, i64 0, i64 %113
  %115 = load %struct.rtattr*, %struct.rtattr** %114, align 8
  %116 = getelementptr inbounds [2 x %struct.rtattr], [2 x %struct.rtattr]* %2, i64 0, i64 0
  %117 = icmp ne %struct.rtattr* %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  call void @abort() #3
  unreachable

119:                                              ; preds = %111, %108
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %81, !llvm.loop !9

125:                                              ; preds = %81
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
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
!9 = distinct !{!9, !5}
