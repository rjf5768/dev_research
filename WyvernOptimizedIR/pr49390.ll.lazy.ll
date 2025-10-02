; ModuleID = './pr49390.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49390.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { %struct.V, [48 x i8] }
%struct.V = type { %struct.U, %struct.T }
%struct.U = type { i16, i16 }
%struct.T = type { i32, %struct.S }
%struct.S = type { i32, i32 }

@u = dso_local global %union.anon zeroinitializer, align 4
@v = dso_local global i32 0, align 4
@a = dso_local global %struct.S zeroinitializer, align 8
@b = dso_local global i8* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i8* noundef readnone %1, i32 noundef %2, i32 noundef %3) #0 {
  %.not = icmp eq i32 %0, 4
  br i1 %.not, label %5, label %6

5:                                                ; preds = %4
  %.not1 = icmp eq i8* %1, bitcast (%struct.T* getelementptr inbounds (%union.anon, %union.anon* @u, i64 0, i32 0, i32 1) to i8*)
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %5, %4
  call void @abort() #4
  unreachable

7:                                                ; preds = %5
  %8 = add i32 %2, %3
  store volatile i32 %8, i32* @v, align 4
  store volatile i32 16384, i32* @v, align 4
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local void @bar(i64 %0) #2 {
  %2 = alloca i64, align 8
  %tmpcast = bitcast i64* %2 to %struct.S*
  store i64 %0, i64* %2, align 8
  %3 = bitcast i64* %2 to i32*
  %4 = load i32, i32* %3, align 8
  store volatile i32 %4, i32* @v, align 4
  %5 = getelementptr inbounds %struct.S, %struct.S* %tmpcast, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  store volatile i32 %6, i32* @v, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local i32 @baz(%struct.S* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 4
  store volatile i32 %3, i32* @v, align 4
  %4 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  %5 = load i32, i32* %4, align 4
  store volatile i32 %5, i32* @v, align 4
  store volatile i32 0, i32* @v, align 4
  %6 = load volatile i32, i32* @v, align 4
  %7 = add nsw i32 %6, 1
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(%struct.S* noundef readonly %0) #0 {
  %2 = alloca i64, align 8
  %tmpcast = bitcast i64* %2 to %struct.S*
  %3 = load i64, i64* bitcast (%struct.S* @a to i64*), align 8
  store i64 %3, i64* %2, align 8
  %4 = icmp eq %struct.S* %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 8176
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 8191
  %15 = icmp ugt i32 %14, 8160
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %6
  %17 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  %20 = load i32, i32* %19, align 4
  call void @foo(i32 noundef 1, i8* noundef null, i32 noundef %18, i32 noundef %20)
  br label %21

21:                                               ; preds = %16, %11
  br label %22

22:                                               ; preds = %21, %5
  %.0 = phi %struct.S* [ %tmpcast, %5 ], [ %0, %21 ]
  %23 = call i32 @baz(%struct.S* noundef %.0)
  %.not = icmp eq i32 %23, 0
  br i1 %.not, label %24, label %25

24:                                               ; preds = %22
  br label %92

25:                                               ; preds = %22
  %26 = load %struct.U*, %struct.U** bitcast (i8** @b to %struct.U**), align 8
  %27 = getelementptr inbounds %struct.U, %struct.U* %26, i64 0, i32 1
  %28 = load i16, i16* %27, align 2
  %29 = and i16 %28, 2
  %.not2 = icmp eq i16 %29, 0
  %30 = select i1 %.not2, i32 4, i32 32
  %31 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 8191
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.S, %struct.S* %tmpcast, i64 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %37, %30
  store i32 %38, i32* %36, align 4
  br label %47

39:                                               ; preds = %25
  %40 = icmp ult i32 %33, %30
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 1
  %45 = load i32, i32* %44, align 4
  call void @foo(i32 noundef 2, i8* noundef null, i32 noundef %43, i32 noundef %45)
  br label %92

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %35
  %.01 = phi i32 [ %30, %35 ], [ %33, %46 ]
  %48 = load %struct.U*, %struct.U** bitcast (i8** @b to %struct.U**), align 8
  %49 = getelementptr inbounds %struct.U, %struct.U* %48, i64 0, i32 1
  %50 = load i16, i16* %49, align 2
  %51 = and i16 %50, 1
  %.not3 = icmp eq i16 %51, 0
  br i1 %.not3, label %61, label %52

52:                                               ; preds = %47
  %53 = icmp eq i32 %.01, %30
  br i1 %53, label %54, label %61

54:                                               ; preds = %52
  %55 = bitcast %struct.S* %.0 to i64*
  %56 = load i64, i64* %55, align 4
  call void @bar(i64 %56)
  %57 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 1
  %60 = load i32, i32* %59, align 4
  call void @foo(i32 noundef 3, i8* noundef null, i32 noundef %58, i32 noundef %60)
  br label %92

61:                                               ; preds = %52, %47
  %62 = load i8*, i8** @b, align 8
  %63 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 8191
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  %68 = getelementptr inbounds i8, i8* %67, i64 4
  %69 = bitcast i8* %68 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 0
  %72 = load i32, i32* %71, align 4
  %.not4 = icmp ult i32 %70, %72
  br i1 %.not4, label %91, label %73

73:                                               ; preds = %61
  %74 = getelementptr inbounds i8, i8* %67, i64 4
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 0
  %78 = load i32, i32* %77, align 4
  %.not5 = icmp eq i32 %76, %78
  br i1 %.not5, label %79, label %86

79:                                               ; preds = %73
  %80 = getelementptr inbounds i8, i8* %67, i64 4
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  %82 = bitcast i8* %81 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 1
  %85 = load i32, i32* %84, align 4
  %.not6 = icmp ult i32 %83, %85
  br i1 %.not6, label %91, label %86

86:                                               ; preds = %79, %73
  %87 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 1
  %90 = load i32, i32* %89, align 4
  call void @foo(i32 noundef 4, i8* noundef %67, i32 noundef %88, i32 noundef %90)
  br label %91

91:                                               ; preds = %86, %79, %61
  br label %92

92:                                               ; preds = %91, %54, %41, %24
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call %struct.S* asm "", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(%struct.S* nonnull @a, %struct.S* null) #5, !srcloc !4
  store i32 8192, i32* getelementptr inbounds (%union.anon, %union.anon* @u, i64 0, i32 0, i32 1, i32 1, i32 0), align 4
  store i8* bitcast (%union.anon* @u to i8*), i8** @b, align 8
  call void @test(%struct.S* noundef %1)
  %2 = load volatile i32, i32* @v, align 4
  %.not = icmp eq i32 %2, 16384
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #4
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 1508}
