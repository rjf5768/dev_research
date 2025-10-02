; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65956.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65956.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i8*, i32, i64 }

@v = dso_local global [3 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@__const.main.a = private unnamed_addr constant [3 x %struct.A] [%struct.A { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @v, i32 0, i64 1), i32 1, i64 1 }, %struct.A { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @v, i32 0, i32 0), i32 0, i64 0 }, %struct.A { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @v, i32 0, i64 2), i32 2, i64 2 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn1(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, getelementptr inbounds ([3 x i8], [3 x i8]* @v, i64 0, i64 1)
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, getelementptr inbounds ([3 x i8], [3 x i8]* @v, i64 0, i64 2)
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  call void @abort() #4
  unreachable

11:                                               ; preds = %7
  %12 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @v, i64 0, i64 1), align 1
  %13 = add i8 %12, 1
  store i8 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @v, i64 0, i64 1), align 1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn2(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void asm sideeffect "", "=*imr,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i8** elementtype(i8*) %2, i8* %3) #5, !srcloc !4
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, getelementptr inbounds ([3 x i8], [3 x i8]* @v, i64 0, i64 0)
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn3(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @abort() #4
  unreachable

9:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %0, %struct.A* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.A*, align 8
  %6 = alloca %struct.A, align 8
  %7 = alloca %struct.A, align 8
  store i32 %0, i32* %4, align 4
  store %struct.A* %1, %struct.A** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %19 [
    i32 219, label %9
    i32 220, label %14
  ]

9:                                                ; preds = %2
  %10 = load %struct.A*, %struct.A** %5, align 8
  %11 = getelementptr inbounds %struct.A, %struct.A* %10, i64 -2
  %12 = load %struct.A*, %struct.A** %5, align 8
  %13 = getelementptr inbounds %struct.A, %struct.A* %12, i64 0
  call void @foo(%struct.A* sret(%struct.A) align 8 %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.A* noundef byval(%struct.A) align 8 %11, %struct.A* noundef byval(%struct.A) align 8 %13)
  br label %14

14:                                               ; preds = %2, %9
  %15 = load %struct.A*, %struct.A** %5, align 8
  %16 = getelementptr inbounds %struct.A, %struct.A* %15, i64 -2
  %17 = load %struct.A*, %struct.A** %5, align 8
  %18 = getelementptr inbounds %struct.A, %struct.A* %17, i64 0
  call void @foo(%struct.A* sret(%struct.A) align 8 %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.A* noundef byval(%struct.A) align 8 %16, %struct.A* noundef byval(%struct.A) align 8 %18)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo(%struct.A* noalias sret(%struct.A) align 8 %0, i8* noundef %1, %struct.A* noundef byval(%struct.A) align 8 %2, %struct.A* noundef byval(%struct.A) align 8 %3) #0 {
  %5 = alloca i8*, align 8
  store i8* %1, i8** %5, align 8
  %6 = bitcast %struct.A* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  %7 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @fn2(i8* noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @fn2(i8* noundef %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %30 [
    i32 124, label %29
  ]

29:                                               ; preds = %24
  br label %32

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  call void @fn3(i8* noundef %31)
  br label %32

32:                                               ; preds = %30, %29
  br label %33

33:                                               ; preds = %32, %19, %14
  %34 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  call void @fn1(i8* noundef %35, i8* noundef %37)
  br label %38

38:                                               ; preds = %33, %10, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x %struct.A], align 16
  store i32 0, i32* %1, align 4
  %3 = bitcast [3 x %struct.A]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([3 x %struct.A]* @__const.main.a to i8*), i64 72, i1 false)
  %4 = getelementptr inbounds [3 x %struct.A], [3 x %struct.A]* %2, i64 0, i64 0
  %5 = getelementptr inbounds %struct.A, %struct.A* %4, i64 2
  %6 = call i32 @bar(i32 noundef 220, %struct.A* noundef %5)
  %7 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @v, i64 0, i64 1), align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  call void @abort() #4
  unreachable

11:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 285}
