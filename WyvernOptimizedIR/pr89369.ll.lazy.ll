; ModuleID = './pr89369.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr89369.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [4 x i32] }

@__const.main.a = private unnamed_addr constant [6 x %struct.S] [%struct.S { [4 x i32] [i32 1235, i32 -1135327013, i32 -232005985, i32 -340504689] }, %struct.S { [4 x i32] [i32 61024153, i32 1623097926, i32 -1563269395, i32 2057405750] }, %struct.S { [4 x i32] [i32 363037976, i32 -815440671, i32 -203384428, i32 1357867518] }, %struct.S { [4 x i32] [i32 -2010690809, i32 -406239130, i32 -1058365625, i32 -1230488509] }, %struct.S { [4 x i32] [i32 -854785998, i32 1564997079, i32 1510669302, i32 -1364690140] }, %struct.S zeroinitializer], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [6 x %struct.S], align 16
  %2 = bitcast [6 x %struct.S]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(96) %2, i8* noundef nonnull align 16 dereferenceable(96) bitcast ([6 x %struct.S]* @__const.main.a to i8*), i64 96, i1 false)
  %3 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %1, i64 0, i64 5
  %4 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %1, i64 0, i64 0
  %5 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %1, i64 0, i64 1
  %6 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %1, i64 0, i64 2
  %7 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %1, i64 0, i64 3
  call void @baz(%struct.S* noundef nonnull %3, %struct.S* noundef nonnull %4, %struct.S* noundef nonnull %5, %struct.S* noundef nonnull %6, %struct.S* noundef nonnull %7)
  %8 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %1, i64 0, i64 4, i32 0, i64 0
  %9 = load i32, i32* %8, align 16
  %10 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %1, i64 0, i64 5, i32 0, i64 0
  %11 = load i32, i32* %10, align 16
  %.not = icmp eq i32 %9, %11
  br i1 %.not, label %12, label %27

12:                                               ; preds = %0
  %13 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %1, i64 0, i64 4, i32 0, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %1, i64 0, i64 5, i32 0, i64 1
  %16 = load i32, i32* %15, align 4
  %.not1 = icmp eq i32 %14, %16
  br i1 %.not1, label %17, label %27

17:                                               ; preds = %12
  %18 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %1, i64 0, i64 4, i32 0, i64 2
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %1, i64 0, i64 5, i32 0, i64 2
  %21 = load i32, i32* %20, align 8
  %.not2 = icmp eq i32 %19, %21
  br i1 %.not2, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %1, i64 0, i64 4, i32 0, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %1, i64 0, i64 5, i32 0, i64 3
  %26 = load i32, i32* %25, align 4
  %.not3 = icmp eq i32 %24, %26
  br i1 %.not3, label %28, label %27

27:                                               ; preds = %22, %17, %12, %0
  call void @abort() #4
  unreachable

