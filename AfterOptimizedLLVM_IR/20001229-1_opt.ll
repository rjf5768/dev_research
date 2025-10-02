; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001229-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001229-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @showinfo() #0 {
  %1 = alloca [33 x i8], align 16
  %2 = alloca [38 x i8], align 16
  %3 = bitcast [33 x i8]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 33, i1 false)
  %4 = bitcast [38 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 38, i1 false)
  %5 = bitcast i8* %4 to [38 x i8]*
  %6 = getelementptr inbounds [38 x i8], [38 x i8]* %5, i32 0, i32 0
  store i8 47, i8* %6, align 16
  %7 = getelementptr inbounds [38 x i8], [38 x i8]* %5, i32 0, i32 1
  store i8 100, i8* %7, align 1
  %8 = getelementptr inbounds [38 x i8], [38 x i8]* %5, i32 0, i32 2
  store i8 101, i8* %8, align 2
  %9 = getelementptr inbounds [38 x i8], [38 x i8]* %5, i32 0, i32 3
  store i8 118, i8* %9, align 1
  %10 = getelementptr inbounds [38 x i8], [38 x i8]* %5, i32 0, i32 4
  store i8 47, i8* %10, align 4
  %11 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %12 = getelementptr inbounds [38 x i8], [38 x i8]* %2, i64 0, i64 0
  call void @foo(i8* noundef %11, i8* noundef %12)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @showinfo()
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
