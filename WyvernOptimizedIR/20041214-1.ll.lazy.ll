; ModuleID = './20041214-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041214-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@g.step0_jumps = internal global [3 x i8*] [i8* blockaddress(@g, %9), i8* blockaddress(@g, %20), i8* blockaddress(@g, %31)], align 16
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"asdf\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g(i8* noundef %0, i8* nocapture noundef readonly %1, %struct.__va_list_tag* nocapture noundef %2) #0 {
  %4 = load i8, i8* %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %54

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %51, %7
  %.0 = phi i8* [ %1, %7 ], [ %50, %51 ]
  br label %55

9:                                                ; preds = %55
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %11, 41
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = add i32 %11, 8
  store i32 %14, i32* %10, align 8
  br label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr i8, i8* %17, i64 8
  store i8* %18, i8** %16, align 8
  br label %19

19:                                               ; preds = %15, %13
  br label %55

20:                                               ; preds = %55
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %22, 41
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = add i32 %22, 8
  store i32 %25, i32* %21, align 8
  br label %30

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr i8, i8* %28, i64 8
  store i8* %29, i8** %27, align 8
  br label %30

30:                                               ; preds = %26, %24
  br label %49

31:                                               ; preds = %55
  %32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %33, 41
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = sext i32 %33 to i64
  %39 = getelementptr i8, i8* %37, i64 %38
  %40 = add i32 %33, 8
  store i32 %40, i32* %32, align 8
  br label %45

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr i8, i8* %43, i64 8
  store i8* %44, i8** %42, align 8
  br label %45

45:                                               ; preds = %41, %35
  %.in = phi i8* [ %39, %35 ], [ %43, %41 ]
  %46 = bitcast i8* %.in to i8**
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %47) #5
  br label %49

49:                                               ; preds = %45, %30
  %50 = getelementptr inbounds i8, i8* %.0.pn, i64 2
  br label %51

51:                                               ; preds = %49
  %52 = load i8, i8* %50, align 1
  %.not = icmp eq i8 %52, 0
  br i1 %.not, label %53, label %8, !llvm.loop !4

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53, %6
  ret i32 0

55:                                               ; preds = %19, %8
  %.0.pn = phi i8* [ %.0, %8 ], [ %.1, %19 ]
  %.1 = getelementptr inbounds i8, i8* %.0.pn, i64 1
  %56 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @g.step0_jumps, i64 0, i64 2), align 16
  indirectbr i8* %56, [label %9, label %20, label %31]
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i8* noundef %0, i8* nocapture noundef readonly %1, ...) #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = call i32 @g(i8* noundef %0, i8* noundef %1, %struct.__va_list_tag* noundef nonnull %5)
  %7 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %7)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  call void (i8*, i8*, ...) @f(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 noundef 0)
  %3 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %3, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 5)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #6
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
