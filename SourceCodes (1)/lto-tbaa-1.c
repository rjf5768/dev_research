; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/lto-tbaa-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/lto-tbaa-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b = type { i32* }
%struct.a = type { float* }
%struct.c = type { float* }

@d = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@b = dso_local global %struct.b { i32* @e }, align 8
@b2 = dso_local global %struct.b zeroinitializer, align 8
@ptr = dso_local global i32** getelementptr inbounds (%struct.b, %struct.b* @b2, i32 0, i32 0), align 8
@a = dso_local global %struct.a* null, align 8
@b3 = dso_local global %struct.b zeroinitializer, align 8
@c = dso_local global %struct.c* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @use_a(%struct.a* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.a*, align 8
  store %struct.a* %0, %struct.a** %3, align 8
  %4 = load i32, i32* %2, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set_b(i32** noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  %4 = load i32**, i32*** %3, align 8
  store i32* @d, i32** %4, align 8
  %5 = load i32, i32* %2, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @use_c(%struct.c* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c*, align 8
  store %struct.c* %0, %struct.c** %3, align 8
  %4 = load i32, i32* %2, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @retme(i32** noundef %0) #0 {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  %3 = load i32**, i32*** %2, align 8
  ret i32** %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct.a* null, %struct.a** @a, align 8
  store i32* @e, i32** getelementptr inbounds (%struct.b, %struct.b* @b, i32 0, i32 0), align 8
  %2 = call i32** @retme(i32** noundef getelementptr inbounds (%struct.b, %struct.b* @b, i32 0, i32 0))
  store i32** %2, i32*** @ptr, align 8
  %3 = load i32**, i32*** @ptr, align 8
  %4 = call i32 @set_b(i32** noundef %3)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.b* @b3 to i8*), i8* align 8 bitcast (%struct.b* @b to i8*), i64 8, i1 false)
  %5 = load i32*, i32** getelementptr inbounds (%struct.b, %struct.b* @b3, i32 0, i32 0), align 8
  %6 = icmp ne i32* %5, @d
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #3
  unreachable

8:                                                ; preds = %0
  store %struct.c* null, %struct.c** @c, align 8
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

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
