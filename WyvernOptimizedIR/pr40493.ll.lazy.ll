; ModuleID = './pr40493.ll'
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
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca %union.i386_operand_type, align 8
  %4 = alloca %union.i386_operand_type, align 8
  %5 = alloca %union.i386_operand_type, align 8
  %6 = alloca %union.i386_operand_type, align 8
  %7 = bitcast %union.i386_operand_type* %3 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = bitcast %union.i386_operand_type* %3 to i64*
  %10 = and i64 %8, -65539
  %11 = or i64 %10, 2
  store i64 %11, i64* %9, align 8
  %12 = bitcast %union.i386_operand_type* %3 to [2 x i32]*
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 22, i32* %13, align 4
  %14 = bitcast %union.i386_operand_type* %3 to i64*
  %15 = bitcast %union.i386_operand_type* %4 to i64*
  %16 = load i64, i64* %14, align 8
  store i64 %16, i64* %15, align 8
  %17 = bitcast %union.i386_operand_type* %4 to i32*
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* @x00, align 4
  %19 = bitcast %union.i386_operand_type* %4 to [2 x i32]*
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @x01, align 4
  %22 = bitcast %union.i386_operand_type* %4 to i64*
  %23 = bitcast %union.i386_operand_type* %5 to i64*
  %24 = load i64, i64* %22, align 8
  store i64 %24, i64* %23, align 8
  %25 = bitcast %union.i386_operand_type* %5 to i32*
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* @y00, align 4
  %27 = bitcast %union.i386_operand_type* %5 to [2 x i32]*
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* @y01, align 4
  %30 = bitcast %union.i386_operand_type* %5 to i64*
  %31 = bitcast %union.i386_operand_type* %6 to i64*
  %32 = load i64, i64* %30, align 8
  store i64 %32, i64* %31, align 8
  %33 = and i64 %32, 2
  %.not.not = icmp eq i64 %33, 0
  br i1 %.not.not, label %34, label %35

34:                                               ; preds = %2
  call void @abort() #3
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %2
  %36 = bitcast %union.i386_operand_type* %6 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %37, 65536
  %.not = icmp eq i64 %38, 0
  br i1 %.not, label %40, label %39

39:                                               ; preds = %35
  call void @abort() #3
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %35
  %41 = bitcast %union.i386_operand_type* %6 to [2 x i32]*
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %.not1 = icmp eq i32 %43, 22
  br i1 %.not1, label %45, label %44

44:                                               ; preds = %40
  call void @abort() #3
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %40
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %44, %39, %34
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
