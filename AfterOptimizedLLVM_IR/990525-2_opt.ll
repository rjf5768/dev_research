; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990525-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990525-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Test1 = type { [4 x i32] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @func1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Test1, align 4
  %3 = alloca %struct.Test1, align 4
  %4 = call { i64, i64 } @func2()
  %5 = getelementptr inbounds %struct.Test1, %struct.Test1* %3, i32 0, i32 0
  %6 = bitcast [4 x i32]* %5 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  %8 = extractvalue { i64, i64 } %4, 0
  store i64 %8, i64* %7, align 4
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  %10 = extractvalue { i64, i64 } %4, 1
  store i64 %10, i64* %9, align 4
  %11 = bitcast %struct.Test1* %2 to i8*
  %12 = bitcast %struct.Test1* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 16, i1 false)
  %13 = getelementptr inbounds %struct.Test1, %struct.Test1* %2, i32 0, i32 0
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 10
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  call void @abort() #3
  unreachable

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.Test1, %struct.Test1* %2, i32 0, i32 0
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 20
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  call void @abort() #3
  unreachable

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.Test1, %struct.Test1* %2, i32 0, i32 0
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 30
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  call void @abort() #3
  unreachable

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.Test1, %struct.Test1* %2, i32 0, i32 0
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i64 0, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 40
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  call void @abort() #3
  unreachable

36:                                               ; preds = %30
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @func2() #0 {
  %1 = alloca %struct.Test1, align 4
  %2 = getelementptr inbounds %struct.Test1, %struct.Test1* %1, i32 0, i32 0
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  store i32 10, i32* %3, align 4
  %4 = getelementptr inbounds %struct.Test1, %struct.Test1* %1, i32 0, i32 0
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  store i32 20, i32* %5, align 4
  %6 = getelementptr inbounds %struct.Test1, %struct.Test1* %1, i32 0, i32 0
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 30, i32* %7, align 4
  %8 = getelementptr inbounds %struct.Test1, %struct.Test1* %1, i32 0, i32 0
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 40, i32* %9, align 4
  %10 = getelementptr inbounds %struct.Test1, %struct.Test1* %1, i32 0, i32 0
  %11 = bitcast [4 x i32]* %10 to { i64, i64 }*
  %12 = load { i64, i64 }, { i64, i64 }* %11, align 4
  ret { i64, i64 } %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @func1()
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
