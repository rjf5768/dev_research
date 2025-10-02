; ModuleID = './map.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@map.userbuf = internal global [4096 x i8] zeroinitializer, align 16
@map.userz = internal global i8* null, align 8
@map.hostbuf = internal global [4096 x i8] zeroinitializer, align 16
@map.hostz = internal global i8* null, align 8
@queuecost = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @map(i32 noundef %0, i8** nocapture noundef %1, i8** nocapture noundef writeonly %2, i8** nocapture noundef writeonly %3, i32* nocapture noundef writeonly %4, i32* nocapture noundef writeonly %5) #0 {
  %7 = alloca i32, align 4
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @map.userbuf, i64 0, i64 0), i8** @map.userz, align 8
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @map.hostbuf, i64 0, i64 0), i8** @map.hostz, align 8
  br label %8

8:                                                ; preds = %46, %6
  %.01 = phi i8** [ %1, %6 ], [ %47, %46 ]
  %.0 = phi i32 [ 0, %6 ], [ %48, %46 ]
  %9 = icmp slt i32 %.0, %0
  br i1 %9, label %10, label %49

10:                                               ; preds = %8
  %11 = load i32, i32* @queuecost, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** @map.userz, align 8
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds i8*, i8** %3, i64 %14
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @map.hostz, align 8
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds i8*, i8** %2, i64 %17
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %.01, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp eq i8 %20, 40
  br i1 %21, label %22, label %28

22:                                               ; preds = %10
  %23 = load i8*, i8** %.01, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %24, i8** %.01, align 8
  %25 = call i8* @strchr(i8* noundef nonnull %24, i32 noundef 41) #3
  %.not = icmp eq i8* %25, null
  br i1 %.not, label %27, label %26

26:                                               ; preds = %22
  store i8 0, i8* %25, align 1
  br label %27

27:                                               ; preds = %26, %22
  br label %28

28:                                               ; preds = %27, %10
  %29 = load i8*, i8** %.01, align 8
  %30 = load i8*, i8** @map.hostz, align 8
  %31 = load i8*, i8** @map.userz, align 8
  %32 = call i32 (i8*, i8*, i8*, i32*, ...) bitcast (i32 (...)* @resolve to i32 (i8*, i8*, i8*, i32*, ...)*)(i8* noundef %29, i8* noundef %30, i8* noundef %31, i32* noundef nonnull %7) #4
  %33 = zext i32 %.0 to i64
  %34 = getelementptr inbounds i32, i32* %4, i64 %33
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %.0 to i64
  %37 = getelementptr inbounds i32, i32* %5, i64 %36
  store i32 %35, i32* %37, align 4
  %38 = load i8*, i8** @map.userz, align 8
  %39 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %38) #3
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** @map.userz, align 8
  %42 = load i8*, i8** @map.hostz, align 8
  %43 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %42) #3
  %44 = add i64 %43, 1
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8* %45, i8** @map.hostz, align 8
  br label %46

46:                                               ; preds = %28
  %47 = getelementptr inbounds i8*, i8** %.01, i64 1
  %48 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !4

49:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

declare dso_local i32 @resolve(...) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
