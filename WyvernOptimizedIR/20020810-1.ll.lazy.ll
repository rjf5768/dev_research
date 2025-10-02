; ModuleID = './20020810-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020810-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.R = type { %struct.A, %struct.A }
%struct.A = type { i64 }

@R = dso_local global %struct.R { %struct.A { i64 100 }, %struct.A { i64 200 } }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.R, align 8
  %4 = getelementptr inbounds %struct.R, %struct.R* %3, i64 0, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.R, %struct.R* %3, i64 0, i32 1, i32 0
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.R, %struct.R* @R, i64 0, i32 0, i32 0), align 8
  %.not = icmp eq i64 %6, %0
  br i1 %.not, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.R, %struct.R* %3, i64 0, i32 1, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.R, %struct.R* @R, i64 0, i32 1, i32 0), align 8
  %.not1 = icmp eq i64 %9, %10
  br i1 %.not1, label %12, label %11

11:                                               ; preds = %7, %2
  call void @abort() #4
  unreachable

12:                                               ; preds = %7
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local { i64, i64 } @g() #2 {
  %1 = alloca %struct.R, align 8
  %2 = bitcast %struct.R* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.R* @R to i8*), i64 16, i1 false)
  %.elt = getelementptr inbounds %struct.R, %struct.R* %1, i64 0, i32 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %3 = insertvalue { i64, i64 } undef, i64 %.unpack, 0
  %4 = getelementptr inbounds %struct.R, %struct.R* %1, i64 0, i32 1, i32 0
  %.unpack2 = load i64, i64* %4, align 8
  %5 = insertvalue { i64, i64 } %3, i64 %.unpack2, 1
  ret { i64, i64 } %5
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.R, align 8
  %2 = alloca %struct.R, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.R, %struct.R* @R, i64 0, i32 0, i32 0), align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.R, %struct.R* @R, i64 0, i32 1, i32 0), align 8
  call void @f(i64 %3, i64 %4)
  %5 = call { i64, i64 } @g()
  %6 = getelementptr inbounds %struct.R, %struct.R* %2, i64 0, i32 0, i32 0
  %7 = extractvalue { i64, i64 } %5, 0
  store i64 %7, i64* %6, align 8
  %8 = getelementptr inbounds %struct.R, %struct.R* %2, i64 0, i32 1, i32 0
  %9 = extractvalue { i64, i64 } %5, 1
  store i64 %9, i64* %8, align 8
  %10 = bitcast %struct.R* %1 to i8*
  %11 = bitcast %struct.R* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %10, i8* noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false)
  %12 = getelementptr inbounds %struct.R, %struct.R* %1, i64 0, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.R, %struct.R* @R, i64 0, i32 0, i32 0), align 8
  %.not = icmp eq i64 %13, %14
  br i1 %.not, label %15, label %19

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.R, %struct.R* %1, i64 0, i32 1, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.R, %struct.R* @R, i64 0, i32 1, i32 0), align 8
  %.not1 = icmp eq i64 %17, %18
  br i1 %.not1, label %20, label %19

19:                                               ; preds = %15, %0
  call void @abort() #4
  unreachable

20:                                               ; preds = %15
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
