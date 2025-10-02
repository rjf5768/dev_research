; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70602.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70602.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [3 x i8] }

@a = dso_local global i32 0, align 4
@__const.main.e = private unnamed_addr constant [21 x { i8, i8, i8 }] [{ i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } zeroinitializer, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } zeroinitializer, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } zeroinitializer, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } zeroinitializer, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } { i8 18, i8 0, i8 0 }, { i8, i8, i8 } zeroinitializer, { i8, i8, i8 } { i8 18, i8 0, i8 0 }], align 16
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [21 x %struct.S], align 16
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %27, %0
  %4 = load i32, i32* @a, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = bitcast [21 x %struct.S]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([21 x { i8, i8, i8 }], [21 x { i8, i8, i8 }]* @__const.main.e, i32 0, i32 0, i32 0), i64 63, i1 false)
  %8 = load i32, i32* @b, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds [21 x %struct.S], [21 x %struct.S]* %2, i64 0, i64 0
  %12 = bitcast %struct.S* %11 to i24*
  %13 = load i24, i24* %12, align 16
  %14 = shl i24 %13, 23
  %15 = ashr i24 %14, 23
  %16 = sext i24 %15 to i32
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %10, %6
  %19 = phi i1 [ true, %6 ], [ %17, %10 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* @b, align 4
  %21 = getelementptr inbounds [21 x %struct.S], [21 x %struct.S]* %2, i64 0, i64 0
  %22 = bitcast %struct.S* %21 to i24*
  %23 = load i24, i24* %22, align 16
  %24 = shl i24 %23, 3
  %25 = ashr i24 %24, 4
  %26 = sext i24 %25 to i32
  store i32 %26, i32* @c, align 4
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @a, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @a, align 4
  br label %3, !llvm.loop !4

30:                                               ; preds = %3
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
