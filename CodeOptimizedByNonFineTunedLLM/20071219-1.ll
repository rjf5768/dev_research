; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071219-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071219-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [25 x i8] }

@p = dso_local global %struct.S* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.S* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.S*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.S* %0, %struct.S** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %33, %2
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp ult i64 %8, 25
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = load %struct.S*, %struct.S** %3, align 8
  %12 = getelementptr inbounds %struct.S, %struct.S* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [25 x i8], [25 x i8]* %12, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  call void @abort() #4
  unreachable

20:                                               ; preds = %10
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = trunc i32 %24 to i8
  %26 = load %struct.S*, %struct.S** %3, align 8
  %27 = getelementptr inbounds %struct.S, %struct.S* %26, i32 0, i32 0
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [25 x i8], [25 x i8]* %27, i64 0, i64 %29
  store i8 %25, i8* %30, align 1
  br label %31

31:                                               ; preds = %23, %20
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %6, !llvm.loop !4

36:                                               ; preds = %6
  %37 = load %struct.S*, %struct.S** %3, align 8
  store %struct.S* %37, %struct.S** @p, align 8
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  %1 = alloca %struct.S, align 1
  %2 = alloca %struct.S, align 1
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i32 0, i32 0
  %4 = bitcast [25 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 0, i64 25, i1 false)
  call void @foo(%struct.S* noundef %1, i32 noundef 0)
  %5 = bitcast %struct.S* %2 to i8*
  %6 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 25, i1 false)
  call void @foo(%struct.S* noundef %2, i32 noundef 1)
  %7 = bitcast %struct.S* %2 to i8*
  %8 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 25, i1 false)
  %9 = bitcast %struct.S* %2 to i8*
  %10 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %10, i64 25, i1 false)
  call void @foo(%struct.S* noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  %1 = alloca %struct.S, align 1
  %2 = alloca %struct.S, align 1
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i32 0, i32 0
  %4 = bitcast [25 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 0, i64 25, i1 false)
  call void @foo(%struct.S* noundef %1, i32 noundef 0)
  %5 = bitcast %struct.S* %2 to i8*
  %6 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 25, i1 false)
  call void @foo(%struct.S* noundef %2, i32 noundef 1)
  %7 = bitcast %struct.S* %2 to i8*
  %8 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 25, i1 false)
  %9 = load %struct.S*, %struct.S** @p, align 8
  %10 = bitcast %struct.S* %2 to i8*
  %11 = bitcast %struct.S* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 %11, i64 25, i1 false)
  call void @foo(%struct.S* noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
  %1 = alloca %struct.S, align 1
  %2 = alloca %struct.S, align 1
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i32 0, i32 0
  %4 = bitcast [25 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 0, i64 25, i1 false)
  call void @foo(%struct.S* noundef %1, i32 noundef 0)
  %5 = bitcast %struct.S* %2 to i8*
  %6 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 25, i1 false)
  call void @foo(%struct.S* noundef %2, i32 noundef 1)
  %7 = load %struct.S*, %struct.S** @p, align 8
  %8 = bitcast %struct.S* %7 to i8*
  %9 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %9, i64 25, i1 false)
  %10 = load %struct.S*, %struct.S** @p, align 8
  %11 = bitcast %struct.S* %10 to i8*
  %12 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %12, i64 25, i1 false)
  call void @foo(%struct.S* noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @test1()
  call void @test2()
  call void @test3()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
