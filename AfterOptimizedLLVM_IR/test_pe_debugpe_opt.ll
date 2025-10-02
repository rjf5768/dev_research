; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/test_pe_debugpe.c'
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.tests*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rlimit, align 8
  %9 = alloca %struct.cli_ctx, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 1
  store i64 -1, i64* %12, align 8
  %13 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 0
  store i64 -1, i64* %13, align 8
  %14 = call i32 @setrlimit(i32 noundef 4, %struct.rlimit* noundef %8) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  call void @perror(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %16, %2
  %18 = bitcast %struct.cli_ctx* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 64, i1 false)
  %19 = call i32 @cli_scanpe(i32 noundef -1, %struct.cli_ctx* noundef %9)
  %20 = call i32 @cli_scanpe(i32 noundef -1, %struct.cli_ctx* noundef null)
  %21 = call i32 @cli_scanpe(i32 noundef 10, %struct.cli_ctx* noundef %9)
  %22 = call i32 @cli_scanpe(i32 noundef 10, %struct.cli_ctx* noundef null)
  %23 = call i32 @cli_scanpe(i32 noundef 10000, %struct.cli_ctx* noundef %9)
  %24 = call i32 @cli_scanpe(i32 noundef 10000, %struct.cli_ctx* noundef null)
  store %struct.tests* getelementptr inbounds ([5 x %struct.tests], [5 x %struct.tests]* @tests, i64 0, i64 0), %struct.tests** %6, align 8
  br label %25

25:                                               ; preds = %81, %17
  %26 = load %struct.tests*, %struct.tests** %6, align 8
  %27 = getelementptr inbounds %struct.tests, %struct.tests* %26, i32 0, i32 0
  %28 = load i16*, i16** %27, align 8
  %29 = icmp ne i16* %28, null
  br i1 %29, label %30, label %84

30:                                               ; preds = %25
  %31 = load %struct.tests*, %struct.tests** %6, align 8
  %32 = getelementptr inbounds %struct.tests, %struct.tests* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %77, %30
  %35 = load i32, i32* %10, align 4
  %36 = icmp sge i32 %35, 1
  br i1 %36, label %37, label %80

37:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %73, %37
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %38
  %43 = load i8*, i8** @tmp_file, align 8
  %44 = call i32 (i8*, i32, ...) @open(i8* noundef %43, i32 noundef 66, i32 noundef 384)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i8*, i8** @tmp_file, align 8
  call void @perror(i8* noundef %48)
  %49 = call i32* @__errno_location() #7
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %3, align 4
  br label %87

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.tests*, %struct.tests** %6, align 8
  %54 = getelementptr inbounds %struct.tests, %struct.tests* %53, i32 0, i32 0
  %55 = load i16*, i16** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i16, i16* %55, i64 %57
  %59 = bitcast i16* %58 to i8*
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = call i64 @write(i32 noundef %52, i8* noundef %59, i64 noundef %63)
  %65 = call void (i32)* @signal(i32 noundef 11, void (i32)* noundef @sigsegv) #6
  %66 = bitcast %struct.cli_ctx* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %66, i8 0, i64 64, i1 false)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @cli_scanpe(i32 noundef %67, %struct.cli_ctx* noundef %9)
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @cli_scanpe(i32 noundef %69, %struct.cli_ctx* noundef null)
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @close(i32 noundef %71)
  br label %73

73:                                               ; preds = %51
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %38, !llvm.loop !4

76:                                               ; preds = %38
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %10, align 4
  br label %34, !llvm.loop !6

80:                                               ; preds = %34
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.tests*, %struct.tests** %6, align 8
  %83 = getelementptr inbounds %struct.tests, %struct.tests* %82, i32 1
  store %struct.tests* %83, %struct.tests** %6, align 8
  br label %25, !llvm.loop !7

84:                                               ; preds = %25
  %85 = load i8*, i8** @tmp_file, align 8
  %86 = call i32 @unlink(i8* noundef %85) #6
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %84, %47
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare dso_local i32 @setrlimit(i32 noundef, %struct.rlimit* noundef) #1

declare dso_local void @perror(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @cli_scanpe(i32 noundef, %struct.cli_ctx* noundef) #2

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

declare dso_local i64 @write(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @sigsegv(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call void (i32)* @signal(i32 noundef 11, void (i32)* noundef null) #6
  call void @print_trace()
  call void @_exit(i32 noundef 11) #8
  unreachable
}

declare dso_local i32 @close(i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @print_trace() #0 {
  ret void
}

; Function Attrs: noreturn
declare dso_local void @_exit(i32 noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { noreturn }

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
