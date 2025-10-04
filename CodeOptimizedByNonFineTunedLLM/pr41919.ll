; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41919.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41919.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { i8 }

@g_23 = dso_local global i32 0, align 4
@__const.foo.l_128 = private unnamed_addr constant %struct.S1 { i8 1 }, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S1, align 1
  store i32 0, i32* %1, align 4
  %3 = call i8 @foo()
  %4 = getelementptr inbounds %struct.S1, %struct.S1* %2, i32 0, i32 0
  store i8 %3, i8* %4, align 1
  %5 = getelementptr inbounds %struct.S1, %struct.S1* %2, i32 0, i32 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9, %0
  %11 = phi i1 [ false, %0 ], [ true, %9 ]
  %12 = zext i1 %11 to i32
  %13 = xor i32 153, %12
  %14 = trunc i32 %13 to i8
  %15 = call signext i8 @bar(i8 noundef signext %14, i8 noundef signext 1)
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, -104
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  call void @abort() #3
  unreachable

19:                                               ; preds = %10
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i8 @foo() #0 {
  %1 = alloca %struct.S1, align 1
  %2 = alloca i32*, align 8
  %3 = alloca i32**, align 8
  store i32* @g_23, i32** %2, align 8
  store i32** %2, i32*** %3, align 8
  %4 = bitcast %struct.S1* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds (%struct.S1, %struct.S1* @__const.foo.l_128, i32 0, i32 0), i64 1, i1 false)
  %5 = load i32*, i32** %2, align 8
  %6 = icmp eq i32* %5, @g_23
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  call void @abort() #3
  unreachable

8:                                                ; preds = %0
  %9 = load i32*, i32** %2, align 8
  %10 = icmp eq i32* %9, @g_23
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  call void @abort() #3
  unreachable

12:                                               ; preds = %8
  %13 = load i32*, i32** %2, align 8
  %14 = icmp eq i32* %13, @g_23
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  call void @abort() #3
  unreachable

16:                                               ; preds = %12
  %17 = load i32*, i32** %2, align 8
  %18 = icmp eq i32* %17, @g_23
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  call void @abort() #3
  unreachable

20:                                               ; preds = %16
  %21 = load i32*, i32** %2, align 8
  %22 = icmp eq i32* %21, @g_23
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @abort() #3
  unreachable

24:                                               ; preds = %20
  %25 = load i32*, i32** %2, align 8
  %26 = icmp eq i32* %25, @g_23
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  call void @abort() #3
  unreachable

28:                                               ; preds = %24
  %29 = load i32*, i32** %2, align 8
  %30 = icmp eq i32* %29, @g_23
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  call void @abort() #3
  unreachable

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.S1, %struct.S1* %1, i32 0, i32 0
  %34 = load i8, i8* %33, align 1
  ret i8 %34
}

; Function Attrs: noinline nounwind uwtable
define internal signext i8 @bar(i8 noundef signext %0, i8 noundef signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8, i8* %3, align 1
  %10 = sext i8 %9 to i32
  br label %15

11:                                               ; preds = %2
  %12 = load i8, i8* %4, align 1
  %13 = sext i8 %12 to i32
  %14 = mul nsw i32 %13, 2
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  %17 = trunc i32 %16 to i8
  ret i8 %17
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
