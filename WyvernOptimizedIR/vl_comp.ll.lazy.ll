; ModuleID = './vl_comp.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/vl_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vl_comp(%struct.vlink* nocapture noundef readonly %0, %struct.vlink* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 1
  %4 = load i8*, i8** %3, align 8
  %.not = icmp eq i8* %4, null
  br i1 %.not, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %.not11 = icmp eq i8* %7, null
  br i1 %.not11, label %8, label %9

8:                                                ; preds = %5
  br label %63

9:                                                ; preds = %5, %2
  %10 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %.not2 = icmp eq i8* %11, null
  br i1 %.not2, label %12, label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %.not3 = icmp eq i8* %14, null
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %12
  br label %63

16:                                               ; preds = %12, %9
  %17 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %.not4 = icmp eq i8* %18, null
  br i1 %.not4, label %36, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %.not8 = icmp eq i8* %21, null
  br i1 %.not8, label %36, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %.not9 = icmp eq i8 %25, 0
  br i1 %.not9, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %.not10 = icmp eq i8 %29, 0
  br i1 %.not10, label %36, label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %32, i8* noundef nonnull dereferenceable(1) %34) #2
  br label %63

36:                                               ; preds = %26, %19, %16
  %37 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 7
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 7
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %38, i8* noundef nonnull dereferenceable(1) %40) #2
  %.not5 = icmp eq i32 %41, 0
  br i1 %.not5, label %42, label %48

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 8
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %44, i8* noundef nonnull dereferenceable(1) %46) #2
  br label %48

48:                                               ; preds = %42, %36
  %.01 = phi i32 [ %41, %36 ], [ %47, %42 ]
  %.not6 = icmp eq i32 %.01, 0
  br i1 %.not6, label %49, label %55

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 9
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 9
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %51, i8* noundef nonnull dereferenceable(1) %53) #2
  br label %55

55:                                               ; preds = %49, %48
  %.1 = phi i32 [ %.01, %48 ], [ %54, %49 ]
  %.not7 = icmp eq i32 %.1, 0
  br i1 %.not7, label %56, label %62

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 10
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 10
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %58, i8* noundef nonnull dereferenceable(1) %60) #2
  br label %62

62:                                               ; preds = %56, %55
  %.2 = phi i32 [ %.1, %55 ], [ %61, %56 ]
  br label %63

63:                                               ; preds = %62, %30, %15, %8
  %.0 = phi i32 [ %35, %30 ], [ %.2, %62 ], [ -1, %15 ], [ 1, %8 ]
  ret i32 %.0
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vl_equal(%struct.vlink* nocapture noundef readonly %0, %struct.vlink* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 1
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 1
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %4, i8* noundef nonnull dereferenceable(1) %6) #2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %62

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 2
  %11 = load i8, i8* %10, align 8
  %12 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 2
  %13 = load i8, i8* %12, align 8
  %14 = icmp eq i8 %11, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 4
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %17, i8* noundef nonnull dereferenceable(1) %19) #2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 7
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 7
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %24, i8* noundef nonnull dereferenceable(1) %26) #2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %31, i8* noundef nonnull dereferenceable(1) %33) #2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 9
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 9
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %38, i8* noundef nonnull dereferenceable(1) %40) #2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 10
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 10
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %45, i8* noundef nonnull dereferenceable(1) %47) #2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 11
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 11
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 12
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 12
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %58, %60
  %phi.cast = zext i1 %61 to i32
  br label %62

62:                                               ; preds = %56, %50, %43, %36, %29, %22, %15, %9, %2
  %63 = phi i32 [ 0, %50 ], [ 0, %43 ], [ 0, %36 ], [ 0, %29 ], [ 0, %22 ], [ 0, %15 ], [ 0, %9 ], [ 0, %2 ], [ %phi.cast, %56 ]
  ret i32 %63
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
