; ModuleID = './pr65369.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65369.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@data = internal constant [81 x i8] c"12345678901234567890123456789012345678901234567890123456789012345678901234567890\00", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [97 x i8], align 16
  %2 = getelementptr inbounds [97 x i8], [97 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(97) %2, i8 0, i64 97, i1 false)
  %3 = getelementptr inbounds [97 x i8], [97 x i8]* %1, i64 0, i64 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(81) %3, i8* noundef nonnull align 16 dereferenceable(81) getelementptr inbounds ([81 x i8], [81 x i8]* @data, i64 0, i64 0), i64 81, i1 false)
  %4 = getelementptr inbounds [97 x i8], [97 x i8]* %1, i64 0, i64 1
  call void @bar(i8* noundef nonnull %4)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @bar(i8* nocapture noundef readonly %0) #0 {
  %2 = alloca [16 x i32], align 16
  %3 = bitcast i8* %0 to i32*
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %5 = load i32, i32* %3, align 1
  store i32 %5, i32* %4, align 16
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 1
  %7 = getelementptr inbounds i8, i8* %0, i64 4
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 1
  store i32 %9, i32* %6, align 4
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 2
  %11 = getelementptr inbounds i8, i8* %0, i64 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 1
  store i32 %13, i32* %10, align 8
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 3
  %15 = getelementptr inbounds i8, i8* %0, i64 12
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 1
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 4
  %19 = getelementptr inbounds i8, i8* %0, i64 16
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 1
  store i32 %21, i32* %18, align 16
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 5
  %23 = getelementptr inbounds i8, i8* %0, i64 20
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 1
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 6
  %27 = getelementptr inbounds i8, i8* %0, i64 24
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 1
  store i32 %29, i32* %26, align 8
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 7
  %31 = getelementptr inbounds i8, i8* %0, i64 28
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 1
  store i32 %33, i32* %30, align 4
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 8
  %35 = getelementptr inbounds i8, i8* %0, i64 32
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 1
  store i32 %37, i32* %34, align 16
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 9
  %39 = getelementptr inbounds i8, i8* %0, i64 36
  %40 = bitcast i8* %39 to i32*
  %41 = load i32, i32* %40, align 1
  store i32 %41, i32* %38, align 4
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 10
  %43 = getelementptr inbounds i8, i8* %0, i64 40
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 1
  store i32 %45, i32* %42, align 8
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 11
  %47 = getelementptr inbounds i8, i8* %0, i64 44
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %48, align 1
  store i32 %49, i32* %46, align 4
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 12
  %51 = getelementptr inbounds i8, i8* %0, i64 48
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* %52, align 1
  store i32 %53, i32* %50, align 16
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 13
  %55 = getelementptr inbounds i8, i8* %0, i64 52
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 1
  store i32 %57, i32* %54, align 4
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 14
  %59 = getelementptr inbounds i8, i8* %0, i64 56
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 1
  store i32 %61, i32* %58, align 8
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 15
  %63 = getelementptr inbounds i8, i8* %0, i64 60
  %64 = bitcast i8* %63 to i32*
  %65 = load i32, i32* %64, align 1
  store i32 %65, i32* %62, align 4
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  call void @foo(i32* noundef nonnull %66)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo(i32* noundef %0) #0 {
  %2 = bitcast i32* %0 to i8*
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(64) %2, i8* noundef nonnull dereferenceable(64) getelementptr inbounds ([81 x i8], [81 x i8]* @data, i64 0, i64 0), i64 64)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  call void @abort() #6
  unreachable

4:                                                ; preds = %1
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
