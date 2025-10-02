; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/04-bisect/allocvector.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/04-bisect/allocvector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [44 x i8] c"Error: couldn't allocate V in allocvector.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @allocvector(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 noundef %4) #5
  store i8* %5, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef -1) #6
  unreachable

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %2, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 %12, i1 false)
  %13 = load i8*, i8** %3, align 8
  ret i8* %13
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @dallocvector(i32 noundef %0, double** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double**, align 8
  store i32 %0, i32* %3, align 4
  store double** %1, double*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 8
  %8 = call i8* @allocvector(i64 noundef %7)
  %9 = bitcast i8* %8 to double*
  %10 = load double**, double*** %4, align 8
  store double* %9, double** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sallocvector(i32 noundef %0, float** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float**, align 8
  store i32 %0, i32* %3, align 4
  store float** %1, float*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = call i8* @allocvector(i64 noundef %7)
  %9 = bitcast i8* %8 to float*
  %10 = load float**, float*** %4, align 8
  store float* %9, float** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @iallocvector(i32 noundef %0, i32** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = call i8* @allocvector(i64 noundef %7)
  %9 = bitcast i8* %8 to i32*
  %10 = load i32**, i32*** %4, align 8
  store i32* %9, i32** %10, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
