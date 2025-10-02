; ModuleID = './20000917-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000917-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int3 = type { i32, i32, i32 }

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local { i64, i32 } @one() #0 {
  %1 = alloca %struct.int3, align 4
  %2 = alloca { i64, i32 }, align 8
  %3 = getelementptr inbounds %struct.int3, %struct.int3* %1, i64 0, i32 0
  store i32 1, i32* %3, align 4
  %4 = getelementptr inbounds %struct.int3, %struct.int3* %1, i64 0, i32 1
  store i32 1, i32* %4, align 4
  %5 = getelementptr inbounds %struct.int3, %struct.int3* %1, i64 0, i32 2
  store i32 1, i32* %5, align 4
  %6 = bitcast { i64, i32 }* %2 to i8*
  %7 = bitcast %struct.int3* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %6, i8* noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false)
  %8 = load { i64, i32 }, { i64, i32 }* %2, align 8
  ret { i64, i32 } %8
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local { i64, i32 } @zero() #0 {
  %1 = alloca %struct.int3, align 4
  %2 = alloca { i64, i32 }, align 8
  %3 = getelementptr inbounds %struct.int3, %struct.int3* %1, i64 0, i32 0
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds %struct.int3, %struct.int3* %1, i64 0, i32 1
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.int3, %struct.int3* %1, i64 0, i32 2
  store i32 0, i32* %5, align 4
  %6 = bitcast { i64, i32 }* %2 to i8*
  %7 = bitcast %struct.int3* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %6, i8* noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false)
  %8 = load { i64, i32 }, { i64, i32 }* %2, align 8
  ret { i64, i32 } %8
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.int3, align 4
  %2 = alloca %struct.int3, align 4
  %3 = alloca { i64, i32 }, align 8
  %4 = call { i64, i32 } @zero()
  store { i64, i32 } %4, { i64, i32 }* %3, align 8
  %5 = bitcast %struct.int3* %2 to i8*
  %6 = bitcast { i64, i32 }* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %5, i8* noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %7 = bitcast %struct.int3* %1 to i8*
  %8 = bitcast %struct.int3* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %7, i8* noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false)
  %9 = getelementptr inbounds %struct.int3, %struct.int3* %1, i64 0, i32 0
  %10 = load i32, i32* %9, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %18, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.int3, %struct.int3* %1, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %.not1 = icmp eq i32 %13, 0
  br i1 %.not1, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.int3, %struct.int3* %1, i64 0, i32 2
  %16 = load i32, i32* %15, align 4
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %18, label %17

17:                                               ; preds = %14
  call void @abort() #4
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %14, %11, %0
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %18, %17
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
