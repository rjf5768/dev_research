; ModuleID = './pr29006.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr29006.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type <{ i8, i64 }>

@__const.main.s = private unnamed_addr constant %struct.s <{ i8 1, i64 -1 }>, align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @foo(%struct.s* nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.s, %struct.s* %0, i64 0, i32 1
  store i64 0, i64* %2, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local i32 @main() #1 {
  %1 = alloca %struct.s, align 1
  %2 = getelementptr inbounds %struct.s, %struct.s* %1, i64 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(9) %2, i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds (%struct.s, %struct.s* @__const.main.s, i64 0, i32 0), i64 9, i1 false)
  call void @foo(%struct.s* noundef nonnull %1)
  %3 = getelementptr inbounds %struct.s, %struct.s* %1, i64 0, i32 1
  %4 = load i64, i64* %3, align 1
  %5 = icmp ne i64 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
