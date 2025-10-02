; ModuleID = './20050613-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050613-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { %struct.A, [1 x i32] }
%struct.A = type { i32, i32, i32, i32 }
%struct.C = type { %struct.A, [0 x i32] }
%struct.D = type { %struct.A, [0 x i32] }

@__const.main.b = private unnamed_addr constant %struct.B { %struct.A { i32 0, i32 5, i32 0, i32 0 }, [1 x i32] zeroinitializer }, align 4
@__const.main.c = private unnamed_addr constant %struct.C { %struct.A { i32 0, i32 5, i32 0, i32 0 }, [0 x i32] zeroinitializer }, align 4
@__const.main.d = private unnamed_addr constant %struct.D { %struct.A { i32 0, i32 5, i32 0, i32 0 }, [0 x i32] zeroinitializer }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.A* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  %.not1 = icmp eq i32 %6, 5
  br i1 %.not1, label %7, label %13

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 2
  %9 = load i32, i32* %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %10, label %13

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 3
  %12 = load i32, i32* %11, align 4
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %14, label %13

13:                                               ; preds = %10, %7, %4, %1
  call void @abort() #3
  unreachable

14:                                               ; preds = %10
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.B, align 4
  %2 = alloca %struct.C, align 4
  %3 = alloca %struct.D, align 4
  %4 = bitcast %struct.B* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %4, i8* noundef nonnull align 4 dereferenceable(20) bitcast (%struct.B* @__const.main.b to i8*), i64 20, i1 false)
  %5 = bitcast %struct.C* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %5, i8* noundef nonnull align 4 dereferenceable(16) bitcast (%struct.C* @__const.main.c to i8*), i64 16, i1 false)
  %6 = bitcast %struct.D* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %6, i8* noundef nonnull align 4 dereferenceable(16) bitcast (%struct.D* @__const.main.d to i8*), i64 16, i1 false)
  %7 = getelementptr inbounds %struct.B, %struct.B* %1, i64 0, i32 0
  call void @foo(%struct.A* noundef nonnull %7)
  %8 = getelementptr inbounds %struct.C, %struct.C* %2, i64 0, i32 0
  call void @foo(%struct.A* noundef nonnull %8)
  %9 = getelementptr inbounds %struct.D, %struct.D* %3, i64 0, i32 0
  call void @foo(%struct.A* noundef nonnull %9)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
