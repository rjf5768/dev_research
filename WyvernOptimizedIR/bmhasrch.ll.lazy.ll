; ModuleID = './bmhasrch.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-stringsearch/bmhasrch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lowervec = dso_local global [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7Fcueaaaaceeeiiiaae\91\92ooouuyou\9B\9C\9D\9E\9Faiounn\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@pat = internal global i8* null, align 8
@patlen = internal global i32 0, align 4
@skip = internal global [256 x i32] zeroinitializer, align 16
@skip2 = internal global i32 0, align 4

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @bmha_init(i8* noundef %0) #0 {
  store i8* %0, i8** @pat, align 8
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #3
  %3 = trunc i64 %2 to i32
  store i32 %3, i32* @patlen, align 4
  br label %4

4:                                                ; preds = %42, %1
  %.01 = phi i32 [ 0, %1 ], [ %43, %42 ]
  %5 = icmp ult i32 %.01, 256
  br i1 %5, label %6, label %44

6:                                                ; preds = %4
  %7 = load i32, i32* @patlen, align 4
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %8
  store i32 %7, i32* %9, align 4
  br label %10

10:                                               ; preds = %27, %6
  %.0.in = phi i32 [ %7, %6 ], [ %.0, %27 ]
  %.0 = add nsw i32 %.0.in, -1
  %11 = icmp sgt i32 %.0.in, 0
  br i1 %11, label %12, label %.loopexit

12:                                               ; preds = %10
  %13 = and i32 %.01, 255
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = load i8*, i8** @pat, align 8
  %18 = sext i32 %.0 to i64
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = icmp eq i8 %16, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %28

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26
  br label %10, !llvm.loop !4

.loopexit:                                        ; preds = %10
  br label %28

28:                                               ; preds = %.loopexit, %25
  %29 = icmp sgt i32 %.0.in, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = load i32, i32* @patlen, align 4
  %32 = sub i32 %31, %.0.in
  %33 = zext i32 %.01 to i64
  %34 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %33
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %28
  %36 = load i32, i32* @patlen, align 4
  %37 = icmp eq i32 %.0.in, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = zext i32 %.01 to i64
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %39
  store i32 32767, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41
  %43 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !6

44:                                               ; preds = %4
  %45 = load i32, i32* @patlen, align 4
  store i32 %45, i32* @skip2, align 4
  br label %46

46:                                               ; preds = %73, %44
  %.1 = phi i32 [ 0, %44 ], [ %74, %73 ]
  %47 = load i32, i32* @patlen, align 4
  %48 = add nsw i32 %47, -1
  %49 = icmp slt i32 %.1, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %46
  %51 = load i8*, i8** @pat, align 8
  %52 = zext i32 %.1 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = load i8*, i8** @pat, align 8
  %59 = load i32, i32* @patlen, align 4
  %60 = add nsw i32 %59, -1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = icmp eq i8 %57, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %50
  %69 = load i32, i32* @patlen, align 4
  %70 = xor i32 %.1, -1
  %71 = add i32 %69, %70
  store i32 %71, i32* @skip2, align 4
  br label %72

72:                                               ; preds = %68, %50
  br label %73

73:                                               ; preds = %72
  %74 = add nuw nsw i32 %.1, 1
  br label %46, !llvm.loop !7

75:                                               ; preds = %46
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @bmha_search(i8* noundef readonly %0, i32 noundef %1) #2 {
  %3 = load i32, i32* @patlen, align 4
  %4 = xor i32 %1, -1
  %5 = add i32 %3, %4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %63

8:                                                ; preds = %2
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  br label %11

11:                                               ; preds = %62, %8
  %.02 = phi i32 [ %5, %8 ], [ %59, %62 ]
  br label %12

12:                                               ; preds = %21, %11
  %.1 = phi i32 [ %.02, %11 ], [ %19, %21 ]
  %13 = sext i32 %.1 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %.1, %18
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %12, !llvm.loop !8

22:                                               ; preds = %12
  %23 = sub nsw i32 32767, %1
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %63

26:                                               ; preds = %22
  %27 = add nsw i32 %19, -32767
  %28 = load i32, i32* @patlen, align 4
  %29 = add nsw i32 %28, -1
  %30 = sub nsw i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %10, i64 %31
  br label %33

33:                                               ; preds = %53, %26
  %.01 = phi i32 [ %29, %26 ], [ %34, %53 ]
  %34 = add nsw i32 %.01, -1
  %35 = icmp sgt i32 %.01, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds i8, i8* %32, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** @pat, align 8
  %44 = sext i32 %34 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = icmp eq i8 %42, %49
  br label %51

51:                                               ; preds = %36, %33
  %52 = phi i1 [ false, %33 ], [ %50, %36 ]
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  br label %33, !llvm.loop !9

54:                                               ; preds = %51
  %55 = icmp slt i32 %.01, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  br label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @skip2, align 4
  %59 = add nsw i32 %27, %58
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %63

62:                                               ; preds = %57
  br label %11

63:                                               ; preds = %61, %56, %25, %7
  %.0 = phi i8* [ null, %7 ], [ null, %25 ], [ %32, %56 ], [ null, %61 ]
  ret i8* %.0
}

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

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
!9 = distinct !{!9, !5}
