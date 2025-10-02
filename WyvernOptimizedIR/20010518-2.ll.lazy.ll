; ModuleID = './20010518-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010518-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a_struct = type <{ i16, i64, i16, i16, %struct.b_struct }>
%struct.b_struct = type { i8, i8, i8, i8, i8, i8 }

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.a_struct, align 2
  %2 = alloca %struct.a_struct, align 2
  %3 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %2, i64 0, i32 0
  store i16 1, i16* %3, align 2
  %4 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %2, i64 0, i32 1
  store i64 2, i64* %4, align 2
  %5 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %2, i64 0, i32 2
  store i16 3, i16* %5, align 2
  %6 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %2, i64 0, i32 3
  store i16 4, i16* %6, align 2
  %7 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %2, i64 0, i32 4, i32 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(6) %7, i8 0, i64 6, i1 false)
  %8 = bitcast %struct.a_struct* %1 to i8*
  %9 = bitcast %struct.a_struct* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %9, i64 20, i1 true)
  %10 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %1, i64 0, i32 4, i32 4
  store volatile i8 99, i8* %10, align 2
  %11 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %1, i64 0, i32 0
  %12 = load volatile i16, i16* %11, align 2
  %.not = icmp eq i16 %12, 1
  br i1 %.not, label %13, label %25

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %1, i64 0, i32 1
  %15 = load volatile i64, i64* %14, align 2
  %.not1 = icmp eq i64 %15, 2
  br i1 %.not1, label %16, label %25

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %1, i64 0, i32 2
  %18 = load volatile i16, i16* %17, align 2
  %.not2 = icmp eq i16 %18, 3
  br i1 %.not2, label %19, label %25

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %1, i64 0, i32 3
  %21 = load volatile i16, i16* %20, align 2
  %.not3 = icmp eq i16 %21, 4
  br i1 %.not3, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %1, i64 0, i32 4, i32 4
  %24 = load volatile i8, i8* %23, align 2
  %.not4 = icmp eq i8 %24, 99
  br i1 %.not4, label %26, label %25

25:                                               ; preds = %22, %19, %16, %13, %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %22
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %26, %25
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
