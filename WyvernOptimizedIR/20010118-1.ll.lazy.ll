; ModuleID = './20010118-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010118-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32, i32, i32, i32, i32 }

@__const.main.w = private unnamed_addr constant %struct.A { i32 100, i32 110, i32 20, i32 30, i32 -1, i32 -1 }, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @foo(%struct.A* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32* nocapture noundef %3, i32* nocapture noundef %4) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @bar(%struct.A* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %3, i32* %6, align 4
  store i32 %4, i32* %7, align 4
  %8 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 0
  %9 = load i32, i32* %8, align 4
  %.not = icmp eq i32 %9, %1
  br i1 %.not, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %.not1 = icmp eq i32 %12, %2
  br i1 %.not1, label %38, label %13

13:                                               ; preds = %10, %5
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = sitofp i32 %16 to double
  %20 = fmul double %19, 0.000000e+00
  %21 = fmul double %20, 5.000000e-01
  %22 = fptosi double %21 to i32
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %14, %23
  %25 = sitofp i32 %24 to double
  %26 = sitofp i32 %18 to double
  %27 = fmul double %25, %26
  %28 = fmul double %27, 5.000000e-01
  %29 = fptosi double %28 to i32
  %30 = add nsw i32 %22, %1
  %31 = add nsw i32 %29, %2
  %32 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 3
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.A, align 4
  %2 = bitcast %struct.A* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %2, i8* noundef nonnull align 4 dereferenceable(24) bitcast (%struct.A* @__const.main.w to i8*), i64 24, i1 false)
  call void @bar(%struct.A* noundef nonnull %1, i32 noundef 400, i32 noundef 420, i32 noundef 50, i32 noundef 70)
  %3 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 3
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 70
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %0
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %6, %5
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
