; ModuleID = './7zBuf2.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/7zBuf2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CDynBuf = type { i8*, i64, i64 }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @DynBuf_Construct(%struct.CDynBuf* nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 0
  store i8* null, i8** %2, align 8
  %3 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 1
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 2
  store i64 0, i64* %4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @DynBuf_SeekToBeg(%struct.CDynBuf* nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 2
  store i64 0, i64* %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @DynBuf_Write(%struct.CDynBuf* nocapture noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2, %struct.ISzAlloc* noundef %3) #1 {
  %5 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = sub i64 %6, %8
  %10 = icmp ult i64 %9, %2
  br i1 %10, label %11, label %35

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, %2
  %15 = lshr i64 %14, 2
  %16 = add i64 %14, %15
  %17 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %3, i64 0, i32 0
  %18 = load i8* (i8*, i64)*, i8* (i8*, i64)** %17, align 8
  %19 = bitcast %struct.ISzAlloc* %3 to i8*
  %20 = call i8* %18(i8* noundef %19, i64 noundef %16) #3
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %44

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 1
  store i64 %16, i64* %24, align 8
  %25 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 2
  %28 = load i64, i64* %27, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %20, i8* align 1 %26, i64 %28, i1 false)
  %29 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %3, i64 0, i32 1
  %30 = load void (i8*, i8*)*, void (i8*, i8*)** %29, align 8
  %31 = bitcast %struct.ISzAlloc* %3 to i8*
  %32 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8
  call void %30(i8* noundef %31, i8* noundef %33) #3
  %34 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 0
  store i8* %20, i8** %34, align 8
  br label %35

35:                                               ; preds = %23, %4
  %36 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %40, i8* align 1 %1, i64 %2, i1 false)
  %41 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, %2
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %35, %22
  %.0 = phi i32 [ 0, %22 ], [ 1, %35 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @DynBuf_Free(%struct.CDynBuf* nocapture noundef %0, %struct.ISzAlloc* noundef %1) #1 {
  %3 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %1, i64 0, i32 1
  %4 = load void (i8*, i8*)*, void (i8*, i8*)** %3, align 8
  %5 = bitcast %struct.ISzAlloc* %1 to i8*
  %6 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8
  call void %4(i8* noundef %5, i8* noundef %7) #3
  %8 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 0
  store i8* null, i8** %8, align 8
  %9 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %0, i64 0, i32 2
  store i64 0, i64* %10, align 8
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
