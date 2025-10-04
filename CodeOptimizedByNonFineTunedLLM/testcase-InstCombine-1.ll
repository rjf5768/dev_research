; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/testcase-InstCombine-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/testcase-InstCombine-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [9 x i8] }

@f = dso_local global i32 0, align 4
@__const.main.m = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 5, i8 0, i8 -40, i8 -1, i8 -1, i8 79, i8 0, i8 20, i8 0 }, align 1
@h = dso_local global %struct.S zeroinitializer, align 1
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 1
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %9, %0
  %4 = load i32, i32* @f, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @__const.main.m, i32 0, i32 0), i64 9, i1 false)
  %8 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds (%struct.S, %struct.S* @h, i32 0, i32 0, i32 0), i8* align 1 %8, i64 9, i1 false)
  br label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @f, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @f, align 4
  br label %3, !llvm.loop !4

12:                                               ; preds = %3
  %13 = load i72, i72* bitcast (%struct.S* @h to i72*), align 1
  %14 = shl i72 %13, 14
  %15 = ashr i72 %14, 57
  %16 = trunc i72 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = load i72, i72* bitcast (%struct.S* @h to i72*), align 1
  %19 = shl i72 %18, 14
  %20 = ashr i72 %19, 57
  %21 = trunc i72 %20 to i32
  %22 = load i72, i72* bitcast (%struct.S* @h to i72*), align 1
  %23 = shl i72 %22, 14
  %24 = ashr i72 %23, 57
  %25 = trunc i72 %24 to i32
  %26 = mul nsw i32 %21, %25
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 0, %27
  %29 = icmp ne i64 %17, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %12
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %12
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
