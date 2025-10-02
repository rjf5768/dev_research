; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020920-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020920-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { i32, i32 }
%struct.A = type { i32, %struct.B }

@__const.f.b = private unnamed_addr constant %struct.B { i32 0, i32 1 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i32 } @f() #0 {
  %1 = alloca %struct.A, align 4
  %2 = alloca %struct.B, align 4
  %3 = alloca { i64, i32 }, align 8
  %4 = bitcast %struct.B* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.B* @__const.f.b to i8*), i64 8, i1 false)
  %5 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  store i32 2, i32* %5, align 4
  %6 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  %7 = bitcast %struct.B* %6 to i8*
  %8 = bitcast %struct.B* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 8, i1 false)
  %9 = bitcast { i64, i32 }* %3 to i8*
  %10 = bitcast %struct.A* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 4 %10, i64 12, i1 false)
  %11 = load { i64, i32 }, { i64, i32 }* %3, align 8
  ret { i64, i32 } %11
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.A, align 4
  %3 = alloca { i64, i32 }, align 8
  store i32 0, i32* %1, align 4
  %4 = call { i64, i32 } @f()
  store { i64, i32 } %4, { i64, i32 }* %3, align 8
  %5 = bitcast %struct.A* %2 to i8*
  %6 = bitcast { i64, i32 }* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 8 %6, i64 12, i1 false)
  %7 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %20, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.B, %struct.B* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 1
  %17 = getelementptr inbounds %struct.B, %struct.B* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %10, %0
  call void @abort() #3
  unreachable

21:                                               ; preds = %15
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
