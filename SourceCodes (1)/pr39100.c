; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr39100.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr39100.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.C = type { %struct.E*, i16, i16 }
%struct.E = type { i32, %struct.E* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.C* @foo(%struct.C* noundef %0, %struct.E* noundef %1) #0 {
  %3 = alloca %struct.C*, align 8
  %4 = alloca %struct.E*, align 8
  %5 = alloca %struct.E*, align 8
  %6 = alloca %struct.E**, align 8
  %7 = alloca %struct.E*, align 8
  %8 = alloca %struct.E**, align 8
  %9 = alloca %struct.E*, align 8
  store %struct.C* %0, %struct.C** %3, align 8
  store %struct.E* %1, %struct.E** %4, align 8
  store %struct.E* null, %struct.E** %5, align 8
  store %struct.E** %5, %struct.E*** %6, align 8
  store %struct.E* null, %struct.E** %7, align 8
  store %struct.E** %7, %struct.E*** %8, align 8
  br label %10

10:                                               ; preds = %42, %2
  %11 = load %struct.E*, %struct.E** %4, align 8
  %12 = icmp ne %struct.E* %11, null
  br i1 %12, label %13, label %44

13:                                               ; preds = %10
  %14 = load %struct.E*, %struct.E** %4, align 8
  %15 = getelementptr inbounds %struct.E, %struct.E* %14, i32 0, i32 1
  %16 = load %struct.E*, %struct.E** %15, align 8
  store %struct.E* %16, %struct.E** %9, align 8
  %17 = load %struct.E*, %struct.E** %4, align 8
  %18 = getelementptr inbounds %struct.E, %struct.E* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = load %struct.C*, %struct.C** %3, align 8
  %24 = getelementptr inbounds %struct.C, %struct.C* %23, i32 0, i32 2
  %25 = load i16, i16* %24, align 2
  %26 = add i16 %25, 1
  store i16 %26, i16* %24, align 2
  %27 = load %struct.E*, %struct.E** %4, align 8
  %28 = load %struct.E**, %struct.E*** %6, align 8
  store %struct.E* %27, %struct.E** %28, align 8
  %29 = load %struct.E**, %struct.E*** %6, align 8
  %30 = load %struct.E*, %struct.E** %29, align 8
  %31 = getelementptr inbounds %struct.E, %struct.E* %30, i32 0, i32 1
  store %struct.E** %31, %struct.E*** %6, align 8
  br label %42

32:                                               ; preds = %13
  %33 = load %struct.C*, %struct.C** %3, align 8
  %34 = getelementptr inbounds %struct.C, %struct.C* %33, i32 0, i32 1
  %35 = load i16, i16* %34, align 8
  %36 = add i16 %35, 1
  store i16 %36, i16* %34, align 8
  %37 = load %struct.E*, %struct.E** %4, align 8
  %38 = load %struct.E**, %struct.E*** %8, align 8
  store %struct.E* %37, %struct.E** %38, align 8
  %39 = load %struct.E**, %struct.E*** %8, align 8
  %40 = load %struct.E*, %struct.E** %39, align 8
  %41 = getelementptr inbounds %struct.E, %struct.E* %40, i32 0, i32 1
  store %struct.E** %41, %struct.E*** %8, align 8
  br label %42

42:                                               ; preds = %32, %22
  %43 = load %struct.E*, %struct.E** %9, align 8
  store %struct.E* %43, %struct.E** %4, align 8
  br label %10, !llvm.loop !4

44:                                               ; preds = %10
  %45 = load %struct.E*, %struct.E** %7, align 8
  %46 = load %struct.E**, %struct.E*** %6, align 8
  store %struct.E* %45, %struct.E** %46, align 8
  %47 = load %struct.E**, %struct.E*** %8, align 8
  store %struct.E* null, %struct.E** %47, align 8
  %48 = load %struct.E*, %struct.E** %5, align 8
  %49 = load %struct.C*, %struct.C** %3, align 8
  %50 = getelementptr inbounds %struct.C, %struct.C* %49, i32 0, i32 0
  store %struct.E* %48, %struct.E** %50, align 8
  %51 = load %struct.C*, %struct.C** %3, align 8
  ret %struct.C* %51
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.C, align 8
  %3 = alloca [2 x %struct.E], align 16
  %4 = alloca %struct.E*, align 8
  store i32 0, i32* %1, align 4
  %5 = bitcast %struct.C* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %3, i64 0, i64 0
  %7 = getelementptr inbounds %struct.E, %struct.E* %6, i32 0, i32 0
  store i32 0, i32* %7, align 16
  %8 = getelementptr inbounds %struct.E, %struct.E* %6, i32 0, i32 1
  %9 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %3, i64 0, i64 1
  store %struct.E* %9, %struct.E** %8, align 8
  %10 = getelementptr inbounds %struct.E, %struct.E* %6, i64 1
  %11 = getelementptr inbounds %struct.E, %struct.E* %10, i32 0, i32 0
  store i32 1, i32* %11, align 16
  %12 = getelementptr inbounds %struct.E, %struct.E* %10, i32 0, i32 1
  store %struct.E* null, %struct.E** %12, align 8
  %13 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %3, i64 0, i64 0
  %14 = call %struct.C* @foo(%struct.C* noundef %2, %struct.E* noundef %13)
  %15 = getelementptr inbounds %struct.C, %struct.C* %2, i32 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = sext i16 %16 to i32
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %24, label %19

19:                                               ; preds = %0
  %20 = getelementptr inbounds %struct.C, %struct.C* %2, i32 0, i32 2
  %21 = load i16, i16* %20, align 2
  %22 = sext i16 %21 to i32
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %0
  call void @abort() #3
  unreachable

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.C, %struct.C* %2, i32 0, i32 0
  %27 = load %struct.E*, %struct.E** %26, align 8
  %28 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %3, i64 0, i64 1
  %29 = icmp ne %struct.E* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call void @abort() #3
  unreachable

31:                                               ; preds = %25
  %32 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %3, i64 0, i64 1
  %33 = getelementptr inbounds %struct.E, %struct.E* %32, i32 0, i32 1
  %34 = load %struct.E*, %struct.E** %33, align 8
  %35 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %3, i64 0, i64 0
  %36 = icmp ne %struct.E* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  call void @abort() #3
  unreachable

38:                                               ; preds = %31
  %39 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %3, i64 0, i64 0
  %40 = getelementptr inbounds %struct.E, %struct.E* %39, i32 0, i32 1
  %41 = load %struct.E*, %struct.E** %40, align 8
  %42 = icmp ne %struct.E* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  call void @abort() #3
  unreachable

44:                                               ; preds = %38
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
