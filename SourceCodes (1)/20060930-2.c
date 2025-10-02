; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20060930-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20060930-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { %struct.S* }
%struct.T = type { %struct.T* }

@s = dso_local global %struct.S zeroinitializer, align 8
@t = dso_local global %struct.T zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @bar(i8* noundef %0, %struct.S* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.S*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.S* %1, %struct.S** %4, align 8
  %5 = load %struct.S*, %struct.S** %4, align 8
  %6 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 0
  store %struct.S* @s, %struct.S** %6, align 8
  %7 = load i8*, i8** %3, align 8
  call void @foo(i8* noundef %7)
  %8 = load %struct.S*, %struct.S** %4, align 8
  %9 = getelementptr inbounds %struct.S, %struct.S* %8, i32 0, i32 0
  %10 = load %struct.S*, %struct.S** %9, align 8
  %11 = bitcast %struct.S* %10 to i8*
  ret i8* %11
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.T*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.T*
  store %struct.T* %5, %struct.T** %3, align 8
  %6 = load %struct.T*, %struct.T** %3, align 8
  %7 = getelementptr inbounds %struct.T, %struct.T* %6, i32 0, i32 0
  %8 = bitcast %struct.T** %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.T* @t to i8*), i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct.T* @t, %struct.T** getelementptr inbounds (%struct.T, %struct.T* @t, i32 0, i32 0), align 8
  %2 = call i8* @bar(i8* noundef bitcast (%struct.S* @s to i8*), %struct.S* noundef @s)
  %3 = icmp ne i8* %2, bitcast (%struct.T* @t to i8*)
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #3
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

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
