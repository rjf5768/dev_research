; ModuleID = './zlib_compress.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/zlib_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque

@.str = private unnamed_addr constant [7 x i8] c"1.2.11\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compress2(i8* noundef %0, i64* nocapture noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.z_stream_s, align 8
  %7 = load i64, i64* %1, align 8
  store i64 0, i64* %1, align 8
  %8 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %6, i64 0, i32 8
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %8, align 8
  %9 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %6, i64 0, i32 9
  store void (i8*, i8*)* null, void (i8*, i8*)** %9, align 8
  %10 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %6, i64 0, i32 10
  store i8* null, i8** %10, align 8
  %11 = call i32 @deflateInit_(%struct.z_stream_s* noundef nonnull %6, i32 noundef %4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 112) #3
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %13, label %12

12:                                               ; preds = %5
  br label %60

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %6, i64 0, i32 3
  store i8* %0, i8** %14, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %6, i64 0, i32 4
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %6, i64 0, i32 0
  store i8* %2, i8** %16, align 8
  %17 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %6, i64 0, i32 1
  store i32 0, i32* %17, align 8
  br label %18

18:                                               ; preds = %49, %13
  %.02 = phi i64 [ %3, %13 ], [ %.13, %49 ]
  %.01 = phi i64 [ %7, %13 ], [ %.1, %49 ]
  %19 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %6, i64 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = icmp ugt i64 %.01, 4294967295
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  br label %27

25:                                               ; preds = %22
  %26 = trunc i64 %.01 to i32
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ -1, %24 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %6, i64 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = zext i32 %28 to i64
  %31 = sub i64 %.01, %30
  br label %32

32:                                               ; preds = %27, %18
  %.1 = phi i64 [ %31, %27 ], [ %.01, %18 ]
  %33 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %6, i64 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = icmp ugt i64 %.02, 4294967295
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  br label %41

39:                                               ; preds = %36
  %40 = trunc i64 %.02 to i32
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i32 [ -1, %38 ], [ %40, %39 ]
  %43 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %6, i64 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = zext i32 %42 to i64
  %45 = sub i64 %.02, %44
  br label %46

46:                                               ; preds = %41, %32
  %.13 = phi i64 [ %45, %41 ], [ %.02, %32 ]
  %.not4 = icmp eq i64 %.13, 0
  %47 = select i1 %.not4, i32 4, i32 0
  %48 = call i32 @deflate(%struct.z_stream_s* noundef nonnull %6, i32 noundef %47) #3
  br label %49

49:                                               ; preds = %46
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %18, label %51, !llvm.loop !4

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %6, i64 0, i32 5
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %1, align 8
  %54 = call i32 @deflateEnd(%struct.z_stream_s* noundef nonnull %6) #3
  %55 = icmp eq i32 %48, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %58

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %56
  %59 = phi i32 [ 0, %56 ], [ %48, %57 ]
  br label %60

60:                                               ; preds = %58, %12
  %.0 = phi i32 [ %11, %12 ], [ %59, %58 ]
  ret i32 %.0
}

declare dso_local i32 @deflateInit_(%struct.z_stream_s* noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @deflate(%struct.z_stream_s* noundef, i32 noundef) #1

declare dso_local i32 @deflateEnd(%struct.z_stream_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compress(i8* noundef %0, i64* nocapture noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = call i32 @compress2(i8* noundef %0, i64* noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef -1)
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @compressBound(i64 noundef %0) #2 {
  %2 = lshr i64 %0, 12
  %3 = add i64 %2, %0
  %4 = lshr i64 %0, 14
  %5 = add i64 %3, %4
  %6 = lshr i64 %0, 25
  %7 = add i64 %5, %6
  %8 = add i64 %7, 13
  ret i64 %8
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
