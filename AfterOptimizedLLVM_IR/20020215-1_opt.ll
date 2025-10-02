; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020215-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020215-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i16, i64, i16 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.s* noalias sret(%struct.s) align 8 %0, %struct.s* noundef byval(%struct.s) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.s, %struct.s* %1, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = add nsw i64 %4, 1
  store i64 %5, i64* %3, align 8
  %6 = bitcast %struct.s* %0 to i8*
  %7 = bitcast %struct.s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.s, align 8
  %3 = alloca %struct.s, align 8
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds %struct.s, %struct.s* %3, i32 0, i32 0
  store i16 1000, i16* %4, align 8
  %5 = getelementptr inbounds %struct.s, %struct.s* %3, i32 0, i32 1
  store i64 2000, i64* %5, align 8
  %6 = getelementptr inbounds %struct.s, %struct.s* %3, i32 0, i32 2
  store i16 3000, i16* %6, align 8
  call void @foo(%struct.s* sret(%struct.s) align 8 %2, %struct.s* noundef byval(%struct.s) align 8 %3)
  %7 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 0
  %8 = load i16, i16* %7, align 8
  %9 = sext i16 %8 to i32
  %10 = icmp ne i32 %9, 1000
  br i1 %10, label %20, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 2001
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 2
  %17 = load i16, i16* %16, align 8
  %18 = sext i16 %17 to i32
  %19 = icmp ne i32 %18, 3000
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %11, %0
  call void @abort() #3
  unreachable

21:                                               ; preds = %15
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
