; ModuleID = './uudecode.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/BitBench/uudecode/uudecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"begin %o %s \0A\00", align 1
@__const.main.postfix = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Usage: uudecode [infile]\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Usage: uudecode [infile]\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @skip_to_newline(i8* nocapture noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %7, %2
  %.0 = phi i32 [ %1, %2 ], [ %8, %7 ]
  %4 = sext i32 %.0 to i64
  %5 = getelementptr inbounds i8, i8* %0, i64 %4
  %6 = load i8, i8* %5, align 1
  %.not = icmp eq i8 %6, 10
  br i1 %.not, label %9, label %7

7:                                                ; preds = %3
  %8 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !4

9:                                                ; preds = %3
  %10 = add nsw i32 %.0, 1
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @decode_char(i8 noundef signext %0) #1 {
  %2 = add i8 %0, 32
  %3 = and i8 %2, 63
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @decode(i8* nocapture noundef readonly %0, i32 noundef %1, i8* nocapture noundef writeonly %2) #2 {
  br label %4

4:                                                ; preds = %112, %3
  %.02 = phi i32 [ 0, %3 ], [ %.13, %112 ]
  %.0 = phi i32 [ %1, %3 ], [ %113, %112 ]
  %5 = sext i32 %.0 to i64
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = load i8, i8* %6, align 1
  %.not = icmp eq i8 %7, 32
  br i1 %.not, label %114, label %8

8:                                                ; preds = %4
  %9 = sext i32 %.0 to i64
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = call i32 @decode_char(i8 noundef signext %11)
  %13 = add nsw i32 %.0, 1
  br label %14

14:                                               ; preds = %109, %8
  %.13 = phi i32 [ %.02, %8 ], [ %.4, %109 ]
  %.01 = phi i32 [ %12, %8 ], [ %111, %109 ]
  %.1 = phi i32 [ %13, %8 ], [ %110, %109 ]
  %15 = icmp sgt i32 %.01, 0
  br i1 %15, label %16, label %112

16:                                               ; preds = %14
  %17 = icmp sgt i32 %.01, 2
  br i1 %17, label %18, label %68

18:                                               ; preds = %16
  %19 = sext i32 %.1 to i64
  %20 = getelementptr inbounds i8, i8* %0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @decode_char(i8 noundef signext %21)
  %23 = shl i32 %22, 2
  %24 = add nsw i32 %.1, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = call i32 @decode_char(i8 noundef signext %27)
  %29 = lshr i32 %28, 4
  %30 = or i32 %23, %29
  %31 = trunc i32 %30 to i8
  %32 = add nsw i32 %.13, 1
  %33 = sext i32 %.13 to i64
  %34 = getelementptr inbounds i8, i8* %2, i64 %33
  store i8 %31, i8* %34, align 1
  %35 = add nsw i32 %.1, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @decode_char(i8 noundef signext %38)
  %40 = shl i32 %39, 4
  %41 = add nsw i32 %.1, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @decode_char(i8 noundef signext %44)
  %46 = lshr i32 %45, 2
  %47 = or i32 %40, %46
  %48 = trunc i32 %47 to i8
  %49 = add nsw i32 %.13, 2
  %50 = sext i32 %32 to i64
  %51 = getelementptr inbounds i8, i8* %2, i64 %50
  store i8 %48, i8* %51, align 1
  %52 = add nsw i32 %.1, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @decode_char(i8 noundef signext %55)
  %57 = shl i32 %56, 6
  %58 = add nsw i32 %.1, 3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @decode_char(i8 noundef signext %61)
  %63 = or i32 %57, %62
  %64 = trunc i32 %63 to i8
  %65 = add nsw i32 %.13, 3
  %66 = sext i32 %49 to i64
  %67 = getelementptr inbounds i8, i8* %2, i64 %66
  store i8 %64, i8* %67, align 1
  br label %108

68:                                               ; preds = %16
  %69 = icmp sgt i32 %.01, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %68
  %71 = sext i32 %.1 to i64
  %72 = getelementptr inbounds i8, i8* %0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = call i32 @decode_char(i8 noundef signext %73)
  %75 = shl i32 %74, 2
  %76 = add nsw i32 %.1, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = call i32 @decode_char(i8 noundef signext %79)
  %81 = lshr i32 %80, 4
  %82 = or i32 %75, %81
  %83 = trunc i32 %82 to i8
  %84 = add nsw i32 %.13, 1
  %85 = sext i32 %.13 to i64
  %86 = getelementptr inbounds i8, i8* %2, i64 %85
  store i8 %83, i8* %86, align 1
  br label %87

87:                                               ; preds = %70, %68
  %.2 = phi i32 [ %84, %70 ], [ %.13, %68 ]
  %88 = icmp sgt i32 %.01, 1
  br i1 %88, label %89, label %107

89:                                               ; preds = %87
  %90 = add nsw i32 %.1, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = call i32 @decode_char(i8 noundef signext %93)
  %95 = shl i32 %94, 4
  %96 = add nsw i32 %.1, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = call i32 @decode_char(i8 noundef signext %99)
  %101 = lshr i32 %100, 2
  %102 = or i32 %95, %101
  %103 = trunc i32 %102 to i8
  %104 = add nsw i32 %.2, 1
  %105 = sext i32 %.2 to i64
  %106 = getelementptr inbounds i8, i8* %2, i64 %105
  store i8 %103, i8* %106, align 1
  br label %107

107:                                              ; preds = %89, %87
  %.3 = phi i32 [ %104, %89 ], [ %.2, %87 ]
  br label %108

108:                                              ; preds = %107, %18
  %.4 = phi i32 [ %65, %18 ], [ %.3, %107 ]
  br label %109

109:                                              ; preds = %108
  %110 = add nsw i32 %.1, 4
  %111 = add nsw i32 %.01, -3
  br label %14, !llvm.loop !6

112:                                              ; preds = %14
  %113 = call i32 @skip_to_newline(i8* noundef %0, i32 noundef %.1)
  br label %4, !llvm.loop !7

114:                                              ; preds = %4
  %115 = call i32 @skip_to_newline(i8* noundef %0, i32 noundef %.0)
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %0, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = icmp eq i8 %118, 101
  br i1 %119, label %120, label %133

120:                                              ; preds = %114
  %121 = add nsw i32 %115, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %0, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = icmp eq i8 %124, 110
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = add nsw i32 %115, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = icmp eq i8 %130, 100
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  ret i32 %.02

133:                                              ; preds = %126, %120, %114
  call void @exit(i32 noundef 1) #10
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @do_decode(i8* noundef %0, i8* nocapture noundef writeonly %1, i8* noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %4, i8* noundef %2) #11
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #12
  %9 = trunc i64 %8 to i32
  %10 = add nsw i32 %9, 12
  %11 = call i32 @decode(i8* noundef %0, i32 noundef %10, i8* noundef %1)
  ret i32 %11

12:                                               ; preds = %3
  call void @exit(i32 noundef 1) #10
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #5

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #6 {
  %3 = alloca [100 x i8], align 16
  %4 = alloca %struct.timeval, align 8
  %5 = call noalias dereferenceable_or_null(10000000) i8* @malloc(i64 noundef 10000000) #11
  %6 = call noalias dereferenceable_or_null(10000000) i8* @malloc(i64 noundef 10000000) #11
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8*, i8** %1, i64 1
  %10 = load i8*, i8** %9, align 8
  %11 = call noalias %struct._IO_FILE* @fopen(i8* noundef %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #11
  %12 = icmp eq %struct._IO_FILE* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8*, i8** %1, i64 1
  %15 = load i8*, i8** %14, align 8
  call void @perror(i8* noundef %15) #13
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %8
  %17 = add nsw i32 %0, -1
  br label %20

18:                                               ; preds = %2
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %20

20:                                               ; preds = %18, %16
  %.02 = phi %struct._IO_FILE* [ %11, %16 ], [ %19, %18 ]
  %.01 = phi i32 [ %17, %16 ], [ %0, %18 ]
  %.not = icmp eq i32 %.01, 1
  br i1 %.not, label %22, label %21

21:                                               ; preds = %20
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 noundef 2) #10
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %20
  %23 = call i64 @read_data(%struct._IO_FILE* noundef %.02, i8* noundef %5)
  %24 = call i32 @gettimeofday(%struct.timeval* noundef nonnull %4, i8* noundef null) #11
  br label %25

25:                                               ; preds = %30, %22
  %.03 = phi i32 [ 0, %22 ], [ %31, %30 ]
  %.0 = phi i32 [ undef, %22 ], [ %29, %30 ]
  %26 = icmp ult i32 %.03, 100
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %29 = call i32 @do_decode(i8* noundef %5, i8* noundef %6, i8* noundef nonnull %28)
  br label %30

30:                                               ; preds = %27
  %31 = add nuw nsw i32 %.03, 1
  br label %25, !llvm.loop !8

32:                                               ; preds = %25
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %.0) #11
  call void @exit(i32 noundef 0) #10
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %32, %21, %13
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #8

declare dso_local void @perror(i8* noundef) #8

declare dso_local i32 @printf(i8* noundef, ...) #8

; Function Attrs: noinline nounwind uwtable
define internal i64 @read_data(%struct._IO_FILE* noundef %0, i8* noundef %1) #2 {
  %3 = call i64 @fread(i8* noundef %1, i64 noundef 1, i64 noundef 10000000, %struct._IO_FILE* noundef %0) #11
  ret i64 %3
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) #4

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #9

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { cold nounwind }

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
