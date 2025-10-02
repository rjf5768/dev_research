; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020810-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020810-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.R = type { %struct.A, %struct.A }
%struct.A = type { i64 }

@R = dso_local global %struct.R { %struct.A { i64 100 }, %struct.A { i64 200 } }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.R, align 8
  %4 = bitcast %struct.R* %3 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  %7 = getelementptr inbounds %struct.R, %struct.R* %3, i32 0, i32 0
  %8 = getelementptr inbounds %struct.A, %struct.A* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.R, %struct.R* @R, i32 0, i32 0, i32 0), align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.R, %struct.R* %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.A, %struct.A* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.R, %struct.R* @R, i32 0, i32 1, i32 0), align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %2
  call void @abort() #3
  unreachable

19:                                               ; preds = %12
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @g() #0 {
  %1 = alloca %struct.R, align 8
  %2 = bitcast %struct.R* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.R* @R to i8*), i64 16, i1 false)
  %3 = bitcast %struct.R* %1 to { i64, i64 }*
  %4 = load { i64, i64 }, { i64, i64 }* %3, align 8
  ret { i64, i64 } %4
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.R, align 8
  %3 = alloca %struct.R, align 8
  store i32 0, i32* %1, align 4
  %4 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.R* @R to { i64, i64 }*), i32 0, i32 0), align 8
  %5 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.R* @R to { i64, i64 }*), i32 0, i32 1), align 8
  call void @f(i64 %4, i64 %5)
  %6 = call { i64, i64 } @g()
  %7 = bitcast %struct.R* %3 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  %9 = extractvalue { i64, i64 } %6, 0
  store i64 %9, i64* %8, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  %11 = extractvalue { i64, i64 } %6, 1
  store i64 %11, i64* %10, align 8
  %12 = bitcast %struct.R* %2 to i8*
  %13 = bitcast %struct.R* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %14 = getelementptr inbounds %struct.R, %struct.R* %2, i32 0, i32 0
  %15 = getelementptr inbounds %struct.A, %struct.A* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.R, %struct.R* @R, i32 0, i32 0, i32 0), align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %0
  %20 = getelementptr inbounds %struct.R, %struct.R* %2, i32 0, i32 1
  %21 = getelementptr inbounds %struct.A, %struct.A* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.R, %struct.R* @R, i32 0, i32 1, i32 0), align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %0
  call void @abort() #3
  unreachable

26:                                               ; preds = %19
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
