; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/980223.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/980223.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i8*, i64 }

@nil = dso_local global i32 0, align 4
@cons1 = dso_local global [2 x %struct.object] [%struct.object { i8* bitcast (i32* @nil to i8*), i64 0 }, %struct.object { i8* bitcast (i32* @nil to i8*), i64 0 }], align 16
@cons2 = dso_local global [2 x %struct.object] [%struct.object { i8* bitcast ([2 x %struct.object]* @cons1 to i8*), i64 64 }, %struct.object { i8* bitcast (i32* @nil to i8*), i64 0 }], align 16
@__const.main.x = private unnamed_addr constant %struct.object { i8* bitcast ([2 x %struct.object]* @cons2 to i8*), i64 64 }, align 8
@__const.main.y = private unnamed_addr constant %struct.object { i8* bitcast (i32* @nil to i8*), i64 0 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local { i8*, i64 } @bar(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.object, align 8
  %4 = bitcast %struct.object* %3 to { i8*, i64 }*
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 0
  store i8* %0, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  call void @abort() #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local { i8*, i64 } @foo(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.object, align 8
  %6 = alloca %struct.object, align 8
  %7 = alloca %struct.object, align 8
  %8 = alloca %struct.object, align 8
  %9 = alloca %struct.object, align 8
  %10 = bitcast %struct.object* %6 to { i8*, i64 }*
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %10, i32 0, i32 0
  store i8* %0, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %10, i32 0, i32 1
  store i64 %1, i64* %12, align 8
  %13 = bitcast %struct.object* %7 to { i8*, i64 }*
  %14 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %13, i32 0, i32 0
  store i8* %2, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %13, i32 0, i32 1
  store i64 %3, i64* %15, align 8
  %16 = getelementptr inbounds %struct.object, %struct.object* %6, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.object*
  %19 = bitcast %struct.object* %8 to i8*
  %20 = bitcast %struct.object* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = getelementptr inbounds %struct.object, %struct.object* %8, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %22, 64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.object, %struct.object* %8, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 16
  %29 = bitcast i8* %28 to %struct.object*
  %30 = bitcast %struct.object* %7 to i8*
  %31 = bitcast %struct.object* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  %32 = getelementptr inbounds %struct.object, %struct.object* %8, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8* %33 to %struct.object*
  %35 = bitcast %struct.object* %8 to i8*
  %36 = bitcast %struct.object* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  %37 = getelementptr inbounds %struct.object, %struct.object* %8, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = and i64 %38, 64
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %25
  %42 = bitcast %struct.object* %7 to { i8*, i64 }*
  %43 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %42, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call { i8*, i64 } @bar(i8* %44, i64 %46)
  %48 = bitcast %struct.object* %9 to { i8*, i64 }*
  %49 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %48, i32 0, i32 0
  %50 = extractvalue { i8*, i64 } %47, 0
  store i8* %50, i8** %49, align 8
  %51 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %48, i32 0, i32 1
  %52 = extractvalue { i8*, i64 } %47, 1
  store i64 %52, i64* %51, align 8
  %53 = bitcast %struct.object* %7 to i8*
  %54 = bitcast %struct.object* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  br label %55

55:                                               ; preds = %41, %25
  br label %56

56:                                               ; preds = %55, %4
  %57 = bitcast %struct.object* %5 to i8*
  %58 = bitcast %struct.object* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  %59 = bitcast %struct.object* %5 to { i8*, i64 }*
  %60 = load { i8*, i64 }, { i8*, i64 }* %59, align 8
  ret { i8*, i64 } %60
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.object, align 8
  %3 = alloca %struct.object, align 8
  %4 = alloca %struct.object, align 8
  store i32 0, i32* %1, align 4
  %5 = bitcast %struct.object* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.object* @__const.main.x to i8*), i64 16, i1 false)
  %6 = bitcast %struct.object* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.object* @__const.main.y to i8*), i64 16, i1 false)
  %7 = bitcast %struct.object* %2 to { i8*, i64 }*
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %7, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = bitcast %struct.object* %3 to { i8*, i64 }*
  %13 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %12, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call { i8*, i64 } @foo(i8* %9, i64 %11, i8* %14, i64 %16)
  %18 = bitcast %struct.object* %4 to { i8*, i64 }*
  %19 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %18, i32 0, i32 0
  %20 = extractvalue { i8*, i64 } %17, 0
  store i8* %20, i8** %19, align 8
  %21 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %18, i32 0, i32 1
  %22 = extractvalue { i8*, i64 } %17, 1
  store i64 %22, i64* %21, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
