; ModuleID = './derives.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/derives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shorts = type { %struct.shorts*, i16 }

@nvars = external dso_local global i32, align 4
@ntokens = external dso_local global i32, align 4
@nrules = external dso_local global i32, align 4
@rlhs = external dso_local global i16*, align 8
@derives = dso_local global i16** null, align 8
@nsyms = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_derives() #0 {
  %1 = load i32, i32* @nvars, align 4
  %2 = shl i32 %1, 3
  %3 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %2) #3
  %4 = bitcast i8* %3 to %struct.shorts**
  %5 = load i32, i32* @ntokens, align 4
  %6 = sext i32 %5 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds %struct.shorts*, %struct.shorts** %4, i64 %7
  %9 = load i32, i32* @nrules, align 4
  %10 = shl i32 %9, 4
  %11 = add i32 %10, 16
  %12 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %11) #3
  %13 = bitcast i8* %12 to %struct.shorts*
  %14 = load i32, i32* @nrules, align 4
  br label %15

15:                                               ; preds = %30, %0
  %.03 = phi %struct.shorts* [ %13, %0 ], [ %31, %30 ]
  %.0 = phi i32 [ %14, %0 ], [ %32, %30 ]
  %16 = icmp sgt i32 %.0, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %15
  %18 = load i16*, i16** @rlhs, align 8
  %19 = sext i32 %.0 to i64
  %20 = getelementptr inbounds i16, i16* %18, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = sext i16 %21 to i64
  %23 = getelementptr inbounds %struct.shorts*, %struct.shorts** %8, i64 %22
  %24 = load %struct.shorts*, %struct.shorts** %23, align 8
  %25 = getelementptr inbounds %struct.shorts, %struct.shorts* %.03, i64 0, i32 0
  store %struct.shorts* %24, %struct.shorts** %25, align 8
  %26 = trunc i32 %.0 to i16
  %27 = getelementptr inbounds %struct.shorts, %struct.shorts* %.03, i64 0, i32 1
  store i16 %26, i16* %27, align 8
  %28 = sext i16 %21 to i64
  %29 = getelementptr inbounds %struct.shorts*, %struct.shorts** %8, i64 %28
  store %struct.shorts* %.03, %struct.shorts** %29, align 8
  br label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.shorts, %struct.shorts* %.03, i64 1
  %32 = add nsw i32 %.0, -1
  br label %15, !llvm.loop !4

33:                                               ; preds = %15
  %34 = load i32, i32* @nvars, align 4
  %35 = shl i32 %34, 3
  %36 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %35) #3
  %37 = bitcast i8* %36 to i16**
  %38 = load i32, i32* @ntokens, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 0, %39
  %41 = getelementptr inbounds i16*, i16** %37, i64 %40
  store i16** %41, i16*** @derives, align 8
  %42 = load i32, i32* @nvars, align 4
  %43 = load i32, i32* @nrules, align 4
  %44 = add nsw i32 %42, %43
  %45 = shl i32 %44, 1
  %46 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %45) #3
  %47 = bitcast i8* %46 to i16*
  %48 = load i32, i32* @ntokens, align 4
  br label %49

49:                                               ; preds = %65, %33
  %.01 = phi i16* [ %47, %33 ], [ %66, %65 ]
  %.1 = phi i32 [ %48, %33 ], [ %67, %65 ]
  %50 = load i32, i32* @nsyms, align 4
  %51 = icmp slt i32 %.1, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load i16**, i16*** @derives, align 8
  %54 = sext i32 %.1 to i64
  %55 = getelementptr inbounds i16*, i16** %53, i64 %54
  store i16* %.01, i16** %55, align 8
  %56 = sext i32 %.1 to i64
  %57 = getelementptr inbounds %struct.shorts*, %struct.shorts** %8, i64 %56
  br label %58

58:                                               ; preds = %59, %52
  %.14.in = phi %struct.shorts** [ %57, %52 ], [ %63, %59 ]
  %.12 = phi i16* [ %.01, %52 ], [ %62, %59 ]
  %.14 = load %struct.shorts*, %struct.shorts** %.14.in, align 8
  %.not6 = icmp eq %struct.shorts* %.14, null
  br i1 %.not6, label %64, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.shorts, %struct.shorts* %.14, i64 0, i32 1
  %61 = load i16, i16* %60, align 8
  %62 = getelementptr inbounds i16, i16* %.12, i64 1
  store i16 %61, i16* %.12, align 2
  %63 = getelementptr inbounds %struct.shorts, %struct.shorts* %.14, i64 0, i32 0
  br label %58, !llvm.loop !6

64:                                               ; preds = %58
  store i16 -1, i16* %.12, align 2
  br label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds i16, i16* %.12, i64 1
  %67 = add nsw i32 %.1, 1
  br label %49, !llvm.loop !7

68:                                               ; preds = %49
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %74, label %69

69:                                               ; preds = %68
  %70 = load i32, i32* @ntokens, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.shorts*, %struct.shorts** %8, i64 %71
  %73 = bitcast %struct.shorts** %72 to i8*
  call void @free(i8* noundef %73) #3
  br label %74

74:                                               ; preds = %69, %68
  %.not5 = icmp eq i8* %12, null
  br i1 %.not5, label %76, label %75

75:                                               ; preds = %74
  call void @free(i8* noundef %12) #3
  br label %76

76:                                               ; preds = %75, %74
  ret void
}

declare dso_local i8* @mallocate(...) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_derives() #0 {
  %1 = load i16**, i16*** @derives, align 8
  %2 = load i32, i32* @ntokens, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds i16*, i16** %1, i64 %3
  %5 = load i16*, i16** %4, align 8
  %.not = icmp eq i16* %5, null
  br i1 %.not, label %13, label %6

6:                                                ; preds = %0
  %7 = load i16**, i16*** @derives, align 8
  %8 = load i32, i32* @ntokens, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i16*, i16** %7, i64 %9
  %11 = bitcast i16** %10 to i8**
  %12 = load i8*, i8** %11, align 8
  call void @free(i8* noundef %12) #3
  br label %13

13:                                               ; preds = %6, %0
  %14 = load i16**, i16*** @derives, align 8
  %.not1 = icmp eq i16** %14, null
  br i1 %.not1, label %21, label %15

15:                                               ; preds = %13
  %16 = load i16**, i16*** @derives, align 8
  %17 = load i32, i32* @ntokens, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16*, i16** %16, i64 %18
  %20 = bitcast i16** %19 to i8*
  call void @free(i8* noundef %20) #3
  br label %21

21:                                               ; preds = %15, %13
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
