; ModuleID = './pr82388.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr82388.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32, i32 }

@e = dso_local global %struct.A zeroinitializer, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local { i64, i32 } @foo() #0 {
  %1 = alloca %struct.A, align 4
  %2 = alloca [30 x %struct.A], align 16
  %3 = alloca { i64, i32 }, align 8
  %4 = bitcast [30 x %struct.A]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(360) %4, i8 0, i64 360, i1 false)
  %5 = getelementptr inbounds [30 x %struct.A], [30 x %struct.A]* %2, i64 0, i64 29
  %6 = bitcast %struct.A* %1 to i8*
  %7 = bitcast %struct.A* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %6, i8* noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false)
  %8 = bitcast { i64, i32 }* %3 to i8*
  %9 = bitcast %struct.A* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %8, i8* noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false)
  %10 = load { i64, i32 }, { i64, i32 }* %3, align 8
  ret { i64, i32 } %10
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @main() #3 {
  %1 = alloca %struct.A, align 4
  %2 = alloca { i64, i32 }, align 8
  %3 = call { i64, i32 } @foo()
  store { i64, i32 } %3, { i64, i32 }* %2, align 8
  %4 = bitcast %struct.A* %1 to i8*
  %5 = bitcast { i64, i32 }* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %4, i8* noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false)
  %6 = bitcast %struct.A* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) bitcast (%struct.A* @e to i8*), i8* noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false)
  %7 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @e, i64 0, i32 0), align 4
  ret i32 %7
}

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
