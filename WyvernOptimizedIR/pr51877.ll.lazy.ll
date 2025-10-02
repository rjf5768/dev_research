; ModuleID = './pr51877.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr51877.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, [32 x i8] }

@bar.n = internal global i32 0, align 4
@a = dso_local global %struct.A zeroinitializer, align 4
@b = dso_local global %struct.A zeroinitializer, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @bar(%struct.A* noalias nocapture writeonly sret(%struct.A) align 4 %0, i32 noundef %1) #0 {
  %3 = load i32, i32* @bar.n, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @bar.n, align 4
  %5 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 0
  store i32 %4, i32* %5, align 4
  %6 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 1, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %7 = trunc i32 %1 to i8
  %8 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 1, i64 0
  store i8 %7, i8* %8, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz() #2 {
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.A* nocapture noundef writeonly %0, i32 noundef %1) #2 {
  %3 = alloca %struct.A, align 4
  %4 = alloca %struct.A, align 4
  %5 = icmp eq i32 %1, 6
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  call void @bar(%struct.A* nonnull sret(%struct.A) align 4 %3, i32 noundef 7)
  %7 = bitcast %struct.A* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(36) bitcast (%struct.A* @a to i8*), i8* noundef nonnull align 4 dereferenceable(36) %7, i64 36, i1 false)
  br label %11

8:                                                ; preds = %2
  call void @bar(%struct.A* nonnull sret(%struct.A) align 4 %4, i32 noundef 7)
  %9 = bitcast %struct.A* %0 to i8*
  %10 = bitcast %struct.A* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(36) %9, i8* noundef nonnull align 4 dereferenceable(36) %10, i64 36, i1 false)
  br label %11

11:                                               ; preds = %8, %6
  call void @baz()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.A, align 4
  %2 = alloca %struct.A, align 4
  call void @bar(%struct.A* nonnull sret(%struct.A) align 4 %1, i32 noundef 3)
  %3 = bitcast %struct.A* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(36) bitcast (%struct.A* @a to i8*), i8* noundef nonnull align 4 dereferenceable(36) %3, i64 36, i1 false)
  call void @bar(%struct.A* nonnull sret(%struct.A) align 4 %2, i32 noundef 4)
  %4 = bitcast %struct.A* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(36) bitcast (%struct.A* @b to i8*), i8* noundef nonnull align 4 dereferenceable(36) %4, i64 36, i1 false)
  %5 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 0), align 4
  %.not = icmp eq i32 %5, 1
  br i1 %.not, label %6, label %12

6:                                                ; preds = %0
  %7 = load i8, i8* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 1, i64 0), align 4
  %.not1 = icmp eq i8 %7, 3
  br i1 %.not1, label %8, label %12

8:                                                ; preds = %6
  %9 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @b, i64 0, i32 0), align 4
  %.not2 = icmp eq i32 %9, 2
  br i1 %.not2, label %10, label %12

10:                                               ; preds = %8
  %11 = load i8, i8* getelementptr inbounds (%struct.A, %struct.A* @b, i64 0, i32 1, i64 0), align 4
  %.not3 = icmp eq i8 %11, 4
  br i1 %.not3, label %13, label %12

12:                                               ; preds = %10, %8, %6, %0
  call void @abort() #6
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %10
  call void @foo(%struct.A* noundef nonnull @b, i32 noundef 0)
  %14 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 0), align 4
  %.not4 = icmp eq i32 %14, 1
  br i1 %.not4, label %15, label %21

15:                                               ; preds = %13
  %16 = load i8, i8* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 1, i64 0), align 4
  %.not5 = icmp eq i8 %16, 3
  br i1 %.not5, label %17, label %21

17:                                               ; preds = %15
  %18 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @b, i64 0, i32 0), align 4
  %.not6 = icmp eq i32 %18, 3
  br i1 %.not6, label %19, label %21

19:                                               ; preds = %17
  %20 = load i8, i8* getelementptr inbounds (%struct.A, %struct.A* @b, i64 0, i32 1, i64 0), align 4
  %.not7 = icmp eq i8 %20, 7
  br i1 %.not7, label %22, label %21

21:                                               ; preds = %19, %17, %15, %13
  call void @abort() #6
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %19
  call void @foo(%struct.A* noundef nonnull @b, i32 noundef 6)
  %23 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 0), align 4
  %.not8 = icmp eq i32 %23, 4
  br i1 %.not8, label %24, label %30

24:                                               ; preds = %22
  %25 = load i8, i8* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 1, i64 0), align 4
  %.not9 = icmp eq i8 %25, 7
  br i1 %.not9, label %26, label %30

26:                                               ; preds = %24
  %27 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @b, i64 0, i32 0), align 4
  %.not10 = icmp eq i32 %27, 3
  br i1 %.not10, label %28, label %30

28:                                               ; preds = %26
  %29 = load i8, i8* getelementptr inbounds (%struct.A, %struct.A* @b, i64 0, i32 1, i64 0), align 4
  %.not11 = icmp eq i8 %29, 7
  br i1 %.not11, label %31, label %30

30:                                               ; preds = %28, %26, %24, %22
  call void @abort() #6
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %28
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %30, %21, %12
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 343}
