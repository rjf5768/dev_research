; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-prefetch-5.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-prefetch-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i16, i16, [8 x i8] }

@arr = dso_local global [100 x i8] zeroinitializer, align 16
@ptr = dso_local global i8* getelementptr inbounds ([100 x i8], [100 x i8]* @arr, i32 0, i32 0), align 8
@idx = dso_local global i32 3, align 4
@s = dso_local global %struct.S zeroinitializer, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local void @arg_ptr(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @llvm.prefetch.p0i8(i8* %3, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @arg_idx(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %5, i64 %7
  call void @llvm.prefetch.p0i8(i8* %8, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @glob_ptr() #0 {
  %1 = load i8*, i8** @ptr, align 8
  call void @llvm.prefetch.p0i8(i8* %1, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @glob_idx() #0 {
  %1 = load i8*, i8** @ptr, align 8
  %2 = load i32, i32* @idx, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds i8, i8* %1, i64 %3
  call void @llvm.prefetch.p0i8(i8* %4, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.prefetch.p0i8(i8* bitcast (i16* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 1) to i8*), i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 2, i64 1), i32 0, i32 0, i32 1)
  call void @arg_ptr(i8* noundef getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 2, i64 1))
  %2 = load i8*, i8** @ptr, align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 3
  call void @arg_ptr(i8* noundef %3)
  %4 = load i8*, i8** @ptr, align 8
  call void @arg_idx(i8* noundef %4, i32 noundef 3)
  %5 = load i8*, i8** @ptr, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 1
  call void @arg_idx(i8* noundef %6, i32 noundef 2)
  store i32 3, i32* @idx, align 4
  call void @glob_ptr()
  call void @glob_idx()
  %7 = load i8*, i8** @ptr, align 8
  %8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %8, i8** @ptr, align 8
  store i32 2, i32* @idx, align 4
  call void @glob_ptr()
  call void @glob_idx()
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblemem_or_argmemonly nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
