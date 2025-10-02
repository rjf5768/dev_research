; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr86714.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr86714.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"xyz"], align 1
@b = dso_local global [6 x i8] zeroinitializer, align 1
@pb = dso_local global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [7 x i8] c"123xaa\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 0), i8* align 1 getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @a, i32 0, i32 0, i32 0), i64 4, i1 false)
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 4), i8 97, i64 2, i1 false)
  %2 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 0), align 1
  %3 = sext i8 %2 to i32
  %4 = icmp ne i32 %3, 49
  br i1 %4, label %25, label %5

5:                                                ; preds = %0
  %6 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 1), align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 50
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 2), align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 51
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 3), align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 120
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 4), align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 97
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 5), align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 97
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17, %13, %9, %5, %0
  call void @abort() #5
  unreachable

26:                                               ; preds = %21
  %27 = load i8*, i8** @pb, align 8
  %28 = call i32 @memcmp(i8* noundef %27, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 noundef 6) #6
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  call void @abort() #5
  unreachable

31:                                               ; preds = %26
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
