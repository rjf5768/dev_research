; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57321.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57321.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@b = dso_local global i32* null, align 8
@c = dso_local global i32** null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 @foo(i32* noundef %2)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [7 x [5 x i32*]], align 16
  %4 = alloca [1 x [1 x i32**]], align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @a, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = bitcast [7 x [5 x i32*]]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 280, i1 false)
  %11 = getelementptr inbounds [7 x [5 x i32*]], [7 x [5 x i32*]]* %3, i64 0, i64 0
  %12 = getelementptr inbounds [5 x i32*], [5 x i32*]* %11, i64 0, i64 0
  %13 = getelementptr inbounds [1 x [1 x i32**]], [1 x [1 x i32**]]* %4, i64 0, i64 0
  %14 = getelementptr inbounds [1 x i32**], [1 x i32**]* %13, i64 0, i64 0
  store i32** %12, i32*** %14, align 8
  %15 = load i32**, i32*** @c, align 8
  %16 = icmp ne i32** %2, %15
  %17 = zext i1 %16 to i32
  %18 = load i32*, i32** @b, align 8
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
