; ModuleID = './20071210-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071210-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32, i32 }

@__const.foo.s = private unnamed_addr constant %struct.S { i32 1, i32 2, i32 3, i32 4 }, align 8
@bar.l = internal global [5 x i8*] [i8* blockaddress(@bar, %38), i8* blockaddress(@bar, %38), i8* blockaddress(@bar, %8), i8* blockaddress(@bar, %34), i8* blockaddress(@bar, %40)], align 16
@__const.main.s = private unnamed_addr constant [6 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @foo(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %.not = icmp eq i32 %0, 10
  br i1 %.not, label %4, label %6

4:                                                ; preds = %3
  %.not1 = icmp eq i32 %1, 9
  br i1 %.not1, label %5, label %6

5:                                                ; preds = %4
  %.not2 = icmp eq i32 %2, 8
  br i1 %.not2, label %7, label %6

6:                                                ; preds = %5, %4, %3
  call void @abort() #3
  unreachable

7:                                                ; preds = %5
  ret { i64, i64 } { i64 8589934593, i64 17179869187 }
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8** @bar(i8** noundef readonly %0, i32* nocapture noundef %1) #0 {
  %3 = alloca { i64, i64 }, align 8
  %tmpcast = bitcast { i64, i64 }* %3 to %struct.S*
  %.not = icmp eq i8** %0, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  br label %41

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8*, i8** %0, i64 1
  %7 = load i8*, i8** %0, align 8
  br label %42

8:                                                ; preds = %42
  %9 = getelementptr inbounds i8*, i8** %.13, i64 1
  %10 = load i8*, i8** %.13, align 8
  %11 = getelementptr inbounds i32, i32* %.15, i64 2
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %.15, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %.15, align 4
  %16 = getelementptr inbounds i32, i32* %.15, i64 -1
  %17 = call { i64, i64 } @foo(i32 noundef %12, i32 noundef %14, i32 noundef %15)
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i64 0, i32 0
  %19 = extractvalue { i64, i64 } %17, 0
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i64 0, i32 1
  %21 = extractvalue { i64, i64 } %17, 1
  store i64 %21, i64* %20, align 8
  %22 = bitcast { i64, i64 }* %3 to i32*
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds i32, i32* %.15, i64 2
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.S, %struct.S* %tmpcast, i64 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %.15, i64 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i64 0, i32 1
  %29 = bitcast i64* %28 to i32*
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %.15, align 4
  %31 = getelementptr inbounds %struct.S, %struct.S* %tmpcast, i64 0, i32 3
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %16, align 4
  br label %.backedge

.backedge:                                        ; preds = %8, %38
  %.15.be = phi i32* [ %.04, %38 ], [ %16, %8 ]
  %.13.be = phi i8** [ %.02, %38 ], [ %9, %8 ]
  %33 = phi i8* [ %39, %38 ], [ %10, %8 ]
  br label %42

34:                                               ; preds = %42
  %35 = getelementptr inbounds i8*, i8** %.13, i64 1
  %36 = load i8*, i8** %.13, align 8
  %37 = getelementptr inbounds i32, i32* %.15, i64 1
  store i32 23, i32* %37, align 4
  br label %38

38:                                               ; preds = %42, %42, %34
  %.04 = phi i32* [ %.15, %42 ], [ %.15, %42 ], [ %37, %34 ]
  %.02 = phi i8** [ %.13, %42 ], [ %.13, %42 ], [ %35, %34 ]
  %39 = phi i8* [ %43, %42 ], [ %43, %42 ], [ %36, %34 ]
  br label %.backedge

40:                                               ; preds = %42
  br label %41

41:                                               ; preds = %40, %4
  %.0 = phi i8** [ null, %40 ], [ getelementptr inbounds ([5 x i8*], [5 x i8*]* @bar.l, i64 0, i64 0), %4 ]
  ret i8** %.0

42:                                               ; preds = %.backedge, %5
  %.15 = phi i32* [ %1, %5 ], [ %.15.be, %.backedge ]
  %.13 = phi i8** [ %6, %5 ], [ %.13.be, %.backedge ]
  %43 = phi i8* [ %7, %5 ], [ %33, %.backedge ]
  indirectbr i8* %43, [label %38, label %38, label %8, label %34, label %40]
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [2 x i8*], align 16
  %2 = alloca [6 x i32], align 16
  %3 = call i8** @bar(i8** noundef null, i32* noundef null)
  %4 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %5 = getelementptr inbounds i8*, i8** %3, i64 2
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %4, align 16
  %7 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 1
  %8 = getelementptr inbounds i8*, i8** %3, i64 4
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %7, align 8
  %10 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) %10, i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @__const.main.s to i8*), i64 24, i1 false)
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 1
  %13 = call i8** @bar(i8** noundef nonnull %11, i32* noundef nonnull %12)
  %.not = icmp eq i8** %13, null
  br i1 %.not, label %14, label %32

14:                                               ; preds = %0
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %16 = load i32, i32* %15, align 16
  %.not1 = icmp eq i32 %16, 4
  br i1 %.not1, label %17, label %32

17:                                               ; preds = %14
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 1
  %19 = load i32, i32* %18, align 4
  %.not2 = icmp eq i32 %19, 3
  br i1 %.not2, label %20, label %32

20:                                               ; preds = %17
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 2
  %22 = load i32, i32* %21, align 8
  %.not3 = icmp eq i32 %22, 2
  br i1 %.not3, label %23, label %32

23:                                               ; preds = %20
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 3
  %25 = load i32, i32* %24, align 4
  %.not4 = icmp eq i32 %25, 1
  br i1 %.not4, label %26, label %32

26:                                               ; preds = %23
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 4
  %28 = load i32, i32* %27, align 16
  %.not5 = icmp eq i32 %28, 11
  br i1 %.not5, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 5
  %31 = load i32, i32* %30, align 4
  %.not6 = icmp eq i32 %31, 12
  br i1 %.not6, label %33, label %32

32:                                               ; preds = %29, %26, %23, %20, %17, %14, %0
  call void @abort() #3
  unreachable

33:                                               ; preds = %29
  ret i32 0
}

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
