; ModuleID = './921112-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921112-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.u = type { double }
%struct.anon = type { i32, i32 }

@x = dso_local global [2 x %union.u] zeroinitializer, align 16
@v = dso_local global %union.u zeroinitializer, align 8

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @f(%union.u* nocapture noundef writeonly %0, i64 %1) #0 {
  %3 = getelementptr inbounds %union.u, %union.u* %0, i64 1
  %4 = bitcast %union.u* %3 to i64*
  store i64 %1, i64* %4, align 8
  ret i32 undef
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  store i32 0, i32* getelementptr (%struct.anon, %struct.anon* bitcast (%union.u* getelementptr inbounds ([2 x %union.u], [2 x %union.u]* @x, i64 0, i64 1) to %struct.anon*), i64 0, i32 1), align 4
  store i32 0, i32* bitcast (double* getelementptr inbounds ([2 x %union.u], [2 x %union.u]* @x, i64 0, i64 1, i32 0) to i32*), align 8
  store i32 1, i32* bitcast (%union.u* @v to i32*), align 8
  store i32 2, i32* getelementptr (%struct.anon, %struct.anon* bitcast (%union.u* @v to %struct.anon*), i64 0, i32 1), align 4
  %1 = load i64, i64* bitcast (%union.u* @v to i64*), align 8
  %2 = call i32 @f(%union.u* noundef getelementptr inbounds ([2 x %union.u], [2 x %union.u]* @x, i64 0, i64 0), i64 %1)
  %3 = load i32, i32* bitcast (double* getelementptr inbounds ([2 x %union.u], [2 x %union.u]* @x, i64 0, i64 1, i32 0) to i32*), align 8
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr (%struct.anon, %struct.anon* bitcast (%union.u* getelementptr inbounds ([2 x %union.u], [2 x %union.u]* @x, i64 0, i64 1) to %struct.anon*), i64 0, i32 1), align 4
  %.not1 = icmp eq i32 %5, 2
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %4, %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %7, %6
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
