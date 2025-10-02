; ModuleID = './20071108-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071108-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8*, i8*, i8, i8, i8 }

@foo.s = internal global %struct.S zeroinitializer, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i8* @foo() #0 {
  ret i8* bitcast (%struct.S* @foo.s to i8*)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias i8* @bar() #0 {
  ret i8* null
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local %struct.S* @test(i8* noundef %0, i8* noundef %1) #1 {
  %3 = alloca %struct.S, align 8
  %4 = call i8* @foo()
  %5 = bitcast i8* %4 to %struct.S*
  %6 = icmp eq i8* %4, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = bitcast %struct.S* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %9

9:                                                ; preds = %7, %2
  %.0 = phi %struct.S* [ %3, %7 ], [ %5, %2 ]
  %10 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 0
  store i8* %0, i8** %10, align 8
  %11 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 1
  store i8* %1, i8** %11, align 8
  %12 = icmp eq %struct.S* %.0, %3
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %9
  %.1 = phi %struct.S* [ null, %13 ], [ %.0, %9 ]
  ret %struct.S* %.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = bitcast i32* %1 to i8*
  %4 = bitcast i32* %2 to i8*
  %5 = call %struct.S* @test(i8* noundef nonnull %3, i8* noundef nonnull %4)
  %6 = icmp eq %struct.S* %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.S, %struct.S* %5, i64 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i32* %1 to i8*
  %.not = icmp eq i8* %9, %10
  br i1 %.not, label %11, label %21

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.S, %struct.S* %5, i64 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i32* %2 to i8*
  %.not1 = icmp eq i8* %13, %14
  br i1 %.not1, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.S, %struct.S* %5, i64 0, i32 2
  %17 = load i8, i8* %16, align 8
  %.not2 = icmp eq i8 %17, 0
  br i1 %.not2, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.S, %struct.S* %5, i64 0, i32 3
  %20 = load i8, i8* %19, align 1
  %.not3 = icmp eq i8 %20, 0
  br i1 %.not3, label %22, label %21

21:                                               ; preds = %18, %15, %11, %7, %0
  call void @abort() #5
  unreachable

22:                                               ; preds = %18
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
