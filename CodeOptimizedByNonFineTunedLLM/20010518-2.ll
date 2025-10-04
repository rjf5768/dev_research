; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010518-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010518-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a_struct = type <{ i16, i64, i16, i16, %struct.b_struct }>
%struct.b_struct = type { i8, i8, i8, i8, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.a_struct*, align 8
  %3 = alloca %struct.a_struct, align 1
  %4 = alloca %struct.a_struct, align 1
  store i32 0, i32* %1, align 4
  store %struct.a_struct* %3, %struct.a_struct** %2, align 8
  %5 = load %struct.a_struct*, %struct.a_struct** %2, align 8
  %6 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %4, i32 0, i32 0
  store i16 1, i16* %6, align 1
  %7 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %4, i32 0, i32 1
  store i64 2, i64* %7, align 1
  %8 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %4, i32 0, i32 2
  store i16 3, i16* %8, align 1
  %9 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %4, i32 0, i32 3
  store i16 4, i16* %9, align 1
  %10 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %4, i32 0, i32 4
  %11 = bitcast %struct.b_struct* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 6, i1 false)
  %12 = bitcast %struct.a_struct* %5 to i8*
  %13 = bitcast %struct.a_struct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 20, i1 true)
  %14 = load %struct.a_struct*, %struct.a_struct** %2, align 8
  %15 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.b_struct, %struct.b_struct* %15, i32 0, i32 4
  store volatile i8 99, i8* %16, align 1
  %17 = load %struct.a_struct*, %struct.a_struct** %2, align 8
  %18 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %17, i32 0, i32 0
  %19 = load volatile i16, i16* %18, align 1
  %20 = sext i16 %19 to i32
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %46, label %22

22:                                               ; preds = %0
  %23 = load %struct.a_struct*, %struct.a_struct** %2, align 8
  %24 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %23, i32 0, i32 1
  %25 = load volatile i64, i64* %24, align 1
  %26 = icmp ne i64 %25, 2
  br i1 %26, label %46, label %27

27:                                               ; preds = %22
  %28 = load %struct.a_struct*, %struct.a_struct** %2, align 8
  %29 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %28, i32 0, i32 2
  %30 = load volatile i16, i16* %29, align 1
  %31 = sext i16 %30 to i32
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %46, label %33

33:                                               ; preds = %27
  %34 = load %struct.a_struct*, %struct.a_struct** %2, align 8
  %35 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %34, i32 0, i32 3
  %36 = load volatile i16, i16* %35, align 1
  %37 = sext i16 %36 to i32
  %38 = icmp ne i32 %37, 4
  br i1 %38, label %46, label %39

39:                                               ; preds = %33
  %40 = load %struct.a_struct*, %struct.a_struct** %2, align 8
  %41 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.b_struct, %struct.b_struct* %41, i32 0, i32 4
  %43 = load volatile i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 99
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %33, %27, %22, %0
  call void @abort() #4
  unreachable

47:                                               ; preds = %39
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
