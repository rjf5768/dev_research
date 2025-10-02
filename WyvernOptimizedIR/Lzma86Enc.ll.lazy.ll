; ModuleID = './Lzma86Enc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/LzmaUtil/Lzma86Enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct._CLzmaEncProps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ICompressProgress = type { i32 (i8*, i64, i64)* }

@g_Alloc = internal global %struct.ISzAlloc { i8* (i8*, i64)* @SzAlloc, void (i8*, i8*)* @SzFree }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Lzma86_Encode(i8* noundef %0, i64* nocapture noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct._CLzmaEncProps, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = load i64, i64* %1, align 8
  call void @LzmaEncProps_Init(%struct._CLzmaEncProps* noundef nonnull %8) #3
  %13 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %8, i64 0, i32 0
  store i32 %4, i32* %13, align 4
  %14 = getelementptr inbounds %struct._CLzmaEncProps, %struct._CLzmaEncProps* %8, i64 0, i32 1
  store i32 %5, i32* %14, align 4
  store i64 0, i64* %1, align 8
  %15 = icmp ult i64 %12, 14
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  br label %79

17:                                               ; preds = %7
  br label %18

18:                                               ; preds = %25, %17
  %.08 = phi i32 [ 0, %17 ], [ %26, %25 ]
  %.07 = phi i64 [ %3, %17 ], [ %27, %25 ]
  %19 = icmp ult i32 %.08, 8
  br i1 %19, label %20, label %28

20:                                               ; preds = %18
  %21 = trunc i64 %.07 to i8
  %22 = add nuw nsw i32 %.08, 6
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %0, i64 %23
  store i8 %21, i8* %24, align 1
  br label %25

25:                                               ; preds = %20
  %26 = add nuw nsw i32 %.08, 1
  %27 = lshr i64 %.07, 8
  br label %18, !llvm.loop !4

28:                                               ; preds = %18
  %.not22 = icmp eq i32 %6, 0
  br i1 %.not22, label %37, label %29

29:                                               ; preds = %28
  %.not28 = icmp eq i64 %3, 0
  br i1 %.not28, label %35, label %30

30:                                               ; preds = %29
  %31 = call i8* @MyAlloc(i64 noundef %3) #3
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %79

34:                                               ; preds = %30
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %31, i8* align 1 %2, i64 %3, i1 false)
  br label %35

35:                                               ; preds = %34, %29
  %.012 = phi i8* [ %31, %34 ], [ null, %29 ]
  store i32 0, i32* %9, align 4
  %36 = call i64 @x86_Convert(i8* noundef %.012, i64 noundef %3, i32 noundef 0, i32* noundef nonnull %9, i32 noundef 1) #3
  br label %37

37:                                               ; preds = %35, %28
  %.113 = phi i8* [ %.012, %35 ], [ null, %28 ]
  %38 = icmp eq i32 %6, 2
  %39 = select i1 %38, i32 3, i32 1
  br label %40

40:                                               ; preds = %72, %37
  %.09 = phi i32 [ 7, %37 ], [ %.211, %72 ]
  %.04 = phi i64 [ 0, %37 ], [ %.26, %72 ]
  %.03 = phi i32 [ 0, %37 ], [ %.2, %72 ]
  %.02 = phi i32 [ 0, %37 ], [ %73, %72 ]
  %41 = icmp ult i32 %.02, %39
  br i1 %41, label %42, label %.loopexit

42:                                               ; preds = %40
  %43 = add i64 %12, -14
  store i64 %43, i64* %10, align 8
  store i64 5, i64* %11, align 8
  br i1 %38, label %44, label %47

44:                                               ; preds = %42
  %45 = add nsw i32 %39, -1
  %46 = icmp eq i32 %.02, %45
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi i1 [ false, %42 ], [ %46, %44 ]
  br i1 %48, label %49, label %51

49:                                               ; preds = %47
  %.not27 = icmp eq i32 %.03, 0
  br i1 %.not27, label %50, label %51

50:                                               ; preds = %49
  br label %74

51:                                               ; preds = %49, %47
  br i1 %.not22, label %55, label %52

