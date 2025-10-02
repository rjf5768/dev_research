; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr82524.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr82524.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U = type { i32 }
%struct.S = type { i8, i8, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(%union.U* noundef %0, %union.U* noundef %1) #0 {
  %3 = alloca %union.U*, align 8
  %4 = alloca %union.U*, align 8
  %5 = alloca %union.U, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %union.U* %0, %union.U** %3, align 8
  store %union.U* %1, %union.U** %4, align 8
  %8 = load %union.U*, %union.U** %3, align 8
  %9 = bitcast %union.U* %8 to %struct.S*
  %10 = getelementptr inbounds %struct.S, %struct.S* %9, i32 0, i32 3
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %6, align 1
  %12 = load %union.U*, %union.U** %4, align 8
  %13 = bitcast %union.U* %12 to %struct.S*
  %14 = getelementptr inbounds %struct.S, %struct.S* %13, i32 0, i32 3
  %15 = load i8, i8* %14, align 1
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i32
  %18 = sub nsw i32 255, %17
  %19 = trunc i32 %18 to i8
  %20 = call zeroext i8 @foo(i8 noundef zeroext %15, i8 noundef zeroext %19)
  store i8 %20, i8* %7, align 1
  %21 = load %union.U*, %union.U** %3, align 8
  %22 = bitcast %union.U* %21 to %struct.S*
  %23 = getelementptr inbounds %struct.S, %struct.S* %22, i32 0, i32 2
  %24 = load i8, i8* %23, align 2
  %25 = load i8, i8* %6, align 1
  %26 = call zeroext i8 @foo(i8 noundef zeroext %24, i8 noundef zeroext %25)
  %27 = zext i8 %26 to i32
  %28 = load %union.U*, %union.U** %4, align 8
  %29 = bitcast %union.U* %28 to %struct.S*
  %30 = getelementptr inbounds %struct.S, %struct.S* %29, i32 0, i32 2
  %31 = load i8, i8* %30, align 2
  %32 = load i8, i8* %7, align 1
  %33 = call zeroext i8 @foo(i8 noundef zeroext %31, i8 noundef zeroext %32)
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %27, %34
  %36 = trunc i32 %35 to i8
  %37 = bitcast %union.U* %5 to %struct.S*
  %38 = getelementptr inbounds %struct.S, %struct.S* %37, i32 0, i32 2
  store i8 %36, i8* %38, align 2
  %39 = load %union.U*, %union.U** %3, align 8
  %40 = bitcast %union.U* %39 to %struct.S*
  %41 = getelementptr inbounds %struct.S, %struct.S* %40, i32 0, i32 1
  %42 = load i8, i8* %41, align 1
  %43 = load i8, i8* %6, align 1
  %44 = call zeroext i8 @foo(i8 noundef zeroext %42, i8 noundef zeroext %43)
  %45 = zext i8 %44 to i32
  %46 = load %union.U*, %union.U** %4, align 8
  %47 = bitcast %union.U* %46 to %struct.S*
  %48 = getelementptr inbounds %struct.S, %struct.S* %47, i32 0, i32 1
  %49 = load i8, i8* %48, align 1
  %50 = load i8, i8* %7, align 1
  %51 = call zeroext i8 @foo(i8 noundef zeroext %49, i8 noundef zeroext %50)
  %52 = zext i8 %51 to i32
  %53 = add nsw i32 %45, %52
  %54 = trunc i32 %53 to i8
  %55 = bitcast %union.U* %5 to %struct.S*
  %56 = getelementptr inbounds %struct.S, %struct.S* %55, i32 0, i32 1
  store i8 %54, i8* %56, align 1
  %57 = load %union.U*, %union.U** %3, align 8
  %58 = bitcast %union.U* %57 to %struct.S*
  %59 = getelementptr inbounds %struct.S, %struct.S* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 4
  %61 = load i8, i8* %6, align 1
  %62 = call zeroext i8 @foo(i8 noundef zeroext %60, i8 noundef zeroext %61)
  %63 = zext i8 %62 to i32
  %64 = load %union.U*, %union.U** %4, align 8
  %65 = bitcast %union.U* %64 to %struct.S*
  %66 = getelementptr inbounds %struct.S, %struct.S* %65, i32 0, i32 0
  %67 = load i8, i8* %66, align 4
  %68 = load i8, i8* %7, align 1
  %69 = call zeroext i8 @foo(i8 noundef zeroext %67, i8 noundef zeroext %68)
  %70 = zext i8 %69 to i32
  %71 = add nsw i32 %63, %70
  %72 = trunc i32 %71 to i8
  %73 = bitcast %union.U* %5 to %struct.S*
  %74 = getelementptr inbounds %struct.S, %struct.S* %73, i32 0, i32 0
  store i8 %72, i8* %74, align 4
  %75 = bitcast %union.U* %5 to %struct.S*
  %76 = getelementptr inbounds %struct.S, %struct.S* %75, i32 0, i32 3
  store i8 0, i8* %76, align 1
  %77 = bitcast %union.U* %5 to i32*
  %78 = load i32, i32* %77, align 4
  ret i32 %78
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @foo(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %6, 1
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = mul nsw i32 %7, %9
  %11 = ashr i32 %10, 8
  %12 = trunc i32 %11 to i8
  ret i8 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.U, align 4
  %3 = alloca %union.U, align 4
  %4 = alloca %union.U, align 4
  %5 = alloca %struct.S, align 1
  %6 = alloca %struct.S, align 1
  store i32 0, i32* %1, align 4
  %7 = bitcast %union.U* %2 to %struct.S*
  %8 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 0
  store i8 -1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 1
  store i8 -1, i8* %9, align 1
  %10 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 2
  store i8 -1, i8* %10, align 1
  %11 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 3
  store i8 0, i8* %11, align 1
  %12 = bitcast %struct.S* %7 to i8*
  %13 = bitcast %struct.S* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 1 %13, i64 4, i1 false)
  %14 = bitcast %union.U* %3 to %struct.S*
  %15 = getelementptr inbounds %struct.S, %struct.S* %6, i32 0, i32 0
  store i8 -1, i8* %15, align 1
  %16 = getelementptr inbounds %struct.S, %struct.S* %6, i32 0, i32 1
  store i8 -1, i8* %16, align 1
  %17 = getelementptr inbounds %struct.S, %struct.S* %6, i32 0, i32 2
  store i8 -1, i8* %17, align 1
  %18 = getelementptr inbounds %struct.S, %struct.S* %6, i32 0, i32 3
  store i8 -1, i8* %18, align 1
  %19 = bitcast %struct.S* %14 to i8*
  %20 = bitcast %struct.S* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 1 %20, i64 4, i1 false)
  %21 = call i32 @bar(%union.U* noundef %2, %union.U* noundef %3)
  %22 = bitcast %union.U* %4 to i32*
  store i32 %21, i32* %22, align 4
  %23 = bitcast %union.U* %4 to %struct.S*
  %24 = getelementptr inbounds %struct.S, %struct.S* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 4
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 255
  br i1 %27, label %46, label %28

28:                                               ; preds = %0
  %29 = bitcast %union.U* %4 to %struct.S*
  %30 = getelementptr inbounds %struct.S, %struct.S* %29, i32 0, i32 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 255
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = bitcast %union.U* %4 to %struct.S*
  %36 = getelementptr inbounds %struct.S, %struct.S* %35, i32 0, i32 2
  %37 = load i8, i8* %36, align 2
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 255
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = bitcast %union.U* %4 to %struct.S*
  %42 = getelementptr inbounds %struct.S, %struct.S* %41, i32 0, i32 3
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %34, %28, %0
  call void @abort() #3
  unreachable

47:                                               ; preds = %40
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
