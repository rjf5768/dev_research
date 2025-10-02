; ModuleID = './pr82524.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr82524.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U = type { i32 }
%struct.S = type { i8, i8, i8, i8 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @bar(%union.U* nocapture noundef readonly %0, %union.U* nocapture noundef readonly %1) #0 {
  %3 = alloca %union.U, align 4
  %4 = bitcast %union.U* %0 to %struct.S*
  %5 = getelementptr inbounds %struct.S, %struct.S* %4, i64 0, i32 3
  %6 = load i8, i8* %5, align 1
  %7 = bitcast %union.U* %1 to %struct.S*
  %8 = getelementptr inbounds %struct.S, %struct.S* %7, i64 0, i32 3
  %9 = load i8, i8* %8, align 1
  %10 = xor i8 %6, -1
  %11 = call zeroext i8 @foo(i8 noundef zeroext %9, i8 noundef zeroext %10)
  %12 = bitcast %union.U* %0 to %struct.S*
  %13 = getelementptr inbounds %struct.S, %struct.S* %12, i64 0, i32 2
  %14 = load i8, i8* %13, align 2
  %15 = call zeroext i8 @foo(i8 noundef zeroext %14, i8 noundef zeroext %6)
  %16 = bitcast %union.U* %1 to %struct.S*
  %17 = getelementptr inbounds %struct.S, %struct.S* %16, i64 0, i32 2
  %18 = load i8, i8* %17, align 2
  %19 = call zeroext i8 @foo(i8 noundef zeroext %18, i8 noundef zeroext %11)
  %20 = add i8 %15, %19
  %21 = bitcast %union.U* %3 to %struct.S*
  %22 = getelementptr inbounds %struct.S, %struct.S* %21, i64 0, i32 2
  store i8 %20, i8* %22, align 2
  %23 = bitcast %union.U* %0 to %struct.S*
  %24 = getelementptr inbounds %struct.S, %struct.S* %23, i64 0, i32 1
  %25 = load i8, i8* %24, align 1
  %26 = call zeroext i8 @foo(i8 noundef zeroext %25, i8 noundef zeroext %6)
  %27 = bitcast %union.U* %1 to %struct.S*
  %28 = getelementptr inbounds %struct.S, %struct.S* %27, i64 0, i32 1
  %29 = load i8, i8* %28, align 1
  %30 = call zeroext i8 @foo(i8 noundef zeroext %29, i8 noundef zeroext %11)
  %31 = add i8 %26, %30
  %32 = bitcast %union.U* %3 to %struct.S*
  %33 = getelementptr inbounds %struct.S, %struct.S* %32, i64 0, i32 1
  store i8 %31, i8* %33, align 1
  %34 = bitcast %union.U* %0 to i8*
  %35 = load i8, i8* %34, align 4
  %36 = call zeroext i8 @foo(i8 noundef zeroext %35, i8 noundef zeroext %6)
  %37 = bitcast %union.U* %1 to i8*
  %38 = load i8, i8* %37, align 4
  %39 = call zeroext i8 @foo(i8 noundef zeroext %38, i8 noundef zeroext %11)
  %40 = add i8 %36, %39
  %41 = bitcast %union.U* %3 to i8*
  store i8 %40, i8* %41, align 4
  %42 = bitcast %union.U* %3 to %struct.S*
  %43 = getelementptr inbounds %struct.S, %struct.S* %42, i64 0, i32 3
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds %union.U, %union.U* %3, i64 0, i32 0
  %45 = load i32, i32* %44, align 4
  ret i32 %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal zeroext i8 @foo(i8 noundef zeroext %0, i8 noundef zeroext %1) #1 {
  %3 = zext i8 %0 to i32
  %4 = add nuw nsw i32 %3, 1
  %5 = zext i8 %1 to i32
  %6 = mul nuw nsw i32 %4, %5
  %7 = lshr i32 %6, 8
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %union.U, align 4
  %2 = alloca %union.U, align 4
  %3 = alloca %union.U, align 4
  %4 = alloca i32, align 4
  %tmpcast = bitcast i32* %4 to %struct.S*
  %5 = alloca i32, align 4
  %tmpcast1 = bitcast i32* %5 to %struct.S*
  %6 = bitcast i32* %4 to i8*
  store i8 -1, i8* %6, align 4
  %7 = getelementptr inbounds %struct.S, %struct.S* %tmpcast, i64 0, i32 1
  store i8 -1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.S, %struct.S* %tmpcast, i64 0, i32 2
  store i8 -1, i8* %8, align 2
  %9 = getelementptr inbounds %struct.S, %struct.S* %tmpcast, i64 0, i32 3
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %union.U, %union.U* %1, i64 0, i32 0
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %10, align 4
  %12 = bitcast i32* %5 to i8*
  store i8 -1, i8* %12, align 4
  %13 = getelementptr inbounds %struct.S, %struct.S* %tmpcast1, i64 0, i32 1
  store i8 -1, i8* %13, align 1
  %14 = getelementptr inbounds %struct.S, %struct.S* %tmpcast1, i64 0, i32 2
  store i8 -1, i8* %14, align 2
  %15 = getelementptr inbounds %struct.S, %struct.S* %tmpcast1, i64 0, i32 3
  store i8 -1, i8* %15, align 1
  %16 = getelementptr inbounds %union.U, %union.U* %2, i64 0, i32 0
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %16, align 4
  %18 = call i32 @bar(%union.U* noundef nonnull %1, %union.U* noundef nonnull %2)
  %19 = getelementptr inbounds %union.U, %union.U* %3, i64 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = bitcast %union.U* %3 to i8*
  %21 = load i8, i8* %20, align 4
  %.not = icmp eq i8 %21, -1
  br i1 %.not, label %22, label %34

22:                                               ; preds = %0
  %23 = bitcast %union.U* %3 to %struct.S*
  %24 = getelementptr inbounds %struct.S, %struct.S* %23, i64 0, i32 1
  %25 = load i8, i8* %24, align 1
  %.not2 = icmp eq i8 %25, -1
  br i1 %.not2, label %26, label %34

26:                                               ; preds = %22
  %27 = bitcast %union.U* %3 to %struct.S*
  %28 = getelementptr inbounds %struct.S, %struct.S* %27, i64 0, i32 2
  %29 = load i8, i8* %28, align 2
  %.not3 = icmp eq i8 %29, -1
  br i1 %.not3, label %30, label %34

30:                                               ; preds = %26
  %31 = bitcast %union.U* %3 to %struct.S*
  %32 = getelementptr inbounds %struct.S, %struct.S* %31, i64 0, i32 3
  %33 = load i8, i8* %32, align 1
  %.not4 = icmp eq i8 %33, 0
  br i1 %.not4, label %35, label %34

34:                                               ; preds = %30, %26, %22, %0
  call void @abort() #5
  unreachable

35:                                               ; preds = %30
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
