; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38151.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38151.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S2848 = type { i32, { i32, i32 }, [4 x i8], %struct.anon }
%struct.anon = type {}
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@s2848 = dso_local global %struct.S2848 zeroinitializer, align 16
@fails = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @check2848va(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.S2848, align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca %struct.S2848, align 16
  store i32 %0, i32* %2, align 4
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 16
  %11 = icmp ule i32 %10, 32
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %8, i32 0, i32 3
  %14 = load i8*, i8** %13, align 16
  %15 = getelementptr i8, i8* %14, i32 %10
  %16 = bitcast i8* %15 to %struct.S2848*
  %17 = bitcast %struct.S2848* %5 to i8*
  %18 = bitcast %struct.S2848* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = add i32 %10, 16
  store i32 %19, i32* %9, align 16
  br label %29

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %8, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = add i64 %23, 15
  %25 = and i64 %24, -16
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.S2848*
  %28 = getelementptr i8, i8* %26, i32 16
  store i8* %28, i8** %21, align 8
  br label %29

29:                                               ; preds = %20, %12
  %30 = phi %struct.S2848* [ %5, %12 ], [ %27, %20 ]
  %31 = bitcast %struct.S2848* %3 to i8*
  %32 = bitcast %struct.S2848* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 %32, i64 16, i1 false)
  %33 = load i32, i32* getelementptr inbounds (%struct.S2848, %struct.S2848* @s2848, i32 0, i32 0), align 16
  %34 = getelementptr inbounds %struct.S2848, %struct.S2848* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 16
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @fails, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @fails, align 4
  br label %40

40:                                               ; preds = %37, %29
  %41 = load i32, i32* getelementptr inbounds (%struct.S2848, %struct.S2848* @s2848, i32 0, i32 1, i32 0), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.S2848, %struct.S2848* @s2848, i32 0, i32 1, i32 1), align 4
  %43 = getelementptr inbounds %struct.S2848, %struct.S2848* %3, i32 0, i32 1
  %44 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %43, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %41, %45
  %49 = icmp ne i32 %42, %47
  %50 = or i1 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @fails, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @fails, align 4
  br label %54

54:                                               ; preds = %51, %40
  %55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %56 = bitcast %struct.__va_list_tag* %55 to i8*
  call void @llvm.va_end(i8* %56)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -267489557, i32* getelementptr inbounds (%struct.S2848, %struct.S2848* @s2848, i32 0, i32 0), align 16
  store i32 723419448, i32* getelementptr inbounds (%struct.S2848, %struct.S2848* @s2848, i32 0, i32 1, i32 0), align 4
  store i32 -218144346, i32* getelementptr inbounds (%struct.S2848, %struct.S2848* @s2848, i32 0, i32 1, i32 1), align 4
  %2 = load i64, i64* getelementptr inbounds ({ i64, i32 }, { i64, i32 }* bitcast (%struct.S2848* @s2848 to { i64, i32 }*), i32 0, i32 0), align 16
  %3 = load i32, i32* getelementptr inbounds ({ i64, i32 }, { i64, i32 }* bitcast (%struct.S2848* @s2848 to { i64, i32 }*), i32 0, i32 1), align 8
  call void (i32, ...) @check2848va(i32 noundef 1, i64 %2, i32 %3)
  %4 = load i32, i32* @fails, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #4
  unreachable

7:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
