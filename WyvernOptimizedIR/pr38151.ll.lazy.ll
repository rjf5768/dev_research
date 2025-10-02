; ModuleID = './pr38151.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38151.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S2848 = type { i32, { i32, i32 }, [4 x i8], %struct.anon }
%struct.anon = type {}
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@s2848 = dso_local global %struct.S2848 zeroinitializer, align 16
@fails = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @check2848va(i32 noundef %0, ...) #0 {
  %2 = alloca %struct.S2848, align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca %struct.S2848, align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 33
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %11 = load i8*, i8** %10, align 16
  %12 = sext i32 %7 to i64
  %13 = getelementptr i8, i8* %11, i64 %12
  %14 = bitcast %struct.S2848* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %14, i8* noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false)
  %15 = add i32 %7, 16
  store i32 %15, i32* %6, align 16
  br label %25

16:                                               ; preds = %1
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = add i64 %19, 15
  %21 = and i64 %20, -16
  %22 = inttoptr i64 %21 to i8*
  %23 = inttoptr i64 %21 to %struct.S2848*
  %24 = getelementptr i8, i8* %22, i64 16
  store i8* %24, i8** %17, align 8
  br label %25

25:                                               ; preds = %16, %9
  %26 = phi %struct.S2848* [ %4, %9 ], [ %23, %16 ]
  %27 = bitcast %struct.S2848* %2 to i8*
  %28 = bitcast %struct.S2848* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %27, i8* noundef nonnull align 16 dereferenceable(16) %28, i64 16, i1 false)
  %29 = load i32, i32* getelementptr inbounds (%struct.S2848, %struct.S2848* @s2848, i64 0, i32 0), align 16
  %30 = getelementptr inbounds %struct.S2848, %struct.S2848* %2, i64 0, i32 0
  %31 = load i32, i32* %30, align 16
  %.not = icmp eq i32 %29, %31
  br i1 %.not, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @fails, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @fails, align 4
  br label %35

35:                                               ; preds = %32, %25
  %36 = load i32, i32* getelementptr inbounds (%struct.S2848, %struct.S2848* @s2848, i64 0, i32 1, i32 0), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.S2848, %struct.S2848* @s2848, i64 0, i32 1, i32 1), align 8
  %38 = getelementptr inbounds %struct.S2848, %struct.S2848* %2, i64 0, i32 1, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.S2848, %struct.S2848* %2, i64 0, i32 1, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %36, %39
  %43 = icmp ne i32 %37, %41
  %44 = or i1 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @fails, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @fails, align 4
  br label %48

48:                                               ; preds = %45, %35
  %49 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %49)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  store i32 -267489557, i32* getelementptr inbounds (%struct.S2848, %struct.S2848* @s2848, i64 0, i32 0), align 16
  store i32 723419448, i32* getelementptr inbounds (%struct.S2848, %struct.S2848* @s2848, i64 0, i32 1, i32 0), align 4
  store i32 -218144346, i32* getelementptr inbounds (%struct.S2848, %struct.S2848* @s2848, i64 0, i32 1, i32 1), align 8
  %1 = load i64, i64* bitcast (%struct.S2848* @s2848 to i64*), align 16
  call void (i32, ...) @check2848va(i32 noundef 1, i64 %1, i32 -218144346)
  %2 = load i32, i32* @fails, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #5
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
