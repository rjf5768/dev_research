; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040307-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040307-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8, [3 x i8] }

@__const.main.sdata = private unnamed_addr constant %struct.anon { i8 1, [3 x i8] undef }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.anon, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %4 = bitcast %struct.anon* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 getelementptr inbounds (%struct.anon, %struct.anon* @__const.main.sdata, i32 0, i32 0), i64 4, i1 false)
  br label %5

5:                                                ; preds = %24, %0
  %6 = bitcast %struct.anon* %3 to i8*
  %7 = load i8, i8* %6, align 4
  %8 = and i8 %7, 1
  %9 = zext i8 %8 to i32
  %10 = add i32 %9, -1
  %11 = trunc i32 %10 to i8
  %12 = load i8, i8* %6, align 4
  %13 = and i8 %11, 1
  %14 = and i8 %12, -2
  %15 = or i8 %14, %13
  store i8 %15, i8* %6, align 4
  %16 = zext i8 %13 to i32
  %17 = icmp ugt i32 %9, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp sgt i32 %21, 100
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %25

24:                                               ; preds = %18
  br label %5, !llvm.loop !4

25:                                               ; preds = %23, %5
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @abort() #3
  unreachable

29:                                               ; preds = %25
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
