; ModuleID = './perlin.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/perlin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%e\0A\00", align 1
@permutation = internal global [256 x i32] [i32 151, i32 160, i32 137, i32 91, i32 90, i32 15, i32 131, i32 13, i32 201, i32 95, i32 96, i32 53, i32 194, i32 233, i32 7, i32 225, i32 140, i32 36, i32 103, i32 30, i32 69, i32 142, i32 8, i32 99, i32 37, i32 240, i32 21, i32 10, i32 23, i32 190, i32 6, i32 148, i32 247, i32 120, i32 234, i32 75, i32 0, i32 26, i32 197, i32 62, i32 94, i32 252, i32 219, i32 203, i32 117, i32 35, i32 11, i32 32, i32 57, i32 177, i32 33, i32 88, i32 237, i32 149, i32 56, i32 87, i32 174, i32 20, i32 125, i32 136, i32 171, i32 168, i32 68, i32 175, i32 74, i32 165, i32 71, i32 134, i32 139, i32 48, i32 27, i32 166, i32 77, i32 146, i32 158, i32 231, i32 83, i32 111, i32 229, i32 122, i32 60, i32 211, i32 133, i32 230, i32 220, i32 105, i32 92, i32 41, i32 55, i32 46, i32 245, i32 40, i32 244, i32 102, i32 143, i32 54, i32 65, i32 25, i32 63, i32 161, i32 1, i32 216, i32 80, i32 73, i32 209, i32 76, i32 132, i32 187, i32 208, i32 89, i32 18, i32 169, i32 200, i32 196, i32 135, i32 130, i32 116, i32 188, i32 159, i32 86, i32 164, i32 100, i32 109, i32 198, i32 173, i32 186, i32 3, i32 64, i32 52, i32 217, i32 226, i32 250, i32 124, i32 123, i32 5, i32 202, i32 38, i32 147, i32 118, i32 126, i32 255, i32 82, i32 85, i32 212, i32 207, i32 206, i32 59, i32 227, i32 47, i32 16, i32 58, i32 17, i32 182, i32 189, i32 28, i32 42, i32 223, i32 183, i32 170, i32 213, i32 119, i32 248, i32 152, i32 2, i32 44, i32 154, i32 163, i32 70, i32 221, i32 153, i32 101, i32 155, i32 167, i32 43, i32 172, i32 9, i32 129, i32 22, i32 39, i32 253, i32 19, i32 98, i32 108, i32 110, i32 79, i32 113, i32 224, i32 232, i32 178, i32 185, i32 112, i32 104, i32 218, i32 246, i32 97, i32 228, i32 251, i32 34, i32 242, i32 193, i32 238, i32 210, i32 144, i32 12, i32 191, i32 179, i32 162, i32 241, i32 81, i32 51, i32 145, i32 235, i32 249, i32 14, i32 239, i32 107, i32 49, i32 192, i32 214, i32 31, i32 181, i32 199, i32 106, i32 157, i32 184, i32 84, i32 204, i32 176, i32 115, i32 121, i32 50, i32 45, i32 127, i32 4, i32 150, i32 254, i32 138, i32 236, i32 205, i32 93, i32 222, i32 114, i32 67, i32 29, i32 24, i32 72, i32 243, i32 141, i32 128, i32 195, i32 78, i32 66, i32 215, i32 61, i32 156, i32 180], align 16
@p = internal global [512 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @init()
  br label %2

2:                                                ; preds = %19, %0
  %.01 = phi double [ 0xC0C62C48F5C28F5C, %0 ], [ %20, %19 ]
  %.0 = phi double [ 0.000000e+00, %0 ], [ %.1, %19 ]
  %3 = fcmp olt double %.01, 0x40D702647AE147AE
  br i1 %3, label %4, label %21

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %16, %4
  %.02 = phi double [ 0xC075A1F9DB22D0E5, %4 ], [ %17, %16 ]
  %.1 = phi double [ %.0, %4 ], [ %.2, %16 ]
  %6 = fcmp olt double %.02, 1.241240e+02
  br i1 %6, label %7, label %18

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %11, %7
  %.13 = phi double [ %.02, %7 ], [ %14, %11 ]
  %.2 = phi double [ %.1, %7 ], [ %13, %11 ]
  %9 = fcmp olt double %.13, 2.323450e+01
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10
  %12 = call double @noise(double noundef %.01, double noundef %.13, double noundef -1.562350e+02)
  %13 = fadd double %.2, %12
  %14 = fadd double %.13, 2.450000e+00
  br label %8, !llvm.loop !4

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15
  %17 = fadd double %.13, 1.432500e+00
  br label %5, !llvm.loop !6

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %18
  %20 = fadd double %.01, 1.235000e-01
  br label %2, !llvm.loop !7

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double noundef %.0) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define internal double @noise(double noundef %0, double noundef %1, double noundef %2) #1 {
  %4 = call double @llvm.floor.f64(double %0)
  %5 = fptosi double %4 to i32
  %6 = and i32 %5, 255
  %7 = call double @llvm.floor.f64(double %1)
  %8 = fptosi double %7 to i32
  %9 = and i32 %8, 255
  %10 = call double @llvm.floor.f64(double %2)
  %11 = fptosi double %10 to i32
  %12 = and i32 %11, 255
  %13 = call double @llvm.floor.f64(double %0)
  %14 = fsub double %0, %13
  %15 = call double @llvm.floor.f64(double %1)
  %16 = fsub double %1, %15
  %17 = call double @llvm.floor.f64(double %2)
  %18 = fsub double %2, %17
  %19 = call double @fade(double noundef %14)
  %20 = call double @fade(double noundef %16)
  %21 = call double @fade(double noundef %18)
  %22 = zext i32 %6 to i64
  %23 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, %9
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %12
  %30 = add nsw i32 %25, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %12
  %35 = add nuw nsw i32 %6, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %9
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %12
  %44 = add nsw i32 %39, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %12
  %49 = sext i32 %29 to i64
  %50 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call double @grad(i32 noundef %51, double noundef %14, double noundef %16, double noundef %18)
  %53 = sext i32 %43 to i64
  %54 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = fadd double %14, -1.000000e+00
  %57 = call double @grad(i32 noundef %55, double noundef %56, double noundef %16, double noundef %18)
  %58 = call double @lerp(double noundef %19, double noundef %52, double noundef %57)
  %59 = sext i32 %34 to i64
  %60 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = fadd double %16, -1.000000e+00
  %63 = call double @grad(i32 noundef %61, double noundef %14, double noundef %62, double noundef %18)
  %64 = sext i32 %48 to i64
  %65 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = fadd double %14, -1.000000e+00
  %68 = fadd double %16, -1.000000e+00
  %69 = call double @grad(i32 noundef %66, double noundef %67, double noundef %68, double noundef %18)
  %70 = call double @lerp(double noundef %19, double noundef %63, double noundef %69)
  %71 = call double @lerp(double noundef %20, double noundef %58, double noundef %70)
  %72 = add nsw i32 %29, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = fadd double %18, -1.000000e+00
  %77 = call double @grad(i32 noundef %75, double noundef %14, double noundef %16, double noundef %76)
  %78 = add nsw i32 %43, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = fadd double %14, -1.000000e+00
  %83 = fadd double %18, -1.000000e+00
  %84 = call double @grad(i32 noundef %81, double noundef %82, double noundef %16, double noundef %83)
  %85 = call double @lerp(double noundef %19, double noundef %77, double noundef %84)
  %86 = add nsw i32 %34, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = fadd double %16, -1.000000e+00
  %91 = fadd double %18, -1.000000e+00
  %92 = call double @grad(i32 noundef %89, double noundef %14, double noundef %90, double noundef %91)
  %93 = add nsw i32 %48, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = fadd double %14, -1.000000e+00
  %98 = fadd double %16, -1.000000e+00
  %99 = fadd double %18, -1.000000e+00
  %100 = call double @grad(i32 noundef %96, double noundef %97, double noundef %98, double noundef %99)
  %101 = call double @lerp(double noundef %19, double noundef %92, double noundef %100)
  %102 = call double @lerp(double noundef %20, double noundef %85, double noundef %101)
  %103 = call double @lerp(double noundef %21, double noundef %71, double noundef %102)
  ret double %103
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @init() #3 {
  br label %1

