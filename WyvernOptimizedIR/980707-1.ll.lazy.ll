; ModuleID = './980707-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/980707-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buildargv.arglist = internal global [256 x i8*] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c" a b\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8** @buildargv(i8* noundef %0) #0 {
  br label %2

2:                                                ; preds = %29, %1
  %.01 = phi i32 [ 0, %1 ], [ %13, %29 ]
  %.0 = phi i8* [ %0, %1 ], [ %30, %29 ]
  br label %3

3:                                                ; preds = %6, %2
  %.1 = phi i8* [ %.0, %2 ], [ %7, %6 ]
  %4 = load i8, i8* %.1, align 1
  %5 = icmp eq i8 %4, 32
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %.1, i64 1
  br label %3, !llvm.loop !4

8:                                                ; preds = %3
  %9 = load i8, i8* %.1, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %31

12:                                               ; preds = %8
  %13 = add nuw nsw i32 %.01, 1
  %14 = zext i32 %.01 to i64
  %15 = getelementptr inbounds [256 x i8*], [256 x i8*]* @buildargv.arglist, i64 0, i64 %14
  store i8* %.1, i8** %15, align 8
  br label %16

16:                                               ; preds = %23, %12
  %.2 = phi i8* [ %.1, %12 ], [ %24, %23 ]
  %17 = load i8, i8* %.2, align 1
  %.not = icmp eq i8 %17, 32
  br i1 %.not, label %21, label %18

18:                                               ; preds = %16
  %19 = load i8, i8* %.2, align 1
  %20 = icmp ne i8 %19, 0
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i1 [ false, %16 ], [ %20, %18 ]
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds i8, i8* %.2, i64 1
  br label %16, !llvm.loop !6

25:                                               ; preds = %21
  %26 = load i8, i8* %.2, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %31

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, i8* %.2, i64 1
  store i8 0, i8* %.2, align 1
  br label %2

31:                                               ; preds = %28, %11
  %.12 = phi i32 [ %.01, %11 ], [ %13, %28 ]
  %32 = sext i32 %.12 to i64
  %33 = getelementptr inbounds [256 x i8*], [256 x i8*]* @buildargv.arglist, i64 0, i64 %32
  store i8* null, i8** %33, align 8
  ret i8** getelementptr inbounds ([256 x i8*], [256 x i8*]* @buildargv.arglist, i64 0, i64 0)
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [256 x i8], align 16
  %2 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(5) %2, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 5, i1 false) #6
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %4 = call i8** @buildargv(i8* noundef nonnull %3)
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %0
  call void @abort() #8
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %0
  %9 = getelementptr inbounds i8*, i8** %4, i64 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %10, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #7
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %13, label %12

12:                                               ; preds = %8
  call void @abort() #8
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8*, i8** %4, i64 2
  %15 = load i8*, i8** %14, align 8
  %.not2 = icmp eq i8* %15, null
  br i1 %.not2, label %17, label %16

16:                                               ; preds = %13
  call void @abort() #8
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %13
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %17, %16, %12, %7
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }
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
