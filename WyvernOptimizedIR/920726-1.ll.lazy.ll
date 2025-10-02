; ModuleID = './920726-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920726-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.spurious = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"i i \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"5 20 \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @first(i8* noundef %0, i8* nocapture noundef readonly %1, ...) #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  br label %5

5:                                                ; preds = %40, %2
  %.01 = phi i32 [ 0, %2 ], [ %41, %40 ]
  %.0 = phi i8* [ %0, %2 ], [ %.1, %40 ]
  %6 = zext i32 %.01 to i64
  %7 = getelementptr inbounds i8, i8* %1, i64 %6
  %8 = load i8, i8* %7, align 1
  %.not = icmp eq i8 %8, 0
  br i1 %.not, label %42, label %9

9:                                                ; preds = %5
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds i8, i8* %1, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = icmp eq i8 %12, 105
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %16 = load i32, i32* %15, align 16
  %17 = icmp ult i32 %16, 41
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %20 = load i8*, i8** %19, align 16
  %21 = sext i32 %16 to i64
  %22 = getelementptr i8, i8* %20, i64 %21
  %23 = add i32 %16, 8
  store i32 %23, i32* %15, align 16
  br label %28

24:                                               ; preds = %14
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr i8, i8* %26, i64 8
  store i8* %27, i8** %25, align 8
  br label %28

28:                                               ; preds = %24, %18
  %.in = phi i8* [ %22, %18 ], [ %26, %24 ]
  %29 = bitcast i8* %.in to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %.0, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %30) #7
  %32 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.0) #7
  %33 = getelementptr inbounds i8, i8* %.0, i64 %32
  br label %39

34:                                               ; preds = %9
  %35 = zext i32 %.01 to i64
  %36 = getelementptr inbounds i8, i8* %1, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 %37, i8* %.0, align 1
  br label %39

39:                                               ; preds = %34, %28
  %.1 = phi i8* [ %33, %28 ], [ %38, %34 ]
  br label %40

40:                                               ; preds = %39
  %41 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !4

42:                                               ; preds = %5
  %43 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %43)
  store i8 0, i8* %.0, align 1
  ret i32 undef
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @second(i8* noundef %0, i8* nocapture noundef readonly %1, ...) #0 {
  %3 = alloca %struct.spurious, align 4
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_start(i8* nonnull %5)
  br label %6

6:                                                ; preds = %41, %2
  %.01 = phi i32 [ 0, %2 ], [ %42, %41 ]
  %.0 = phi i8* [ %0, %2 ], [ %.1, %41 ]
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds i8, i8* %1, i64 %7
  %9 = load i8, i8* %8, align 1
  %.not = icmp eq i8 %9, 0
  br i1 %.not, label %43, label %10

10:                                               ; preds = %6
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds i8, i8* %1, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 105
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %17 = load i32, i32* %16, align 16
  %18 = icmp ult i32 %17, 41
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %21 = load i8*, i8** %20, align 16
  %22 = sext i32 %17 to i64
  %23 = getelementptr i8, i8* %21, i64 %22
  %24 = add i32 %17, 8
  store i32 %24, i32* %16, align 16
  br label %29

25:                                               ; preds = %15
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr i8, i8* %27, i64 8
  store i8* %28, i8** %26, align 8
  br label %29

29:                                               ; preds = %25, %19
  %.in = phi i8* [ %23, %19 ], [ %27, %25 ]
  %30 = bitcast i8* %.in to i32*
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %.0, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %31) #7
  %33 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.0) #7
  %34 = getelementptr inbounds i8, i8* %.0, i64 %33
  br label %40

35:                                               ; preds = %10
  %36 = zext i32 %.01 to i64
  %37 = getelementptr inbounds i8, i8* %1, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 %38, i8* %.0, align 1
  br label %40

40:                                               ; preds = %35, %29
  %.1 = phi i8* [ %34, %29 ], [ %39, %35 ]
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !6

43:                                               ; preds = %6
  %44 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_end(i8* %44)
  store i8 0, i8* %.0, align 1
  %45 = getelementptr inbounds %struct.spurious, %struct.spurious* %3, i64 0, i32 0
  %46 = load i32, i32* %45, align 4
  ret i32 %46
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #4 {
  %1 = alloca [100 x i8], align 16
  %2 = alloca [100 x i8], align 16
  %3 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %4 = call i32 (i8*, i8*, ...) @first(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5, i32 noundef 20)
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %6 = call i32 (i8*, i8*, ...) @second(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5, i32 noundef 20)
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) %7, i64 6)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %8, label %10

8:                                                ; preds = %0
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %bcmp1 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) %9, i64 6)
  %.not2 = icmp eq i32 %bcmp1, 0
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %8, %0
  call void @abort() #8
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %11, %10
  unreachable
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noreturn
declare dso_local void @abort() #5

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
