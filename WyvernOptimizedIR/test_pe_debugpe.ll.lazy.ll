; ModuleID = './test_pe_debugpe.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/test_pe_debugpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tests = type { i16*, i32 }
%struct.rlimit = type { i64, i64 }
%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type opaque
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"setrlimit\00", align 1
@tests = internal global [5 x %struct.tests] [%struct.tests { i16* getelementptr inbounds ([80 x i16], [80 x i16]* @test1, i32 0, i32 0), i32 160 }, %struct.tests { i16* getelementptr inbounds ([80 x i16], [80 x i16]* @test2, i32 0, i32 0), i32 160 }, %struct.tests { i16* getelementptr inbounds ([80 x i16], [80 x i16]* @test3, i32 0, i32 0), i32 160 }, %struct.tests { i16* getelementptr inbounds ([72 x i16], [72 x i16]* @test4, i32 0, i32 0), i32 144 }, %struct.tests zeroinitializer], align 16
@tmp_file = internal global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), align 8
@test1 = internal constant [80 x i16] [i16 23117, i16 144, i16 3, i16 0, i16 4, i16 0, i16 -1, i16 0, i16 184, i16 0, i16 0, i16 0, i16 64, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 256, i16 0, i16 7950, i16 3770, i16 -19456, i16 -13047, i16 -18399, i16 19457, i16 8653, i16 26708, i16 29545, i16 28704, i16 28530, i16 29287, i16 28001, i16 25376, i16 28257, i16 28526, i16 8308, i16 25954, i16 29216, i16 28277, i16 26912, i16 8302, i16 20292, i16 8275, i16 28525, i16 25956, i16 3374, i16 2573, i16 36, i16 0, i16 0, i16 0, i16 1986, i16 9145, i16 26246, i16 28887, i16 26246, i16 28887, i16 26246, i16 28887, i16 27267, i16 28808, i16 26255, i16 28887, i16 28165, i16 28808, i16 26247, i16 28887], align 16
@test2 = internal constant [80 x i16] [i16 23117, i16 144, i16 3, i16 0, i16 4, i16 0, i16 -1, i16 0, i16 184, i16 0, i16 0, i16 0, i16 64, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 256, i16 0, i16 7950, i16 3770, i16 -19456, i16 -13047, i16 -18399, i16 19457, i16 8653, i16 26708, i16 29545, i16 28704, i16 28530, i16 29287, i16 28001, i16 25376, i16 28257, i16 28526, i16 8308, i16 25954, i16 29216, i16 28277, i16 26912, i16 8302, i16 20292, i16 8275, i16 28525, i16 25956, i16 3374, i16 2573, i16 36, i16 0, i16 0, i16 0, i16 1986, i16 9145, i16 26246, i16 28887, i16 26246, i16 28887, i16 26246, i16 28887, i16 27266, i16 28808, i16 26255, i16 28887, i16 28165, i16 28808, i16 26247, i16 28887], align 16
@test3 = internal constant [80 x i16] [i16 23117, i16 145, i16 3, i16 0, i16 4, i16 0, i16 -1, i16 0, i16 184, i16 0, i16 0, i16 0, i16 64, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 256, i16 0, i16 7950, i16 3770, i16 -19456, i16 -13047, i16 -18399, i16 19457, i16 8653, i16 26708, i16 29545, i16 28704, i16 28530, i16 29287, i16 28001, i16 25376, i16 28257, i16 28526, i16 8308, i16 25954, i16 29216, i16 28277, i16 26912, i16 8302, i16 20292, i16 8275, i16 28525, i16 25956, i16 3374, i16 2573, i16 36, i16 0, i16 0, i16 0, i16 1986, i16 9145, i16 26246, i16 28887, i16 26246, i16 28887, i16 26246, i16 28887, i16 27267, i16 28808, i16 26255, i16 28887, i16 28165, i16 28808, i16 26247, i16 28887], align 16
@test4 = internal constant [72 x i16] [i16 23117, i16 144, i16 3, i16 0, i16 4, i16 0, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 256, i16 0, i16 7950, i16 3770, i16 -19456, i16 -13047, i16 -18399, i16 19457, i16 8653, i16 26708, i16 29545, i16 28704, i16 28530, i16 29287, i16 28001, i16 25376, i16 28257, i16 28526, i16 8308, i16 25954, i16 29216, i16 28277, i16 26912, i16 8302, i16 20292, i16 8275, i16 28525, i16 25956, i16 3374, i16 2573, i16 36, i16 0, i16 0, i16 0, i16 1986, i16 9145, i16 26246, i16 28887, i16 26246, i16 28887, i16 26246, i16 28887, i16 27267, i16 28808, i16 26255, i16 28887, i16 28165, i16 28808, i16 26247, i16 28887], align 16
@.str.1 = private unnamed_addr constant [12 x i8] c"/tmp/petest\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.rlimit, align 8
  %4 = alloca %struct.cli_ctx, align 8
  %5 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i64 0, i32 1
  store i64 -1, i64* %5, align 8
  %6 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i64 0, i32 0
  store i64 -1, i64* %6, align 8
  %7 = call i32 @setrlimit(i32 noundef 4, %struct.rlimit* noundef nonnull %3) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @perror(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #9
  br label %10

10:                                               ; preds = %9, %2
  %11 = bitcast %struct.cli_ctx* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false)
  %12 = call i32 @cli_scanpe(i32 noundef -1, %struct.cli_ctx* noundef nonnull %4) #8
  %13 = call i32 @cli_scanpe(i32 noundef -1, %struct.cli_ctx* noundef null) #8
  %14 = call i32 @cli_scanpe(i32 noundef 10, %struct.cli_ctx* noundef nonnull %4) #8
  %15 = call i32 @cli_scanpe(i32 noundef 10, %struct.cli_ctx* noundef null) #8
  %16 = call i32 @cli_scanpe(i32 noundef 10000, %struct.cli_ctx* noundef nonnull %4) #8
  %17 = call i32 @cli_scanpe(i32 noundef 10000, %struct.cli_ctx* noundef null) #8
  br label %18

