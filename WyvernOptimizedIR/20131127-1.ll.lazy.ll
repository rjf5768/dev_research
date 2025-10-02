; ModuleID = './20131127-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20131127-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type <{ i32, i32, i32, i16 }>

@a = dso_local global i16 1, align 2
@b = dso_local global %struct.S0 <{ i32 1, i32 0, i32 0, i16 0 }>, align 1
@c = dso_local global %struct.S0 zeroinitializer, align 1
@d = dso_local global %struct.S0 zeroinitializer, align 1
@e = dso_local global %struct.S0 zeroinitializer, align 1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local { i64, i48 } @fn1() #0 {
  %1 = alloca %struct.S0, align 1
  %2 = alloca { i64, i48 }, align 8
  %3 = bitcast %struct.S0* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(14) %3, i8* noundef nonnull align 1 dereferenceable(14) bitcast (%struct.S0* @c to i8*), i64 14, i1 false)
  %4 = bitcast { i64, i48 }* %2 to i8*
  %5 = bitcast %struct.S0* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(14) %4, i8* noundef nonnull align 1 dereferenceable(14) %5, i64 14, i1 false)
  %.elt = getelementptr inbounds { i64, i48 }, { i64, i48 }* %2, i64 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %6 = insertvalue { i64, i48 } undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds { i64, i48 }, { i64, i48 }* %2, i64 0, i32 1
  %.unpack2 = load i48, i48* %.elt1, align 8
  %7 = insertvalue { i64, i48 } %6, i48 %.unpack2, 1
  ret { i64, i48 } %7
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @fn2() #0 {
  %1 = alloca %struct.S0, align 1
  %2 = alloca { i64, i48 }, align 8
  %3 = call { i64, i48 } @fn1()
  %.repack = getelementptr inbounds { i64, i48 }, { i64, i48 }* %2, i64 0, i32 0
  %.elt = extractvalue { i64, i48 } %3, 0
  store i64 %.elt, i64* %.repack, align 8
  %.repack1 = getelementptr inbounds { i64, i48 }, { i64, i48 }* %2, i64 0, i32 1
  %.elt2 = extractvalue { i64, i48 } %3, 1
  store i48 %.elt2, i48* %.repack1, align 8
  %4 = bitcast %struct.S0* %1 to i8*
  %5 = bitcast { i64, i48 }* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(14) %4, i8* noundef nonnull align 8 dereferenceable(14) %5, i64 14, i1 false)
  %6 = bitcast %struct.S0* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(14) bitcast (%struct.S0* @b to i8*), i8* noundef nonnull align 1 dereferenceable(14) %6, i64 14, i1 false)
  store i16 0, i16* @a, align 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(14) bitcast (%struct.S0* @d to i8*), i8* noundef nonnull align 1 dereferenceable(14) bitcast (%struct.S0* @e to i8*), i64 14, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  call void @fn2()
  %1 = load i16, i16* @a, align 2
  %.not = icmp eq i16 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  unreachable

3:                                                ; preds = %0
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
