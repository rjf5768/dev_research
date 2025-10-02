; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr61673.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr61673.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local global i8 0, align 1
@__const.main.c = private unnamed_addr constant [2 x i8] c"T\87", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp ne i32 %4, 84
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, -121
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  call void @abort() #3
  unreachable

11:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %3, align 1
  %8 = load i8, i8* %3, align 1
  %9 = sext i8 %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 127
  br label %15

15:                                               ; preds = %12, %1
  %16 = phi i1 [ false, %1 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i8, i8* %3, align 1
  store i8 %20, i8* @e, align 1
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i8, i8* %3, align 1
  call void @bar(i8 noundef signext %22)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %3, align 1
  %8 = load i8, i8* %3, align 1
  %9 = sext i8 %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 127
  br label %15

15:                                               ; preds = %12, %1
  %16 = phi i1 [ false, %1 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i8, i8* %3, align 1
  store i8 %20, i8* @e, align 1
  br label %21

21:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i8], align 1
  store i32 0, i32* %1, align 4
  %3 = bitcast [2 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.main.c, i32 0, i32 0), i64 2, i1 false)
  store i8 33, i8* @e, align 1
  %4 = getelementptr inbounds [2 x i8], [2 x i8]* %2, i64 0, i64 0
  call void @foo(i8* noundef %4)
  %5 = load i8, i8* @e, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 33
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #3
  unreachable

9:                                                ; preds = %0
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* %2, i64 0, i64 0
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  call void @foo(i8* noundef %11)
  %12 = load i8, i8* @e, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, -121
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  call void @abort() #3
  unreachable

16:                                               ; preds = %9
  store i8 33, i8* @e, align 1
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %2, i64 0, i64 0
  call void @baz(i8* noundef %17)
  %18 = load i8, i8* @e, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 33
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  call void @abort() #3
  unreachable

22:                                               ; preds = %16
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %2, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  call void @baz(i8* noundef %24)
  %25 = load i8, i8* @e, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, -121
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  call void @abort() #3
  unreachable

29:                                               ; preds = %22
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
