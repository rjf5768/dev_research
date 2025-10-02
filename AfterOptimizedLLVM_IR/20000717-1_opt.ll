; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000717-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000717-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trio = type { i32, i32, i32 }

@__const.main.t = private unnamed_addr constant %struct.trio { i32 1, i32 2, i32 3 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.trio, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %1, i64* %8, align 4
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %2, i32* %9, align 4
  %10 = bitcast %struct.trio* %5 to i8*
  %11 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 12, i1 false)
  store i32 %0, i32* %7, align 4
  %12 = getelementptr inbounds %struct.trio, %struct.trio* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.trio, %struct.trio* %5, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.trio, %struct.trio* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.trio, %struct.trio* %5, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %3
  call void @abort() #3
  unreachable

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i64 %0, i32 %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trio, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca i32, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  store i64 %0, i64* %8, align 4
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  store i32 %1, i32* %9, align 4
  %10 = bitcast %struct.trio* %4 to i8*
  %11 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 12, i1 false)
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = bitcast { i64, i32 }* %7 to i8*
  %14 = bitcast %struct.trio* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  %16 = load i64, i64* %15, align 4
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bar(i32 noundef %12, i64 %16, i32 %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.trio, align 4
  %3 = alloca { i64, i32 }, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast %struct.trio* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.trio* @__const.main.t to i8*), i64 12, i1 false)
  %5 = bitcast { i64, i32 }* %3 to i8*
  %6 = bitcast %struct.trio* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 12, i1 false)
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %3, i32 0, i32 0
  %8 = load i64, i64* %7, align 4
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %3, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @foo(i64 %8, i32 %10, i32 noundef 4)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
