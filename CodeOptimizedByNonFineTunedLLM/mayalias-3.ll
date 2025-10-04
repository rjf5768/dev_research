; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/mayalias-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/mayalias-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i16 }

@p = dso_local global %struct.test* null, align 8
@__const.f.s = private unnamed_addr constant %struct.test { i16 1 }, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g(i32* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = bitcast i32* %4 to %struct.test*
  store %struct.test* %5, %struct.test** @p, align 8
  %6 = load i32, i32* %2, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.test, align 2
  %3 = call i32 @g(i32* noundef %1)
  store i32 10, i32* %1, align 4
  %4 = bitcast %struct.test* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %4, i8* align 2 bitcast (%struct.test* @__const.f.s to i8*), i64 2, i1 false)
  %5 = load %struct.test*, %struct.test** @p, align 8
  %6 = bitcast %struct.test* %5 to i8*
  %7 = bitcast %struct.test* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %6, i8* align 2 %7, i64 2, i1 false)
  %8 = load i32, i32* %1, align 4
  ret i32 %8
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @f()
  %3 = icmp eq i32 %2, 10
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #3
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
