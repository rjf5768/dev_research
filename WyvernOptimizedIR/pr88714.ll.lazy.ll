; ModuleID = './pr88714.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr88714.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i32*, i32*, i32* }
%struct.S = type { i32, i32, i32, i32* }

@t = dso_local global %struct.T* null, align 8
@o = dso_local global i32* null, align 8
@__const.main.a = private unnamed_addr constant [4 x i32] [i32 8, i32 9, i32 10, i32 11], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32* noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, -1
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  %.not4 = icmp eq i32* %0, null
  br i1 %.not4, label %7, label %9

7:                                                ; preds = %6
  %.not5 = icmp eq i32 %1, 0
  br i1 %.not5, label %8, label %9

8:                                                ; preds = %7
  %.not6 = icmp eq i32 %2, 0
  br i1 %.not6, label %10, label %9

9:                                                ; preds = %8, %7, %6
  call void @abort() #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br label %20

11:                                               ; preds = %4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %12, label %18

12:                                               ; preds = %11
  %13 = load %struct.T*, %struct.T** @t, align 8
  %14 = getelementptr inbounds %struct.T, %struct.T* %13, i64 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %.not1 = icmp eq i32* %15, %0
  br i1 %.not1, label %16, label %18

16:                                               ; preds = %12
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %17, label %18

17:                                               ; preds = %16
  %.not3 = icmp eq i32 %2, 12
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %17, %16, %12, %11
  call void @abort() #3
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19, %10
  ret void

UnifiedUnreachableBlock:                          ; preds = %18, %9
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.S* nocapture noundef writeonly %0, %struct.S* nocapture noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = load i32*, i32** @o, align 8
  store i32 %3, i32* %5, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %4
  call void @bar(i32* noundef null, i32 noundef 0, i32 noundef 0, i32 noundef -1)
  br label %7

7:                                                ; preds = %6, %4
  %8 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 3
  store i32* %2, i32** %8, align 8
  %9 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %.not1 = icmp eq i32* %10, null
  br i1 %.not1, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  %18 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 2
  store i32 %17, i32* %18, align 8
  br label %19

19:                                               ; preds = %11, %7
  %20 = load %struct.T*, %struct.T** @t, align 8
  %21 = getelementptr inbounds %struct.T, %struct.T* %20, i64 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 2
  %24 = load i32, i32* %23, align 8
  call void @bar(i32* noundef %22, i32 noundef 0, i32 noundef %24, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca %struct.S, align 8
  %3 = alloca %struct.T, align 8
  %4 = bitcast [4 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %4, i8* noundef nonnull align 16 dereferenceable(16) bitcast ([4 x i32]* @__const.main.a to i8*), i64 16, i1 false)
  %5 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 1
  store i32 2, i32* %6, align 4
  %7 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 2
  store i32 3, i32* %7, align 8
  %8 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 3
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  store i32* %9, i32** %8, align 8
  %10 = getelementptr inbounds %struct.T, %struct.T* %3, i64 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.T, %struct.T* %3, i64 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.T, %struct.T* %3, i64 0, i32 2
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  store i32* %13, i32** %12, align 8
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  store i32* %14, i32** @o, align 8
  store %struct.T* %3, %struct.T** @t, align 8
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  call void @foo(%struct.S* noundef nonnull %2, %struct.S* noundef nonnull %2, i32* noundef nonnull %15, i32 noundef 5)
  %16 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 2
  %17 = load i32, i32* %16, align 8
  %.not = icmp eq i32 %17, 12
  br i1 %.not, label %18, label %22

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %.not1 = icmp eq i32* %20, %21
  br i1 %.not1, label %23, label %22

22:                                               ; preds = %18, %0
  call void @abort() #3
  unreachable

23:                                               ; preds = %18
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
