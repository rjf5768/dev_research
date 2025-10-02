; ModuleID = './pr57130.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57130.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32, i32 }

@s = dso_local global [2 x %struct.S] [%struct.S { i32 6, i32 8, i32 -8, i32 -5 }, %struct.S { i32 0, i32 2, i32 -1, i32 2 }], align 16
@foo.cnt = internal global i32 0, align 4
@__const.main.r = private unnamed_addr constant %struct.S { i32 6, i32 8, i32 -8, i32 -5 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64 %0, i64 %1) #0 {
  %3 = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i64 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i64 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = bitcast { i64, i64 }* %3 to i8*
  %7 = load i32, i32* @foo.cnt, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @foo.cnt, align 4
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* @s, i64 0, i64 %9
  %11 = bitcast %struct.S* %10 to i8*
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(16) %6, i8* noundef nonnull dereferenceable(16) %11, i64 16)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %13, label %12

12:                                               ; preds = %2
  call void @abort() #5
  unreachable

13:                                               ; preds = %2
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca { i64, i64 }, align 8
  %2 = alloca %struct.S, align 4
  %3 = bitcast { i64, i64 }* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 4 dereferenceable(16) bitcast (%struct.S* @__const.main.r to i8*), i64 16, i1 false)
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i64 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i64 0, i32 1
  %7 = load i64, i64* %6, align 8
  call void @foo(i64 %5, i64 %7)
  %8 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 1
  store i32 2, i32* %9, align 4
  %10 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 2
  store i32 -1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 3
  store i32 2, i32* %11, align 4
  %12 = bitcast { i64, i64 }* %1 to i8*
  %13 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %12, i8* noundef nonnull align 4 dereferenceable(16) %13, i64 16, i1 false)
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i64 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i64 0, i32 1
  %17 = load i64, i64* %16, align 8
  call void @foo(i64 %15, i64 %17)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
