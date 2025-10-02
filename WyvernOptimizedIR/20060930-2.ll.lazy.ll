; ModuleID = './20060930-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20060930-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { %struct.S* }
%struct.T = type { %struct.T* }

@s = dso_local global %struct.S zeroinitializer, align 8
@t = dso_local global %struct.T zeroinitializer, align 8

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i8* @bar(i8* nocapture noundef writeonly %0, %struct.S* nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0
  store %struct.S* @s, %struct.S** %3, align 8
  call void @foo(i8* noundef %0)
  %4 = bitcast %struct.S* %1 to i8**
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal void @foo(i8* nocapture noundef writeonly %0) #0 {
  %2 = bitcast i8* %0 to i64*
  %3 = load i64, i64* bitcast (%struct.T* @t to i64*), align 8
  store i64 %3, i64* %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  store %struct.T* @t, %struct.T** getelementptr inbounds (%struct.T, %struct.T* @t, i64 0, i32 0), align 8
  %1 = call i8* @bar(i8* noundef bitcast (%struct.S* @s to i8*), %struct.S* noundef nonnull @s)
  %.not = icmp eq i8* %1, bitcast (%struct.T* @t to i8*)
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
