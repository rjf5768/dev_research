; ModuleID = './pr56205.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56205.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@c = dso_local global [128 x i8] zeroinitializer, align 16
@b = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"baz\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@a = dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s %d %s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bar\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4(i32 noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %5, label %11

5:                                                ; preds = %2
  %6 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @c, i64 0, i64 0), align 16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* @b, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @b, align 4
  br label %11

11:                                               ; preds = %8, %5, %2
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @f3(i32 noundef %0, i8* noundef %1, %struct.__va_list_tag* noundef nonnull %12)
  %13 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %13)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @f3(i32 noundef %0, i8* noundef %1, %struct.__va_list_tag* nocapture noundef %2) #0 {
  %.not = icmp eq i32 %0, 0
  %4 = select i1 %.not, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %5 = load i32, i32* @a, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @a, align 4
  %.not1 = icmp eq i8* %1, null
  br i1 %.not1, label %9, label %7

7:                                                ; preds = %3
  %8 = load i8, i8* %1, align 1
  %.not4 = icmp eq i8 %8, 0
  %phi.sel = select i1 %.not4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %3 ], [ %phi.sel, %7 ]
  call void (i8*, ...) @f1(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %4, i32 noundef %6, i8* noundef %10)
  %.not2 = icmp eq i8* %1, null
  br i1 %.not2, label %14, label %11

11:                                               ; preds = %9
  %12 = load i8, i8* %1, align 1
  %.not3 = icmp eq i8 %12, 0
  br i1 %.not3, label %14, label %13

13:                                               ; preds = %11
  call void @f2(i8* noundef nonnull %1, %struct.__va_list_tag* noundef %2)
  br label %14

14:                                               ; preds = %13, %11, %9
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !4
  call void (i32, i8*, ...) @f4(i32 noundef 0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), double noundef 1.200000e+01, i32 noundef 26)
  %1 = load i32, i32* @a, align 4
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %2, label %4

2:                                                ; preds = %0
  %3 = load i32, i32* @b, align 4
  %.not1 = icmp eq i32 %3, 1
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %2, %0
  call void @abort() #5
  unreachable

5:                                                ; preds = %2
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define internal void @f1(i8* noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !5
  %3 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  call void @abort() #5
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %1
  %6 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %8 = load i32, i32* %7, align 16
  %9 = icmp ult i32 %8, 41
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %12 = load i8*, i8** %11, align 16
  %13 = sext i32 %8 to i64
  %14 = getelementptr i8, i8* %12, i64 %13
  %15 = add i32 %8, 8
  store i32 %15, i32* %7, align 16
  br label %20

16:                                               ; preds = %5
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr i8, i8* %18, i64 8
  store i8* %19, i8** %17, align 8
  br label %20

20:                                               ; preds = %16, %10
  %.in = phi i8* [ %14, %10 ], [ %18, %16 ]
  %21 = bitcast i8* %.in to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %22, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #4
  %.not1 = icmp eq i32 %23, 0
  br i1 %.not1, label %24, label %59

24:                                               ; preds = %20
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %26 = load i32, i32* %25, align 16
  %27 = icmp ult i32 %26, 41
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %30 = load i8*, i8** %29, align 16
  %31 = sext i32 %26 to i64
  %32 = getelementptr i8, i8* %30, i64 %31
  %33 = add i32 %26, 8
  store i32 %33, i32* %25, align 16
  br label %38

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr i8, i8* %36, i64 8
  store i8* %37, i8** %35, align 8
  br label %38

38:                                               ; preds = %34, %28
  %.in2 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %39 = bitcast i8* %.in2 to i32*
  %40 = load i32, i32* %39, align 4
  %.not3 = icmp eq i32 %40, 1
  br i1 %.not3, label %41, label %59

41:                                               ; preds = %38
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %43 = load i32, i32* %42, align 16
  %44 = icmp ult i32 %43, 41
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %47 = load i8*, i8** %46, align 16
  %48 = sext i32 %43 to i64
  %49 = getelementptr i8, i8* %47, i64 %48
  %50 = add i32 %43, 8
  store i32 %50, i32* %42, align 16
  br label %55

51:                                               ; preds = %41
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr i8, i8* %53, i64 8
  store i8* %54, i8** %52, align 8
  br label %55

55:                                               ; preds = %51, %45
  %.in4 = phi i8* [ %49, %45 ], [ %53, %51 ]
  %56 = bitcast i8* %.in4 to i8**
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %57, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #4
  %.not5 = icmp eq i32 %58, 0
  br i1 %.not5, label %60, label %59

59:                                               ; preds = %55, %38, %20
  call void @abort() #5
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %55
  %61 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %61)
  ret void

UnifiedUnreachableBlock:                          ; preds = %59, %4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @f2(i8* noundef %0, %struct.__va_list_tag* nocapture noundef %1) #0 {
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !6
  %3 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %57

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ult i32 %6, 41
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %10 = load i8*, i8** %9, align 8
  %11 = sext i32 %6 to i64
  %12 = getelementptr i8, i8* %10, i64 %11
  %13 = add i32 %6, 8
  store i32 %13, i32* %5, align 8
  br label %18

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr i8, i8* %16, i64 8
  store i8* %17, i8** %15, align 8
  br label %18

18:                                               ; preds = %14, %8
  %.in = phi i8* [ %12, %8 ], [ %16, %14 ]
  %19 = bitcast i8* %.in to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %20, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #4
  %.not1 = icmp eq i32 %21, 0
  br i1 %.not1, label %22, label %57

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ult i32 %24, 161
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = sext i32 %24 to i64
  %30 = getelementptr i8, i8* %28, i64 %29
  %31 = add i32 %24, 16
  store i32 %31, i32* %23, align 4
  br label %36

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr i8, i8* %34, i64 8
  store i8* %35, i8** %33, align 8
  br label %36

36:                                               ; preds = %32, %26
  %.in2 = phi i8* [ %30, %26 ], [ %34, %32 ]
  %37 = bitcast i8* %.in2 to double*
  %38 = load double, double* %37, align 8
  %39 = fcmp une double %38, 1.200000e+01
  br i1 %39, label %57, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %42, 41
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = sext i32 %42 to i64
  %48 = getelementptr i8, i8* %46, i64 %47
  %49 = add i32 %42, 8
  store i32 %49, i32* %41, align 8
  br label %54

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr i8, i8* %52, i64 8
  store i8* %53, i8** %51, align 8
  br label %54

54:                                               ; preds = %50, %44
  %.in3 = phi i8* [ %48, %44 ], [ %52, %50 ]
  %55 = bitcast i8* %.in3 to i32*
  %56 = load i32, i32* %55, align 4
  %.not4 = icmp eq i32 %56, 26
  br i1 %.not4, label %58, label %57

57:                                               ; preds = %54, %36, %18, %2
  call void @abort() #5
  unreachable

58:                                               ; preds = %54
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 1173}
!5 = !{i64 186}
!6 = !{i64 600}
