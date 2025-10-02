; ModuleID = './strings.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/spiff/strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @S_wordcpy(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %23, %2
  %.01 = phi i8* [ %1, %2 ], [ %24, %23 ]
  %.0 = phi i8* [ %0, %2 ], [ %26, %23 ]
  %4 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %21, label %5

5:                                                ; preds = %3
  %6 = call i16** @__ctype_b_loc() #8
  %7 = load i16*, i16** %6, align 8
  %8 = load i8, i8* %.01, align 1
  %9 = sext i8 %8 to i64
  %10 = getelementptr inbounds i16, i16* %7, i64 %9
  %11 = load i16, i16* %10, align 2
  %12 = and i16 %11, 16384
  %.not2 = icmp eq i16 %12, 0
  br i1 %.not2, label %21, label %13

13:                                               ; preds = %5
  %14 = call i16** @__ctype_b_loc() #8
  %15 = load i16*, i16** %14, align 8
  %16 = load i8, i8* %.01, align 1
  %17 = sext i8 %16 to i64
  %18 = getelementptr inbounds i16, i16* %15, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = and i16 %19, 8192
  %.not3 = icmp eq i16 %20, 0
  br label %21

21:                                               ; preds = %13, %5, %3
  %22 = phi i1 [ false, %5 ], [ false, %3 ], [ %.not3, %13 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = getelementptr inbounds i8, i8* %.01, i64 1
  %25 = load i8, i8* %.01, align 1
  %26 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 %25, i8* %.0, align 1
  br label %3, !llvm.loop !4

27:                                               ; preds = %21
  store i8 0, i8* %.0, align 1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @S_skipword(i8** nocapture noundef %0) #0 {
  br label %2

2:                                                ; preds = %25, %1
  %3 = load i8*, i8** %0, align 8
  %4 = load i8, i8* %3, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %23, label %5

5:                                                ; preds = %2
  %6 = call i16** @__ctype_b_loc() #8
  %7 = load i16*, i16** %6, align 8
  %8 = load i8*, i8** %0, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = getelementptr inbounds i16, i16* %7, i64 %10
  %12 = load i16, i16* %11, align 2
  %13 = and i16 %12, 16384
  %.not1 = icmp eq i16 %13, 0
  br i1 %.not1, label %23, label %14

14:                                               ; preds = %5
  %15 = call i16** @__ctype_b_loc() #8
  %16 = load i16*, i16** %15, align 8
  %17 = load i8*, i8** %0, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i64
  %20 = getelementptr inbounds i16, i16* %16, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = and i16 %21, 8192
  %.not2 = icmp eq i16 %22, 0
  br label %23

23:                                               ; preds = %14, %5, %2
  %24 = phi i1 [ false, %5 ], [ false, %2 ], [ %.not2, %14 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i8*, i8** %0, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %0, align 8
  br label %2, !llvm.loop !6

28:                                               ; preds = %23
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @S_skipspace(i8** nocapture noundef %0) #0 {
  br label %2

2:                                                ; preds = %17, %1
  %3 = load i8*, i8** %0, align 8
  %4 = load i8, i8* %3, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %15, label %5

5:                                                ; preds = %2
  %6 = call i16** @__ctype_b_loc() #8
  %7 = load i16*, i16** %6, align 8
  %8 = load i8*, i8** %0, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = getelementptr inbounds i16, i16* %7, i64 %10
  %12 = load i16, i16* %11, align 2
  %13 = and i16 %12, 8192
  %14 = icmp ne i16 %13, 0
  br label %15

15:                                               ; preds = %5, %2
  %16 = phi i1 [ false, %2 ], [ %14, %5 ]
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load i8*, i8** %0, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %19, i8** %0, align 8
  br label %2, !llvm.loop !7

20:                                               ; preds = %15
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @S_nextword(i8** nocapture noundef %0) #0 {
  call void @S_skipword(i8** noundef %0)
  call void @S_skipspace(i8** noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define dso_local i32 @S_wordcmp(i8* noundef readonly %0, i8* noundef readonly %1) #2 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #9
  %4 = call i32 @strncmp(i8* noundef %0, i8* noundef %1, i64 noundef %3) #9
  ret i32 %4
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @S_trimzeros(i8* noundef %0) #4 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #9
  br label %3

3:                                                ; preds = %10, %1
  %.0.idx = phi i64 [ %2, %1 ], [ %.0.add, %10 ]
  %4 = icmp sgt i64 %.0.idx, 1
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %.0.add = add nsw i64 %.0.idx, -1
  %.ptr = getelementptr inbounds i8, i8* %0, i64 %.0.add
  %6 = load i8, i8* %.ptr, align 1
  %7 = icmp eq i8 %6, 48
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i8 0, i8* %.ptr, align 1
  br label %10

9:                                                ; preds = %5
  br label %12

10:                                               ; preds = %8
  br label %3, !llvm.loop !8

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_savestr(i8** noundef %0, i8* noundef %1) #5 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #9
  call void (i8**, i64, ...) bitcast (void (i8**, i32)* @S_allocstr to void (i8**, i64, ...)*)(i8** noundef %0, i64 noundef %3)
  %4 = load i8*, i8** %0, align 8
  %5 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %4, i8* noundef nonnull dereferenceable(1) %1) #10
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_savenstr(i8** nocapture noundef %0, i8* noundef %1, i32 noundef %2) #5 {
  call void @S_allocstr(i8** noundef %0, i32 noundef %2)
  %4 = load i8*, i8** %0, align 8
  %5 = sext i32 %2 to i64
  %6 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %4, i8* noundef %1, i64 noundef %5) #10
  %7 = load i8*, i8** %0, align 8
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  store i8 0, i8* %9, align 1
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_allocstr(i8** nocapture noundef writeonly %0, i32 noundef %1) #5 {
  %3 = add nsw i32 %1, 1
  %4 = sext i32 %3 to i64
  %5 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 noundef %4) #10
  %6 = bitcast i8** %0 to i32**
  store i32* %5, i32** %6, align 8
  ret void
}

declare dso_local i32* @_Z_myalloc(...) #7

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