52:                                               ; preds = %51
  %53 = icmp eq i32 %.02, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54, %52, %51
  %.01.shrunk = phi i1 [ true, %54 ], [ %48, %52 ], [ %48, %51 ]
  %.01 = zext i1 %.01.shrunk to i32
  %56 = getelementptr inbounds i8, i8* %0, i64 14
  br i1 %.01.shrunk, label %57, label %58

57:                                               ; preds = %55
  br label %59

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %58, %57
  %60 = phi i8* [ %.113, %57 ], [ %2, %58 ]
  %61 = getelementptr inbounds i8, i8* %0, i64 1
  %62 = call i32 @LzmaEncode(i8* noundef nonnull %56, i64* noundef nonnull %10, i8* noundef %60, i64 noundef %3, %struct._CLzmaEncProps* noundef nonnull %8, i8* noundef nonnull %61, i64* noundef nonnull %11, i32 noundef 0, %struct.ICompressProgress* noundef null, %struct.ISzAlloc* noundef nonnull @g_Alloc, %struct.ISzAlloc* noundef nonnull @g_Alloc) #3
  %.not23 = icmp eq i32 %62, 7
  br i1 %.not23, label %71, label %63

63:                                               ; preds = %59
  %.not24 = icmp eq i32 %62, 0
  br i1 %.not24, label %65, label %64

64:                                               ; preds = %63
  br label %74

65:                                               ; preds = %63
  %66 = load i64, i64* %10, align 8
  %.not25 = icmp ugt i64 %66, %.04
  br i1 %.not25, label %67, label %68

67:                                               ; preds = %65
  %.not26 = icmp eq i32 %.09, 0
  br i1 %.not26, label %70, label %68

68:                                               ; preds = %67, %65
  %69 = load i64, i64* %10, align 8
  br label %70

70:                                               ; preds = %68, %67
  %.110 = phi i32 [ 0, %68 ], [ %.09, %67 ]
  %.15 = phi i64 [ %69, %68 ], [ %.04, %67 ]
  %.1 = phi i32 [ %.01, %68 ], [ %.03, %67 ]
  br label %71

71:                                               ; preds = %70, %59
  %.211 = phi i32 [ %.110, %70 ], [ %.09, %59 ]
  %.26 = phi i64 [ %.15, %70 ], [ %.04, %59 ]
  %.2 = phi i32 [ %.1, %70 ], [ %.03, %59 ]
  br label %72

72:                                               ; preds = %71
  %73 = add nuw nsw i32 %.02, 1
  br label %40, !llvm.loop !6

.loopexit:                                        ; preds = %40
  br label %74

74:                                               ; preds = %.loopexit, %64, %50
  %.3 = phi i32 [ %62, %64 ], [ %.09, %50 ], [ %.09, %.loopexit ]
  %.not = icmp ne i32 %.03, 0
  %75 = zext i1 %.not to i8
  store i8 %75, i8* %0, align 1
  %76 = add i64 %.04, 14
  store i64 %76, i64* %1, align 8
  br i1 %.not22, label %78, label %77

77:                                               ; preds = %74
  call void @MyFree(i8* noundef %.113) #3
  br label %78

78:                                               ; preds = %77, %74
  br label %79

79:                                               ; preds = %78, %33, %16
  %.0 = phi i32 [ 7, %16 ], [ 2, %33 ], [ %.3, %78 ]
  ret i32 %.0
}

declare dso_local void @LzmaEncProps_Init(%struct._CLzmaEncProps* noundef) #1

declare dso_local i8* @MyAlloc(i64 noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @x86_Convert(i8* noundef, i64 noundef, i32 noundef, i32* noundef, i32 noundef) #1

declare dso_local i32 @LzmaEncode(i8* noundef, i64* noundef, i8* noundef, i64 noundef, %struct._CLzmaEncProps* noundef, i8* noundef, i64* noundef, i32 noundef, %struct.ICompressProgress* noundef, %struct.ISzAlloc* noundef, %struct.ISzAlloc* noundef) #1

declare dso_local void @MyFree(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @SzAlloc(i8* nocapture noundef readnone %0, i64 noundef %1) #0 {
  %3 = call i8* @MyAlloc(i64 noundef %1) #3
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define internal void @SzFree(i8* nocapture noundef readnone %0, i8* noundef %1) #0 {
  call void @MyFree(i8* noundef %1) #3
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
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