1:                                                ; preds = %12, %0
  %.0 = phi i32 [ 0, %0 ], [ %13, %12 ]
  %2 = icmp ult i32 %.0, 256
  br i1 %2, label %3, label %14

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [256 x i32], [256 x i32]* @permutation, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %7
  store i32 %6, i32* %8, align 4
  %9 = add nuw nsw i32 %.0, 256
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %10
  store i32 %6, i32* %11, align 4
  br label %12

12:                                               ; preds = %3
  %13 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !8

14:                                               ; preds = %1
  ret i32 undef
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal double @fade(double noundef %0) #5 {
  %2 = fmul double %0, %0
  %3 = fmul double %2, %0
  %4 = call double @llvm.fmuladd.f64(double %0, double 6.000000e+00, double -1.500000e+01)
  %5 = call double @llvm.fmuladd.f64(double %0, double %4, double 1.000000e+01)
  %6 = fmul double %3, %5
  ret double %6
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal double @lerp(double noundef %0, double noundef %1, double noundef %2) #5 {
  %4 = fsub double %2, %1
  %5 = call double @llvm.fmuladd.f64(double %0, double %4, double %1)
  ret double %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal double @grad(i32 noundef %0, double noundef %1, double noundef %2, double noundef %3) #6 {
  %5 = and i32 %0, 15
  %6 = icmp ult i32 %5, 8
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %9

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8, %7
  %10 = phi double [ %1, %7 ], [ %2, %8 ]
  %11 = icmp ult i32 %5, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %21

13:                                               ; preds = %9
  %14 = icmp eq i32 %5, 12
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = icmp eq i32 %5, 14
  br i1 %16, label %17, label %18

17:                                               ; preds = %15, %13
  br label %19

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi double [ %1, %17 ], [ %3, %18 ]
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi double [ %2, %12 ], [ %20, %19 ]
  %23 = and i32 %0, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %28

26:                                               ; preds = %21
  %27 = fneg double %10
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi double [ %10, %25 ], [ %27, %26 ]
  %30 = and i32 %0, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %35

33:                                               ; preds = %28
  %34 = fneg double %22
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi double [ %22, %32 ], [ %34, %33 ]
  %37 = fadd double %29, %36
  ret double %37
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
