; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030613-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030613-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CS = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.CS, align 8
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.CS, %struct.CS* %2, i32 0, i32 0
  store i64 -7, i64* %3, align 8
  %4 = getelementptr inbounds %struct.CS, %struct.CS* %2, i32 0, i32 1
  store i64 -7, i64* %4, align 8
  %5 = bitcast %struct.CS* %2 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @c5p(i64 %7, i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  call void @abort() #3
  unreachable

13:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @c5p(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.CS, align 8
  %4 = alloca %struct.CS, align 8
  %5 = alloca %struct.CS, align 8
  %6 = alloca %struct.CS, align 8
  %7 = alloca %struct.CS, align 8
  %8 = alloca %struct.CS, align 8
  %9 = bitcast %struct.CS* %3 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %1, i64* %11, align 8
  %12 = bitcast %struct.CS* %3 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call { i64, i64 } @CPOW(i64 %14, i64 %16, i32 noundef 2)
  %18 = bitcast %struct.CS* %6 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  %20 = extractvalue { i64, i64 } %17, 0
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  %22 = extractvalue { i64, i64 } %17, 1
  store i64 %22, i64* %21, align 8
  %23 = bitcast %struct.CS* %4 to i8*
  %24 = bitcast %struct.CS* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 16, i1 false)
  %25 = bitcast %struct.CS* %4 to { i64, i64 }*
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call { i64, i64 } @CPOW(i64 %27, i64 %29, i32 noundef 2)
  %31 = bitcast %struct.CS* %8 to { i64, i64 }*
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 0
  %33 = extractvalue { i64, i64 } %30, 0
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 1
  %35 = extractvalue { i64, i64 } %30, 1
  store i64 %35, i64* %34, align 8
  %36 = bitcast %struct.CS* %8 to { i64, i64 }*
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call { i64, i64 } @CCID(i64 %38, i64 %40)
  %42 = bitcast %struct.CS* %7 to { i64, i64 }*
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %42, i32 0, i32 0
  %44 = extractvalue { i64, i64 } %41, 0
  store i64 %44, i64* %43, align 8
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %42, i32 0, i32 1
  %46 = extractvalue { i64, i64 } %41, 1
  store i64 %46, i64* %45, align 8
  %47 = bitcast %struct.CS* %5 to i8*
  %48 = bitcast %struct.CS* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 16, i1 false)
  %49 = getelementptr inbounds %struct.CS, %struct.CS* %5, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.CS, %struct.CS* %5, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %50, %52
  %54 = zext i1 %53 to i32
  ret i32 %54
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define internal { i64, i64 } @CPOW(i64 %0, i64 %1, i32 noundef %2) #0 {
  %4 = alloca %struct.CS, align 8
  %5 = alloca %struct.CS, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.CS, align 8
  %8 = bitcast %struct.CS* %5 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %6, align 4
  %11 = bitcast %struct.CS* %4 to i8*
  %12 = bitcast %struct.CS* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  br label %13

13:                                               ; preds = %17, %3
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = bitcast %struct.CS* %4 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call { i64, i64 } @CCID(i64 %20, i64 %22)
  %24 = bitcast %struct.CS* %7 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %26 = extractvalue { i64, i64 } %23, 0
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %28 = extractvalue { i64, i64 } %23, 1
  store i64 %28, i64* %27, align 8
  %29 = bitcast %struct.CS* %4 to i8*
  %30 = bitcast %struct.CS* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  br label %13, !llvm.loop !4

31:                                               ; preds = %13
  %32 = bitcast %struct.CS* %4 to { i64, i64 }*
  %33 = load { i64, i64 }, { i64, i64 }* %32, align 8
  ret { i64, i64 } %33
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal { i64, i64 } @CCID(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.CS, align 8
  %4 = alloca %struct.CS, align 8
  %5 = bitcast %struct.CS* %4 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds %struct.CS, %struct.CS* %4, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.CS, %struct.CS* %3, i32 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = getelementptr inbounds %struct.CS, %struct.CS* %4, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.CS, %struct.CS* %3, i32 0, i32 1
  store i64 %12, i64* %13, align 8
  %14 = bitcast %struct.CS* %3 to { i64, i64 }*
  %15 = load { i64, i64 }, { i64, i64 }* %14, align 8
  ret { i64, i64 } %15
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
