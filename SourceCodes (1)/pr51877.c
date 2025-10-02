; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr51877.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr51877.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, [32 x i8] }

@bar.n = internal global i32 0, align 4
@a = dso_local global %struct.A zeroinitializer, align 4
@b = dso_local global %struct.A zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.A* noalias sret(%struct.A) align 4 %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  %4 = load i32, i32* @bar.n, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @bar.n, align 4
  %6 = getelementptr inbounds %struct.A, %struct.A* %0, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.A, %struct.A* %0, i32 0, i32 1
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 32, i1 false)
  %9 = load i32, i32* %3, align 4
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.A, %struct.A* %0, i32 0, i32 1
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  store i8 %10, i8* %12, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz() #0 {
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.A* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.A*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.A, align 4
  %6 = alloca %struct.A, align 4
  store %struct.A* %0, %struct.A** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 6
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  call void @bar(%struct.A* sret(%struct.A) align 4 %5, i32 noundef 7)
  %10 = bitcast %struct.A* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.A* @a to i8*), i8* align 4 %10, i64 36, i1 false)
  br label %15

11:                                               ; preds = %2
  %12 = load %struct.A*, %struct.A** %3, align 8
  call void @bar(%struct.A* sret(%struct.A) align 4 %6, i32 noundef 7)
  %13 = bitcast %struct.A* %12 to i8*
  %14 = bitcast %struct.A* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 36, i1 false)
  br label %15

15:                                               ; preds = %11, %9
  call void @baz()
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.A, align 4
  %3 = alloca %struct.A, align 4
  store i32 0, i32* %1, align 4
  call void @bar(%struct.A* sret(%struct.A) align 4 %2, i32 noundef 3)
  %4 = bitcast %struct.A* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.A* @a to i8*), i8* align 4 %4, i64 36, i1 false)
  call void @bar(%struct.A* sret(%struct.A) align 4 %3, i32 noundef 4)
  %5 = bitcast %struct.A* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.A* @b to i8*), i8* align 4 %5, i64 36, i1 false)
  %6 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i32 0, i32 0), align 4
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %19, label %8

8:                                                ; preds = %0
  %9 = load i8, i8* getelementptr inbounds (%struct.A, %struct.A* @a, i32 0, i32 1, i64 0), align 4
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @b, i32 0, i32 0), align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i8, i8* getelementptr inbounds (%struct.A, %struct.A* @b, i32 0, i32 1, i64 0), align 4
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %12, %8, %0
  call void @abort() #5
  unreachable

20:                                               ; preds = %15
  call void @foo(%struct.A* noundef @b, i32 noundef 0)
  %21 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i32 0, i32 0), align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = load i8, i8* getelementptr inbounds (%struct.A, %struct.A* @a, i32 0, i32 1, i64 0), align 4
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @b, i32 0, i32 0), align 4
  %29 = icmp ne i32 %28, 3
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i8, i8* getelementptr inbounds (%struct.A, %struct.A* @b, i32 0, i32 1, i64 0), align 4
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 7
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %27, %23, %20
  call void @abort() #5
  unreachable

35:                                               ; preds = %30
  call void @foo(%struct.A* noundef @b, i32 noundef 6)
  %36 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i32 0, i32 0), align 4
  %37 = icmp ne i32 %36, 4
  br i1 %37, label %49, label %38

38:                                               ; preds = %35
  %39 = load i8, i8* getelementptr inbounds (%struct.A, %struct.A* @a, i32 0, i32 1, i64 0), align 4
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 7
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @b, i32 0, i32 0), align 4
  %44 = icmp ne i32 %43, 3
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i8, i8* getelementptr inbounds (%struct.A, %struct.A* @b, i32 0, i32 1, i64 0), align 4
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 7
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %42, %38, %35
  call void @abort() #5
  unreachable

50:                                               ; preds = %45
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 343}
