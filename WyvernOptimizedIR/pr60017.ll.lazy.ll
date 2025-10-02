; ModuleID = './pr60017.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr60017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { i8, [2 x [2 x i8]], [2 x %struct.S0], [2 x i8] }
%struct.S0 = type { i16, i16 }

@x = dso_local global %struct.S1 { i8 1, [2 x [2 x i8]] [[2 x i8] c"\02\03", [2 x i8] c"\04\05"], [2 x %struct.S0] [%struct.S0 { i16 6, i16 7 }, %struct.S0 { i16 8, i16 9 }], [2 x i8] undef }, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local { i64, i64 } @func() #0 {
  %1 = alloca { i64, i64 }, align 8
  %2 = bitcast { i64, i64 }* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 4 dereferenceable(16) getelementptr inbounds (%struct.S1, %struct.S1* @x, i64 0, i32 0), i64 16, i1 false)
  %.elt = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i64 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %3 = insertvalue { i64, i64 } undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i64 0, i32 1
  %.unpack2 = load i64, i64* %.elt1, align 8
  %4 = insertvalue { i64, i64 } %3, i64 %.unpack2, 1
  ret { i64, i64 } %4
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca { i64, i64 }, align 8
  %tmpcast = bitcast { i64, i64 }* %1 to %struct.S1*
  %2 = call { i64, i64 } @func()
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i64 0, i32 0
  %4 = extractvalue { i64, i64 } %2, 0
  store i64 %4, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i64 0, i32 1
  %6 = extractvalue { i64, i64 } %2, 1
  store i64 %6, i64* %5, align 8
  %7 = getelementptr inbounds %struct.S1, %struct.S1* %tmpcast, i64 0, i32 2, i64 1, i32 1
  %8 = load i16, i16* %7, align 4
  %.not = icmp eq i16 %8, 9
  br i1 %.not, label %10, label %9

9:                                                ; preds = %0
  call void @abort() #4
  unreachable

10:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
