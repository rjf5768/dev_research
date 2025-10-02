; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931005-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931005-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i8 @f(i8 %0) #0 {
  %2 = alloca %struct.T, align 1
  %3 = alloca %struct.T, align 1
  %4 = getelementptr inbounds %struct.T, %struct.T* %3, i32 0, i32 0
  store i8 %0, i8* %4, align 1
  %5 = getelementptr inbounds %struct.T, %struct.T* %3, i32 0, i32 0
  %6 = load i8, i8* %5, align 1
  %7 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 0
  store i8 %6, i8* %7, align 1
  %8 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  ret i8 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.T, align 1
  %3 = alloca %struct.T, align 1
  %4 = alloca %struct.T, align 1
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 0
  store i8 100, i8* %5, align 1
  %6 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = call i8 @f(i8 %7)
  %9 = getelementptr inbounds %struct.T, %struct.T* %4, i32 0, i32 0
  store i8 %8, i8* %9, align 1
  %10 = bitcast %struct.T* %3 to i8*
  %11 = bitcast %struct.T* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 %11, i64 1, i1 false)
  %12 = getelementptr inbounds %struct.T, %struct.T* %3, i32 0, i32 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 100
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  call void @abort() #3
  unreachable

17:                                               ; preds = %0
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

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
