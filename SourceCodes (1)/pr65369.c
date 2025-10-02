; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65369.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65369.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@data = internal constant [81 x i8] c"12345678901234567890123456789012345678901234567890123456789012345678901234567890\00", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [97 x i8], align 16
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [97 x i8], [97 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 97, i1 false)
  %4 = getelementptr inbounds [97 x i8], [97 x i8]* %2, i64 0, i64 0
  %5 = getelementptr inbounds i8, i8* %4, i64 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 16 getelementptr inbounds ([81 x i8], [81 x i8]* @data, i64 0, i64 0), i64 81, i1 false)
  %6 = getelementptr inbounds [97 x i8], [97 x i8]* %2, i64 0, i64 0
  %7 = getelementptr inbounds i8, i8* %6, i64 1
  call void @bar(i8* noundef %7)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @bar(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [16 x i32], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = bitcast i32* %5 to i8*
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 1 %8, i64 4, i1 false)
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = bitcast i32* %10 to i8*
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 1 %13, i64 4, i1 false)
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = bitcast i32* %15 to i8*
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 1 %18, i64 4, i1 false)
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = bitcast i32* %20 to i8*
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 1 %23, i64 4, i1 false)
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = bitcast i32* %25 to i8*
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 1 %28, i64 4, i1 false)
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  %31 = bitcast i32* %30 to i8*
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 1 %33, i64 4, i1 false)
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %35 = getelementptr inbounds i32, i32* %34, i64 6
  %36 = bitcast i32* %35 to i8*
  %37 = load i8*, i8** %2, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 24
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 1 %38, i64 4, i1 false)
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %40 = getelementptr inbounds i32, i32* %39, i64 7
  %41 = bitcast i32* %40 to i8*
  %42 = load i8*, i8** %2, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 28
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 1 %43, i64 4, i1 false)
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %45 = getelementptr inbounds i32, i32* %44, i64 8
  %46 = bitcast i32* %45 to i8*
  %47 = load i8*, i8** %2, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 1 %48, i64 4, i1 false)
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %50 = getelementptr inbounds i32, i32* %49, i64 9
  %51 = bitcast i32* %50 to i8*
  %52 = load i8*, i8** %2, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 1 %53, i64 4, i1 false)
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %55 = getelementptr inbounds i32, i32* %54, i64 10
  %56 = bitcast i32* %55 to i8*
  %57 = load i8*, i8** %2, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 1 %58, i64 4, i1 false)
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %60 = getelementptr inbounds i32, i32* %59, i64 11
  %61 = bitcast i32* %60 to i8*
  %62 = load i8*, i8** %2, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 44
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 1 %63, i64 4, i1 false)
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %65 = getelementptr inbounds i32, i32* %64, i64 12
  %66 = bitcast i32* %65 to i8*
  %67 = load i8*, i8** %2, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 1 %68, i64 4, i1 false)
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %70 = getelementptr inbounds i32, i32* %69, i64 13
  %71 = bitcast i32* %70 to i8*
  %72 = load i8*, i8** %2, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 52
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 1 %73, i64 4, i1 false)
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %75 = getelementptr inbounds i32, i32* %74, i64 14
  %76 = bitcast i32* %75 to i8*
  %77 = load i8*, i8** %2, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 56
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 1 %78, i64 4, i1 false)
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %80 = getelementptr inbounds i32, i32* %79, i64 15
  %81 = bitcast i32* %80 to i8*
  %82 = load i8*, i8** %2, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 60
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 1 %83, i64 4, i1 false)
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  call void @foo(i32* noundef %84)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = bitcast i32* %3 to i8*
  %5 = call i32 @memcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @data, i64 0, i64 0), i64 noundef 64) #5
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @abort() #6
  unreachable

8:                                                ; preds = %1
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
