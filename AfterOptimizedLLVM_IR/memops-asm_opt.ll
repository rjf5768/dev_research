; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/memops-asm.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/memops-asm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { [32 x i8] }

@a = dso_local global %struct.A { [32 x i8] c"foobar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 1
@x = dso_local global [64 x i8] c"foobar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@i = dso_local global i32 39, align 4
@j = dso_local global i32 6, align 4
@k = dso_local global i32 4, align 4
@__const.main_test.c = private unnamed_addr constant { <{ i8, [31 x i8] }> } { <{ i8, [31 x i8] }> <{ i8 120, [31 x i8] zeroinitializer }> }, align 1
@inside_main = external dso_local global i32, align 4
@y = dso_local global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [13 x i8] c"foXXXXfoobar\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"fooXXXXfobar\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"fooX\00\00Xfobar\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca %struct.A, align 1
  %2 = alloca %struct.A, align 1
  %3 = bitcast %struct.A* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds (%struct.A, %struct.A* @a, i32 0, i32 0, i32 0), i64 32, i1 false)
  %4 = bitcast %struct.A* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ({ <{ i8, [31 x i8] }> }, { <{ i8, [31 x i8] }> }* @__const.main_test.c, i32 0, i32 0, i32 0), i64 32, i1 false)
  store i32 1, i32* @inside_main, align 4
  %5 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %7 = call i32 @memcmp(i8* noundef %6, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @x, i64 0, i64 0), i64 noundef 32)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 0
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 120
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 0
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = call i32 @memcmp(i8* noundef %18, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @x, i64 0, i64 32), i64 noundef 31)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %9, %0
  call void @abort() #5
  unreachable

22:                                               ; preds = %15
  %23 = load i32, i32* @i, align 4
  %24 = sext i32 %23 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 0), i8* align 16 getelementptr inbounds ([64 x i8], [64 x i8]* @x, i64 0, i64 0), i64 %24, i1 false)
  br i1 false, label %28, label %25

25:                                               ; preds = %22
  %26 = call i32 @memcmp(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @x, i64 0, i64 0), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 0), i64 noundef 64)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22
  call void @abort() #5
  unreachable

29:                                               ; preds = %25
  %30 = load i32, i32* @j, align 4
  %31 = sext i32 %30 to i64
  %32 = call i8* @my_memcpy(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 6), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @x, i64 0, i64 0), i64 noundef %31)
  %33 = icmp ne i8* %32, getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 6)
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = call i32 @memcmp(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @x, i64 0, i64 0), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 0), i64 noundef 6)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = call i32 @memcmp(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @x, i64 0, i64 0), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 6), i64 noundef 58)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34, %29
  call void @abort() #5
  unreachable

41:                                               ; preds = %37
  %42 = load i32, i32* @k, align 4
  %43 = sext i32 %42 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 2), i8 88, i64 %43, i1 false)
  br i1 false, label %47, label %44

44:                                               ; preds = %41
  %45 = call i32 @memcmp(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 noundef 13)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %41
  call void @abort() #5
  unreachable

48:                                               ; preds = %44
  call void @my_bcopy(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 1), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 2), i64 noundef 6)
  %49 = call i32 @memcmp(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 noundef 13)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  call void @abort() #5
  unreachable

52:                                               ; preds = %48
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 4), i8 0, i64 2, i1 false)
  %53 = call i32 @memcmp(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 noundef 13)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call void @abort() #5
  unreachable

56:                                               ; preds = %52
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

declare dso_local i8* @my_memcpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local void @my_bcopy(i8* noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
