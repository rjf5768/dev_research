; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-008.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-008.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a = type { i64, i64 }

@d = dso_local global %struct.a zeroinitializer, align 8
@s = dso_local global %struct.a zeroinitializer, align 8
@e = dso_local global i64 0, align 8
@__const.main.h = private unnamed_addr constant %struct.a { i64 0, i64 9 }, align 8
@.str = private unnamed_addr constant [11 x i8] c"d.b = %li\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"d.c = %li\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"s.b = %li\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"s.c = %li\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"e = %li\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(%struct.a* noundef %0) #0 {
  %2 = alloca %struct.a*, align 8
  store %struct.a* %0, %struct.a** %2, align 8
  %3 = load %struct.a*, %struct.a** %2, align 8
  %4 = bitcast %struct.a* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.a* @d to i8*), i8* align 8 %4, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.a, align 8
  store i32 0, i32* %1, align 4
  store i64 -7988785259004943837, i64* %6, align 8
  store i64 -7, i64* %5, align 8
  store i64 -7, i64* %4, align 8
  store i64 -7988785259004943837, i64* %3, align 8
  store i64 -6, i64* %2, align 8
  %8 = load i64, i64* %3, align 8
  store i64 %8, i64* getelementptr inbounds (%struct.a, %struct.a* @s, i32 0, i32 0), align 8
  %9 = load i64, i64* %2, align 8
  store i64 %9, i64* getelementptr inbounds (%struct.a, %struct.a* @s, i32 0, i32 1), align 8
  %10 = load i64, i64* %4, align 8
  store i64 %10, i64* @e, align 8
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* getelementptr inbounds (%struct.a, %struct.a* @d, i32 0, i32 0), align 8
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* getelementptr inbounds (%struct.a, %struct.a* @d, i32 0, i32 1), align 8
  %13 = bitcast %struct.a* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.a* @__const.main.h to i8*), i64 16, i1 false)
  %14 = bitcast %struct.a* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.a* @s to i8*), i8* align 8 %14, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.a, %struct.a* %7, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* @e, align 8
  call void @f(%struct.a* noundef %7)
  %17 = load i64, i64* getelementptr inbounds (%struct.a, %struct.a* @d, i32 0, i32 0), align 8
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 noundef %17)
  %19 = load i64, i64* getelementptr inbounds (%struct.a, %struct.a* @d, i32 0, i32 1), align 8
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 noundef %19)
  %21 = load i64, i64* getelementptr inbounds (%struct.a, %struct.a* @s, i32 0, i32 0), align 8
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 noundef %21)
  %23 = load i64, i64* getelementptr inbounds (%struct.a, %struct.a* @s, i32 0, i32 1), align 8
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 noundef %23)
  %25 = load i64, i64* @e, align 8
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 noundef %25)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
