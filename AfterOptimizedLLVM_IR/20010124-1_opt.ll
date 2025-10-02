; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/20010124-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/20010124-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U = type { %struct.anon }
%struct.anon = type { i32, %struct.S }
%struct.S = type { [1024 x i8] }
%struct.anon.0 = type { %struct.S, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca %union.U, align 4
  %2 = alloca %struct.S, align 1
  %3 = alloca %struct.S, align 1
  %4 = bitcast %union.U* %1 to %struct.anon.0*
  %5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %4, i32 0, i32 0
  %6 = bitcast %union.U* %1 to %struct.anon*
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 1
  call void @f(%struct.S* sret(%struct.S) align 1 %2, %struct.S* noundef %7)
  %8 = bitcast %struct.S* %5 to i8*
  %9 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 1 %9, i64 1024, i1 false)
  %10 = bitcast %union.U* %1 to %struct.anon*
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %12 = bitcast %union.U* %1 to %struct.anon.0*
  %13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %12, i32 0, i32 0
  call void @f(%struct.S* sret(%struct.S) align 1 %3, %struct.S* noundef %13)
  %14 = bitcast %struct.S* %11 to i8*
  %15 = bitcast %struct.S* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 1 %15, i64 1024, i1 false)
  call void @g(%union.U* noundef %1)
  ret void
}

declare dso_local void @f(%struct.S* sret(%struct.S) align 1, %struct.S* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @g(%union.U* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
