; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr40493.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr40493.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.i386_operand_type = type { %struct.anon }
%struct.anon = type { i48 }

@x00 = dso_local global i32 0, align 4
@x01 = dso_local global i32 0, align 4
@y00 = dso_local global i32 0, align 4
@y01 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %union.i386_operand_type, align 4
  %7 = alloca %union.i386_operand_type, align 4
  %8 = alloca %union.i386_operand_type, align 4
  %9 = alloca %union.i386_operand_type, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = bitcast %union.i386_operand_type* %6 to %struct.anon*
  %11 = bitcast %struct.anon* %10 to i64*
  %12 = load i64, i64* %11, align 4
  %13 = and i64 %12, -3
  %14 = or i64 %13, 2
  store i64 %14, i64* %11, align 4
  %15 = bitcast %union.i386_operand_type* %6 to %struct.anon*
  %16 = bitcast %struct.anon* %15 to i64*
  %17 = load i64, i64* %16, align 4
  %18 = and i64 %17, -65537
  %19 = or i64 %18, 0
  store i64 %19, i64* %16, align 4
  %20 = bitcast %union.i386_operand_type* %6 to [2 x i32]*
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 22, i32* %21, align 4
  %22 = bitcast %union.i386_operand_type* %7 to i8*
  %23 = bitcast %union.i386_operand_type* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 8, i1 false)
  %24 = bitcast %union.i386_operand_type* %7 to [2 x i32]*
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* @x00, align 4
  %27 = bitcast %union.i386_operand_type* %7 to [2 x i32]*
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* @x01, align 4
  %30 = bitcast %union.i386_operand_type* %8 to i8*
  %31 = bitcast %union.i386_operand_type* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 8, i1 false)
  %32 = bitcast %union.i386_operand_type* %8 to [2 x i32]*
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* @y00, align 4
  %35 = bitcast %union.i386_operand_type* %8 to [2 x i32]*
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* @y01, align 4
  %38 = bitcast %union.i386_operand_type* %9 to i8*
  %39 = bitcast %union.i386_operand_type* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 8, i1 false)
  %40 = bitcast %union.i386_operand_type* %9 to %struct.anon*
  %41 = bitcast %struct.anon* %40 to i64*
  %42 = load i64, i64* %41, align 4
  %43 = lshr i64 %42, 1
  %44 = and i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %2
  call void @abort() #3
  unreachable

48:                                               ; preds = %2
  %49 = bitcast %union.i386_operand_type* %9 to %struct.anon*
  %50 = bitcast %struct.anon* %49 to i64*
  %51 = load i64, i64* %50, align 4
  %52 = lshr i64 %51, 16
  %53 = and i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  call void @abort() #3
  unreachable

57:                                               ; preds = %48
  %58 = bitcast %union.i386_operand_type* %9 to [2 x i32]*
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %58, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 22
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  call void @abort() #3
  unreachable

63:                                               ; preds = %57
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

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
