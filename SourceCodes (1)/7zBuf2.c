; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/7zBuf2.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/7zBuf2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CDynBuf = type { i8*, i64, i64 }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @DynBuf_Construct(%struct.CDynBuf* noundef %0) #0 {
  %2 = alloca %struct.CDynBuf*, align 8
  store %struct.CDynBuf* %0, %struct.CDynBuf** %2, align 8
  %3 = load %struct.CDynBuf*, %struct.CDynBuf** %2, align 8
  %4 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %3, i32 0, i32 0
  store i8* null, i8** %4, align 8
  %5 = load %struct.CDynBuf*, %struct.CDynBuf** %2, align 8
  %6 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load %struct.CDynBuf*, %struct.CDynBuf** %2, align 8
  %8 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DynBuf_SeekToBeg(%struct.CDynBuf* noundef %0) #0 {
  %2 = alloca %struct.CDynBuf*, align 8
  store %struct.CDynBuf* %0, %struct.CDynBuf** %2, align 8
  %3 = load %struct.CDynBuf*, %struct.CDynBuf** %2, align 8
  %4 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @DynBuf_Write(%struct.CDynBuf* noundef %0, i8* noundef %1, i64 noundef %2, %struct.ISzAlloc* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.CDynBuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ISzAlloc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.CDynBuf* %0, %struct.CDynBuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ISzAlloc* %3, %struct.ISzAlloc** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.CDynBuf*, %struct.CDynBuf** %6, align 8
  %14 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.CDynBuf*, %struct.CDynBuf** %6, align 8
  %17 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %15, %18
  %20 = icmp ugt i64 %12, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %4
  %22 = load %struct.CDynBuf*, %struct.CDynBuf** %6, align 8
  %23 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %24, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = udiv i64 %27, 4
  %29 = load i64, i64* %10, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %10, align 8
  %31 = load %struct.ISzAlloc*, %struct.ISzAlloc** %9, align 8
  %32 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %31, i32 0, i32 0
  %33 = load i8* (i8*, i64)*, i8* (i8*, i64)** %32, align 8
  %34 = load %struct.ISzAlloc*, %struct.ISzAlloc** %9, align 8
  %35 = bitcast %struct.ISzAlloc* %34 to i8*
  %36 = load i64, i64* %10, align 8
  %37 = call i8* %33(i8* noundef %35, i64 noundef %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %78

41:                                               ; preds = %21
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.CDynBuf*, %struct.CDynBuf** %6, align 8
  %44 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.CDynBuf*, %struct.CDynBuf** %6, align 8
  %47 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.CDynBuf*, %struct.CDynBuf** %6, align 8
  %50 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %45, i8* align 1 %48, i64 %51, i1 false)
  %52 = load %struct.ISzAlloc*, %struct.ISzAlloc** %9, align 8
  %53 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %52, i32 0, i32 1
  %54 = load void (i8*, i8*)*, void (i8*, i8*)** %53, align 8
  %55 = load %struct.ISzAlloc*, %struct.ISzAlloc** %9, align 8
  %56 = bitcast %struct.ISzAlloc* %55 to i8*
  %57 = load %struct.CDynBuf*, %struct.CDynBuf** %6, align 8
  %58 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  call void %54(i8* noundef %56, i8* noundef %59)
  %60 = load i8*, i8** %11, align 8
  %61 = load %struct.CDynBuf*, %struct.CDynBuf** %6, align 8
  %62 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %41, %4
  %64 = load %struct.CDynBuf*, %struct.CDynBuf** %6, align 8
  %65 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.CDynBuf*, %struct.CDynBuf** %6, align 8
  %68 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %70, i8* align 1 %71, i64 %72, i1 false)
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.CDynBuf*, %struct.CDynBuf** %6, align 8
  %75 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, %73
  store i64 %77, i64* %75, align 8
  store i32 1, i32* %5, align 4
  br label %78

78:                                               ; preds = %63, %40
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @DynBuf_Free(%struct.CDynBuf* noundef %0, %struct.ISzAlloc* noundef %1) #0 {
  %3 = alloca %struct.CDynBuf*, align 8
  %4 = alloca %struct.ISzAlloc*, align 8
  store %struct.CDynBuf* %0, %struct.CDynBuf** %3, align 8
  store %struct.ISzAlloc* %1, %struct.ISzAlloc** %4, align 8
  %5 = load %struct.ISzAlloc*, %struct.ISzAlloc** %4, align 8
  %6 = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %5, i32 0, i32 1
  %7 = load void (i8*, i8*)*, void (i8*, i8*)** %6, align 8
  %8 = load %struct.ISzAlloc*, %struct.ISzAlloc** %4, align 8
  %9 = bitcast %struct.ISzAlloc* %8 to i8*
  %10 = load %struct.CDynBuf*, %struct.CDynBuf** %3, align 8
  %11 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  call void %7(i8* noundef %9, i8* noundef %12)
  %13 = load %struct.CDynBuf*, %struct.CDynBuf** %3, align 8
  %14 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %13, i32 0, i32 0
  store i8* null, i8** %14, align 8
  %15 = load %struct.CDynBuf*, %struct.CDynBuf** %3, align 8
  %16 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.CDynBuf*, %struct.CDynBuf** %3, align 8
  %18 = getelementptr inbounds %struct.CDynBuf, %struct.CDynBuf* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
