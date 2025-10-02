; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr44164.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr44164.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { %struct.Y }
%struct.Y = type { %struct.YY }
%struct.YY = type { %struct.Z }
%struct.Z = type { i32 }

@a = dso_local global %struct.X zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(%struct.Z* noundef %0) #0 {
  %2 = alloca %struct.Z*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.Y, align 4
  store %struct.Z* %0, %struct.Z** %2, align 8
  %5 = load %struct.Z*, %struct.Z** %2, align 8
  %6 = getelementptr inbounds %struct.Z, %struct.Z* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = getelementptr inbounds %struct.Y, %struct.Y* %4, i32 0, i32 0
  %9 = bitcast %struct.YY* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = bitcast %struct.Y* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.X* @a to i8*), i8* align 4 %10, i64 4, i1 false)
  %11 = load %struct.Z*, %struct.Z** %2, align 8
  %12 = getelementptr inbounds %struct.Z, %struct.Z* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %13, %14
  ret i32 %15
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* getelementptr inbounds (%struct.X, %struct.X* @a, i32 0, i32 0, i32 0, i32 0, i32 0), align 4
  %2 = call i32 @foo(%struct.Z* noundef getelementptr inbounds (%struct.X, %struct.X* @a, i32 0, i32 0, i32 0, i32 0))
  %3 = icmp ne i32 %2, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #4
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
