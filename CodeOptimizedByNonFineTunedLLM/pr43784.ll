; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43784.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43784.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { [256 x i8] }
%union.u = type { %struct.anon }
%struct.anon = type { %struct.s, i32 }

@p = internal global %struct.s* getelementptr inbounds (%union.u, %union.u* @v, i32 0, i32 0, i32 0), align 8
@q = internal global %struct.s* bitcast (i8* getelementptr inbounds (%union.u, %union.u* @v, i32 0, i32 0, i32 0, i32 0, i64 4) to %struct.s*), align 8
@v = internal global %union.u zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %14, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 256
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = trunc i32 %7 to i8
  %9 = load %struct.s*, %struct.s** @p, align 8
  %10 = getelementptr inbounds %struct.s, %struct.s* %9, i32 0, i32 0
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 %12
  store i8 %8, i8* %13, align 1
  br label %14

14:                                               ; preds = %6
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %3, !llvm.loop !4

17:                                               ; preds = %3
  call void @qp()
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %33, %17
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load %struct.s*, %struct.s** @q, align 8
  %23 = getelementptr inbounds %struct.s, %struct.s* %22, i32 0, i32 0
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  call void @abort() #3
  unreachable

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %18, !llvm.loop !6

36:                                               ; preds = %18
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @qp() #0 {
  %1 = alloca %struct.s, align 1
  %2 = load %struct.s*, %struct.s** @q, align 8
  call void @rp(%struct.s* sret(%struct.s) align 1 %1)
  %3 = bitcast %struct.s* %2 to i8*
  %4 = bitcast %struct.s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 256, i1 false)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define internal void @rp(%struct.s* noalias sret(%struct.s) align 1 %0) #0 {
  %2 = load %struct.s*, %struct.s** @p, align 8
  %3 = bitcast %struct.s* %0 to i8*
  %4 = bitcast %struct.s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 256, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
