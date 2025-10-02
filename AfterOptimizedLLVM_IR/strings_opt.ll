; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/spiff/strings.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/spiff/strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_wordcpy(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %5

5:                                                ; preds = %37, %2
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %5
  %11 = call i16** @__ctype_b_loc() #5
  %12 = load i16*, i16** %11, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, i16* %12, i64 %16
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 16384
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %10
  %23 = call i16** @__ctype_b_loc() #5
  %24 = load i16*, i16** %23, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %24, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 8192
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %22, %10, %5
  %36 = phi i1 [ false, %10 ], [ false, %5 ], [ %34, %22 ]
  br i1 %36, label %37, label %43

37:                                               ; preds = %35
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  %40 = load i8, i8* %38, align 1
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %3, align 8
  store i8 %40, i8* %41, align 1
  br label %5, !llvm.loop !4

43:                                               ; preds = %35
  %44 = load i8*, i8** %3, align 8
  store i8 0, i8* %44, align 1
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_skipword(i8** noundef %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  br label %3

3:                                                ; preds = %38, %1
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %3
  %10 = call i16** @__ctype_b_loc() #5
  %11 = load i16*, i16** %10, align 8
  %12 = load i8**, i8*** %2, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, i16* %11, i64 %16
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 16384
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %9
  %23 = call i16** @__ctype_b_loc() #5
  %24 = load i16*, i16** %23, align 8
  %25 = load i8**, i8*** %2, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, i16* %24, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 8192
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %22, %9, %3
  %37 = phi i1 [ false, %9 ], [ false, %3 ], [ %35, %22 ]
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = load i8**, i8*** %2, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %39, align 8
  br label %3, !llvm.loop !6

42:                                               ; preds = %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_skipspace(i8** noundef %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  br label %3

3:                                                ; preds = %24, %1
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = call i16** @__ctype_b_loc() #5
  %11 = load i16*, i16** %10, align 8
  %12 = load i8**, i8*** %2, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, i16* %11, i64 %16
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 8192
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %9, %3
  %23 = phi i1 [ false, %3 ], [ %21, %9 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = load i8**, i8*** %2, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %25, align 8
  br label %3, !llvm.loop !7

28:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_nextword(i8** noundef %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  call void @S_skipword(i8** noundef %3)
  %4 = load i8**, i8*** %2, align 8
  call void @S_skipspace(i8** noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @S_wordcmp(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strlen(i8* noundef %7) #6
  %9 = call i32 @strncmp(i8* noundef %5, i8* noundef %6, i64 noundef %8) #6
  ret i32 %9
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_trimzeros(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* noundef %5) #6
  %7 = getelementptr inbounds i8, i8* %4, i64 %6
  store i8* %7, i8** %3, align 8
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = icmp ugt i8* %9, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 -1
  store i8* %15, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 48, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i8*, i8** %3, align 8
  store i8 0, i8* %21, align 1
  br label %23

22:                                               ; preds = %13
  br label %25

23:                                               ; preds = %20
  br label %8, !llvm.loop !8

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %24, %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_savestr(i8** noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strlen(i8* noundef %6) #6
  call void (i8**, i64, ...) bitcast (void (i8**, i32)* @S_allocstr to void (i8**, i64, ...)*)(i8** noundef %5, i64 noundef %7)
  %8 = load i8**, i8*** %3, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @strcpy(i8* noundef %9, i8* noundef %10) #7
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_savenstr(i8** noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8**, i8*** %4, align 8
  %8 = load i32, i32* %6, align 4
  call void @S_allocstr(i8** noundef %7, i32 noundef %8)
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = call i8* @strncpy(i8* noundef %10, i8* noundef %11, i64 noundef %13) #7
  %15 = load i8**, i8*** %4, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8 0, i8* %19, align 1
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_allocstr(i8** noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 1
  %9 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 noundef %8)
  %10 = bitcast i32* %9 to i8*
  %11 = load i8**, i8*** %3, align 8
  store i8* %10, i8** %11, align 8
  ret void
}

declare dso_local i32* @_Z_myalloc(...) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

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
