; ModuleID = './20010124-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/20010124-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U = type { %struct.anon }
%struct.anon = type { i32, %struct.S }
%struct.S = type { [1024 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca %union.U, align 4
  %2 = alloca %struct.S, align 1
  %3 = alloca %struct.S, align 1
  %4 = getelementptr inbounds %union.U, %union.U* %1, i64 0, i32 0, i32 1
  call void @f(%struct.S* nonnull sret(%struct.S) align 1 %2, %struct.S* noundef nonnull %4) #3
  %5 = bitcast %union.U* %1 to i8*
  %6 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(1024) %5, i8* noundef nonnull align 1 dereferenceable(1024) %6, i64 1024, i1 false)
  %7 = bitcast %union.U* %1 to %struct.S*
  call void @f(%struct.S* nonnull sret(%struct.S) align 1 %3, %struct.S* noundef nonnull %7) #3
  %8 = getelementptr inbounds %union.U, %union.U* %1, i64 0, i32 0, i32 1, i32 0, i64 0
  %9 = getelementptr inbounds %struct.S, %struct.S* %3, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(1024) %8, i8* noundef nonnull align 1 dereferenceable(1024) %9, i64 1024, i1 false)
  call void @g(%union.U* noundef nonnull %1) #3
  ret void
}

declare dso_local void @f(%struct.S* sret(%struct.S) align 1, %struct.S* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @g(%union.U* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