28:                                               ; preds = %22
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @baz(%struct.S* nocapture noundef writeonly %0, %struct.S* nocapture noundef readonly %1, %struct.S* nocapture noundef readonly %2, %struct.S* nocapture noundef readonly %3, %struct.S* nocapture noundef readonly %4) #2 {
  %6 = alloca %struct.S, align 4
  %7 = alloca %struct.S, align 4
  call void @bar(%struct.S* noundef nonnull %6, %struct.S* noundef %1, i32 noundef 1)
  call void @foo(%struct.S* noundef nonnull %7, %struct.S* noundef %3, i32 noundef 1)
  %8 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.S, %struct.S* %6, i64 0, i32 0, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %9, %11
  %13 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = lshr i32 %14, 11
  %16 = and i32 %15, 2097135
  %17 = xor i32 %12, %16
  %18 = getelementptr inbounds %struct.S, %struct.S* %7, i64 0, i32 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %17, %19
  %21 = getelementptr inbounds %struct.S, %struct.S* %4, i64 0, i32 0, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 18
  %24 = xor i32 %20, %23
  %25 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.S, %struct.S* %6, i64 0, i32 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %27, %29
  %31 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = lshr i32 %32, 11
  %34 = and i32 %33, 2018175
  %35 = xor i32 %30, %34
  %36 = getelementptr inbounds %struct.S, %struct.S* %7, i64 0, i32 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %35, %37
  %39 = getelementptr inbounds %struct.S, %struct.S* %4, i64 0, i32 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 18
  %42 = xor i32 %38, %41
  %43 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 1
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.S, %struct.S* %6, i64 0, i32 0, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %45, %47
  %49 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = lshr i32 %50, 11
  %52 = and i32 %51, 1769471
  %53 = xor i32 %48, %52
  %54 = getelementptr inbounds %struct.S, %struct.S* %7, i64 0, i32 0, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %53, %55
  %57 = getelementptr inbounds %struct.S, %struct.S* %4, i64 0, i32 0, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 18
  %60 = xor i32 %56, %59
  %61 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 2
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.S, %struct.S* %6, i64 0, i32 0, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %63, %65
  %67 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = lshr i32 %68, 11
  %70 = and i32 %69, 2097142
  %71 = xor i32 %66, %70
  %72 = getelementptr inbounds %struct.S, %struct.S* %7, i64 0, i32 0, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %71, %73
  %75 = getelementptr inbounds %struct.S, %struct.S* %4, i64 0, i32 0, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 18
  %78 = xor i32 %74, %77
  %79 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 3
  store i32 %78, i32* %79, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @bar(%struct.S* nocapture noundef writeonly %0, %struct.S* nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 3
  %5 = load i32, i32* %4, align 4
  %6 = zext i32 %5 to i64
  %7 = shl nuw i64 %6, 32
  %8 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 2
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  %11 = or i64 %7, %10
  %12 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = zext i32 %13 to i64
  %15 = shl nuw i64 %14, 32
  %16 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = zext i32 %17 to i64
  %19 = or i64 %15, %18
  %20 = shl nsw i32 %2, 3
  %21 = zext i32 %20 to i64
  %22 = shl i64 %11, %21
  %23 = shl nsw i32 %2, 3
  %24 = zext i32 %23 to i64
  %25 = shl i64 %19, %24
  %.neg = mul i32 %2, -8
  %26 = add i32 %.neg, 64
  %27 = zext i32 %26 to i64
  %28 = lshr i64 %19, %27
  %29 = or i64 %22, %28
  %30 = lshr i64 %25, 32
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = trunc i64 %25 to i32
  %34 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 0
  store i32 %33, i32* %34, align 4
  %35 = lshr i64 %29, 32
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 3
  store i32 %36, i32* %37, align 4
  %38 = trunc i64 %29 to i32
  %39 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 2
  store i32 %38, i32* %39, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @foo(%struct.S* nocapture noundef writeonly %0, %struct.S* nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 3
  %5 = load i32, i32* %4, align 4
  %6 = zext i32 %5 to i64
  %7 = shl nuw i64 %6, 32
  %8 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 2
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  %11 = or i64 %7, %10
  %12 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = zext i32 %13 to i64
  %15 = shl nuw i64 %14, 32
  %16 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = zext i32 %17 to i64
  %19 = or i64 %15, %18
  %20 = shl nsw i32 %2, 3
  %21 = zext i32 %20 to i64
  %22 = lshr i64 %11, %21
  %23 = shl nsw i32 %2, 3
  %24 = zext i32 %23 to i64
  %25 = lshr i64 %19, %24
  %.neg = mul i32 %2, -8
  %26 = add i32 %.neg, 64
  %27 = zext i32 %26 to i64
  %28 = shl i64 %11, %27
  %29 = or i64 %25, %28
  %30 = lshr i64 %29, 32
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = trunc i64 %29 to i32
  %34 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 0
  store i32 %33, i32* %34, align 4
  %35 = lshr i64 %22, 32
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 3
  store i32 %36, i32* %37, align 4
  %38 = trunc i64 %22 to i32
  %39 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 2
  store i32 %38, i32* %39, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
