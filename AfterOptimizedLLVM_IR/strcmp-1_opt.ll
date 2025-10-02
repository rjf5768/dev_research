; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strcmp-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strcmp-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { x86_fp80, [80 x i8] }

@u1 = internal global %union.anon zeroinitializer, align 16
@u2 = internal global %union.anon zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strcmp(i8* noundef %8, i8* noundef %9) #3
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #4
  unreachable

17:                                               ; preds = %13, %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #4
  unreachable

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @abort() #4
  unreachable

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %12

12:                                               ; preds = %182, %0
  %13 = load i64, i64* %2, align 8
  %14 = icmp ult i64 %13, 8
  br i1 %14, label %15, label %185

15:                                               ; preds = %12
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %178, %15
  %17 = load i64, i64* %3, align 8
  %18 = icmp ult i64 %17, 8
  br i1 %18, label %19, label %181

19:                                               ; preds = %16
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %174, %19
  %21 = load i64, i64* %4, align 8
  %22 = icmp ult i64 %21, 64
  br i1 %22, label %23, label %177

23:                                               ; preds = %20
  store i8* getelementptr inbounds ([82 x i8], [82 x i8]* bitcast (%union.anon* @u1 to [82 x i8]*), i64 0, i64 0), i8** %10, align 8
  store i64 0, i64* %5, align 8
  br label %24

24:                                               ; preds = %31, %23
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %2, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %10, align 8
  store i8 0, i8* %29, align 1
  br label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %24, !llvm.loop !4

34:                                               ; preds = %24
  %35 = load i8*, i8** %10, align 8
  store i8* %35, i8** %6, align 8
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %43, %34
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %10, align 8
  store i8 97, i8* %41, align 1
  br label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %36, !llvm.loop !6

46:                                               ; preds = %36
  %47 = load i8*, i8** %10, align 8
  store i8* %47, i8** %8, align 8
  store i64 0, i64* %5, align 8
  br label %48

48:                                               ; preds = %54, %46
  %49 = load i64, i64* %5, align 8
  %50 = icmp ult i64 %49, 10
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %10, align 8
  store i8 120, i8* %52, align 1
  br label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %5, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %5, align 8
  br label %48, !llvm.loop !7

57:                                               ; preds = %48
  store i8* getelementptr inbounds ([82 x i8], [82 x i8]* bitcast (%union.anon* @u2 to [82 x i8]*), i64 0, i64 0), i8** %11, align 8
  store i64 0, i64* %5, align 8
  br label %58

58:                                               ; preds = %65, %57
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %3, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %11, align 8
  store i8 0, i8* %63, align 1
  br label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %58, !llvm.loop !8

68:                                               ; preds = %58
  %69 = load i8*, i8** %11, align 8
  store i8* %69, i8** %7, align 8
  store i64 0, i64* %5, align 8
  br label %70

70:                                               ; preds = %77, %68
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %4, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %11, align 8
  store i8 97, i8* %75, align 1
  br label %77

77:                                               ; preds = %74
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %5, align 8
  br label %70, !llvm.loop !9

80:                                               ; preds = %70
  %81 = load i8*, i8** %11, align 8
  store i8* %81, i8** %9, align 8
  store i64 0, i64* %5, align 8
  br label %82

82:                                               ; preds = %88, %80
  %83 = load i64, i64* %5, align 8
  %84 = icmp ult i64 %83, 10
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %11, align 8
  store i8 120, i8* %86, align 1
  br label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %5, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %5, align 8
  br label %82, !llvm.loop !10

91:                                               ; preds = %82
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  store i8 0, i8* %93, align 1
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 0, i8* %95, align 1
  %96 = load i8*, i8** %6, align 8
  %97 = load i8*, i8** %7, align 8
  call void @test(i8* noundef %96, i8* noundef %97, i32 noundef 0)
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  store i8 97, i8* %99, align 1
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  store i8 0, i8* %101, align 1
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  store i8 0, i8* %103, align 1
  %104 = load i8*, i8** %6, align 8
  %105 = load i8*, i8** %7, align 8
  call void @test(i8* noundef %104, i8* noundef %105, i32 noundef 1)
  %106 = load i8*, i8** %8, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  store i8 0, i8* %107, align 1
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  store i8 97, i8* %109, align 1
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  store i8 0, i8* %111, align 1
  %112 = load i8*, i8** %6, align 8
  %113 = load i8*, i8** %7, align 8
  call void @test(i8* noundef %112, i8* noundef %113, i32 noundef -1)
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  store i8 98, i8* %115, align 1
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  store i8 0, i8* %117, align 1
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  store i8 99, i8* %119, align 1
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  store i8 0, i8* %121, align 1
  %122 = load i8*, i8** %6, align 8
  %123 = load i8*, i8** %7, align 8
  call void @test(i8* noundef %122, i8* noundef %123, i32 noundef -1)
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  store i8 99, i8* %125, align 1
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  store i8 0, i8* %127, align 1
  %128 = load i8*, i8** %9, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  store i8 98, i8* %129, align 1
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  store i8 0, i8* %131, align 1
  %132 = load i8*, i8** %6, align 8
  %133 = load i8*, i8** %7, align 8
  call void @test(i8* noundef %132, i8* noundef %133, i32 noundef 1)
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  store i8 98, i8* %135, align 1
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8 0, i8* %137, align 1
  %138 = load i8*, i8** %9, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  store i8 -87, i8* %139, align 1
  %140 = load i8*, i8** %9, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  store i8 0, i8* %141, align 1
  %142 = load i8*, i8** %6, align 8
  %143 = load i8*, i8** %7, align 8
  call void @test(i8* noundef %142, i8* noundef %143, i32 noundef -1)
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  store i8 -87, i8* %145, align 1
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  store i8 0, i8* %147, align 1
  %148 = load i8*, i8** %9, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  store i8 98, i8* %149, align 1
  %150 = load i8*, i8** %9, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  store i8 0, i8* %151, align 1
  %152 = load i8*, i8** %6, align 8
  %153 = load i8*, i8** %7, align 8
  call void @test(i8* noundef %152, i8* noundef %153, i32 noundef 1)
  %154 = load i8*, i8** %8, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  store i8 -87, i8* %155, align 1
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  store i8 0, i8* %157, align 1
  %158 = load i8*, i8** %9, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  store i8 -86, i8* %159, align 1
  %160 = load i8*, i8** %9, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  store i8 0, i8* %161, align 1
  %162 = load i8*, i8** %6, align 8
  %163 = load i8*, i8** %7, align 8
  call void @test(i8* noundef %162, i8* noundef %163, i32 noundef -1)
  %164 = load i8*, i8** %8, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  store i8 -86, i8* %165, align 1
  %166 = load i8*, i8** %8, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  store i8 0, i8* %167, align 1
  %168 = load i8*, i8** %9, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  store i8 -87, i8* %169, align 1
  %170 = load i8*, i8** %9, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  store i8 0, i8* %171, align 1
  %172 = load i8*, i8** %6, align 8
  %173 = load i8*, i8** %7, align 8
  call void @test(i8* noundef %172, i8* noundef %173, i32 noundef 1)
  br label %174

174:                                              ; preds = %91
  %175 = load i64, i64* %4, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %4, align 8
  br label %20, !llvm.loop !11

177:                                              ; preds = %20
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %3, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %3, align 8
  br label %16, !llvm.loop !12

181:                                              ; preds = %16
  br label %182

182:                                              ; preds = %181
  %183 = load i64, i64* %2, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %2, align 8
  br label %12, !llvm.loop !13

185:                                              ; preds = %12
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { noreturn }

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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
