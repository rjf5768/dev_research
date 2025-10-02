; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/pr23484-chk.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/pr23484-chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chk_calls = external dso_local global i32, align 4
@data = internal global [8 x i8] c"ABCDEFG\00", align 1
@l1 = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ABCDIIII\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ABCDJJJJ\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ABCDKKKK\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"655\00LLLL\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  %1 = alloca [8 x i8], align 1
  store volatile i32 0, i32* @chk_calls, align 4
  %2 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 73, i64 8, i1 false)
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %4 = load i32, i32* @l1, align 4
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i64 8, i64 4
  %8 = call i8* @__memcpy_chk(i8* noundef %3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @data, i64 0, i64 0), i64 noundef %7, i64 noundef 8) #5
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %10 = icmp ne i8* %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %13 = call i32 @memcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 noundef 8)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %0
  call void @abort() #6
  unreachable

16:                                               ; preds = %11
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %17, i8 74, i64 8, i1 false)
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %19 = load i32, i32* @l1, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i64 8, i64 4
  %23 = call i8* @__mempcpy_chk(i8* noundef %18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @data, i64 0, i64 0), i64 noundef %22, i64 noundef 8) #5
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  %26 = icmp ne i8* %23, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %16
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %29 = call i32 @memcmp(i8* noundef %28, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 noundef 8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %16
  call void @abort() #6
  unreachable

32:                                               ; preds = %27
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %33, i8 75, i64 8, i1 false)
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %35 = load i32, i32* @l1, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i64 8, i64 4
  %39 = call i8* @__memmove_chk(i8* noundef %34, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @data, i64 0, i64 0), i64 noundef %38, i64 noundef 8) #5
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %41 = icmp ne i8* %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %44 = call i32 @memcmp(i8* noundef %43, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 noundef 8)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %32
  call void @abort() #6
  unreachable

47:                                               ; preds = %42
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %48, i8 76, i64 8, i1 false)
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %50 = load i32, i32* @l1, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i64 8, i64 4
  %54 = load i32, i32* @l1, align 4
  %55 = add nsw i32 %54, 65536
  %56 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %49, i64 noundef %53, i32 noundef 0, i64 noundef 8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef %55)
  %57 = icmp ne i32 %56, 5
  br i1 %57, label %62, label %58

58:                                               ; preds = %47
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %60 = call i32 @memcmp(i8* noundef %59, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 noundef 8)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %47
  call void @abort() #6
  unreachable

63:                                               ; preds = %58
  %64 = load volatile i32, i32* @chk_calls, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  call void @abort() #6
  unreachable

67:                                               ; preds = %63
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: nounwind
declare dso_local i8* @__mempcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @__memmove_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

declare dso_local i32 @__snprintf_chk(i8* noundef, i64 noundef, i32 noundef, i64 noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
