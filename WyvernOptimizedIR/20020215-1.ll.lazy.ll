; ModuleID = './20020215-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020215-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i16, i64, i16 }

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @foo(%struct.s* noalias nocapture writeonly sret(%struct.s) align 8 %0, %struct.s* nocapture noundef byval(%struct.s) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.s, %struct.s* %1, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = add nsw i64 %4, 1
  store i64 %5, i64* %3, align 8
  %6 = bitcast %struct.s* %0 to i8*
  %7 = bitcast %struct.s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %6, i8* noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.s, align 8
  %2 = alloca %struct.s, align 8
  %3 = getelementptr inbounds %struct.s, %struct.s* %2, i64 0, i32 0
  store i16 1000, i16* %3, align 8
  %4 = getelementptr inbounds %struct.s, %struct.s* %2, i64 0, i32 1
  store i64 2000, i64* %4, align 8
  %5 = getelementptr inbounds %struct.s, %struct.s* %2, i64 0, i32 2
  store i16 3000, i16* %5, align 8
  call void @foo(%struct.s* nonnull sret(%struct.s) align 8 %1, %struct.s* noundef nonnull byval(%struct.s) align 8 %2)
  %6 = getelementptr inbounds %struct.s, %struct.s* %1, i64 0, i32 0
  %7 = load i16, i16* %6, align 8
  %.not = icmp eq i16 %7, 1000
  br i1 %.not, label %8, label %14

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.s, %struct.s* %1, i64 0, i32 1
  %10 = load i64, i64* %9, align 8
  %.not1 = icmp eq i64 %10, 2001
  br i1 %.not1, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.s, %struct.s* %1, i64 0, i32 2
  %13 = load i16, i16* %12, align 8
  %.not2 = icmp eq i16 %13, 3000
  br i1 %.not2, label %15, label %14

14:                                               ; preds = %11, %8, %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %11
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %15, %14
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