18:                                               ; preds = %57, %10
  %.03 = phi %struct.tests* [ getelementptr inbounds ([5 x %struct.tests], [5 x %struct.tests]* @tests, i64 0, i64 0), %10 ], [ %58, %57 ]
  %19 = getelementptr inbounds %struct.tests, %struct.tests* %.03, i64 0, i32 0
  %20 = load i16*, i16** %19, align 8
  %.not = icmp eq i16* %20, null
  br i1 %.not, label %59, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tests, %struct.tests* %.03, i64 0, i32 1
  %23 = load i32, i32* %22, align 8
  br label %24

24:                                               ; preds = %54, %21
  %.02 = phi i32 [ %23, %21 ], [ %55, %54 ]
  %25 = icmp sgt i32 %.02, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %51, %26
  %.01 = phi i32 [ 0, %26 ], [ %52, %51 ]
  %28 = icmp sgt i32 %.02, %.01
  br i1 %28, label %29, label %53

29:                                               ; preds = %27
  %30 = load i8*, i8** @tmp_file, align 8
  %31 = call i32 (i8*, i32, ...) @open(i8* noundef %30, i32 noundef 66, i32 noundef 384) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** @tmp_file, align 8
  call void @perror(i8* noundef %34) #9
  %35 = call i32* @__errno_location() #10
  %36 = load i32, i32* %35, align 4
  br label %62

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.tests, %struct.tests* %.03, i64 0, i32 0
  %39 = load i16*, i16** %38, align 8
  %40 = zext i32 %.01 to i64
  %41 = getelementptr inbounds i16, i16* %39, i64 %40
  %42 = bitcast i16* %41 to i8*
  %43 = sub nsw i32 %.02, %.01
  %44 = sext i32 %43 to i64
  %45 = call i64 @write(i32 noundef %31, i8* noundef %42, i64 noundef %44) #8
  %46 = call void (i32)* @signal(i32 noundef 11, void (i32)* noundef nonnull @sigsegv) #8
  %47 = bitcast %struct.cli_ctx* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %47, i8 0, i64 64, i1 false)
  %48 = call i32 @cli_scanpe(i32 noundef %31, %struct.cli_ctx* noundef nonnull %4) #8
  %49 = call i32 @cli_scanpe(i32 noundef %31, %struct.cli_ctx* noundef null) #8
  %50 = call i32 @close(i32 noundef %31) #8
  br label %51

51:                                               ; preds = %37
  %52 = add nuw nsw i32 %.01, 1
  br label %27, !llvm.loop !4

53:                                               ; preds = %27
  br label %54

54:                                               ; preds = %53
  %55 = add nsw i32 %.02, -1
  br label %24, !llvm.loop !6

56:                                               ; preds = %24
  br label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.tests, %struct.tests* %.03, i64 1
  br label %18, !llvm.loop !7

59:                                               ; preds = %18
  %60 = load i8*, i8** @tmp_file, align 8
  %61 = call i32 @unlink(i8* noundef %60) #8
  br label %62

62:                                               ; preds = %59, %33
  %.0 = phi i32 [ %36, %33 ], [ %61, %59 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @setrlimit(i32 noundef, %struct.rlimit* noundef) #1

declare dso_local void @perror(i8* noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @cli_scanpe(i32 noundef, %struct.cli_ctx* noundef) #2

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

declare dso_local i64 @write(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #1

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @sigsegv(i32 noundef %0) #5 {
  %2 = call void (i32)* @signal(i32 noundef 11, void (i32)* noundef null) #8
  call void @_exit(i32 noundef 11) #11
  unreachable
}

declare dso_local i32 @close(i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @print_trace() #6 {
  ret void
}

; Function Attrs: noreturn
declare dso_local void @_exit(i32 noundef) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { noreturn nounwind }

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
