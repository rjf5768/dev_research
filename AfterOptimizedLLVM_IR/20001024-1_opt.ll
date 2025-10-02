; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001024-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001024-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b = type { %struct.a, %struct.a }
%struct.a = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %0, %struct.b* noalias noundef %1, %struct.b* noalias noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.b*, align 8
  %7 = alloca %struct.b*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.b* %1, %struct.b** %6, align 8
  store %struct.b* %2, %struct.b** %7, align 8
  %8 = load %struct.b*, %struct.b** %6, align 8
  %9 = getelementptr inbounds %struct.b, %struct.b* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.a, %struct.a* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %3
  %14 = load %struct.b*, %struct.b** %6, align 8
  %15 = getelementptr inbounds %struct.b, %struct.b* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.a, %struct.a* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 250000
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = load %struct.b*, %struct.b** %6, align 8
  %21 = getelementptr inbounds %struct.b, %struct.b* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.a, %struct.a* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.b*, %struct.b** %6, align 8
  %27 = getelementptr inbounds %struct.b, %struct.b* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.a, %struct.a* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 250000
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19, %13, %3
  call void @abort() #3
  unreachable

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = alloca %struct.b, align 8
  %2 = getelementptr inbounds %struct.b, %struct.b* %1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.a, %struct.a* %2, i32 0, i32 0
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds %struct.b, %struct.b* %1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.a, %struct.a* %4, i32 0, i32 1
  store i64 250000, i64* %5, align 8
  %6 = getelementptr inbounds %struct.b, %struct.b* %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.b, %struct.b* %1, i32 0, i32 0
  %8 = bitcast %struct.a* %6 to i8*
  %9 = bitcast %struct.a* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = call i32 @bar(i32 noundef 0, %struct.b* noundef %1, %struct.b* noundef null)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo()
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

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
