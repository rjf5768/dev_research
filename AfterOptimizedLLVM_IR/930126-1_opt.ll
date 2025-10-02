; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930126-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930126-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i40 }

@main.i = internal global %struct.s zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f(i64 %0) #0 {
  %2 = alloca %struct.s, align 8
  %3 = alloca %struct.s, align 8
  %4 = bitcast %struct.s* %3 to i64*
  store i64 %0, i64* %4, align 8
  %5 = bitcast %struct.s* %3 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = and i64 %6, -1099511627521
  %8 = or i64 %7, 884479243264
  store i64 %8, i64* %5, align 8
  %9 = bitcast %struct.s* %2 to i8*
  %10 = bitcast %struct.s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false)
  %11 = bitcast %struct.s* %2 to i64*
  %12 = load i64, i64* %11, align 8
  ret i64 %12
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.s, align 8
  store i32 0, i32* %1, align 4
  %3 = load i64, i64* bitcast (%struct.s* @main.i to i64*), align 8
  %4 = and i64 %3, -256
  %5 = or i64 %4, 12
  store i64 %5, i64* bitcast (%struct.s* @main.i to i64*), align 8
  %6 = load i64, i64* bitcast (%struct.s* @main.i to i64*), align 8
  %7 = call i64 @f(i64 %6)
  %8 = bitcast %struct.s* %2 to i64*
  store i64 %7, i64* %8, align 8
  %9 = bitcast %struct.s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.s* @main.i to i8*), i8* align 8 %9, i64 8, i1 false)
  %10 = load i64, i64* bitcast (%struct.s* @main.i to i64*), align 8
  %11 = and i64 %10, 255
  %12 = trunc i64 %11 to i32
  %13 = icmp ne i32 %12, 12
  br i1 %13, label %20, label %14

14:                                               ; preds = %0
  %15 = load i64, i64* bitcast (%struct.s* @main.i to i64*), align 8
  %16 = lshr i64 %15, 8
  %17 = and i64 %16, 4294967295
  %18 = trunc i64 %17 to i32
  %19 = icmp ne i32 %18, -839970252
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %0
  call void @abort() #3
  unreachable

21:                                               ; preds = %14
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
