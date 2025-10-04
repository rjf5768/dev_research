; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr51323.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr51323.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32 }

@v = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @v, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 9
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %3
  call void @abort() #3
  unreachable

17:                                               ; preds = %13
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.S, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  store i32 %2, i32* %8, align 4
  %9 = bitcast %struct.S* %4 to i8*
  %10 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 12, i1 false)
  store i32 %0, i32* %6, align 4
  %11 = call i32 @baz(%struct.S* noundef %4)
  %12 = load i32, i32* %6, align 4
  call void @foo(i32 noundef %11, i32 noundef 0, i32 noundef %12)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @baz(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  store %struct.S* %0, %struct.S** %2, align 8
  %3 = load %struct.S*, %struct.S** %2, align 8
  %4 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 4
  %3 = alloca { i64, i32 }, align 4
  %4 = alloca { i64, i32 }, align 4
  store i32 0, i32* %1, align 4
  store i32 3, i32* @v, align 4
  %5 = load i32, i32* @v, align 4
  %6 = sub nsw i32 %5, 1
  %7 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @v, align 4
  %9 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @v, align 4
  %11 = add nsw i32 %10, 1
  %12 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = bitcast { i64, i32 }* %3 to i8*
  %14 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %3, i32 0, i32 0
  %16 = load i64, i64* %15, align 4
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %3, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  call void @bar(i32 noundef 9, i64 %16, i32 %18)
  store i32 17, i32* @v, align 4
  %19 = load i32, i32* @v, align 4
  %20 = sub nsw i32 %19, 1
  %21 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @v, align 4
  %23 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @v, align 4
  %25 = add nsw i32 %24, 1
  %26 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = bitcast { i64, i32 }* %4 to i8*
  %28 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 12, i1 false)
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  %30 = load i64, i64* %29, align 4
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  call void @bar(i32 noundef 9, i64 %30, i32 %32)
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
