; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921112-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921112-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.u = type { double }
%struct.anon = type { i32, i32 }

@x = dso_local global [2 x %union.u] zeroinitializer, align 16
@v = dso_local global %union.u zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(%union.u* noundef %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.u, align 8
  %5 = alloca %union.u*, align 8
  %6 = getelementptr inbounds %union.u, %union.u* %4, i32 0, i32 0
  %7 = bitcast double* %6 to i64*
  store i64 %1, i64* %7, align 8
  store %union.u* %0, %union.u** %5, align 8
  %8 = load %union.u*, %union.u** %5, align 8
  %9 = getelementptr inbounds %union.u, %union.u* %8, i32 1
  store %union.u* %9, %union.u** %5, align 8
  %10 = bitcast %union.u* %9 to i8*
  %11 = bitcast %union.u* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false)
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* getelementptr inbounds (%struct.anon, %struct.anon* bitcast (%union.u* getelementptr inbounds ([2 x %union.u], [2 x %union.u]* @x, i64 0, i64 1) to %struct.anon*), i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.anon, %struct.anon* bitcast (%union.u* getelementptr inbounds ([2 x %union.u], [2 x %union.u]* @x, i64 0, i64 1) to %struct.anon*), i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* bitcast (%union.u* @v to %struct.anon*), i32 0, i32 0), align 8
  store i32 2, i32* getelementptr inbounds (%struct.anon, %struct.anon* bitcast (%union.u* @v to %struct.anon*), i32 0, i32 1), align 4
  %2 = load i64, i64* bitcast (%union.u* @v to i64*), align 8
  %3 = call i32 @f(%union.u* noundef getelementptr inbounds ([2 x %union.u], [2 x %union.u]* @x, i64 0, i64 0), i64 %2)
  %4 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* bitcast (%union.u* getelementptr inbounds ([2 x %union.u], [2 x %union.u]* @x, i64 0, i64 1) to %struct.anon*), i32 0, i32 0), align 8
  %5 = icmp ne i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* bitcast (%union.u* getelementptr inbounds ([2 x %union.u], [2 x %union.u]* @x, i64 0, i64 1) to %struct.anon*), i32 0, i32 1), align 4
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %0
  call void @abort() #3
  unreachable

10:                                               ; preds = %6
  call void @exit(i32 noundef 0) #3
  unreachable
}

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
