; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr22141-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr22141-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { %struct.T }
%struct.T = type { i8, i8, i8, i8 }
%struct.U = type { [4 x %struct.S] }

@u = dso_local global %struct.S zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @c1(%struct.T* noundef %0) #0 {
  %2 = alloca %struct.T*, align 8
  store %struct.T* %0, %struct.T** %2, align 8
  %3 = load %struct.T*, %struct.T** %2, align 8
  %4 = getelementptr inbounds %struct.T, %struct.T* %3, i32 0, i32 0
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = load %struct.T*, %struct.T** %2, align 8
  %10 = getelementptr inbounds %struct.T, %struct.T* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %26, label %14

14:                                               ; preds = %8
  %15 = load %struct.T*, %struct.T** %2, align 8
  %16 = getelementptr inbounds %struct.T, %struct.T* %15, i32 0, i32 2
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.T*, %struct.T** %2, align 8
  %22 = getelementptr inbounds %struct.T, %struct.T* %21, i32 0, i32 3
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14, %8, %1
  call void @abort() #4
  unreachable

27:                                               ; preds = %20
  %28 = load %struct.T*, %struct.T** %2, align 8
  %29 = bitcast %struct.T* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %29, i8 -86, i64 4, i1 false)
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @c2(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  store %struct.S* %0, %struct.S** %2, align 8
  %3 = load %struct.S*, %struct.S** %2, align 8
  %4 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  call void @c1(%struct.T* noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @c3(%struct.U* noundef %0) #0 {
  %2 = alloca %struct.U*, align 8
  store %struct.U* %0, %struct.U** %2, align 8
  %3 = load %struct.U*, %struct.U** %2, align 8
  %4 = getelementptr inbounds %struct.U, %struct.U* %3, i32 0, i32 0
  %5 = getelementptr inbounds [4 x %struct.S], [4 x %struct.S]* %4, i64 0, i64 2
  call void @c2(%struct.S* noundef %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1() #0 {
  %1 = alloca %struct.S, align 1
  %2 = getelementptr inbounds %struct.S, %struct.S* %1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 0
  store i8 1, i8* %3, align 1
  %4 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 1
  store i8 2, i8* %4, align 1
  %5 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 2
  store i8 3, i8* %5, align 1
  %6 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 3
  store i8 4, i8* %6, align 1
  %7 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds (%struct.S, %struct.S* @u, i32 0, i32 0, i32 0), i8* align 1 %7, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2() #0 {
  store i8 1, i8* getelementptr inbounds (%struct.S, %struct.S* @u, i32 0, i32 0, i32 0), align 1
  store i8 2, i8* getelementptr inbounds (%struct.S, %struct.S* @u, i32 0, i32 0, i32 1), align 1
  store i8 3, i8* getelementptr inbounds (%struct.S, %struct.S* @u, i32 0, i32 0, i32 2), align 1
  store i8 4, i8* getelementptr inbounds (%struct.S, %struct.S* @u, i32 0, i32 0, i32 3), align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f3() #0 {
  store i8 4, i8* getelementptr inbounds (%struct.S, %struct.S* @u, i32 0, i32 0, i32 3), align 1
  store i8 2, i8* getelementptr inbounds (%struct.S, %struct.S* @u, i32 0, i32 0, i32 1), align 1
  store i8 1, i8* getelementptr inbounds (%struct.S, %struct.S* @u, i32 0, i32 0, i32 0), align 1
  store i8 3, i8* getelementptr inbounds (%struct.S, %struct.S* @u, i32 0, i32 0, i32 2), align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4() #0 {
  %1 = alloca %struct.S, align 1
  %2 = getelementptr inbounds %struct.S, %struct.S* %1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 0
  store i8 1, i8* %3, align 1
  %4 = getelementptr inbounds %struct.S, %struct.S* %1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.T, %struct.T* %4, i32 0, i32 1
  store i8 2, i8* %5, align 1
  %6 = getelementptr inbounds %struct.S, %struct.S* %1, i32 0, i32 0
  %7 = getelementptr inbounds %struct.T, %struct.T* %6, i32 0, i32 2
  store i8 3, i8* %7, align 1
  %8 = getelementptr inbounds %struct.S, %struct.S* %1, i32 0, i32 0
  %9 = getelementptr inbounds %struct.T, %struct.T* %8, i32 0, i32 3
  store i8 4, i8* %9, align 1
  call void @c2(%struct.S* noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f5(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  store %struct.S* %0, %struct.S** %2, align 8
  %3 = load %struct.S*, %struct.S** %2, align 8
  %4 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.T, %struct.T* %4, i32 0, i32 0
  store i8 1, i8* %5, align 1
  %6 = load %struct.S*, %struct.S** %2, align 8
  %7 = getelementptr inbounds %struct.S, %struct.S* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.T, %struct.T* %7, i32 0, i32 2
  store i8 3, i8* %8, align 1
  %9 = load %struct.S*, %struct.S** %2, align 8
  %10 = getelementptr inbounds %struct.S, %struct.S* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.T, %struct.T* %10, i32 0, i32 3
  store i8 4, i8* %11, align 1
  %12 = load %struct.S*, %struct.S** %2, align 8
  %13 = getelementptr inbounds %struct.S, %struct.S* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.T, %struct.T* %13, i32 0, i32 1
  store i8 2, i8* %14, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f6() #0 {
  %1 = alloca %struct.U, align 1
  %2 = getelementptr inbounds %struct.U, %struct.U* %1, i32 0, i32 0
  %3 = getelementptr inbounds [4 x %struct.S], [4 x %struct.S]* %2, i64 0, i64 2
  %4 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.T, %struct.T* %4, i32 0, i32 0
  store i8 1, i8* %5, align 1
  %6 = getelementptr inbounds %struct.U, %struct.U* %1, i32 0, i32 0
  %7 = getelementptr inbounds [4 x %struct.S], [4 x %struct.S]* %6, i64 0, i64 2
  %8 = getelementptr inbounds %struct.S, %struct.S* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.T, %struct.T* %8, i32 0, i32 1
  store i8 2, i8* %9, align 1
  %10 = getelementptr inbounds %struct.U, %struct.U* %1, i32 0, i32 0
  %11 = getelementptr inbounds [4 x %struct.S], [4 x %struct.S]* %10, i64 0, i64 2
  %12 = getelementptr inbounds %struct.S, %struct.S* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.T, %struct.T* %12, i32 0, i32 2
  store i8 3, i8* %13, align 1
  %14 = getelementptr inbounds %struct.U, %struct.U* %1, i32 0, i32 0
  %15 = getelementptr inbounds [4 x %struct.S], [4 x %struct.S]* %14, i64 0, i64 2
  %16 = getelementptr inbounds %struct.S, %struct.S* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.T, %struct.T* %16, i32 0, i32 3
  store i8 4, i8* %17, align 1
  call void @c3(%struct.U* noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f7(%struct.U* noundef %0) #0 {
  %2 = alloca %struct.U*, align 8
  store %struct.U* %0, %struct.U** %2, align 8
  %3 = load %struct.U*, %struct.U** %2, align 8
  %4 = getelementptr inbounds %struct.U, %struct.U* %3, i32 0, i32 0
  %5 = getelementptr inbounds [4 x %struct.S], [4 x %struct.S]* %4, i64 0, i64 2
  %6 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.T, %struct.T* %6, i32 0, i32 0
  store i8 1, i8* %7, align 1
  %8 = load %struct.U*, %struct.U** %2, align 8
  %9 = getelementptr inbounds %struct.U, %struct.U* %8, i32 0, i32 0
  %10 = getelementptr inbounds [4 x %struct.S], [4 x %struct.S]* %9, i64 0, i64 2
  %11 = getelementptr inbounds %struct.S, %struct.S* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.T, %struct.T* %11, i32 0, i32 2
  store i8 3, i8* %12, align 1
  %13 = load %struct.U*, %struct.U** %2, align 8
  %14 = getelementptr inbounds %struct.U, %struct.U* %13, i32 0, i32 0
  %15 = getelementptr inbounds [4 x %struct.S], [4 x %struct.S]* %14, i64 0, i64 2
  %16 = getelementptr inbounds %struct.S, %struct.S* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.T, %struct.T* %16, i32 0, i32 3
  store i8 4, i8* %17, align 1
  %18 = load %struct.U*, %struct.U** %2, align 8
  %19 = getelementptr inbounds %struct.U, %struct.U* %18, i32 0, i32 0
  %20 = getelementptr inbounds [4 x %struct.S], [4 x %struct.S]* %19, i64 0, i64 2
  %21 = getelementptr inbounds %struct.S, %struct.S* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.T, %struct.T* %21, i32 0, i32 1
  store i8 2, i8* %22, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.U, align 1
  store i32 0, i32* %1, align 4
  call void @f1()
  call void @c2(%struct.S* noundef @u)
  call void @f2()
  call void @c1(%struct.T* noundef getelementptr inbounds (%struct.S, %struct.S* @u, i32 0, i32 0))
  call void @f3()
  call void @c2(%struct.S* noundef @u)
  call void @f4()
  call void @f5(%struct.S* noundef @u)
  call void @c2(%struct.S* noundef @u)
  call void @f6()
  call void @f7(%struct.U* noundef %2)
  call void @c3(%struct.U* noundef %2)
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
